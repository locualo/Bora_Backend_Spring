package com.bora.model;

import java.io.Serializable;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "categoria")
public class Categoria implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Long id;
    @Column(name = "nombre", nullable = false, length = 100)
    private String nombre;
    @OneToMany(mappedBy = "categoria")
    private List<Carrera> carreras;
    @OneToMany(mappedBy = "categoria")
    private List<PuntuacionCategoria> puntuacionCategoria;

    public Categoria() {
    }

    public Categoria(Long id, String nombre) {
        this.id = id;
        this.nombre = nombre;
    }

    public Categoria(String nombre) {
        this.nombre = nombre;
    }

    public Long getId() {
        return id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public List<Carrera> getCarreras() {
        return carreras;
    }

    public void setCarreras(List<Carrera> carreras) {
        this.carreras = carreras;
    }

    public List<PuntuacionCategoria> getPuntuacionCategoria() {
        return puntuacionCategoria;
    }

    public void setPuntuacionCategoria(List<PuntuacionCategoria> puntuacionCategoria) {
        this.puntuacionCategoria = puntuacionCategoria;
    }

    
}
