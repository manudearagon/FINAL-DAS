package ar.edu.ubp.das.indecrest.repositories;

import ar.edu.ubp.das.indecrest.beans.requests.ProductoByIdRequest;
import ar.edu.ubp.das.indecrest.beans.requests.ProductoPorSucursalRequest;
import ar.edu.ubp.das.indecrest.beans.requests.ProductoRequest;
import ar.edu.ubp.das.indecrest.beans.responses.GetProductResponse;
import ar.edu.ubp.das.indecrest.beans.responses.PriceComparisonResponse;
import ar.edu.ubp.das.indecrest.beans.responses.ComparadorPreciosResponse;
import ar.edu.ubp.das.indecrest.beans.responses.ProductoResponse;
import ar.edu.ubp.das.indecrest.components.SimpleJdbcCallFactory;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.simple.SimpleJdbcCall;
import org.springframework.stereotype.Repository;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;

import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
public class ProductosRepository {

    @Autowired
    private SimpleJdbcCallFactory jdbcCallFactory;

    private final SimpleJdbcCall jdbcCall;

    public ProductosRepository(JdbcTemplate jdbcTemplate) {
        this.jdbcCall = new SimpleJdbcCall(jdbcTemplate)
                .withProcedureName("ComparadorPrecios");
    }

    public List<GetProductResponse> getProductos(String idioma, ProductoRequest request) {
        SqlParameterSource params = new MapSqlParameterSource()
                .addValue("codIdioma", idioma)
                .addValue("nomProducto", request.getNomProducto())
                .addValue("idMarca", request.getIdMarca())
                .addValue("idCategoria", request.getIdCategoria())
                .addValue("pageIndex", request.getPageIndex())
                .addValue("pageSize", request.getPageSize());
        return jdbcCallFactory.executeQuery(
                "sp_obtener_productos", "dbo", params, "productos", GetProductResponse.class
        );
    }

    public GetProductResponse getProductById(String idioma, ProductoByIdRequest request){
        SqlParameterSource params = new MapSqlParameterSource()
                .addValue("codIdioma", idioma)
                .addValue("codBarra", request.getCodBarra());
        List<GetProductResponse> productos = jdbcCallFactory.executeQuery(
                "sp_obtener_producto_por_codBarra", "dbo", params, "productos", GetProductResponse.class
        );
        if (productos.isEmpty()) {
            throw new RuntimeException("No se encontró el producto con el id: " + request.getCodBarra());
        }
        return productos.get(0);
    }

    public Object compararPreciosProductos(List<String> request) {
        String codigosBarra = String.join(",", request);
        Map<String, Object> inParams = new HashMap<>();
        inParams.put("CodigosBarra", codigosBarra);

        Map<String, Object> response = jdbcCall.execute(inParams);

        List<Map<String, Object>> resultSet = (List<Map<String, Object>>) response.get("#result-set-1");
        if (resultSet == null || resultSet.isEmpty()) {
            throw new RuntimeException("El conjunto de resultados está vacío");
        }

        String rawJson = (String) resultSet.get(0).get("JSON_F52E2B61-18A1-11d1-B105-00805F49916B");
        if (rawJson == null) {
            throw new RuntimeException("No se encontró el JSON esperado en la respuesta");
        }

        List<Map<String, Object>> dbResponse = convertRawJsonToList(rawJson);

        try {
            return processPriceComparison(dbResponse);
//            ObjectMapper objectMapper = new ObjectMapper();
//            return objectMapper.readValue(rawJson, List.class);
        } catch (Exception e) {
            throw new RuntimeException("Error al procesar el JSON", e);
        }
    }

    public void insertarProductos(List<ProductoPorSucursalRequest> productosExternos)  {
        ObjectMapper objectMapper = new ObjectMapper();
        try {
            String productosJson = objectMapper.writeValueAsString(productosExternos);
            MapSqlParameterSource params = new MapSqlParameterSource()
                    .addValue("ProductosJSON", productosJson);

            jdbcCallFactory.execute("InsertOrUpdateProductosSupermercados_JSON","dbo",params);
        }
        catch (JsonProcessingException e) {
            throw new RuntimeException("Error al convertir la lista de productos a JSON", e);
        }

    }

    public static PriceComparisonResponse processPriceComparison(List<Map<String, Object>> dbResponse) {
        Map<Integer, Double> supermarketTotals = new HashMap<>();
        Map<Integer, Integer> bestPriceCounts = new HashMap<>();
        String recommendedSupermarketName = "";

        // Parse the database response
        for (Map<String, Object> product : dbResponse) {
            List<Map<String, Object>> prices = (List<Map<String, Object>>) product.get("Precios");
            for (Map<String, Object> priceInfo : prices) {
                int supermarketId = (int) priceInfo.get("nroSupermercado");
                String supermarketName = (String) priceInfo.get("nomSupermercado");
                double price = (double) priceInfo.get("precio");
                boolean isBestPrice = (boolean) priceInfo.get("mejorPrecio");

                // Accumulate totals
                supermarketTotals.put(supermarketId,
                        supermarketTotals.getOrDefault(supermarketId, 0.0) + price);

                // Count best prices
                if (isBestPrice) {
                    bestPriceCounts.put(supermarketId,
                            bestPriceCounts.getOrDefault(supermarketId, 0) + 1);
                    recommendedSupermarketName = supermarketName;
                }

            }
        }

        // Find the recommended supermarket
        int recommendedSupermarketId = bestPriceCounts.entrySet().stream()
                .max(Map.Entry.comparingByValue())
                .orElseThrow(() -> new RuntimeException("No data available"))
                .getKey();

        // Calculate total amount and total products for the recommended supermarket
        double totalAmount = supermarketTotals.get(recommendedSupermarketId);
        int totalProducts = bestPriceCounts.get(recommendedSupermarketId);

        // Build the response
        PriceComparisonResponse response = new PriceComparisonResponse();
        response.setSupermarketName(recommendedSupermarketName);
        response.setTotalProducts(totalProducts);
        response.setTotalAmount(totalAmount);
        response.setComparison(Collections.singletonList(dbResponse));

        return response;
    }

    public static List<Map<String, Object>> convertRawJsonToList(String rawJson) {
        try {
            ObjectMapper objectMapper = new ObjectMapper();
            return objectMapper.readValue(rawJson, new TypeReference<List<Map<String, Object>>>() {});
        } catch (Exception e) {
            throw new RuntimeException("Error converting JSON to List<Map<String, Object>>", e);
        }
    }
}
