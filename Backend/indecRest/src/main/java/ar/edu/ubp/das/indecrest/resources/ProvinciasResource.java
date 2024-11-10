package ar.edu.ubp.das.indecrest.resources;
import ar.edu.ubp.das.indecrest.beans.requests.GetProvinciasRequestBean;
import ar.edu.ubp.das.indecrest.repositories.ProvinciasRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/provincias")
public class ProvinciasResource {

    @Autowired
    private ProvinciasRepository provinciasRepository;

    @PostMapping("")
    public ResponseEntity<?> getAllProvincias(@RequestBody GetProvinciasRequestBean requestBean) {
        return ResponseEntity.ok(provinciasRepository.getAllProvincias(requestBean.getNomProvincia()));
    }
}
