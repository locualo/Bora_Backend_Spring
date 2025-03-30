package com.bora.op.logroscorredor;

import java.io.Serializable;
import java.util.List;

public class NoEtapa_DTO extends Victoria_DTO implements Serializable{
    private List<Long> ediciones;

    public List<Long> getEdiciones() {
        return ediciones;
    }

    public void setEdiciones(List<Long> ediciones) {
        this.ediciones = ediciones;
    }
}
