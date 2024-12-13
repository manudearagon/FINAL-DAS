package ar.edu.ubp.das.indecrest.resources;

import ar.edu.ubp.das.indecrest.repositories.IdiomasRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/idiomas")
public class IdiomasResource {

    @Autowired
    private IdiomasRepository idiomasRepository;

    @PostMapping("")
    public ResponseEntity<?> getAllIdiomas() {
        return ResponseEntity.ok(idiomasRepository.obtenerIdiomas());
    }
}
