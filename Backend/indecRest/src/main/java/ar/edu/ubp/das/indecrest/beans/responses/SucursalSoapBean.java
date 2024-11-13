package ar.edu.ubp.das.indecrest.beans.responses;

import jakarta.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "SucursalesResponse")
public class SucursalSoapBean {
    String calle;
    double coordLatitud;
    double coordLongitud;
    boolean habilitada;
    String nomSucursal;
    int nroCalle;
    int nroLocalidad;
    int nroSucursal;
    String[] telefonos;

    public String getCalle() {
        return calle;
    }

    public void setCalle(String calle) {
        this.calle = calle;
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

    public boolean isHabilitada() {
        return habilitada;
    }

    public void setHabilitada(boolean habilitada) {
        this.habilitada = habilitada;
    }

    public String getNomSucursal() {
        return nomSucursal;
    }

    public void setNomSucursal(String nomSucursal) {
        this.nomSucursal = nomSucursal;
    }

    public int getNroCalle() {
        return nroCalle;
    }

    public void setNroCalle(int nroCalle) {
        this.nroCalle = nroCalle;
    }

    public int getNroLocalidad() {
        return nroLocalidad;
    }

    public void setNroLocalidad(int nroLocalidad) {
        this.nroLocalidad = nroLocalidad;
    }

    public int getNroSucursal() {
        return nroSucursal;
    }

    public void setNroSucursal(int nroSucursal) {
        this.nroSucursal = nroSucursal;
    }

    public String[] getTelefonos() {
        return telefonos;
    }

    public void setTelefonos(String[] telefonos) {
        this.telefonos = telefonos;
    }
}
