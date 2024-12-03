package ar.edu.ubp.das.supermercadosws.repositories;
import ar.edu.ubp.das.supermercadosws.beans.SucursalBean;
import ar.edu.ubp.das.supermercadosws.beans.SupermercadoBean;
import ar.edu.ubp.das.supermercadosws.components.SimpleJdbcCallFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;

import java.util.List;

@Repository
public class SupermercadosRepository {
    @Autowired
    private SimpleJdbcCallFactory jdbcCallFactory;


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

    public List<SucursalBean> getSucursales() {
        SqlParameterSource params = new MapSqlParameterSource();
        return jdbcCallFactory.executeQuery("sp_obtener_sucursales", "dbo", params, "sucursales" , SucursalBean.class);
    }

}
