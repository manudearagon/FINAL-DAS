package ar.edu.ubp.das.indecrest.batch.contracts;

import ar.edu.ubp.das.indecrest.beans.requests.ProductoPorSucursalRequest;
import ar.edu.ubp.das.indecrest.beans.responses.SucursalSupermarketResponse;

import java.util.List;

public interface ISupermarketProvider {
    List<SucursalSupermarketResponse> obtenerSucursales(String url, int nroSupermercado);

    List<ProductoPorSucursalRequest> obtenerProductos(String url, int nroSupermercado);
}
