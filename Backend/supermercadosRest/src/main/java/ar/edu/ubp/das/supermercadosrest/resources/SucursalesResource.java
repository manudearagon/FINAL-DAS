package ar.edu.ubp.das.supermercadosrest.resources;

import ar.edu.ubp.das.supermercadosrest.repositories.SucursalesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/sucursales")
public class SucursalesResource {

    @Autowired
    private SucursalesRepository sucursalesRepository;


    @PostMapping("")
    public ResponseEntity<?> getAllSucursales() {
        return ResponseEntity.ok(sucursalesRepository.getSucursales());
    }
}
