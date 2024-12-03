package ar.edu.ubp.das.supermercadosws.beans;

public class RubroProductoBean {
    private int nroRubro;
    private String nomRubro;
    private Boolean vigente;

    public int getNroRubro() {
        return nroRubro;
    }

    public void setNroRubro(int nroRubro) {
        this.nroRubro = nroRubro;
    }

    public String getNomRubro() {
        return nomRubro;
    }

    public void setNomRubro(String nomRubro) {
        this.nomRubro = nomRubro;
    }

    public Boolean getVigente() {
        return vigente;
    }

    public void setVigente(Boolean vigente) {
        this.vigente = vigente;
    }
}
