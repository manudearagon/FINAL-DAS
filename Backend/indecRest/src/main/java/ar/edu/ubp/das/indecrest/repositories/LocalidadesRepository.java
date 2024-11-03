package ar.edu.ubp.das.indecrest.repositories;
import ar.edu.ubp.das.indecrest.beans.LocalidadBean;
import ar.edu.ubp.das.indecrest.components.SimpleJdbcCallFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class LocalidadesRepository {

    @Autowired
    private SimpleJdbcCallFactory jdbcCallFactory;

    public List<LocalidadBean> getAllLocalidades(Integer codProvincia) {
        SqlParameterSource params = new MapSqlParameterSource()
                .addValue("codProvincia", codProvincia);
        return jdbcCallFactory.executeQuery("sp_obtener_localidades_por_provincia", "dbo", params,"localidades" , LocalidadBean.class);
    }
}
