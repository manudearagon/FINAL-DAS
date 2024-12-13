package ar.edu.ubp.das.indecrest.resources;
import ar.edu.ubp.das.indecrest.beans.requests.ProductoPorSucursalRequest;
import ar.edu.ubp.das.indecrest.beans.requests.ProductoRequest;
import ar.edu.ubp.das.indecrest.repositories.ProductosRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/productos")
public class ProductosResource {

    @Autowired
    private ProductosRepository productosRepository;

    @PostMapping("")
    public ResponseEntity<?> getProductos(@RequestBody ProductoRequest request) {
        return ResponseEntity.ok(productosRepository.getProductos(request));
    }

    @PostMapping("/comparar")
    public ResponseEntity<?> compararPreciosProductos(@RequestBody List<String> request) {
        return ResponseEntity.ok(productosRepository.compararPreciosProductos(request));
    }

    @PostMapping("/insertarProductos")
    public void insertarProductos(@RequestBody List<ProductoPorSucursalRequest> request) {
        productosRepository.insertarProductos(request);
    }
}
