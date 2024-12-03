package ar.edu.ubp.das.supermercadosws.beans;

public class ProductoBean {
    private int codBarra;
    private String nomProducto;
    private String descProducto;
    private int nroCategoria;
    private String imagen;
    private int nroMarca;
    private int nroTipoProducto;
    private Boolean vigente;

    public int getCodBarra() {
        return codBarra;
    }

    public void setCodBarra(int codBarra) {
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

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
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

    public Boolean getVigente() {
        return vigente;
    }

    public void setVigente(Boolean vigente) {
        this.vigente = vigente;
    }
}
