package ar.edu.ubp.das.indecrest.beans;

import java.util.List;

public class SupermercadosConSucursalesBean {
    public String razonSocial;
    public List<SucursalBean> sucursalList;

    public String getRazonSocial() {
        return razonSocial;
    }

    public void setRazonSocial(String razonSocial) {
        this.razonSocial = razonSocial;
    }

    public List<SucursalBean> getSucursalList() {
        return sucursalList;
    }

    public void setSucursalList(List<SucursalBean> sucursalList) {
        this.sucursalList = sucursalList;
    }
}
