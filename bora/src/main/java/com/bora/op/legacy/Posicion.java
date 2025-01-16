package com.bora.op.legacy;

import java.io.Serializable;

public class Posicion implements Serializable{
    private Long corredorid;
    private Long carreraid;
    private Long temporada;
    private int puesto;
    private int id;
    private boolean tt;
    private boolean etapa;

    public boolean isTt() {
        return tt;
    }
    public void setTt(boolean tt) {
        this.tt = tt;
    }
    public boolean isEtapa() {
        return etapa;
    }
    public void setEtapa(boolean etapa) {
        this.etapa = etapa;
    }
    public Long getCorredorid() {
        return corredorid;
    }
    public void setCorredorid(Long corredorid) {
        this.corredorid = corredorid;
    }
    public Long getCarreraid() {
        return carreraid;
    }
    public void setCarreraid(Long carreraid) {
        this.carreraid = carreraid;
    }
    public Long getTemporada() {
        return temporada;
    }
    public void setTemporada(Long temporada) {
        this.temporada = temporada;
    }
    public int getPuesto() {
        return puesto;
    }
    public void setPuesto(int puesto) {
        this.puesto = puesto;
    } 
}
