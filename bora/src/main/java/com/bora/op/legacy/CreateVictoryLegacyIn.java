package com.bora.op.legacy;

import java.io.Serializable;
import java.util.List;

public class CreateVictoryLegacyIn implements Serializable{
    private List<Posicion> posiciones;

    public List<Posicion> getPosiciones() {
        return posiciones;
    }

    public void setPosiciones(List<Posicion> posiciones) {
        this.posiciones = posiciones;
    }
}
