package ar.edu.ubp.das.supermercadosws.endpoints;
import ar.edu.ubp.das.supermercadosws.beans.SupermercadoBean;
import ar.edu.ubp.das.supermercadosws.services.SupermercadosWs;
import ar.edu.ubp.das.supermercadosws.services.jaxws.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ws.server.endpoint.annotation.Endpoint;
import org.springframework.ws.server.endpoint.annotation.PayloadRoot;
import org.springframework.ws.server.endpoint.annotation.RequestPayload;
import org.springframework.ws.server.endpoint.annotation.ResponsePayload;
import java.util.List;

@Endpoint
public class SupermercadosEndpoints {
    private static final String NAMESPACE_URI =
            "http://services.supermercadosws.das.ubp.edu.ar/";

    @Autowired
    private SupermercadosWs service;

    @PayloadRoot(namespace = NAMESPACE_URI, localPart = "getSupermercados")
    @ResponsePayload
    public GetSupermercadosResponse getSupermercados(@RequestPayload GetSupermercados request) {
        List<SupermercadoBean> supermercados = service.getSupermercados(request.getArg0());
        GetSupermercadosResponse response = new GetSupermercadosResponse();
        response.setReturn(supermercados);
        return response;
    }
}
