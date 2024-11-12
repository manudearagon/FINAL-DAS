package ar.edu.ubp.das.indecrest.resources;

import ar.edu.ubp.das.indecrest.beans.SupermercadoBean;
import ar.edu.ubp.das.indecrest.repositories.SupermercadosRepository;
import ar.edu.ubp.das.indecrest.utils.Httpful;
import com.google.gson.reflect.TypeToken;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.ws.rs.HttpMethod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.io.IOException;
import java.util.List;

@RestController
@RequestMapping("/supermercados")
public class SupermercadosResource {

    @Autowired
    private SupermercadosRepository supermercadosRepository;


    @GetMapping("")
    public ResponseEntity<?> getAllSupermercados() {
        return ResponseEntity.ok(supermercadosRepository.getAllSupermercados());
    }

    @GetMapping("/supermarkets")
   public ResponseEntity<?> getSupermarkets() {
        return ResponseEntity.ok(supermercadosRepository.getSupermarkets());
    }
}
