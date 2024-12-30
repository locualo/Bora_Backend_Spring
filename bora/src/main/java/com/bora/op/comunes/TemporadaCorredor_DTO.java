package com.bora.op.comunes;

import java.io.Serializable;

public class TemporadaCorredor_DTO implements Serializable{
    private Long id;
    private Temporada_DTO temporadaDTO;
    private Corredor_DTO corredorDTO;

    public Long getId() {
        return id;
    }

    public Temporada_DTO getTemporadaDTO() {
        return temporadaDTO;
    }
    public void setTemporadaDTO(Temporada_DTO temporadaDTO) {
        this.temporadaDTO = temporadaDTO;
    }
    public Corredor_DTO getCorredorDTO() {
        return corredorDTO;
    }
    public void setCorredorDTO(Corredor_DTO corredorDTO) {
        this.corredorDTO = corredorDTO;
    }
}
