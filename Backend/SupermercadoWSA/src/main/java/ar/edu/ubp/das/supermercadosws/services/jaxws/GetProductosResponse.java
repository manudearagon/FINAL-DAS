
package ar.edu.ubp.das.supermercadosws.services.jaxws;

import java.util.List;
import ar.edu.ubp.das.supermercadosws.beans.ProductoSucursalBean;
import jakarta.xml.bind.annotation.XmlAccessType;
import jakarta.xml.bind.annotation.XmlAccessorType;
import jakarta.xml.bind.annotation.XmlElement;
import jakarta.xml.bind.annotation.XmlRootElement;
import jakarta.xml.bind.annotation.XmlType;

@XmlRootElement(name = "GetProductosResponse", namespace = "http://services.supermercadosws.das.ubp.edu.ar/")
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "GetProductosResponse", namespace = "http://services.supermercadosws.das.ubp.edu.ar/")
public class GetProductosResponse {

    @XmlElement(name = "ProductosResponse", namespace = "")
    private List<ProductoSucursalBean> productosResponse;

    /**
     * 
     * @return
     *     returns List<ProductoSucursalBean>
     */
    public List<ProductoSucursalBean> getProductosResponse() {
        return this.productosResponse;
    }

    /**
     * 
     * @param productosResponse
     *     the value for the productosResponse property
     */
    public void setProductosResponse(List<ProductoSucursalBean> productosResponse) {
        this.productosResponse = productosResponse;
    }

}
