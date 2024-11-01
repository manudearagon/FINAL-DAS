package ar.edu.ubp.das.supermercadosws.beans;

public class SupermercadoBean {
    private String cuit;
    private String razonSocial;
    private String calle;
    private int nroCalle;
    private String telefonos;

    public String getRazonSocial() {
        return razonSocial;
    }

    public void setRazonSocial(String razonSocial) {
        this.razonSocial = razonSocial;
    }

    public int getNroCalle() {
        return nroCalle;
    }

    public void setNroCalle(int nroCalle) {
        this.nroCalle = nroCalle;
    }

    public String getCuit() {
        return cuit;
    }

    public void setCuit(String cuit) {
        this.cuit = cuit;
    }



    public String getCalle() {
        return calle;
    }

    public void setCalle(String calle) {
        this.calle = calle;
    }



    public String getTelefonos() {
        return telefonos;
    }

    public void setTelefonos(String telefonos) {
        this.telefonos = telefonos;
    }
}
