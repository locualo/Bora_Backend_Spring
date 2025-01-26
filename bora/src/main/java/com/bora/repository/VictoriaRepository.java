package com.bora.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.bora.model.Victoria;

@Repository
public interface VictoriaRepository extends JpaRepository<Victoria, Long> {
    @Query("SELECT v FROM Victoria v WHERE v.temporadaCorredor.id =:temporadaCorr")
    public List<Victoria> findVictoriaByTemporadaCorredor(Long temporadaCorr);
}
