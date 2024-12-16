package ar.edu.ubp.das.indecrest.batch;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ActualizarProductos {

    @Autowired
    private BatchProcessService batchProcessService;


    public void ejecutar() {
        System.out.println("Iniciando tarea de actualizacion de productos");
        try {
            batchProcessService.cargarProductos();
            System.out.println("Tarea completada exitosamente");
        } catch (Exception e) {
            System.out.println("Error ejecutando la tarea: " + e.getMessage());
            throw new RuntimeException("Error en la ejecución de la tarea", e);
        }
    }

}
