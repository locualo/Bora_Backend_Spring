package com.bora.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.bora.model.TemporadaCorredor;

@Repository
public interface TemporadaCorredorRepository extends JpaRepository<TemporadaCorredor, Long> {

}
