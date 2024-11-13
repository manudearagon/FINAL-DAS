package ar.edu.ubp.das.indecrest.resources;
import ar.edu.ubp.das.indecrest.beans.requests.GetSucursalRequestBean;
import ar.edu.ubp.das.indecrest.beans.requests.GetSucursalesRequestBean;
import ar.edu.ubp.das.indecrest.repositories.SucursalesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/sucursales")
public class SucursalesResource {

    @Autowired
    private SucursalesRepository sucursalesRepository;

    @PostMapping("/sucursal")
    public ResponseEntity<?> getSucursal(@RequestBody GetSucursalRequestBean request) {
        return ResponseEntity.ok(sucursalesRepository.getSucursal(request.getNroSucursal()));
    }

    @PostMapping("")
    public ResponseEntity<?> getSucursales(@RequestBody GetSucursalesRequestBean request){
        return ResponseEntity.ok(sucursalesRepository.getSucursales(request.getNroSupermercado(), request.getNroLocalidad()));
    }

    @PostMapping("/sucursales_por_supermercado")
    public ResponseEntity<?> getSucursalesPorSupermercado(){
        return ResponseEntity.ok(sucursalesRepository.getSucursalesPorSupermercado());
    }



}
