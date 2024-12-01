package ar.edu.ubp.das.indecrest.batch.providers;

import ar.edu.ubp.das.indecrest.batch.base.BaseSupermarketProvider;

import ar.edu.ubp.das.indecrest.beans.responses.SucursalSupermarketResponse;
import ar.edu.ubp.das.indecrest.utils.Httpful;
import com.google.gson.reflect.TypeToken;
import jakarta.ws.rs.HttpMethod;

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
}
