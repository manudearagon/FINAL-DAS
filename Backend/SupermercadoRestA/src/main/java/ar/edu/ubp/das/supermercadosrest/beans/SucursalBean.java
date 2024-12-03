package ar.edu.ubp.das.supermercadosrest.beans;

import java.util.List;

public class SucursalBean {
    private int nroSucursal;
    private String nomSucursal;
    private String calle;
    private int nroCalle;
    private List<String> telefonos;
    private double coordLatitud;
    private double coordLongitud;
    private int nroLocalidad;
    private boolean habilitada;


    public int getNroSucursal() {
        return nroSucursal;
    }

    public void setNroSucursal(int nroSucursal) {
        this.nroSucursal = nroSucursal;
    }

    public String getNomSucursal() {
        return nomSucursal;
    }

    public void setNomSucursal(String nomSucursal) {
        this.nomSucursal = nomSucursal;
    }

    public String getCalle() {
        return calle;
    }

    public void setCalle(String calle) {
        this.calle = calle;
    }

    public int getNroCalle() {
        return nroCalle;
    }

    public void setNroCalle(int nroCalle) {
        this.nroCalle = nroCalle;
    }

    public List<String> getTelefonos() {
        return telefonos;
    }

    public void setTelefonos(List<String> telefonos) {
        this.telefonos = telefonos;
    }

    public double getCoordLatitud() {
        return coordLatitud;
    }

    public void setCoordLatitud(double coordLatitud) {
        this.coordLatitud = coordLatitud;
    }

    public double getCoordLongitud() {
        return coordLongitud;
    }

    public void setCoordLongitud(double coordLongitud) {
        this.coordLongitud = coordLongitud;
    }

    public int getNroLocalidad() {
        return nroLocalidad;
    }

    public void setNroLocalidad(int nroLocalidad) {
        this.nroLocalidad = nroLocalidad;
    }

    public boolean isHabilitada() {
        return habilitada;
    }

    public void setHabilitada(boolean habilitada) {
        this.habilitada = habilitada;
    }
}
