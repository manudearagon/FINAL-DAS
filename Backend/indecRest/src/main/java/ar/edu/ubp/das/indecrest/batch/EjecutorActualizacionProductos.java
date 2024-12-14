package ar.edu.ubp.das.indecrest.batch;

import ar.edu.ubp.das.indecrest.IndecRestApplication;
import org.springframework.boot.WebApplicationType;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.context.ApplicationContext;

public class EjecutorActualizacionProductos {

    public static void main(String[] args) {
        ApplicationContext context = new SpringApplicationBuilder(IndecRestApplication.class)
                .web(WebApplicationType.NONE)
                .run(args);

        ActualizarProductos tarea = context.getBean(ActualizarProductos.class);
        tarea.ejecutar();
    }

}
