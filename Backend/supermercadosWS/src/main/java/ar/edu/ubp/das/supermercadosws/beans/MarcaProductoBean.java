package ar.edu.ubp.das.supermercadosws.beans;

public class MarcaProductoBean {
    private int nroMarca;
    private String nomMarca;
    private Boolean vigente;

    public int getNroMarca() {
        return nroMarca;
    }

    public void setNroMarca(int nroMarca) {
        this.nroMarca = nroMarca;
    }

    public String getNomMarca() {
        return nomMarca;
    }

    public void setNomMarca(String nomMarca) {
        this.nomMarca = nomMarca;
    }

    public Boolean getVigente() {
        return vigente;
    }

    public void setVigente(Boolean vigente) {
        this.vigente = vigente;
    }
}
