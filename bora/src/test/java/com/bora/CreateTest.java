package com.bora;

import com.bora.excepciones.BoraException;
import com.bora.model.*;
import com.bora.op.comunes.*;
import com.bora.repository.*;
import com.bora.service.CreateEntityServiceImpl;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;

import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.ArgumentMatchers.anyLong;
import static org.mockito.Mockito.*;

class CreateTest {

    @InjectMocks
    private CreateEntityServiceImpl createEntityServiceImpl;

    @Mock
    private TemporadaRepository temporadaRepository;

    @Mock
    private CarreraRepository carreraRepository;

    @Mock
    private PaisRepository paisRepository;

    @Mock
    private CategoriaRepository categoriaRepository;

    @Mock
    private CorredorRepository corredorRepository;

    @Mock
    private VictoriaRepository victoriaRepository;

    @Mock
    private PuestometroRepository puestometroRepository;

    @Mock
    private TemporadaCorredorRepository temporadaCorredorRepository;

    public CreateTest() {
        MockitoAnnotations.openMocks(this);
    }

    @Test
    void testCreateTemporada() throws BoraException {
        // Arrange
        Temporada_DTO temporadaDTO = new Temporada_DTO();
        temporadaDTO.setId(1L);

        Temporada temporadaModel = new Temporada();

        when(temporadaRepository.save(temporadaModel)).thenReturn(temporadaModel);

        // Act
        createEntityServiceImpl.createTemporada(temporadaDTO);

        // Assert
        verify(temporadaRepository, times(1)).save(any(Temporada.class));
    }

    @Test
    void testCreateTemporadaFailure() {
        // Arrange
        Temporada_DTO temporadaDTO = new Temporada_DTO();
        temporadaDTO.setId(1L);

        doThrow(new BoraException("Database error")).when(temporadaRepository).save(any(Temporada.class));

        // Act & Assert
        assertThrows(BoraException.class, () -> {
            createEntityServiceImpl.createTemporada(temporadaDTO);
        });

        verify(temporadaRepository, times(1)).save(any(Temporada.class));
    }

    @Test
    void testCreateCarreraNombreExceedsLength() {
        // Arrange
        Carrera_DTO carreraDTO = new Carrera_DTO();
        carreraDTO.setNombre("This is a very long name that exceeds the length limit of 100 characters. This should cause an error.");
        carreraDTO.setWorldTour(true);

        Pais_DTO pais = new Pais_DTO();
        pais.setCodigo(1L);
        carreraDTO.setPais(pais);

        Categoria_DTO categoria = new Categoria_DTO();
        categoria.setId(1L);
        carreraDTO.setCategoria(categoria);

        Pais paisModel = new Pais();
        Categoria categoriaModel = new Categoria();

        when(paisRepository.findById(anyLong())).thenReturn(java.util.Optional.of(paisModel));
        when(categoriaRepository.findById(anyLong())).thenReturn(java.util.Optional.of(categoriaModel));

        doThrow(new BoraException("Database error")).when(carreraRepository).save(any(Carrera.class));
        // Act & Assert
        assertThrows(BoraException.class, () -> {
            createEntityServiceImpl.createCarrera(carreraDTO);
        });

        verify(carreraRepository, times(1)).save(any(Carrera.class));
    }

    @Test
    void testCreateCategoria() throws BoraException {
        // Arrange
        Categoria_DTO categoriaDTO = new Categoria_DTO();
        categoriaDTO.setCodigo("CAT001");

        Categoria categoriaModel = new Categoria();
        categoriaModel.setNombre(categoriaDTO.getCodigo());

        when(categoriaRepository.save(any(Categoria.class))).thenReturn(categoriaModel);

        // Act
        createEntityServiceImpl.createCategoria(categoriaDTO);

        // Assert
        verify(categoriaRepository, times(1)).save(any(Categoria.class));
    }

    @Test
    void testCreateCategoriaFailure() {
        // Arrange
        Categoria_DTO categoriaDTO = new Categoria_DTO();
        categoriaDTO.setCodigo("CAT001");

        doThrow(new BoraException("Database error")).when(categoriaRepository).save(any(Categoria.class));

        // Act & Assert
        assertThrows(BoraException.class, () -> {
            createEntityServiceImpl.createCategoria(categoriaDTO);
        });

        verify(categoriaRepository, times(1)).save(any(Categoria.class));
    }

