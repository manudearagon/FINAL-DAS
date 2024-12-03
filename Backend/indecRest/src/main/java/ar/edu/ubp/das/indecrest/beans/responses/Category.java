package ar.edu.ubp.das.indecrest.beans.responses;

public class Category {
    String nroCategoria;
    String nombre;
    String cantidadProductos;

    public String getNroCategoria() {
        return nroCategoria;
    }

    public void setNroCategoria(String nroCategoria) {
        this.nroCategoria = nroCategoria;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getCantidadProductos() {
        return cantidadProductos;
    }

    public void setCantidadProductos(String cantidadProductos) {
        this.cantidadProductos = cantidadProductos;
    }
}
