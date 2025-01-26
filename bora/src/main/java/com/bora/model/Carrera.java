package com.bora.model;

import java.io.Serializable;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "carrera")
public class Carrera implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Long id;
    @Column(name = "nombre", nullable = false, length = 100)
    private String nombre;
    @JoinColumn(name = "categoria", nullable = false)
    @ManyToOne(fetch = FetchType.EAGER)
    private Categoria categoria;
    @Column(name = "worldtour", nullable = false)
    private boolean worldTour;
    @JoinColumn(name = "pais", nullable = false)
    @ManyToOne(fetch = FetchType.LAZY)
    private Pais pais;
    @OneToMany(mappedBy = "carrera")
    private List<Puestometro> puestometro;
    @OneToMany(mappedBy = "carrera")
    private List<Victoria> victoria;

    // Default constructor
    public Carrera() {
    }

    // Parameterized constructor
    public Carrera(Long id, String nombre, Categoria categoria, boolean worldTour, Pais pais) {
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

    public Categoria getCategoria() {
        return categoria;
    }

    public void setCategoria(Categoria categoria) {
        this.categoria = categoria;
    }

    public boolean isWorldTour() {
        return worldTour;
    }

    public void setWorldTour(boolean worldTour) {
        this.worldTour = worldTour;
    }

    public Pais getPais() {
        return pais;
    }

    public void setPais(Pais pais) {
        this.pais = pais;
    }

    public List<Puestometro> getPuestometro() {
        return puestometro;
    }

    public void setPuestometro(List<Puestometro> puestometro) {
        this.puestometro = puestometro;
    }

    public List<Victoria> getVictoria() {
        return victoria;
    }

    public void setVictoria(List<Victoria> victoria) {
        this.victoria = victoria;
    }
}
