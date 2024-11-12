package ar.edu.ubp.das.indecrest.repositories;

import ar.edu.ubp.das.indecrest.beans.ServiciosSupermercadoBean;
import ar.edu.ubp.das.indecrest.beans.responses.SucursalResponseBean;
import ar.edu.ubp.das.indecrest.components.SimpleJdbcCallFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Repository;
import org.springframework.web.client.RestTemplate;

import java.util.Base64;
import java.util.List;
import java.util.Objects;

@Repository
public class ServiciosSupermercadosRepository {

    @Autowired
    private SimpleJdbcCallFactory jdbcCallFactory;

    public void updateSucursales() {
        SqlParameterSource params = new MapSqlParameterSource();
        List<ServiciosSupermercadoBean> services = jdbcCallFactory.executeQuery(
                "sp_obtener_servicios_supermercados", "dbo", params, "servicios_supermercados", ServiciosSupermercadoBean.class
        );

        services.forEach(service -> {
            try {
                String username = "usr_admin";
                String password = "pwd_admin";
                String auth = username + ":" + password;
                String encodedAuth = Base64.getEncoder().encodeToString(auth.getBytes());
                if (Objects.equals(service.getTipoServicio(), "WS")) {
                    return;
                } else {
                    RestTemplate restTemplate = new RestTemplate();
                    HttpHeaders headers = new HttpHeaders();
                    headers.set("Authorization", "Basic " + encodedAuth);

                    HttpEntity<String> entity = new HttpEntity<>(headers);

                      String url = service.getUrlServicio();
                      ResponseEntity<SucursalResponseBean[]> response = restTemplate.exchange(url, HttpMethod.POST, entity, SucursalResponseBean[].class);
                      SucursalResponseBean[] sucursales = response.getBody();

                      if (sucursales != null) {
                          for (SucursalResponseBean sucursal : sucursales) {
                              SqlParameterSource sucursalParams = new MapSqlParameterSource()
                                      .addValue("nro_supermercado", service.getNroSupermercado())
                                      .addValue("nro_sucursal", sucursal.getNroSucursal())
                                      .addValue("nom_sucursal", sucursal.getNomSucursal())
                                      .addValue("calle", sucursal.getCalle())
                                      .addValue("nro_calle", sucursal.getNroCalle())
                                      .addValue("telefonos", sucursal.getTelefonos())
                                      .addValue("coord_latitud", sucursal.getCoordLatitud())
                                      .addValue("coord_longitud", sucursal.getCoordLongitud())
                                      .addValue("nro_localidad", sucursal.getNroLocalidad())
                                      .addValue("habilitada", sucursal.isHabilitada());

                              jdbcCallFactory.execute("sp_actualizar_sucursal", "dbo", sucursalParams);
                          }
                      }
                }
            } catch (Exception e) {
                System.err.println("Error obteniendo o actualizando sucursales desde URL: " + service.getUrlServicio());
                e.printStackTrace();
            }
        });
    }

}
