package ar.edu.ubp.das.indecrest.beans.responses;

public class GetProductResponse {
    private String cod_barra;
    private String nom_producto;
    private String desc_producto;
    private String nombre_marca;
    private String nombre_categoria;
    private String imagen;
    private Boolean vigente;
    private String nombre_tipo_producto;

    public String getCod_barra() {
        return cod_barra;
    }

    public void setCod_barra(String cod_barra) {
        this.cod_barra = cod_barra;
    }

    public String getNom_producto() {
        return nom_producto;
    }

    public void setNom_producto(String nom_producto) {
        this.nom_producto = nom_producto;
    }

    public String getDesc_producto() {
        return desc_producto;
    }

    public void setDesc_producto(String desc_producto) {
        this.desc_producto = desc_producto;
    }

    public String getNombre_marca() {
        return nombre_marca;
    }

    public void setNombre_marca(String nombre_marca) {
        this.nombre_marca = nombre_marca;
    }

    public String getNombre_categoria() {
        return nombre_categoria;
    }

    public void setNombre_categoria(String nombre_categoria) {
        this.nombre_categoria = nombre_categoria;
    }

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }

    public Boolean getVigente() {
        return vigente;
    }

    public void setVigente(Boolean vigente) {
        this.vigente = vigente;
    }

    public String getNombre_tipo_producto() {
        return nombre_tipo_producto;
    }

    public void setNombre_tipo_producto(String nombre_tipo_producto) {
        this.nombre_tipo_producto = nombre_tipo_producto;
    }
}
