package com.bora.model;

import java.io.Serializable;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "puestometro")
public class Puestometro implements Serializable{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Long id;
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "carrera", nullable = false)
    private Carrera carrera;
    @Column(name = "puesto", nullable = false)
    private Integer puesto;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "temporada_corredor", nullable = false)
    private TemporadaCorredor temporadaCorredor;

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

    public Integer getPuesto() {
        return puesto;
    }

    public void setPuesto(Integer puesto) {
        this.puesto = puesto;
    }

    public TemporadaCorredor getTemporadaCorredor() {
        return temporadaCorredor;
    }

    public void setTemporadaCorredor(TemporadaCorredor temporadaCorredor) {
        this.temporadaCorredor = temporadaCorredor;
    }
}
