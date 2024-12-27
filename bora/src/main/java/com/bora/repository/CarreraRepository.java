package com.bora.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.bora.model.Carrera;

@Repository
public interface CarreraRepository extends JpaRepository<Carrera, Long> {

}
