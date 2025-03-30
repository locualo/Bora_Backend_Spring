package com.bora.op.logroscorredor;

import java.io.Serializable;

public abstract class Victoria_DTO extends Logro_DTO implements Serializable {
    private int prioridad;

    public int getPrioridad() {
        return prioridad;
    }

    public void setPrioridad(int prioridad) {
        this.prioridad = prioridad;
    }
}
