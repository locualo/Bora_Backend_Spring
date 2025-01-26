package com.bora.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.bora.model.PuntuacionCategoria;
import java.util.List;
import java.util.Optional;


@Repository
public interface PuntuacionCategoriaRepository extends JpaRepository<PuntuacionCategoria, Long> {
    @Query ("SELECT p FROM PuntuacionCategoria p WHERE p.categoria.id = ?1")
    public List<PuntuacionCategoria> findPuntuacionCategoriaByCategoria(int categoria);

    @Query ("SELECT p FROM PuntuacionCategoria p WHERE p.categoria.id = ?1 AND p.puesto = ?2")
    public Optional<PuntuacionCategoria> findPuntuacionCategoriaByCategoriaAndPuesto(Long categoria, int puesto);
}
