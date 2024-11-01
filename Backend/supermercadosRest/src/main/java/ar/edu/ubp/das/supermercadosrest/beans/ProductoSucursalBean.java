package ar.edu.ubp.das.supermercadosrest.beans;

public class ProductoSucursalBean {
    private int nroSucursal;
    private int codBarra;
    private double precio;
    private Boolean vigente;

    public int getNroSucursal() {
        return nroSucursal;
    }

    public void setNroSucursal(int nroSucursal) {
        this.nroSucursal = nroSucursal;
    }

    public int getCodBarra() {
        return codBarra;
    }

    public void setCodBarra(int codBarra) {
        this.codBarra = codBarra;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    public Boolean getVigente() {
        return vigente;
    }

    public void setVigente(Boolean vigente) {
        this.vigente = vigente;
    }
}
