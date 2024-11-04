package ar.edu.ubp.das.indecrest.resources;
import ar.edu.ubp.das.indecrest.repositories.LocalidadesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.io.IOException;
import java.util.List;

@RestController
@RequestMapping("/localidades")
public class LocalidadesResource {

    @Autowired
    private LocalidadesRepository localidadesRepository;

    @GetMapping("/{codProvincia}")
    public ResponseEntity<?> getAllLocalidades(@PathVariable Integer codProvincia) {
        return ResponseEntity.ok(localidadesRepository.getAllLocalidades(codProvincia));
    }
}
