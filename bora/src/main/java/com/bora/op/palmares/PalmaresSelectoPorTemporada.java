package com.bora.op.palmares;

import java.io.Serializable;
import java.util.List;

public class PalmaresSelectoPorTemporada implements Serializable{
    private List<Corredor_DTO> corredores;

    public List<Corredor_DTO> getCorredores() {
        return corredores;
    }

    public void setCorredores(List<Corredor_DTO> corredores) {
        this.corredores = corredores;
    }
}
