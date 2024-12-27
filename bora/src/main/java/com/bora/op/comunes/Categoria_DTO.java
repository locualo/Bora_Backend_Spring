package com.bora.op.comunes;

import java.io.Serializable;

public class Categoria_DTO implements Serializable{
    private String codigo;
    private Long id;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }
}
