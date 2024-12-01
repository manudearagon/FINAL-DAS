package ar.edu.ubp.das.indecrest.batch.contracts;

import ar.edu.ubp.das.indecrest.beans.responses.SucursalSupermarketResponse;

import java.util.List;

public interface ISupermarketProvider {
    List<SucursalSupermarketResponse> obtenerSucursales(String url, int nroSupermercado);
}
