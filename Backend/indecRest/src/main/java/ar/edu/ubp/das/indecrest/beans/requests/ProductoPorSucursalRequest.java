package ar.edu.ubp.das.indecrest.beans.requests;

import ar.edu.ubp.das.indecrest.beans.ProductoSucursalesBean;

public class ProductoPorSucursalRequest extends ProductoSucursalesBean {
    private int nro_supermercado;

    public ProductoPorSucursalRequest(
            int nro_supermercado,
            int nro_sucursal,
            String cod_barra,
            Double precio,
            Boolean vigente
    ) {
        super(nro_sucursal, cod_barra, precio, vigente);
        this.nro_supermercado = nro_supermercado;
    }

    public int getNro_supermercado() {
        return nro_supermercado;
    }

    public void setNro_supermercado(int nro_supermercado) {
        this.nro_supermercado = nro_supermercado;
    }
}
