package com.bora.model;

import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

public class Puestometro {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private Carrera carrera;
    private Corredor corredor;
    private Integer puesto;
    private Integer temporada;

    // Default constructor
    public Puestometro() {}

    // Parameterized constructor
    public Puestometro(Long id, Carrera carrera, Corredor corredor, Integer puesto, Integer temporada) {
        this.id = id;
        this.carrera = carrera;
        this.corredor = corredor;
        this.puesto = puesto;
        this.temporada = temporada;
    }

    // Getters and Setters
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Carrera getCarrera() {
        return carrera;
    }

    public void setCarrera(Carrera carrera) {
        this.carrera = carrera;
    }

    public Corredor getCorredor() {
        return corredor;
    }

    public void setCorredor(Corredor corredor) {
        this.corredor = corredor;
    }

    public Integer getPuesto() {
        return puesto;
    }

    public void setPuesto(Integer puesto) {
        this.puesto = puesto;
    }

    public Integer getTemporada() {
        return temporada;
    }

    public void setTemporada(Integer temporada) {
        this.temporada = temporada;
    }
}
