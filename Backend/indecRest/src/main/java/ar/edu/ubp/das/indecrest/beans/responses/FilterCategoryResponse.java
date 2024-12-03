package ar.edu.ubp.das.indecrest.beans.responses;

public class FilterCategoryResponse {
    Category[] data;
    int count; // Cantidad total de categorias en la base de datos

    public Category[] getData() {
        return data;
    }

    public void setData(Category[] data) {
        this.data = data;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }
}
