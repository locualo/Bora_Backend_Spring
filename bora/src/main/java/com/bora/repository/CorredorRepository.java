package com.bora.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.bora.model.Corredor;

@Repository
public interface CorredorRepository extends JpaRepository<Corredor, Long> {
    @Query("SELECT c FROM Corredor c WHERE c.nombre like %:nombre%")
    Corredor findCorredorByName(String nombre);

    List<Corredor> findAll();
}
