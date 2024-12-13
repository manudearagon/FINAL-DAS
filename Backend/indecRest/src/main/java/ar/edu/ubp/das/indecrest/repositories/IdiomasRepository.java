package ar.edu.ubp.das.indecrest.repositories;

import ar.edu.ubp.das.indecrest.beans.IdiomaBean;
import ar.edu.ubp.das.indecrest.beans.LocalidadBean;
import ar.edu.ubp.das.indecrest.components.SimpleJdbcCallFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class IdiomasRepository {

    @Autowired
    private SimpleJdbcCallFactory jdbcCallFactory;

    public List<IdiomaBean> obtenerIdiomas(){
        SqlParameterSource params = new MapSqlParameterSource();
        return jdbcCallFactory.executeQuery("sp_obtener_idiomas", "dbo", params,"idiomas" , IdiomaBean.class);
    }
}
