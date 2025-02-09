package com.bora;

import com.bora.excepciones.BoraException;
import com.bora.op.carrera.EntradaRecuperarCarrera;
import com.bora.op.carrera.SalidaRecuperarCarrera;
import com.bora.op.comunes.Carrera_DTO;
import com.bora.op.comunes.Categoria_DTO;
import com.bora.op.comunes.Corredor_DTO;
import com.bora.op.comunes.TemporadaCorredor_DTO;
import com.bora.op.comunes.Pais_DTO;
import com.bora.op.comunes.Puestometro_DTO;
import com.bora.op.comunes.Temporada_DTO;
import com.bora.op.comunes.Victoria_DTO;
import com.bora.op.palmares.PalmaresSelectoPorTemporada;
import com.bora.service.CreateEntityServiceImpl;
import com.bora.service.ServiceImpl;

import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import java.util.List;

import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class CreateTestIT {

    @Autowired
    private CreateEntityServiceImpl createEntityServiceImpl;

    @Autowired
    private ServiceImpl serviceImpl;

    @Disabled
    @Test
    void testCreateTemporada() throws BoraException {
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

    @Disabled
    @Test
    void testCreateCorredor() {
        Corredor_DTO corredorDTO = new Corredor_DTO();
        corredorDTO.setNombre("Borja María Martín");
        corredorDTO.setFotoURL("");
        corredorDTO.setPais(new Pais_DTO());
        corredorDTO.getPais().setCodigo(15L);
        corredorDTO.setSeHaDopadoAlgunaVez(false);

        createEntityServiceImpl.createCorredor(corredorDTO);
    }

    @Disabled
    @Test
    void testCreateTemporadaCorredor() {
        // Arrange
        Temporada_DTO temporadaDTO = new Temporada_DTO();
        temporadaDTO.setId(2028L);

        Corredor_DTO corredorDTO = new Corredor_DTO();
        corredorDTO.setId(43L);

        TemporadaCorredor_DTO crearTemporadaCorredor = new TemporadaCorredor_DTO();
        crearTemporadaCorredor.setTemporadaDTO(temporadaDTO);
        crearTemporadaCorredor.setCorredorDTO(corredorDTO);

        // Act
        createEntityServiceImpl.createTemporadaCorredor(crearTemporadaCorredor);
    }

    @Disabled
    @Test
    void testCreateVictoria() {
        Victoria_DTO victoriaDTO = new Victoria_DTO();
        victoriaDTO.setEtapa(true);
        victoriaDTO.setTt(false);
        victoriaDTO.setTemporadaDTO(new Temporada_DTO());
        victoriaDTO.getTemporadaDTO().setId(2028L);
        victoriaDTO.setCarreraDTO(new Carrera_DTO());
        victoriaDTO.getCarreraDTO().setId(1L);
        victoriaDTO.setCorredorDTO(new Corredor_DTO());
        victoriaDTO.getCorredorDTO().setId(48L);
        createEntityServiceImpl.createVictoria(victoriaDTO);
    }

    @Disabled
    @Test
    void testCreatePuestometro() {
        Puestometro_DTO puestometroDTO = new Puestometro_DTO();
        puestometroDTO.setPuesto(5);
        puestometroDTO.setCarrera(new Carrera_DTO());
        puestometroDTO.getCarrera().setId(26L);
        puestometroDTO.setCorredor(new Corredor_DTO());
        puestometroDTO.getCorredor().setId(12L);
        puestometroDTO.setTemporada(new Temporada_DTO());
        puestometroDTO.getTemporada().setId(2027L);
        createEntityServiceImpl.createPuestometro(puestometroDTO);
    }

    @Test
    void testPalmaresSelectoPorTemporada() {
        // Arrange
        int temporada = 2020;

        // Act
        PalmaresSelectoPorTemporada result = serviceImpl.palmaresSelectoPorTemporada(temporada, 0);

        // Assert
        assertNotNull(result);
    }

    @Test
    void recuperarCarreras() {
        // Arrange
        // Act
        SalidaRecuperarCarrera salida;
        EntradaRecuperarCarrera in = new EntradaRecuperarCarrera();
        in.setWorldTour(false);
        in.setIdCategoria(null);
        salida = serviceImpl.recuperarCarreras(in);

        // Assert
        assertNotNull(salida);
        assertFalse(salida.getCarreras().isEmpty(), "La lista de carreras no debería estar vacía");

        // WorldTour
        in.setWorldTour(true);
        in.setIdCategoria(null);
        salida = serviceImpl.recuperarCarreras(in);

        // Assert
        assertNotNull(salida);
        assertFalse(salida.getCarreras().isEmpty(), "La lista de carreras no debería estar vacía");

        // Categoria
        in.setWorldTour(false);
        in.setIdCategoria(5L);
        salida = serviceImpl.recuperarCarreras(in);

        // Assert
        assertNotNull(salida);
        assertFalse(salida.getCarreras().isEmpty(), "La lista de carreras no debería estar vacía");
    }

    @Test
    void recuperarCorredores() {
        // Arrange
        // Act
        List<Corredor_DTO> corredores = serviceImpl.recuperarTodosLosCorredores().getCorredores();

        // Assert
        assertNotNull(corredores);
        assertFalse(corredores.isEmpty(), "La lista de corredores no debería estar vacía");
    }
}
