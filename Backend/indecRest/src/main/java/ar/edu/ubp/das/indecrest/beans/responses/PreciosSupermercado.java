package ar.edu.ubp.das.indecrest.beans.responses;

public class PreciosSupermercado {
    String nroSupermercado;
    String nomSupermercado;
    String precio;
    Boolean mejorPrecio;
    Boolean vigente;

    public String getNroSupermercado() {
        return nroSupermercado;
    }

    public void setNroSupermercado(String nroSupermercado) {
        this.nroSupermercado = nroSupermercado;
    }

    public String getNomSupermercado() {
        return nomSupermercado;
    }

    public void setNomSupermercado(String nomSupermercado) {
        this.nomSupermercado = nomSupermercado;
    }

    public String getPrecio() {
        return precio;
    }

    public void setPrecio(String precio) {
        this.precio = precio;
    }

    public Boolean getMejorPrecio() {
        return mejorPrecio;
    }

    public void setMejorPrecio(Boolean mejorPrecio) {
        this.mejorPrecio = mejorPrecio;
    }

    public Boolean getVigente() {
        return vigente;
    }

    public void setVigente(Boolean vigente) {
        this.vigente = vigente;
    }
}
