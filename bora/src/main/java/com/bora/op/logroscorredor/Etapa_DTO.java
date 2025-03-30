package com.bora.op.logroscorredor;

import java.io.Serializable;
import java.util.List;

public class Etapa_DTO extends Victoria_DTO implements Serializable{
    private int numero;
    private List<NumeroTemporada_DTO> numeroTemporada;

    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    public List<NumeroTemporada_DTO> getNumeroTemporada() {
        return numeroTemporada;
    }

    public void setNumeroTemporada(List<NumeroTemporada_DTO> numeroTemporada) {
        this.numeroTemporada = numeroTemporada;
    }
}
