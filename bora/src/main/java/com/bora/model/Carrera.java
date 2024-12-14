package com.bora.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "carrera")
public class Carrera {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String nombre;
    private String categoria;
    private boolean worldTour;
    private String pais;

    // Default constructor
    public Carrera() {}

    // Parameterized constructor
    public Carrera(Long id, String nombre, String categoria, boolean worldTour, String pais) {
        this.id = id;
        this.nombre = nombre;
        this.categoria = categoria;
        this.worldTour = worldTour;
        this.pais = pais;
    }

    // Getters and Setters
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public boolean isWorldTour() {
        return worldTour;
    }

    public void setWorldTour(boolean worldTour) {
        this.worldTour = worldTour;
    }

    public String getPais() {
        return pais;
    }

    public void setPais(String pais) {
        this.pais = pais;
    }
}
