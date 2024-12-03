package ar.edu.ubp.das.supermercadosrest.beans;

public class TipoServicioSucursalBean {
    private int nroSucursal;
    private int nroTipoServicio;
    private Boolean vigente;

    public int getNroSucursal() {
        return nroSucursal;
    }

    public void setNroSucursal(int nroSucursal) {
        this.nroSucursal = nroSucursal;
    }

    public int getNroTipoServicio() {
        return nroTipoServicio;
    }

    public void setNroTipoServicio(int nroTipoServicio) {
        this.nroTipoServicio = nroTipoServicio;
    }

    public Boolean getVigente() {
        return vigente;
    }

    public void setVigente(Boolean vigente) {
        this.vigente = vigente;
    }
}
