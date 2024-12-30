package com.bora.op.comunes;

import java.io.Serializable;

public class Puestometro_DTO implements Serializable {
    private Long id;
    private Carrera_DTO carrera;
    private Integer puesto;
    private Temporada_DTO temporada;
    private Corredor_DTO corredor;

    public Long getId() {
        return id;
    }
    public void setId(Long id) {
        this.id = id;
    }
    public Carrera_DTO getCarrera() {
        return carrera;
    }
    public void setCarrera(Carrera_DTO carrera) {
        this.carrera = carrera;
    }
    public Integer getPuesto() {
        return puesto;
    }
    public void setPuesto(Integer puesto) {
        this.puesto = puesto;
    }
    public Temporada_DTO getTemporada() {
        return temporada;
    }
    public void setTemporada(Temporada_DTO temporada) {
        this.temporada = temporada;
    }
    public Corredor_DTO getCorredor() {
        return corredor;
    }
    public void setCorredor(Corredor_DTO corredor) {
        this.corredor = corredor;
    }
}
