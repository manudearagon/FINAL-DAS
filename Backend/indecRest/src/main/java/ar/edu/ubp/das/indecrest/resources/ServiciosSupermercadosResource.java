package ar.edu.ubp.das.indecrest.resources;
import ar.edu.ubp.das.indecrest.repositories.ServiciosSupermercadosRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/servicios_supermercados")
public class ServiciosSupermercadosResource {

    @Autowired
    private ServiciosSupermercadosRepository serviciosSupermercadosRepository;

    @PostMapping("/actualizar_sucursales")
    public void getAllServiciosSupermercados() {
        serviciosSupermercadosRepository.updateSucursales();
    }
}
