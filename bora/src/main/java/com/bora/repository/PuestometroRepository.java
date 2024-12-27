package com.bora.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.bora.model.Puestometro;

@Repository
public interface PuestometroRepository extends JpaRepository<Puestometro, Long> {

}
