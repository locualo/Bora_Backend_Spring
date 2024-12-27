package com.bora.op.comunes;

import java.io.Serializable;

public class Pais_DTO implements Serializable {
    private String nombre;
    private Long codigo;

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public Long getCodigo() {
        return codigo;
    }

    public void setCodigo(Long codigo) {
        this.codigo = codigo;
    }
}
