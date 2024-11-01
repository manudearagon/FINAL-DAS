
package ar.edu.ubp.das.supermercadosws.services.jaxws;

import java.util.List;
import ar.edu.ubp.das.supermercadosws.beans.SupermercadoBean;
import jakarta.xml.bind.annotation.XmlAccessType;
import jakarta.xml.bind.annotation.XmlAccessorType;
import jakarta.xml.bind.annotation.XmlElement;
import jakarta.xml.bind.annotation.XmlRootElement;
import jakarta.xml.bind.annotation.XmlType;

@XmlRootElement(name = "GetSupermercadosResponse", namespace = "http://services.supermercadosws.das.ubp.edu.ar/")
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "GetSupermercadosResponse", namespace = "http://services.supermercadosws.das.ubp.edu.ar/")
public class GetSupermercadosResponse {

    @XmlElement(name = "SupermercadosResponse", namespace = "")
    private List<SupermercadoBean> supermercadosResponse;

    /**
     * 
     * @return
     *     returns List<SupermercadoBean>
     */
    public List<SupermercadoBean> getSupermercadosResponse() {
        return this.supermercadosResponse;
    }

    /**
     * 
     * @param supermercadosResponse
     *     the value for the supermercadosResponse property
     */
    public void setSupermercadosResponse(List<SupermercadoBean> supermercadosResponse) {
        this.supermercadosResponse = supermercadosResponse;
    }

}
