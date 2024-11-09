package ar.edu.ubp.das.indecrest.resources;
import ar.edu.ubp.das.indecrest.beans.requests.GetLocalidadesRequestBean;
import ar.edu.ubp.das.indecrest.repositories.LocalidadesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/localidades")
public class LocalidadesResource {

    @Autowired
    private LocalidadesRepository localidadesRepository;

    @PostMapping("")
    public ResponseEntity<?> getAllLocalidades(@RequestBody GetLocalidadesRequestBean requestBean) {
        return ResponseEntity.ok(localidadesRepository.getAllLocalidades(requestBean.getCodProvincia()));
    }
}
