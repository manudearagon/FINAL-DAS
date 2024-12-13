package ar.edu.ubp.das.indecrest.beans.requests;

public class ProductoRequest {
    String nomProducto;
    String idMarca;
    String idCategoria;
    int pageIndex;
    int pageSize;

    public String getNomProducto() {
        return nomProducto;
    }

    public void setNomProducto(String nomProducto) {
        this.nomProducto = nomProducto;
    }

    public String getIdMarca() {
        return idMarca;
    }

    public void setIdMarca(String idmarca) {
        this.idMarca = idmarca;
    }

    public String getIdCategoria() {
        return idCategoria;
    }

    public void setIdCategoria(String idCategoria) {
        this.idCategoria = idCategoria;
    }

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
}
