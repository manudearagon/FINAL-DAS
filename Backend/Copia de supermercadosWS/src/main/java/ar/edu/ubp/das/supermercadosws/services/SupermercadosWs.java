package ar.edu.ubp.das.supermercadosws.services;

import ar.edu.ubp.das.supermercadosws.beans.SupermercadoBean;
import ar.edu.ubp.das.supermercadosws.repositories.SupermercadosRepository;
import jakarta.jws.WebMethod;
import jakarta.jws.WebService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@WebService
public class SupermercadosWs {

    @Autowired
    private SupermercadosRepository supermercadosRepository;

    @WebMethod
    public List<SupermercadoBean> getSupermercados(String cuit) {
        return supermercadosRepository.getSupermercados(cuit);
    }

    @WebMethod
    public void insertSupermercado(SupermercadoBean supermercado) {
        supermercadosRepository.insertSupermercado(supermercado);
    }
}
