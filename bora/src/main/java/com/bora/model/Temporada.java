package com.bora.model;

import java.io.Serializable;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "temporada")
public class Temporada implements Serializable{
    
    @Id
    @Column(name = "id", nullable = false, unique = true)
    private Long id;
    @OneToMany(mappedBy = "temporada")
    private List<TemporadaCorredor> temporadaCorredores;

    public List<TemporadaCorredor> getTemporadaCorredores() {
        return temporadaCorredores;
    }

    public void setTemporadaCorredores(List<TemporadaCorredor> temporadaCorredores) {
        this.temporadaCorredores = temporadaCorredores;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }
}
