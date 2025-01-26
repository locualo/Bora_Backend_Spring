package com.bora.op.palmares;

import java.io.Serializable;

public abstract class Logro_DTO implements Serializable{
    private String carrera;
    private Integer puntos;
    
    public String getCarrera() {
        return carrera;
    }
    public void setCarrera(String carrera) {
        this.carrera = carrera;
    }

    public Integer getPuntos() {
        return puntos;
    }

    public void setPuntos(Integer puntos) {
        this.puntos = puntos;
    }
}


