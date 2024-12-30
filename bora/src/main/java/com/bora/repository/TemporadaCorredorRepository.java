package com.bora.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.bora.model.TemporadaCorredor;

@Repository
public interface TemporadaCorredorRepository extends JpaRepository<TemporadaCorredor, Long> {
    @Query("SELECT tc FROM TemporadaCorredor tc WHERE tc.corredor.id =:idCorredor AND tc.temporada.id =:idTemporada")
    public TemporadaCorredor findByCorredorAndTemporada(Long idCorredor, Long idTemporada);
}
