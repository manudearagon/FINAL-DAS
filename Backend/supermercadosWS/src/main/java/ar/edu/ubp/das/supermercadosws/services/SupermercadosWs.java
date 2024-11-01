package ar.edu.ubp.das.supermercadosws.services;

import ar.edu.ubp.das.supermercadosws.beans.SupermercadoBean;
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

    @WebMethod(operationName = "GetSupermercados")
    @RequestWrapper(localName = "GetSupermercadosRequest")
    @ResponseWrapper(localName = "GetSupermercadosResponse")
    @WebResult(name = "SupermercadosResponse")
    public List<SupermercadoBean> GetSupermercados(@WebParam(name = "cuit") String cuit) {
        return supermercadosRepository.getSupermercados(cuit);
    }
}
