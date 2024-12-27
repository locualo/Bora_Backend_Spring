package com.bora.op.comunes;

import java.io.Serializable;

public class Carrera_DTO implements Serializable {
    private String nombre;
    private boolean worldTour;
    private Categoria_DTO categoria;
    private Pais_DTO pais;
    
    public String getNombre() {
        return nombre;
    }
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    public boolean isWorldTour() {
        return worldTour;
    }
    public void setWorldTour(boolean worldTour) {
        this.worldTour = worldTour;
    }
    public Categoria_DTO getCategoria() {
        return categoria;
    }
    public void setCategoria(Categoria_DTO categoria) {
        this.categoria = categoria;
    }
    public Pais_DTO getPais() {
        return pais;
    }
    public void setPais(Pais_DTO pais) {
        this.pais = pais;
    }

}
