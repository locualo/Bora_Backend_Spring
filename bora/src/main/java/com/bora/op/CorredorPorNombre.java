package com.bora.op;

import java.util.List;

public class CorredorPorNombre {
    private List<String> nombre;

    public CorredorPorNombre() {
    }

    public CorredorPorNombre(List<String> nombre) {
        this.nombre = nombre;
    }

    public List<String> getNombre() {
        return nombre;
    }

    public void setNombre(List<String> nombre) {
        this.nombre = nombre;
    }
}
