package ar.edu.ubp.das.indecrest.batch.providers;

import ar.edu.ubp.das.indecrest.batch.base.BaseSupermarketProvider;

import ar.edu.ubp.das.indecrest.beans.ProductoSucursalesBean;
import ar.edu.ubp.das.indecrest.beans.requests.ProductoPorSucursalRequest;
import ar.edu.ubp.das.indecrest.beans.responses.ProductoResponse;
import ar.edu.ubp.das.indecrest.beans.responses.SucursalSupermarketResponse;
import ar.edu.ubp.das.indecrest.utils.Httpful;
import com.google.gson.reflect.TypeToken;
import jakarta.ws.rs.HttpMethod;

import java.util.ArrayList;
import java.util.List;


public class RestSupermarketProvider extends BaseSupermarketProvider {
    public RestSupermarketProvider() {
    }

    public List<SucursalSupermarketResponse> obtenerSucursales(String url, int nroSupermercado) {

        List<SucursalSupermarketResponse> response = new Httpful(url)
                .basicAuth("usr_admin", "pwd_admin")
                .method(HttpMethod.POST)
                .execute(new TypeToken<List<SucursalSupermarketResponse>>() {}.getType());
        return response;
    }

    public List<ProductoPorSucursalRequest> obtenerProductos(String url, int nroSupermercado) {
        List<ProductoSucursalesBean> productoSucursalesBean = new Httpful(url)
                .basicAuth("usr_admin", "pwd_admin")
                .method(HttpMethod.POST)
                .execute(new TypeToken<List<ProductoSucursalesBean>>() {}.getType());

        List<ProductoPorSucursalRequest> response = new ArrayList<>();

        for (ProductoSucursalesBean producto : productoSucursalesBean) {
            try {
                ProductoPorSucursalRequest productoRequest = new ProductoPorSucursalRequest(
                        nroSupermercado,
                        producto.getNro_sucursal(),
                        producto.getCod_barra(),
                        producto.getPrecio(),
                        producto.getVigente()
                );
                response.add(productoRequest);
                System.out.println("Producto {" + producto.getCod_barra() + "} procesado exitosamente");
            } catch (Exception e) {
                System.out.println("Error procesando producto {" + producto.getCod_barra() + "}: {" + e.getMessage() + "}");
            }
        }

        return response;
    }

}
