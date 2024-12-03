package ar.edu.ubp.das.supermercadosrest.repositories;
import ar.edu.ubp.das.supermercadosrest.beans.CategoriaProductoBean;
import ar.edu.ubp.das.supermercadosrest.beans.ProductoBean;
import ar.edu.ubp.das.supermercadosrest.beans.SucursalBean;
import ar.edu.ubp.das.supermercadosrest.beans.SupermercadoBean;
import ar.edu.ubp.das.supermercadosrest.components.SimpleJdbcCallFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class SupermercadosRepository {
    @Autowired
    private SimpleJdbcCallFactory jdbcCallFactory;

    public List<SupermercadoBean> getAllSupermercados() {
        return jdbcCallFactory.executeQuery("sp_obtener_supermercados", "dbo",  "supermercados" , SupermercadoBean.class);
    }

    public List<SupermercadoBean> getSupermercados(String cuit) {
        SqlParameterSource params = new MapSqlParameterSource()
                .addValue("cuit", cuit);
        return jdbcCallFactory.executeQuery("sp_obtener_supermercados_por_cuit", "dbo", params, "supermercados" , SupermercadoBean.class);
    }

    public void insertSupermercado(SupermercadoBean supermercado) {
        SqlParameterSource params = new MapSqlParameterSource()
                .addValue("cuit", supermercado.getCuit())
                .addValue("razon_social", supermercado.getRazonSocial())
                .addValue("calle", supermercado.getCalle())
                .addValue("nro_calle", supermercado.getNroCalle())
                .addValue("telefonos", supermercado.getTelefonos());

        jdbcCallFactory.execute("sp_insertar_supermercado", "dbo", params);
    }

    public List<SucursalBean> getSucursales(String nomSupermercado) {
        SqlParameterSource params = new MapSqlParameterSource()
                .addValue("nro_supermercado", nomSupermercado);
        return jdbcCallFactory.executeQuery("get_sucursales", "dbo", params, "sucursales", SucursalBean.class);
    }

    public List<ProductoBean> getProductos(String nomSupermercado) {
        SqlParameterSource params = new MapSqlParameterSource()
                .addValue("nro_supermercado", nomSupermercado);
        return jdbcCallFactory.executeQuery("get_productos", "dbo", params, "productos", ProductoBean.class);
    }

    public List<CategoriaProductoBean> getCategorias() {
        return jdbcCallFactory.executeQuery("get_categorias", "dbo", "categorias", CategoriaProductoBean.class);
    }

    public List<ProductoBean> getProductosPorCategoria(String nomSupermercado, int idCategoria) {
        SqlParameterSource params = new MapSqlParameterSource()
                .addValue("nro_supermercado", nomSupermercado)
                .addValue("id_categoria", idCategoria);
        return jdbcCallFactory.executeQuery("get_productos_por_categoria", "dbo", params, "productos", ProductoBean.class);
    }

    public void updateSupermercado(SupermercadoBean supermercado) {
        SqlParameterSource params = new MapSqlParameterSource()
                .addValue("cuit", supermercado.getCuit())
                .addValue("razon_social", supermercado.getRazonSocial())
                .addValue("calle", supermercado.getCalle())
                .addValue("nro_calle", supermercado.getNroCalle())
                .addValue("telefonos", supermercado.getTelefonos());

        jdbcCallFactory.execute("update_supermercado", "dbo", params);
    }


}
