package ar.edu.ubp.das.indecrest.batch;

import ar.edu.ubp.das.indecrest.batch.constants.SupermarketTypes;
import ar.edu.ubp.das.indecrest.batch.contracts.ISupermarketProvider;
import ar.edu.ubp.das.indecrest.batch.factory.SupermarketFactory;
import ar.edu.ubp.das.indecrest.beans.ServiciosSupermercadoBean;
import ar.edu.ubp.das.indecrest.beans.SucursalBean;
import ar.edu.ubp.das.indecrest.beans.responses.SucursalSoapBean;
import ar.edu.ubp.das.indecrest.beans.responses.SucursalSupermarketResponse;
import ar.edu.ubp.das.indecrest.repositories.ServiciosSupermercadosRepository;
import ar.edu.ubp.das.indecrest.repositories.SucursalesRepository;
import ar.edu.ubp.das.indecrest.utils.Httpful;
import ar.edu.ubp.das.indecrest.utils.SOAPClient;
import com.google.gson.reflect.TypeToken;
import jakarta.ws.rs.HttpMethod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

import static java.lang.Float.parseFloat;

@Service
public class BatchProcessService {

    @Autowired
    private ServiciosSupermercadosRepository supermercadosRepository;

    @Autowired
    private SucursalesRepository   sucursalesRepository;

    public void cargarSucursales() {
        List<ServiciosSupermercadoBean> servicios = supermercadosRepository.getServiciosSupermercados();
        try {
            for (ServiciosSupermercadoBean servicio : servicios) {
                ISupermarketProvider provider = new SupermarketFactory().GetProvider(SupermarketTypes.fromValue(servicio.getTipoServicio()));
                System.out.println("Servicio: " + servicio.getTipoServicio() + " - " + servicio.getUrlServicio());
                List<SucursalSupermarketResponse> sucursalesExternas = provider.obtenerSucursales(servicio.getUrlServicio(), servicio.getNroSupermercado());
                for (SucursalSupermarketResponse sucursal : sucursalesExternas) {
                    try {
                        sucursalesRepository.insertarSucursal(servicio.getNroSupermercado(), sucursal);
                        System.out.println("Sucursal {" + sucursal.getNomSucursal() + "} procesada exitosamente");
                    } catch (Exception e) {
                        System.out.println("Error procesando sucursal {" + sucursal.getNroSucursal() + "}: {" + e.getMessage() + "}");
                    }
                }
            }
        } catch (Exception e) {
            System.out.println("Error ejecutando la tarea: " + e.getMessage());
            throw new RuntimeException("Error en la ejecución de la tarea", e);
        }
    }

}
