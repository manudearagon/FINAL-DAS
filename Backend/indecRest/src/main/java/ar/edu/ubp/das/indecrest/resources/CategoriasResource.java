package ar.edu.ubp.das.indecrest.resources;

import ar.edu.ubp.das.indecrest.repositories.CategoriasRepository;
import jakarta.ws.rs.HeaderParam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequestMapping("/categorias")
public class CategoriasResource {

    @Autowired
    private CategoriasRepository categoriasRepository;

    @PostMapping("")
    public ResponseEntity<?> getAllCategorias(@RequestHeader("idioma") String idioma) {
        return ResponseEntity.ok(categoriasRepository.getCategorias(idioma));
    }
}
