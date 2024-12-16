package ar.edu.ubp.das.supermercadosws.services;
//import ar.edu.ubp.das.supermercadosws.beans.SucursalBean;
import ar.edu.ubp.das.supermercadosws.beans.*;
import ar.edu.ubp.das.supermercadosws.repositories.ProductosRepository;
import ar.edu.ubp.das.supermercadosws.repositories.SupermercadosRepository;
import jakarta.jws.WebMethod;
import jakarta.jws.WebParam;
import jakarta.jws.WebResult;
import jakarta.jws.WebService;
import jakarta.xml.ws.RequestWrapper;
import jakarta.xml.ws.ResponseWrapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@WebService(serviceName = "SupermercadosWS",
            targetNamespace = "http://services.supermercadosws.das.ubp.edu.ar/"
            )
public class SupermercadosWs {

    @Autowired
    private SupermercadosRepository supermercadosRepository;

    @Autowired
    private ProductosRepository productosRepository;

    @WebMethod(operationName = "GetSupermercados")
    @RequestWrapper(localName = "GetSupermercadosRequest")
    @ResponseWrapper(localName = "GetSupermercadosResponse")
    @WebResult(name = "SupermercadosResponse")
    public List<SupermercadoBean> GetSupermercados(@WebParam(name = "cuit") String cuit) {
        return supermercadosRepository.getSupermercados(cuit);
    }

    @WebMethod(operationName = "GetSucursales")
    @RequestWrapper(localName = "GetSucursalesRequest")
    @ResponseWrapper(localName = "GetSucursalesResponse")
    @WebResult(name = "SucursalesResponse")
    public List<SucursalBean> GetSucursales() {
        return supermercadosRepository.getSucursales();
    }

    @WebMethod(operationName = "GetProductos")
    @RequestWrapper(localName = "GetProductosRequest")
    @ResponseWrapper(localName = "GetProductosResponse")
    @WebResult(name = "ProductosResponse")
    public List<ProductoSucursalBean> GetProductos() {
        return productosRepository.obtenerProductos();
    }
}
