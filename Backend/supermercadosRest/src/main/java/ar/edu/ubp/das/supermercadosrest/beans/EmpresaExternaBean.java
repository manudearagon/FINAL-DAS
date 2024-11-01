package ar.edu.ubp.das.supermercadosrest.beans;

public class EmpresaExternaBean {
    private int nroEmpresa;
    private String razonSocial;
    private int cuitEmpresa;
    private String tokenServicio;

    public int getNroEmpresa() {
        return nroEmpresa;
    }

    public void setNroEmpresa(int nroEmpresa) {
        this.nroEmpresa = nroEmpresa;
    }

    public String getRazonSocial() {
        return razonSocial;
    }

    public void setRazonSocial(String razonSocial) {
        this.razonSocial = razonSocial;
    }

    public int getCuitEmpresa() {
        return cuitEmpresa;
    }

    public void setCuitEmpresa(int cuitEmpresa) {
        this.cuitEmpresa = cuitEmpresa;
    }

    public String getTokenServicio() {
        return tokenServicio;
    }

    public void setTokenServicio(String tokenServicio) {
        this.tokenServicio = tokenServicio;
    }
}
