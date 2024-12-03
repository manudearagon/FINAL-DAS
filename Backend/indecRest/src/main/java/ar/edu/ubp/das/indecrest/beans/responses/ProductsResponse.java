package ar.edu.ubp.das.indecrest.beans.responses;

public class ProductsResponse {
    Product[] data;
    int count; // Cantidad total de productos en la base de datos

    public Product[] getData() {
        return data;
    }

    public void setData(Product[] data) {
        this.data = data;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }
}
