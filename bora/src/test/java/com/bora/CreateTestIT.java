package com.bora;

import com.bora.excepciones.DatabaseException;
import com.bora.op.comunes.Carrera_DTO;
import com.bora.op.comunes.Categoria_DTO;
import com.bora.op.comunes.Pais_DTO;
import com.bora.op.comunes.Temporada_DTO;
import com.bora.service.CreateEntityServiceImpl;

import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class CreateTestIT {

    @Autowired
    private CreateEntityServiceImpl createEntityServiceImpl;

    @Disabled
    @Test
    void testCreateTemporada() throws DatabaseException {
        // Arrange
        Temporada_DTO temporadaDTO = new Temporada_DTO();
        temporadaDTO.setId(1L);
        // Act
        createEntityServiceImpl.createTemporada(temporadaDTO);
    }

    @Disabled
    @Test
    void testCreateCategoria() {
        // Arrange
        // Act
        Categoria_DTO categoriaDTO = new Categoria_DTO();
        categoriaDTO.setCodigo("Junior");
        createEntityServiceImpl.createCategoria(categoriaDTO);
    }

    @Disabled
    @Test
    void testCreatePais() {
        // Arrange
        // Act
        Pais_DTO paisDTO = new Pais_DTO();
        paisDTO.setNombre("Eslovenia");
        createEntityServiceImpl.createPais(paisDTO);
    }

    @Disabled
    @Test
    void testCreateCarrera() {
        // Arrange
        // Act
        Carrera_DTO carreraDTO = new Carrera_DTO();
        carreraDTO.setNombre("SuperVolta a Portugal");
        carreraDTO.setWorldTour(false);
        carreraDTO.setCategoria(new Categoria_DTO());
        carreraDTO.getCategoria().setId(12L);
        carreraDTO.setPais(new Pais_DTO());
        carreraDTO.getPais().setCodigo(15L);

        createEntityServiceImpl.createCarrera(carreraDTO);
    }

}
