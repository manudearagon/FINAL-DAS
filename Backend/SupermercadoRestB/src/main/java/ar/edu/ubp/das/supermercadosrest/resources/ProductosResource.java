package ar.edu.ubp.das.supermercadosrest.resources;

import ar.edu.ubp.das.supermercadosrest.repositories.ProductosRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/productos")
public class ProductosResource {

    @Autowired
    ProductosRepository productosRepository;

    @PostMapping("")
    public ResponseEntity<?> getAllProductos() {
        return ResponseEntity.ok(productosRepository.obtenerProductos());
    }
}
