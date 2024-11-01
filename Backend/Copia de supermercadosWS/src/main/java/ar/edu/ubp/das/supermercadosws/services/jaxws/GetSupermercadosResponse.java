
package ar.edu.ubp.das.supermercadosws.services.jaxws;

import java.util.List;
import ar.edu.ubp.das.supermercadosws.beans.SupermercadoBean;
import jakarta.xml.bind.annotation.XmlAccessType;
import jakarta.xml.bind.annotation.XmlAccessorType;
import jakarta.xml.bind.annotation.XmlElement;
import jakarta.xml.bind.annotation.XmlRootElement;
import jakarta.xml.bind.annotation.XmlType;

@XmlRootElement(name = "getSupermercadosResponse", namespace = "http://services.supermercadosws.das.ubp.edu.ar/")
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "getSupermercadosResponse", namespace = "http://services.supermercadosws.das.ubp.edu.ar/")
public class GetSupermercadosResponse {

    @XmlElement(name = "return", namespace = "")
    private List<SupermercadoBean> _return;

    /**
     * 
     * @return
     *     returns List<SupermercadoBean>
     */
    public List<SupermercadoBean> getReturn() {
        return this._return;
    }

    /**
     * 
     * @param _return
     *     the value for the _return property
     */
    public void setReturn(List<SupermercadoBean> _return) {
        this._return = _return;
    }

}
