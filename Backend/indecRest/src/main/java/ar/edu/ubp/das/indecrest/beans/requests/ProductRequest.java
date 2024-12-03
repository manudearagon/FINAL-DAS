package ar.edu.ubp.das.indecrest.beans.requests;

public class ProductRequest {
    String nomProducto;
    String nroCategoria;
    int pageIndex;
    int pageSize;

    public int getPageIndex() {
        return pageIndex;
    }

    public void setPageIndex(int pageIndex) {
        this.pageIndex = pageIndex;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public String getNomProducto() {
        return nomProducto;
    }

    public void setNomProducto(String nomProducto) {
        this.nomProducto = nomProducto;
    }

    public String getNroCategoria() {
        return nroCategoria;
    }

    public void setNroCategoria(String nroCategoria) {
        this.nroCategoria = nroCategoria;
    }

}
