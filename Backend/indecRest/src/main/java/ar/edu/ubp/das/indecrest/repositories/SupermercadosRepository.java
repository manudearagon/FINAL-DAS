package ar.edu.ubp.das.indecrest.repositories;
import ar.edu.ubp.das.indecrest.beans.SupermercadoBean;
import ar.edu.ubp.das.indecrest.components.SimpleJdbcCallFactory;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Repository;
import org.springframework.web.client.RestTemplate;


import java.util.List;
import java.io.IOException;

@Repository
public class SupermercadosRepository {
    @Autowired
    private SimpleJdbcCallFactory jdbcCallFactory;

    public List<SupermercadoBean> getAllSupermercados() {
        return jdbcCallFactory.executeQuery("sp_obtener_supermercados", "dbo",  "supermercados" , SupermercadoBean.class);
    }

    public List<SupermercadoBean> getSupermarkets() {
        try {
            RestTemplate restTemplate = new RestTemplate();
            String url = "http://localhost:8086/api/supermarkets/supermercados";

            ResponseEntity<String> response = restTemplate.getForEntity(url, String.class);

            Gson gson = new Gson();
            List<SupermercadoBean> supermercados = gson.fromJson(
                    response.getBody(),
                    new TypeToken<List<SupermercadoBean>>() {}.getType()
            );

            return supermercados;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public List<SupermercadoBean> getSupermercados(String cuit) {
        SqlParameterSource params = new MapSqlParameterSource()
                .addValue("cuit", cuit);
        return jdbcCallFactory.executeQuery("sp_obtener_supermercados_por_cuit", "dbo", params, "supermercados" , SupermercadoBean.class);
    }



}
