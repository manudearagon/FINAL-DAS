package ar.edu.ubp.das.indecrest.repositories;
import ar.edu.ubp.das.indecrest.beans.ProvinciaBean;
import ar.edu.ubp.das.indecrest.components.SimpleJdbcCallFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ProvinciasRepository {

    @Autowired
    private SimpleJdbcCallFactory jdbcCallFactory;

    public List<ProvinciaBean> getAllProvincias(String nomProvincia) {
        SqlParameterSource params = new MapSqlParameterSource()
                .addValue("nomProvincia", nomProvincia);
        return jdbcCallFactory.executeQuery("sp_obtener_provincias", "dbo", params,"provincias" , ProvinciaBean.class);
    }
}
