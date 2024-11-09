package ar.edu.ubp.das.indecrest.repositories;
import ar.edu.ubp.das.indecrest.beans.SucursalBean;
import ar.edu.ubp.das.indecrest.components.SimpleJdbcCallFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class SucursalesRepository {

    @Autowired
    private SimpleJdbcCallFactory jdbcCallFactory;

    public List<SucursalBean> getSucursales(Integer nroSupermercado, Integer nroLocalidad) {
        SqlParameterSource params = new MapSqlParameterSource()
                .addValue("nroSupermercado", nroSupermercado)
                .addValue("nroLocalidad", nroLocalidad);
        return jdbcCallFactory.executeQuery("sp_obtener_sucursales_por_supermercado_y_localidad", "dbo", params,"sucursales" , SucursalBean.class);
    }

    public List<SucursalBean> getSucursal(Integer nroSucursal) {
        SqlParameterSource params = new MapSqlParameterSource()
                .addValue("nroSucursal", nroSucursal);
        return jdbcCallFactory.executeQuery("sp_obtener_datos_sucursal", "dbo", params,"sucursales" , SucursalBean.class);
    }
}
