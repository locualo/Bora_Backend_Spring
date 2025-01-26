package com.bora.op.palmares;

import java.io.Serializable;
import java.util.List;

public class Corredor_DTO implements Serializable {
    private List<Logro_DTO> logros;
    private Long id;
    private String nombre;
    private int puntosTotales;

    public List<Logro_DTO> getLogros() {
        return logros;
    }

    public void setLogros(List<Logro_DTO> logros) {
        this.logros = logros;
    }

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

    public int getPuntosTotales() {
        return puntosTotales;
    }

    public void setPuntosTotales(int puntosTotales) {
        this.puntosTotales = puntosTotales;
    }
}


