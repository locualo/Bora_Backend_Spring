package com.bora.op.comunes;

import java.io.Serializable;

public class Victoria_DTO implements Serializable {
    private Long id;
    private Temporada_DTO temporadaDTO;
    private Carrera_DTO carreraDTO;
    private Corredor_DTO corredorDTO;
    private boolean etapa;
    private boolean tt;
    
    public Long getId() {
        return id;
    }
    public void setId(Long id) {
        this.id = id;
    }
    public Temporada_DTO getTemporadaDTO() {
        return temporadaDTO;
    }
    public void setTemporadaDTO(Temporada_DTO temporadaDTO) {
        this.temporadaDTO = temporadaDTO;
    }
    public Carrera_DTO getCarreraDTO() {
        return carreraDTO;
    }
    public void setCarreraDTO(Carrera_DTO carreraDTO) {
        this.carreraDTO = carreraDTO;
    }
    public Corredor_DTO getCorredorDTO() {
        return corredorDTO;
    }
    public void setCorredorDTO(Corredor_DTO corredorDTO) {
        this.corredorDTO = corredorDTO;
    }
    public boolean isEtapa() {
        return etapa;
    }
    public void setEtapa(boolean etapa) {
        this.etapa = etapa;
    }
    public boolean isTt() {
        return tt;
    }
    public void setTt(boolean tt) {
        this.tt = tt;
    }

    
}
