package ar.edu.ubp.das.indecrest.beans;

public class ProductoSucursalesBean {
    private int nro_sucursal;
    private String cod_barra;
    private Double precio;
    private Integer vigente;

    public ProductoSucursalesBean() {
    }

    public ProductoSucursalesBean(int nro_sucursal, String cod_barra, Double precio, Integer vigente) {
        this.nro_sucursal = nro_sucursal;
        this.cod_barra = cod_barra;
        this.precio = precio;
        this.vigente = vigente;
    }

    public int getNro_sucursal() {
        return nro_sucursal;
    }

    public void setNro_sucursal(int nro_sucursal) {
        this.nro_sucursal = nro_sucursal;
    }

    public String getCod_barra() {
        return cod_barra;
    }

    public void setCod_barra(String cod_barra) {
        this.cod_barra = cod_barra;
    }

    public Double getPrecio() {
        return precio;
    }

    public void setPrecio(Double precio) {
        this.precio = precio;
    }

    public Integer getVigente() {
        return vigente;
    }

    public void setVigente(Integer vigente) {
        this.vigente = vigente;
    }
}
