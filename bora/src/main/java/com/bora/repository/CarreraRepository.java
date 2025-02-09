package com.bora.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.bora.model.Carrera;

@Repository
public interface CarreraRepository extends JpaRepository<Carrera, Long> {
    @Query("SELECT c FROM Carrera c WHERE c.worldTour = true")
    public List<Carrera> findCarreraWorldTour();
}
