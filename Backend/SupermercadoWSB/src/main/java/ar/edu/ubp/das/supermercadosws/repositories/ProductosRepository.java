package ar.edu.ubp.das.supermercadosws.repositories;

import ar.edu.ubp.das.supermercadosws.beans.ProductoSucursalBean;
import ar.edu.ubp.das.supermercadosws.components.SimpleJdbcCallFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ProductosRepository {

    @Autowired
    private SimpleJdbcCallFactory jdbcCallFactory;

    public List<ProductoSucursalBean> obtenerProductos() {
        SqlParameterSource params = new MapSqlParameterSource();
        return jdbcCallFactory.executeQuery("sp_get_all_products", "dbo",  params, "productos", ProductoSucursalBean.class);
    }
}
