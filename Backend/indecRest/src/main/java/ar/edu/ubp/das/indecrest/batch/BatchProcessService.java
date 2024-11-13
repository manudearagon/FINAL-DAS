package ar.edu.ubp.das.indecrest.batch;

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
                System.out.println("Servicio: " + servicio.getTipoServicio() + " - " + servicio.getUrlServicio());
                if (servicio.getTipoServicio().equals("Rest")) {
                    List<SucursalSupermarketResponse> sucursalesExternas = obtenerSucursalesExternas(servicio.getUrlServicio());
                    for (SucursalSupermarketResponse sucursal : sucursalesExternas) {
                        try {
                            sucursalesRepository.insertarSucursal(servicio.getNroSupermercado(), sucursal);
                            System.out.println("Sucursal {" + sucursal.getNomSucursal() + "} procesada exitosamente");
                        } catch (Exception e) {
                            System.out.println("Error procesando sucursal {" + sucursal.getNroSucursal() + "}: {" + e.getMessage() + "}");
                        }
                    }
                } else if (servicio.getTipoServicio().equals("WS")) {
                    List<SucursalSoapBean> sucursalesExternas = obtenerSucursalesExternasSoap(servicio.getUrlServicio());
                    for (SucursalSoapBean sucursal : sucursalesExternas) {
                        try {
                            SucursalSupermarketResponse sucursalResponse = new SucursalSupermarketResponse(
                                    servicio.getNroSupermercado(),
                                    sucursal.getNroSucursal(),
                                    sucursal.getNomSucursal(),
                                    sucursal.getCalle(),
                                    sucursal.getNroCalle(),
                                    List.of(sucursal.getTelefonos()),
                                    parseFloat(String.valueOf(sucursal.getCoordLatitud())),
                                    parseFloat(String.valueOf(sucursal.getCoordLongitud())),
                                    null,
                                    null,
                                    sucursal.getNroLocalidad(),
                                    sucursal.isHabilitada()
                            );
                            sucursalesRepository.insertarSucursal(servicio.getNroSupermercado(), sucursalResponse);
                            System.out.println("Sucursal {" + sucursal.getNomSucursal() + "} procesada exitosamente");
                        } catch (Exception e) {
                            System.out.println("Error procesando sucursal {" + sucursal.getNroSucursal() + "}: {" + e.getMessage() + "}");
                        }
                    }
                }
            }
        } catch (Exception e) {
            System.out.println("Error ejecutando la tarea: " + e.getMessage());
            throw new RuntimeException("Error en la ejecución de la tarea", e);
        }
    }


    private List<SucursalSoapBean> obtenerSucursalesExternasSoap(String url){
        SOAPClient client = new SOAPClient.SOAPClientBuilder()
                .wsdlUrl(url)
                .namespace("http://services.supermercadosws.das.ubp.edu.ar/")
                .serviceName("SupermercadosWSPortService")
                .portName("SupermercadosWSPortSoap11")
                .operationName("GetSucursalesRequest")
                .username("usr_admin")
                .password("pwd_admin")
                .build();

        List<SucursalSoapBean> sucursales = client.callServiceForList(SucursalSoapBean.class, "GetSucursalesResponse");
        return sucursales;
    }

    private List<SucursalSupermarketResponse> obtenerSucursalesExternas(String url) {

        List<SucursalSupermarketResponse> response = new Httpful(url)
                .basicAuth("usr_admin", "pwd_admin")
                .method(HttpMethod.POST)
                .execute(new TypeToken<List<SucursalSupermarketResponse>>() {}.getType());
        return response;
    }
}
