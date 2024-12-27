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
@Table(name = "victoria")
public class Victoria implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Long id;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "carrera", nullable = false)
    private Carrera carrera;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "temporada_corredor", nullable = false)
    private TemporadaCorredor temporadaCorredor;
    @Column(name = "etapa", nullable = false)
    private boolean etapa;
    @Column(name = "tt", nullable = false)
    private boolean tt;

    public Carrera getCarrera() {
        return carrera;
    }

    public void setCarrera(Carrera carrera) {
        this.carrera = carrera;
    }

    public TemporadaCorredor getTemporadaCorredor() {
        return temporadaCorredor;
    }

    public void setTemporadaCorredor(TemporadaCorredor temporadaCorredor) {
        this.temporadaCorredor = temporadaCorredor;
    }

    public boolean isEtapa() {
        return etapa;
    }

    public void setEtapa(boolean etapa) {
        this.etapa = etapa;
    }

    public boolean isTT() {
        return tt;
    }

    public void setTT(boolean tt) {
        this.tt = tt;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }
}
