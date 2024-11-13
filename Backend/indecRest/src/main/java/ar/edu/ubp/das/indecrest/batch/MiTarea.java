package ar.edu.ubp.das.indecrest.batch;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MiTarea {

    @Autowired
    private BatchProcessService batchProcessService;


    public void ejecutar() {
        System.out.println("Iniciando tarea de carga de sucursales");
        try {
            batchProcessService.cargarSucursales();
            System.out.println("Tarea completada exitosamente");
        } catch (Exception e) {
            System.out.println("Error ejecutando la tarea: " + e.getMessage());
            throw new RuntimeException("Error en la ejecución de la tarea", e);
        }
    }
//    public void ejecutar() {
//        System.out.println("**********************************************");
//        System.out.println("Aquí agrego mi lógica de consumo particular...");
//        System.out.println("**********************************************");
//    }

}
