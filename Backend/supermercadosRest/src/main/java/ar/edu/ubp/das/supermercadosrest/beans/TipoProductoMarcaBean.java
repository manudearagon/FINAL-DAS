package ar.edu.ubp.das.supermercadosrest.beans;

public class TipoProductoMarcaBean {
    private int nroMarca;
    private int nroTipoMarca;
    private Boolean vigente;

    public int getNroMarca() {
        return nroMarca;
    }

    public void setNroMarca(int nroMarca) {
        this.nroMarca = nroMarca;
    }

    public int getNroTipoMarca() {
        return nroTipoMarca;
    }

    public void setNroTipoMarca(int nroTipoMarca) {
        this.nroTipoMarca = nroTipoMarca;
    }

    public Boolean getVigente() {
        return vigente;
    }

    public void setVigente(Boolean vigente) {
        this.vigente = vigente;
    }
}
