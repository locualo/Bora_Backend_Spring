package com.bora.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.bora.model.Corredor;
import com.bora.model.TemporadaCorredor;

@Repository
public interface TemporadaCorredorRepository extends JpaRepository<TemporadaCorredor, Long> {
    @Query("SELECT tc FROM TemporadaCorredor tc WHERE tc.corredor.id =:idCorredor AND tc.temporada.id =:idTemporada")
    public TemporadaCorredor findByCorredorAndTemporada(Long idCorredor, Long idTemporada);

    @Query("SELECT tc FROM TemporadaCorredor tc WHERE tc.temporada.id =:temporada")
    public List<TemporadaCorredor> findCorredoresByTemporada(int temporada);
}
