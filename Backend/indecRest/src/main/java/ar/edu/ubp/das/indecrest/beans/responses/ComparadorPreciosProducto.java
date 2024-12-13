package ar.edu.ubp.das.indecrest.beans.responses;

public class ComparadorPreciosProducto {
    Product producto;
    PreciosSupermercado[] precios;

    public Product getProducto() {
        return producto;
    }

    public void setProducto(Product producto) {
        this.producto = producto;
    }

    public PreciosSupermercado[] getPrecios() {
        return precios;
    }

    public void setPrecios(PreciosSupermercado[] precios) {
        this.precios = precios;
    }
}
