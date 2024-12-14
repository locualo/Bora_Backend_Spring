package com.bora.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "corredor")
public class Corredor {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String nombre;
    private String fotoURL;

    // Default constructor
    public Corredor() {}

    // Parameterized constructor
    public Corredor(Long id, String nombre, String fotoURL) {
        this.id = id;
        this.nombre = nombre;
        this.fotoURL = fotoURL;
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
}
