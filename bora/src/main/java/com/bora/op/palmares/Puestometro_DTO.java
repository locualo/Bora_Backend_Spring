package com.bora.op.palmares;

import java.io.Serializable;

public class Puestometro_DTO extends Logro_DTO implements Serializable{
    private int puesto;
    
    public int getPuesto() {
        return puesto;
    }
    public void setPuesto(int puesto) {
        this.puesto = puesto;
    }
}
