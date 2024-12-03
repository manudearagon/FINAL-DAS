package ar.edu.ubp.das.supermercadosrest.repositories;

import ar.edu.ubp.das.supermercadosrest.beans.SucursalBean;
import ar.edu.ubp.das.supermercadosrest.components.SimpleJdbcCallFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public class SucursalesRepository {


    @Autowired
    private SimpleJdbcCallFactory jdbcCallFactory;

    public List<SucursalBean> getSucursales() {
        SqlParameterSource params = new MapSqlParameterSource();
        return jdbcCallFactory.executeQuery("sp_obtener_sucursales", "dbo",  params, "sucursales", SucursalBean.class);
    }
}