    @Test
    void testCreateCorredor() throws BoraException {
        // Arrange
        Corredor_DTO corredorDTO = new Corredor_DTO();
        corredorDTO.setNombre("John Doper");
        corredorDTO.setFotoURL("http://example.com/photo.jpg");
        corredorDTO.setSeHaDopadoAlgunaVez(true);

        Pais_DTO paisDTO = new Pais_DTO();
        paisDTO.setCodigo(1L);
        corredorDTO.setPais(paisDTO);

        Pais paisModel = new Pais();
        when(paisRepository.findById(anyLong())).thenReturn(java.util.Optional.of(paisModel));

        Corredor corredorModel = new Corredor();
        corredorModel.setNombre(corredorDTO.getNombre());
        corredorModel.setfotoURL(corredorDTO.getFotoURL());
        corredorModel.setSeHaDopadoAlgunaVez(corredorDTO.isSeHaDopadoAlgunaVez());
        corredorModel.setPais(paisModel);

        when(corredorRepository.save(any(Corredor.class))).thenReturn(corredorModel);

        // Act
        createEntityServiceImpl.createCorredor(corredorDTO);

        // Assert
        verify(corredorRepository, times(1)).save(any(Corredor.class));
    }

    @Test
    void testCreateCorredorFailure() {
        // Arrange
        Corredor_DTO corredorDTO = new Corredor_DTO();
        corredorDTO.setNombre("John Doe");
        corredorDTO.setFotoURL("http://example.com/photo.jpg");
        corredorDTO.setSeHaDopadoAlgunaVez(true);

        Pais_DTO paisDTO = new Pais_DTO();
        paisDTO.setCodigo(1L);
        corredorDTO.setPais(paisDTO);

        Pais paisModel = new Pais();
        when(paisRepository.findById(anyLong())).thenReturn(java.util.Optional.of(paisModel));

        doThrow(new BoraException("Database error")).when(corredorRepository).save(any(Corredor.class));

        // Act & Assert
        assertThrows(BoraException.class, () -> {
            createEntityServiceImpl.createCorredor(corredorDTO);
        });

        verify(corredorRepository, times(1)).save(any(Corredor.class));
    }

    @Test
    void testCreateVictoria() throws BoraException {
        // Arrange
        Victoria_DTO victoriaDTO = new Victoria_DTO();
        Carrera_DTO carreraDTO = new Carrera_DTO();
        carreraDTO.setId(1L);
        victoriaDTO.setCarreraDTO(carreraDTO);

        Temporada_DTO temporadaDTO = new Temporada_DTO();
        temporadaDTO.setId(1L);
        victoriaDTO.setTemporadaDTO(temporadaDTO);

        Corredor_DTO corredorDTO = new Corredor_DTO();
        corredorDTO.setId(1L);
        victoriaDTO.setCorredorDTO(corredorDTO);

        victoriaDTO.setEtapa(true);
        victoriaDTO.setTt(true);

        Carrera carreraModel = new Carrera();
        Temporada temporadaModel = new Temporada();
        Corredor corredorModel = new Corredor();
        TemporadaCorredor temporadaCorredorModel = new TemporadaCorredor();

        when(carreraRepository.findById(anyLong())).thenReturn(java.util.Optional.of(carreraModel));
        when(temporadaRepository.findById(anyLong())).thenReturn(java.util.Optional.of(temporadaModel));
        when(corredorRepository.findById(anyLong())).thenReturn(java.util.Optional.of(corredorModel));
        when(temporadaCorredorRepository.findByCorredorAndTemporada(anyLong(), anyLong())).thenReturn(temporadaCorredorModel);

        // Act
        createEntityServiceImpl.createVictoria(victoriaDTO);

        // Assert
        verify(victoriaRepository, times(1)).save(any(Victoria.class));
    }

