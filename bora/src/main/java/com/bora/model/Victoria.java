package com.bora.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

//@Entity
public class Victoria {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private Corredor corredor;
    private Carrera carrera;
    private String temporada;
    private boolean etapa;
    private boolean TT;

     // Default constructor
     public Victoria() {}

     // Parameterized constructor
     public Victoria(Long id, Corredor corredor, Carrera carrera, String temporada, boolean etapa, boolean TT) {
         this.id = id;
         this.corredor = corredor;
         this.carrera = carrera;
         this.temporada = temporada;
         this.etapa = etapa;
         this.TT = TT;
     }

    public Corredor getCorredor() {
        return corredor;
    }

    public void setCorredor(Corredor corredor) {
        this.corredor = corredor;
    }

    public Carrera getCarrera() {
        return carrera;
    }

    public void setCarrera(Carrera carrera) {
        this.carrera = carrera;
    }

    public String getTemporada() {
        return temporada;
    }

    public void setTemporada(String temporada) {
        this.temporada = temporada;
    }

    public boolean isEtapa() {
        return etapa;
    }

    public void setEtapa(boolean etapa) {
        this.etapa = etapa;
    }

    public boolean isTT() {
        return TT;
    }

    public void setTT(boolean TT) {
        this.TT = TT;
    }
}
