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
@Table(name = "corredor")
public class Corredor implements Serializable{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Long id;
    @Column(name = "nombre", nullable = false, length = 100)
    private String nombre;
    @Column(name = "fotoURL", length = 300)
    private String fotoURL;
    @JoinColumn(name = "pais", nullable = false)
    @ManyToOne(fetch = FetchType.LAZY)
    private Pais pais;
    @OneToMany(mappedBy = "corredor", fetch = FetchType.LAZY)
    private List<TemporadaCorredor> temporadaCorredor;
    @Column(name = "se_ha_dopado_alguna_vez", nullable = false)
    private boolean setSeHaDopadoAlgunaVez;

    // Default constructor
    public Corredor() {}

    // Parameterized constructor
    public Corredor(Long id, String nombre, String fotoURL, Pais pais) {
        this.id = id;
        this.nombre = nombre;
        this.fotoURL = fotoURL;
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

    public String getfotoURL() {
        return fotoURL;
    }

    public void setfotoURL(String fotoURL) {
        this.fotoURL = fotoURL;
    }

    public Pais getPais() {
        return this.pais;
    }

    public void setPais(Pais pais) {
        this.pais = pais;
    }

    public List<TemporadaCorredor> getTemporadaCorredor() {
        return temporadaCorredor;
    }

    public void setTemporadaCorredor(List<TemporadaCorredor> temporadaCorredor) {
        this.temporadaCorredor = temporadaCorredor;
    }

    public boolean getSeHaDopadoAlgunaVez() {
        return setSeHaDopadoAlgunaVez;
    }

    public void setSeHaDopadoAlgunaVez(boolean setSeHaDopadoAlgunaVez) {
        this.setSeHaDopadoAlgunaVez = setSeHaDopadoAlgunaVez;
    }
}
