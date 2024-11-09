package ar.edu.ubp.das.indecrest.beans;

public class SucursalBean {
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

    public String getTelefonos() {
        return telefonos;
    }

    public void setTelefonos(String telefonos) {
        this.telefonos = telefonos;
    }

    public float getCoordLatitud() {
        return coordLatitud;
    }

    public void setCoordLatitud(float coordLatitud) {
        this.coordLatitud = coordLatitud;
    }

    public float getCoordLongitud() {
        return coordLongitud;
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
