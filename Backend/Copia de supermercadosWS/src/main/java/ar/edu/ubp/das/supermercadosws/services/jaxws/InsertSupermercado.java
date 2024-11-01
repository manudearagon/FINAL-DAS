
package ar.edu.ubp.das.supermercadosws.services.jaxws;

import ar.edu.ubp.das.supermercadosws.beans.SupermercadoBean;
import jakarta.xml.bind.annotation.XmlAccessType;
import jakarta.xml.bind.annotation.XmlAccessorType;
import jakarta.xml.bind.annotation.XmlElement;
import jakarta.xml.bind.annotation.XmlRootElement;
import jakarta.xml.bind.annotation.XmlType;

@XmlRootElement(name = "insertSupermercado", namespace = "http://services.supermercadosws.das.ubp.edu.ar/")
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "insertSupermercado", namespace = "http://services.supermercadosws.das.ubp.edu.ar/")
public class InsertSupermercado {

    @XmlElement(name = "arg0", namespace = "")
    private SupermercadoBean arg0;

    /**
     * 
     * @return
     *     returns SupermercadoBean
     */
    public SupermercadoBean getArg0() {
        return this.arg0;
    }

    /**
     * 
     * @param arg0
     *     the value for the arg0 property
     */
    public void setArg0(SupermercadoBean arg0) {
        this.arg0 = arg0;
    }

}
