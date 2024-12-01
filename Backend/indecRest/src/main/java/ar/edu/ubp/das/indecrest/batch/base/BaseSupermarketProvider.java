package ar.edu.ubp.das.indecrest.batch.base;

import ar.edu.ubp.das.indecrest.batch.contracts.ISupermarketProvider;
import ar.edu.ubp.das.indecrest.beans.responses.SucursalSupermarketResponse;

import java.util.List;

public class BaseSupermarketProvider  implements ISupermarketProvider {
    public BaseSupermarketProvider() {
    }

    public List<SucursalSupermarketResponse> obtenerSucursales(String url, int nroSupermercado) {
        return null;
    }

}
