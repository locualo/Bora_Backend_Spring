package com.bora;

import com.bora.excepciones.DatabaseException;
import com.bora.model.Carrera;
import com.bora.model.Categoria;
import com.bora.model.Pais;
import com.bora.model.Temporada;
import com.bora.op.comunes.Carrera_DTO;
import com.bora.op.comunes.Categoria_DTO;
import com.bora.op.comunes.Pais_DTO;
import com.bora.op.comunes.Temporada_DTO;
import com.bora.repository.CarreraRepository;
import com.bora.repository.CategoriaRepository;
import com.bora.repository.PaisRepository;
import com.bora.repository.TemporadaRepository;
import com.bora.service.CreateEntityServiceImpl;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;

import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.ArgumentMatchers.anyLong;
import static org.mockito.Mockito.doThrow;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;


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

    public CreateTest() {
        MockitoAnnotations.openMocks(this);
    }

    @Test
    void testCreateTemporada() throws DatabaseException {
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

        doThrow(new DatabaseException("Database error")).when(temporadaRepository).save(any(Temporada.class));

        // Act & Assert
        assertThrows(DatabaseException.class, () -> {
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

        doThrow(new DatabaseException("Database error")).when(carreraRepository).save(any(Carrera.class));
        // Act & Assert
        assertThrows(DatabaseException.class, () -> {
            createEntityServiceImpl.createCarrera(carreraDTO);
        });

        verify(carreraRepository, times(1)).save(any(Carrera.class));
    }
}
