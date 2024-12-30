package com.bora.op.comunes;

import java.io.Serializable;

public class Corredor_DTO implements Serializable {
    private Long id;
    private String nombre;
    private String fotoURL;
    private Pais_DTO pais;
    private boolean seHaDopadoAlgunaVez;

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
    public String getFotoURL() {
        return fotoURL;
    }
    public void setFotoURL(String fotoURL) {
        this.fotoURL = fotoURL;
    }
    public Pais_DTO getPais() {
        return pais;
    }
    public void setPais(Pais_DTO pais) {
        this.pais = pais;
    }

    public boolean isSeHaDopadoAlgunaVez() {
        return seHaDopadoAlgunaVez;
    }

    public void setSeHaDopadoAlgunaVez(boolean seHaDopadoAlgunaVez) {
        this.seHaDopadoAlgunaVez = seHaDopadoAlgunaVez;
    }    
}
