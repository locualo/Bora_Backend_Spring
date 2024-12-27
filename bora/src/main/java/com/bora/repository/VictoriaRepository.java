package com.bora.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.bora.model.Victoria;

@Repository
public interface VictoriaRepository extends JpaRepository<Victoria, Long> {

}
