package com.bora.model;

import java.io.Serializable;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "temporada_corredor")
public class TemporadaCorredor implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Long id;
    @JoinColumn(name = "temporada", nullable = false)
    @ManyToOne(fetch = FetchType.LAZY)
    private Temporada temporada;
    @JoinColumn(name = "corredor", nullable = false)
    @ManyToOne(fetch = FetchType.LAZY)
    private Corredor corredor;
    @OneToMany(mappedBy = "temporadaCorredor")
    private List<Puestometro> puestometro;
    @OneToMany(mappedBy = "temporadaCorredor")
    private List<Victoria> victoria;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Temporada getTemporada() {
        return temporada;
    }

    public void setTemporada(Temporada temporada) {
        this.temporada = temporada;
    }

    public Corredor getCorredor() {
        return corredor;
    }

    public void setCorredor(Corredor corredor) {
        this.corredor = corredor;
    }

    public List<Puestometro> getPuestometro() {
        return puestometro;
    }

    public void setPuestometro(List<Puestometro> puestometro) {
        this.puestometro = puestometro;
    }

    public List<Victoria> getVictoria() {
        return victoria;
    }

    public void setVictoria(List<Victoria> victoria) {
        this.victoria = victoria;
    }

}
