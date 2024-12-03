package ar.edu.ubp.das.indecrest.beans.responses;

public class ComparadorPreciosResponse {
    String nomSupermercado;
    int totalProductos; // Cantidad de productos en el supermercado recomendado
    int totalPrecio; // Monto total de la compra en el supermercado recomendado
    ComparadorPreciosProducto[] comparaciones;

    public int getTotalProductos() {
        return totalProductos;
    }

    public void setTotalProductos(int totalProductos) {
        this.totalProductos = totalProductos;
    }

    public int getTotalPrecio() {
        return totalPrecio;
    }

    public void setTotalPrecio(int totalPrecio) {
        this.totalPrecio = totalPrecio;
    }

    public String getNomSupermercado() {
        return nomSupermercado;
    }

    public void setNomSupermercado(String nomSupermercado) {
        this.nomSupermercado = nomSupermercado;
    }

    public ComparadorPreciosProducto[] getComparaciones() {
        return comparaciones;
    }

    public void setComparaciones(ComparadorPreciosProducto[] comparaciones) {
        this.comparaciones = comparaciones;
    }
}
