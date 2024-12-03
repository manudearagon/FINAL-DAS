
package ar.edu.ubp.das.supermercadosws.services.jaxws;

import jakarta.xml.bind.annotation.XmlAccessType;
import jakarta.xml.bind.annotation.XmlAccessorType;
import jakarta.xml.bind.annotation.XmlElement;
import jakarta.xml.bind.annotation.XmlRootElement;
import jakarta.xml.bind.annotation.XmlType;

@XmlRootElement(name = "GetSupermercadosRequest", namespace = "http://services.supermercadosws.das.ubp.edu.ar/")
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "GetSupermercadosRequest", namespace = "http://services.supermercadosws.das.ubp.edu.ar/")
public class GetSupermercados {

    @XmlElement(name = "cuit", namespace = "")
    private String cuit;

    /**
     * 
     * @return
     *     returns String
     */
    public String getCuit() {
        return this.cuit;
    }

    /**
     * 
     * @param cuit
     *     the value for the cuit property
     */
    public void setCuit(String cuit) {
        this.cuit = cuit;
    }

}
