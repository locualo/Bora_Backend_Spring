package com.bora.op.logroscorredor;

import java.io.Serializable;

public class Puestometro_DTO extends Logro_DTO implements Serializable{
    private int puesto;
    private Long temporada;
    
    public int getPuesto() {
        return puesto;
    }
    public void setPuesto(int puesto) {
        this.puesto = puesto;
    }

    public Long getTemporada() {
        return temporada;
    }

    public void setTemporada(Long temporada) {
        this.temporada = temporada;
    }
}
