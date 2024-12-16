package ar.edu.ubp.das.indecrest.batch.providers;

import ar.edu.ubp.das.indecrest.batch.base.BaseSupermarketProvider;
import ar.edu.ubp.das.indecrest.beans.ProductoSucursalesBean;
import ar.edu.ubp.das.indecrest.beans.requests.ProductoPorSucursalRequest;
import ar.edu.ubp.das.indecrest.beans.responses.SucursalSoapBean;
import ar.edu.ubp.das.indecrest.utils.SOAPClient;
import ar.edu.ubp.das.indecrest.beans.responses.SucursalSupermarketResponse;

import java.util.ArrayList;
import java.util.List;

import static java.lang.Float.parseFloat;

public class SoapSupermarketProvider extends BaseSupermarketProvider {
    public SoapSupermarketProvider() {
    }

    public List<SucursalSupermarketResponse> obtenerSucursales(String url, int nroSupermercado) {
        SOAPClient client = new SOAPClient.SOAPClientBuilder()
                .wsdlUrl(url)
                .namespace("http://services.supermercadosws.das.ubp.edu.ar/")
                .serviceName("SupermercadosWSPortService")
                .portName("SupermercadosWSPortSoap11")
                .operationName("GetSucursalesRequest")
                .username("usr_admin")
                .password("pwd_admin")
                .build();

        List<SucursalSoapBean> sucursales = client.callServiceForList(SucursalSoapBean.class, "GetSucursalesResponse");

        List<SucursalSupermarketResponse> response = new ArrayList<>();

        for (SucursalSoapBean sucursal : sucursales) {
            try {
                SucursalSupermarketResponse sucursalResponse = new SucursalSupermarketResponse(
                        nroSupermercado,
                        sucursal.getNroSucursal(),
                        sucursal.getNomSucursal(),
                        sucursal.getCalle(),
                        sucursal.getNroCalle(),
                        List.of(sucursal.getTelefonos()),
                        parseFloat(String.valueOf(sucursal.getCoordLatitud())),
                        parseFloat(String.valueOf(sucursal.getCoordLongitud())),
                        null,
                        null,
                        sucursal.getNroLocalidad(),
                        sucursal.isHabilitada()
                );
                response.add(sucursalResponse);
                System.out.println("Sucursal {" + sucursal.getNomSucursal() + "} procesada exitosamente");
            } catch (Exception e) {
                System.out.println("Error procesando sucursal {" + sucursal.getNroSucursal() + "}: {" + e.getMessage() + "}");
            }
        }

        return response;
    }

    public List<ProductoPorSucursalRequest> obtenerProductos(String url, int nroSupermercado) {
        SOAPClient client = new SOAPClient.SOAPClientBuilder()
                .wsdlUrl(url)
                .namespace("http://services.supermercadosws.das.ubp.edu.ar/")
                .serviceName("SupermercadosWSPortService")
                .portName("SupermercadosWSPortSoap11")
                .operationName("GetProductosRequest")
                .username("usr_admin")
                .password("pwd_admin")
                .build();

        List<ProductoSucursalesBean> productos;
        try {
                productos = client.callServiceForList(ProductoSucursalesBean.class, "GetProductosResponse");
        }
        catch (Exception e) {
            System.out.println("Error al obtener productos: " + e.getMessage());
            return new ArrayList<>();
        }

        List<ProductoPorSucursalRequest> response = new ArrayList<>();

        for (ProductoSucursalesBean producto : productos) {
            try {
                ProductoPorSucursalRequest productoResponse = new ProductoPorSucursalRequest(
                        nroSupermercado,
                        producto.getNroSucursal(),
                        producto.getCodBarra(),
                        producto.getPrecio(),
                        producto.getVigente()
                );
                response.add(productoResponse);
                System.out.println("Producto {" + producto.getCodBarra() + "} procesado exitosamente");
            } catch (Exception e) {
                System.out.println("Error procesando producto {" + producto.getCodBarra() + "}: {" + e.getMessage() + "}");
            }
        }

        return response;
    }
}
