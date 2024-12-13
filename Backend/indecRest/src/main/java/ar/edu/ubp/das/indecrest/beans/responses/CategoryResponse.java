package ar.edu.ubp.das.indecrest.beans.responses;

public class CategoryResponse {
    String nroCategoria;
    String nomCategoria;
    String nroRubro;
    String vigente;

    public String getNroCategoria() {
        return nroCategoria;
    }

    public void setNroCategoria(String nroCategoria) {
        this.nroCategoria = nroCategoria;
    }

    public String getNomCategoria() {
        return nomCategoria;
    }

    public void setNomCategoria(String nomCategoria) {
        this.nomCategoria = nomCategoria;
    }

    public String getNroRubro() {
        return nroRubro;
    }

    public void setNroRubro(String nroRubro) {
        this.nroRubro = nroRubro;
    }

    public String getVigente() {
        return vigente;
    }

    public void setVigente(String vigente) {
        this.vigente = vigente;
    }
}
