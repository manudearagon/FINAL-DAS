package ar.edu.ubp.das.indecrest.beans.responses;

public class ProductoResponse {
    String codBarra;
    String nomProducto;
    String descProducto;
    int nroCategoria;
    byte[] imagen;
    int nroMarca;
    int nroTipoProducto;
    boolean vigente;

    public String getCodBarra() {
        return codBarra;
    }

    public void setCodBarra(String codBarra) {
        this.codBarra = codBarra;
    }

    public String getNomProducto() {
        return nomProducto;
    }

    public void setNomProducto(String nomProducto) {
        this.nomProducto = nomProducto;
    }

    public String getDescProducto() {
        return descProducto;
    }

    public void setDescProducto(String descProducto) {
        this.descProducto = descProducto;
    }

    public int getNroCategoria() {
        return nroCategoria;
    }

    public void setNroCategoria(int nroCategoria) {
        this.nroCategoria = nroCategoria;
    }

    public byte[] getImagen() {
        return imagen;
    }

    public void setImagen(byte[] imagen) {
        this.imagen = imagen;
    }

    public int getNroMarca() {
        return nroMarca;
    }

    public void setNroMarca(int nroMarca) {
        this.nroMarca = nroMarca;
    }

    public int getNroTipoProducto() {
        return nroTipoProducto;
    }

    public void setNroTipoProducto(int nroTipoProducto) {
        this.nroTipoProducto = nroTipoProducto;
    }

    public boolean isVigente() {
        return vigente;
    }

    public void setVigente(boolean vigente) {
        this.vigente = vigente;
    }
}

