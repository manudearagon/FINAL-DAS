package ar.edu.ubp.das.indecrest.beans;

import jakarta.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "ProductosResponse")
public class ProductoSucursalesBean {
    private int nroSucursal;
    private String codBarra;
    private Double precio;
    private Boolean vigente;

    public ProductoSucursalesBean() {
    }

    public ProductoSucursalesBean(int nro_sucursal, String cod_barra, Double precio, Boolean vigente) {
        this.nroSucursal = nro_sucursal;
        this.codBarra = cod_barra;
        this.precio = precio;
        this.vigente = vigente;
    }

    public int getNroSucursal() {
        return nroSucursal;
    }

    public void setNroSucursal(int nroSucursal) {
        this.nroSucursal = nroSucursal;
    }

    public String getCodBarra() {
        return codBarra;
    }

    public void setCodBarra(String codBarra) {
        this.codBarra = codBarra;
    }

    public Double getPrecio() {
        return precio;
    }

    public void setPrecio(Double precio) {
        this.precio = precio;
    }

    public Boolean getVigente() {
        return vigente;
    }

    public void setVigente(Boolean vigente) {
        this.vigente = vigente;
    }
}
