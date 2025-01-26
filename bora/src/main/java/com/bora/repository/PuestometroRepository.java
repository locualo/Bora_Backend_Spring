package com.bora.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.bora.model.Puestometro;

@Repository
public interface PuestometroRepository extends JpaRepository<Puestometro, Long> {
    @Query("SELECT p FROM Puestometro p WHERE p.temporadaCorredor.id = ?1")
    public List<Puestometro> findPuestometroByTemporadaCorredor(Long temporadaCorr); 
}
