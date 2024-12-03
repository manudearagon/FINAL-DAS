package ar.edu.ubp.das.supermercadosrest.resources;

import ar.edu.ubp.das.supermercadosrest.beans.SupermercadoBean;
import ar.edu.ubp.das.supermercadosrest.repositories.SupermercadosRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/supermercados")
public class SupermercadosResource {

    @Autowired
    private SupermercadosRepository supermercadosRepository;


    @GetMapping("")
    public ResponseEntity<?> getAllSupermercados() {
        return ResponseEntity.ok(supermercadosRepository.getAllSupermercados());
    }

    @GetMapping("/{cuit}")
    public ResponseEntity<?> getSupermercados(@PathVariable String cuit) {
        return ResponseEntity.ok(supermercadosRepository.getSupermercados(cuit));
    }

    @PostMapping("/insert")
    public ResponseEntity<?> insertSupermercado(@RequestBody SupermercadoBean supermercado) {
        supermercadosRepository.insertSupermercado(supermercado);
        return ResponseEntity.ok().build();
    }

    @GetMapping("/sucursales/{nomSupermercado}")
    public ResponseEntity<?> getSucursales(@PathVariable String nomSupermercado) {
        return ResponseEntity.ok(supermercadosRepository.getSucursales(nomSupermercado));
    }

    @PutMapping("/update")
    public ResponseEntity<?> updateSupermercado(@RequestBody SupermercadoBean supermercado) {
        supermercadosRepository.updateSupermercado(supermercado);
        return ResponseEntity.ok().build();
    }

}
