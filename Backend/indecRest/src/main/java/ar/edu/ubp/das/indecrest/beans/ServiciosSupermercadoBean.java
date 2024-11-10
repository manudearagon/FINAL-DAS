package ar.edu.ubp.das.indecrest.beans;

public class ServiciosSupermercadoBean {
    private int nroSupermercado;
    private String urlServicio;
    private String tipoServicio;
    private String tokenServicio;
    private String fechaUltActServicio;

    public int getNroSupermercado() {
        return nroSupermercado;
    }

    public void setNroSupermercado(int nroSupermercado) {
        this.nroSupermercado = nroSupermercado;
    }

    public String getUrlServicio() {
        return urlServicio;
    }

    public void setUrlServicio(String urlServicio) {
        this.urlServicio = urlServicio;
    }

    public String getTipoServicio() {
        return tipoServicio;
    }

    public void setTipoServicio(String tipoServicio) {
        this.tipoServicio = tipoServicio;
    }

    public String getTokenServicio() {
        return tokenServicio;
    }

    public void setTokenServicio(String tokenServicio) {
        this.tokenServicio = tokenServicio;
    }

    public String getFechaUltActServicio() {
        return fechaUltActServicio;
    }

    public void setFechaUltActServicio(String fechaUltActServicio) {
        this.fechaUltActServicio = fechaUltActServicio;
    }
}

