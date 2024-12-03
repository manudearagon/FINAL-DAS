package ar.edu.ubp.das.supermercadosws.beans;

public class CategoriaProductoBean {
    private int nroCategoria;
    private String nomCategoria;
    private int nroRubro;
    private Boolean vigente;

    public int getNroCategoria() {
        return nroCategoria;
    }

    public void setNroCategoria(int nroCategoria) {
        this.nroCategoria = nroCategoria;
    }

    public String getNomCategoria() {
        return nomCategoria;
    }

    public void setNomCategoria(String nomCategoria) {
        this.nomCategoria = nomCategoria;
    }

    public int getNroRubro() {
        return nroRubro;
    }

    public void setNroRubro(int nroRubro) {
        this.nroRubro = nroRubro;
    }

    public Boolean getVigente() {
        return vigente;
    }

    public void setVigente(Boolean vigente) {
        this.vigente = vigente;
    }
}
