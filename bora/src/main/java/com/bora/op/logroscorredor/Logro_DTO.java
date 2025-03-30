package com.bora.op.logroscorredor;

import java.io.Serializable;

import com.bora.op.comunes.Categoria_DTO;

public abstract class Logro_DTO implements Serializable{
    private String carrera;
    private Long codigoCarrera;
    private Categoria_DTO categoria;
    
    public String getCarrera() {
        return carrera;
    }
    public void setCarrera(String carrera) {
        this.carrera = carrera;
    }

    public Categoria_DTO getCategoria() {
        return categoria;
    }

    public void setCategoria(Categoria_DTO categoria) {
        this.categoria = categoria;
    }

    public Long getCodigoCarrera() {
        return codigoCarrera;
    }

    public void setCodigoCarrera(Long codigoCarrera) {
        this.codigoCarrera = codigoCarrera;
    }
}


