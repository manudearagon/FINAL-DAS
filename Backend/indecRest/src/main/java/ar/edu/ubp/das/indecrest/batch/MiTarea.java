package ar.edu.ubp.das.indecrest.batch;

import ar.edu.ubp.das.indecrest.repositories.ServiciosSupermercadosRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MiTarea {

    @Autowired
    private ServiciosSupermercadosRepository serviciosSupermercadosRepository;

    public void ejecutar() {
        serviciosSupermercadosRepository.getServiciosSupermercados();
    }

}
