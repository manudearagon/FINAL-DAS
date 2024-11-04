package ar.edu.ubp.das.indecrest.resources;
import ar.edu.ubp.das.indecrest.repositories.ProvinciasRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.io.IOException;
import java.util.List;

@RestController
@RequestMapping("/provincias")
public class ProvinciasResource {

    @Autowired
    private ProvinciasRepository provinciasRepository;

    @GetMapping("/{nomProvincia}")
    public ResponseEntity<?> getAllProvincias(@PathVariable String nomProvincia) {
        return ResponseEntity.ok(provinciasRepository.getAllProvincias(nomProvincia));
    }

}