    @Test
    void testCreateVictoriaFailure() {
        // Arrange
        Victoria_DTO victoriaDTO = new Victoria_DTO();
        Carrera_DTO carreraDTO = new Carrera_DTO();
        carreraDTO.setId(1L);
        victoriaDTO.setCarreraDTO(carreraDTO);

        Temporada_DTO temporadaDTO = new Temporada_DTO();
        temporadaDTO.setId(1L);
        victoriaDTO.setTemporadaDTO(temporadaDTO);

        Corredor_DTO corredorDTO = new Corredor_DTO();
        corredorDTO.setId(1L);
        victoriaDTO.setCorredorDTO(corredorDTO);

        victoriaDTO.setEtapa(true);
        victoriaDTO.setTt(true);

        Carrera carreraModel = new Carrera();
        Temporada temporadaModel = new Temporada();
        Corredor corredorModel = new Corredor();
        TemporadaCorredor temporadaCorredorModel = new TemporadaCorredor();

        when(carreraRepository.findById(anyLong())).thenReturn(java.util.Optional.of(carreraModel));
        when(temporadaRepository.findById(anyLong())).thenReturn(java.util.Optional.of(temporadaModel));
        when(corredorRepository.findById(anyLong())).thenReturn(java.util.Optional.of(corredorModel));
        when(temporadaCorredorRepository.findByCorredorAndTemporada(anyLong(), anyLong())).thenReturn(temporadaCorredorModel);

        doThrow(new BoraException("Database error")).when(victoriaRepository).save(any(Victoria.class));

        // Act & Assert
        assertThrows(BoraException.class, () -> {
            createEntityServiceImpl.createVictoria(victoriaDTO);
        });

        verify(victoriaRepository, times(1)).save(any(Victoria.class));
    }

    @Test
    void testCreatePuestometro() throws BoraException {
        // Arrange
        Puestometro_DTO puestometroDTO = new Puestometro_DTO();
        puestometroDTO.setPuesto(1);

        Carrera_DTO carreraDTO = new Carrera_DTO();
        carreraDTO.setId(1L);
        puestometroDTO.setCarrera(carreraDTO);

        Temporada_DTO temporadaDTO = new Temporada_DTO();
        temporadaDTO.setId(1L);
        puestometroDTO.setTemporada(temporadaDTO);

        Corredor_DTO corredorDTO = new Corredor_DTO();
        corredorDTO.setId(1L);
        puestometroDTO.setCorredor(corredorDTO);

        Carrera carreraModel = new Carrera();
        Temporada temporadaModel = new Temporada();
        Corredor corredorModel = new Corredor();
        TemporadaCorredor temporadaCorredorModel = new TemporadaCorredor();

        when(carreraRepository.findById(anyLong())).thenReturn(java.util.Optional.of(carreraModel));
        when(temporadaRepository.findById(anyLong())).thenReturn(java.util.Optional.of(temporadaModel));
        when(corredorRepository.findById(anyLong())).thenReturn(java.util.Optional.of(corredorModel));
        when(temporadaCorredorRepository.findByCorredorAndTemporada(anyLong(), anyLong())).thenReturn(temporadaCorredorModel);

        // Act
        createEntityServiceImpl.createPuestometro(puestometroDTO);

        // Assert
        verify(puestometroRepository, times(1)).save(any(Puestometro.class));
    }

    @Test
    void testCreatePuestometroFailure() {
        // Arrange
        Puestometro_DTO puestometroDTO = new Puestometro_DTO();
        puestometroDTO.setPuesto(1);

        Carrera_DTO carreraDTO = new Carrera_DTO();
        carreraDTO.setId(1L);
        puestometroDTO.setCarrera(carreraDTO);

        Temporada_DTO temporadaDTO = new Temporada_DTO();
        temporadaDTO.setId(1L);
        puestometroDTO.setTemporada(temporadaDTO);

        Corredor_DTO corredorDTO = new Corredor_DTO();
        corredorDTO.setId(1L);
        puestometroDTO.setCorredor(corredorDTO);

        Carrera carreraModel = new Carrera();
        Temporada temporadaModel = new Temporada();
        Corredor corredorModel = new Corredor();
        TemporadaCorredor temporadaCorredorModel = new TemporadaCorredor();

        when(carreraRepository.findById(anyLong())).thenReturn(java.util.Optional.of(carreraModel));
        when(temporadaRepository.findById(anyLong())).thenReturn(java.util.Optional.of(temporadaModel));
        when(corredorRepository.findById(anyLong())).thenReturn(java.util.Optional.of(corredorModel));
        when(temporadaCorredorRepository.findByCorredorAndTemporada(anyLong(), anyLong())).thenReturn(temporadaCorredorModel);

        doThrow(new BoraException("Database error")).when(puestometroRepository).save(any(Puestometro.class));

        // Act & Assert
        assertThrows(BoraException.class, () -> {
            createEntityServiceImpl.createPuestometro(puestometroDTO);
        });

        verify(puestometroRepository, times(1)).save(any(Puestometro.class));
    }
}
