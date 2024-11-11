package ar.edu.ubp.das.indecrest.beans.responses;

import java.util.Collections;
import java.util.List;

public class SucursalesPorSupermercadoBean {
    private int nroSupermercado;
    private int nroSucursal;
    private String nomSucursal;
    private String calle;
    private int nroCalle;
    private String telefonos;
    private float coordLatitud;
    private float coordLongitud;
    private String horarioSucursal;
    private String serviciosDisponibles;
    private int nroLocalidad;
    private boolean habilitada;

    public int getNroSupermercado() {
        return nroSupermercado;
    }

    public void setNroSupermercado(int nroSupermercado) {
        this.nroSupermercado = nroSupermercado;
    }

    public void setTelefonos(String telefonos) {
        this.telefonos = telefonos;
    }

    public void setCoordLatitud(float coordLatitud) {
        this.coordLatitud = coordLatitud;
    }

    public void setCoordLongitud(float coordLongitud) {
        this.coordLongitud = coordLongitud;
    }

    public String getHorarioSucursal() {
        return horarioSucursal;
    }

    public void setHorarioSucursal(String horarioSucursal) {
        this.horarioSucursal = horarioSucursal;
    }

    public String getServiciosDisponibles() {
        return serviciosDisponibles;
    }

    public void setServiciosDisponibles(String serviciosDisponibles) {
        this.serviciosDisponibles = serviciosDisponibles;
    }

    private String razonSocial;

    public String getRazonSocial() {
        return razonSocial;
    }

    public void setRazonSocial(String razonSocial) {
        this.razonSocial = razonSocial;
    }

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
        return Collections.singletonList(telefonos);
    }

    public void setTelefonos(List<String> telefonos) {
        this.telefonos = String.valueOf(telefonos);
    }

    public double getCoordLatitud() {
        return coordLatitud;
    }

    public void setCoordLatitud(double coordLatitud) {
        this.coordLatitud = (float) coordLatitud;
    }

    public double getCoordLongitud() {
        return coordLongitud;
    }

    public void setCoordLongitud(double coordLongitud) {
        this.coordLongitud = (float) coordLongitud;
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
