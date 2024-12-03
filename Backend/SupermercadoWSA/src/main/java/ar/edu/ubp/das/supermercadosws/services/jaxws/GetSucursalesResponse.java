
package ar.edu.ubp.das.supermercadosws.services.jaxws;

import java.util.List;
import ar.edu.ubp.das.supermercadosws.beans.SucursalBean;
import jakarta.xml.bind.annotation.XmlAccessType;
import jakarta.xml.bind.annotation.XmlAccessorType;
import jakarta.xml.bind.annotation.XmlElement;
import jakarta.xml.bind.annotation.XmlRootElement;
import jakarta.xml.bind.annotation.XmlType;

@XmlRootElement(name = "GetSucursalesResponse", namespace = "http://services.supermercadosws.das.ubp.edu.ar/")
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "GetSucursalesResponse", namespace = "http://services.supermercadosws.das.ubp.edu.ar/")
public class GetSucursalesResponse {

    @XmlElement(name = "SucursalesResponse", namespace = "")
    private List<SucursalBean> sucursalesResponse;

    /**
     * 
     * @return
     *     returns List<SucursalBean>
     */
    public List<SucursalBean> getSucursalesResponse() {
        return this.sucursalesResponse;
    }

    /**
     * 
     * @param sucursalesResponse
     *     the value for the sucursalesResponse property
     */
    public void setSucursalesResponse(List<SucursalBean> sucursalesResponse) {
        this.sucursalesResponse = sucursalesResponse;
    }

}
