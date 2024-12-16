package ar.edu.ubp.das.supermercadosws.endpoints;

import ar.edu.ubp.das.supermercadosws.beans.ProductoSucursalBean;
import ar.edu.ubp.das.supermercadosws.services.SupermercadosWs;
import ar.edu.ubp.das.supermercadosws.services.jaxws.GetProductosResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ws.server.endpoint.annotation.Endpoint;
import org.springframework.ws.server.endpoint.annotation.PayloadRoot;
import org.springframework.ws.server.endpoint.annotation.ResponsePayload;

import java.util.List;

@Endpoint
public class ProductosEndpoints {

    private static final String NAMESPACE_URI =
            "http://services.supermercadosws.das.ubp.edu.ar/";

    @Autowired
    private SupermercadosWs service;


    @PayloadRoot(namespace = NAMESPACE_URI, localPart = "GetProductosRequest")
    @ResponsePayload
    public GetProductosResponse getProductos() {
        List<ProductoSucursalBean> productos = service.GetProductos();
        GetProductosResponse response = new GetProductosResponse();
        response.setProductosResponse(productos);
        return response;
    }
}
