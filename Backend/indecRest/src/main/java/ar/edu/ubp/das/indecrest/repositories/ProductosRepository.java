package ar.edu.ubp.das.indecrest.repositories;

import ar.edu.ubp.das.indecrest.beans.requests.ComparadorPreciosRequest;
import ar.edu.ubp.das.indecrest.beans.requests.ProductoPorSucursalRequest;
import ar.edu.ubp.das.indecrest.beans.requests.ProductoRequest;
import ar.edu.ubp.das.indecrest.beans.responses.ComparadorPreciosProducto;
import ar.edu.ubp.das.indecrest.beans.responses.ComparadorPreciosResponse;
import ar.edu.ubp.das.indecrest.beans.responses.ProductoResponse;
import ar.edu.ubp.das.indecrest.components.SimpleJdbcCallFactory;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.simple.SimpleJdbcCall;
import org.springframework.stereotype.Repository;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;

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

    public List<ProductoResponse> getProductos(ProductoRequest request) {
        SqlParameterSource params = new MapSqlParameterSource()
                .addValue("nomProducto", request.getNomProducto())
                .addValue("idMarca", request.getIdMarca())
                .addValue("idCategoria", request.getIdCategoria())
                .addValue("pageIndex", request.getPageIndex())
                .addValue("pageSize", request.getPageSize());
        return jdbcCallFactory.executeQuery(
                "sp_obtener_productos", "dbo", params, "productos", ProductoResponse.class
        );
    }


    public List<ComparadorPreciosResponse> compararPrecios(List<String> request) {
        String codigosBarra = String.join(",", request);
        SqlParameterSource params = new MapSqlParameterSource()
                .addValue("CodigosBarra", codigosBarra);
        List<ComparadorPreciosResponse> response = jdbcCallFactory.executeQuery(
                "ComparadorPrecios", "dbo", params, "productos", ComparadorPreciosResponse.class
        );
        return response;
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

        try {
            ObjectMapper objectMapper = new ObjectMapper();
            return objectMapper.readValue(rawJson, List.class);
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

}
