package ar.edu.ubp.das.indecrest.repositories;
import ar.edu.ubp.das.indecrest.beans.SucursalBean;
import ar.edu.ubp.das.indecrest.beans.SupermercadosConSucursalesBean;
import ar.edu.ubp.das.indecrest.beans.responses.SucursalSupermarketResponse;
import ar.edu.ubp.das.indecrest.beans.responses.SucursalesPorSupermercadoBean;
import ar.edu.ubp.das.indecrest.components.SimpleJdbcCallFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Repository;

import java.util.*;

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

    public List<SupermercadosConSucursalesBean> getSucursalesPorSupermercado() {
        SqlParameterSource params = new MapSqlParameterSource();
        List<SucursalesPorSupermercadoBean> sucursalesList = jdbcCallFactory.executeQuery(
                "sp_obtener_sucursales_con_supermercado", "dbo", params, "sucursales", SucursalesPorSupermercadoBean.class
        );

        Map<String, List<SucursalBean>> supermercadosMap = new HashMap<>();

        sucursalesList.forEach(sucursal -> {
            String razonSocial = sucursal.getRazonSocial();

            SucursalBean sucursalBean = new SucursalBean(
                    sucursal.getNroSupermercado(),
                    sucursal.getNroSucursal(),
                    sucursal.getNomSucursal(),
                    sucursal.getCalle(),
                    sucursal.getNroCalle(),
                    String.join(", ", sucursal.getTelefonos()),
                    (float) sucursal.getCoordLatitud(),
                    (float) sucursal.getCoordLongitud(),
                    sucursal.getHorarioSucursal(),
                    sucursal.getServiciosDisponibles(),
                    sucursal.getNroLocalidad(),
                    sucursal.isHabilitada()
            );

            supermercadosMap
                    .computeIfAbsent(razonSocial, k -> new ArrayList<>())
                    .add(sucursalBean);
        });

        List<SupermercadosConSucursalesBean> supermercadosConSucursales = new ArrayList<>();
        supermercadosMap.forEach((razonSocial, sucursales) -> {
            SupermercadosConSucursalesBean supermercadoBean = new SupermercadosConSucursalesBean();
            supermercadoBean.setRazonSocial(razonSocial);
            supermercadoBean.setSucursalList(sucursales);
            supermercadosConSucursales.add(supermercadoBean);
        });

        return supermercadosConSucursales;
    }


    public void insertarSucursal(Integer nroSupermercado, SucursalSupermarketResponse sucursal){
        SqlParameterSource params = new MapSqlParameterSource()
                .addValue("nroSupermercado", nroSupermercado)
                .addValue("nroSucursal", sucursal.getNroSucursal())
                .addValue("nomSucursal", sucursal.getNomSucursal())
                .addValue("calle", sucursal.getCalle())
                .addValue("nroCalle", sucursal.getNroCalle())
                .addValue("telefonos", String.join(",", sucursal.getTelefonos()))
                .addValue("coordLatitud", sucursal.getCoordLatitud())
                .addValue("coordLongitud", sucursal.getCoordLongitud())
                .addValue("nroLocalidad", sucursal.getNroLocalidad())
                .addValue("habilitada", sucursal.isHabilitada());
        jdbcCallFactory.execute("sp_insertar_actualizar_sucursal", "dbo", params);
    }
}
