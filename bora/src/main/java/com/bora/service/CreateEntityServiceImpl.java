package com.bora.service;

import org.checkerframework.checker.units.qual.A;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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

@Service
public class CreateEntityServiceImpl {

    @Autowired
    private TemporadaRepository temporadaRepository;

    @Autowired
    private CategoriaRepository categoriaRepository;

    @Autowired
    private CarreraRepository carreraRepository;

    @Autowired
    private PaisRepository paisRepository;
    
    public void createTemporada(Temporada_DTO temporadaDTO) throws DatabaseException {
        Temporada temporadaModel = new Temporada();
        temporadaModel.setId(temporadaDTO.getId());

        try {
            temporadaRepository.save(temporadaModel);
        } catch (RuntimeException e) {
            e.printStackTrace();
            throw new DatabaseException("Database error", e);
        }
    }

    public void createCategoria(Categoria_DTO categoriaDTO) throws DatabaseException {
        
        Categoria categoriaModel = new Categoria();
        categoriaModel.setNombre(categoriaDTO.getCodigo());
        
        try {
            categoriaRepository.save(categoriaModel);
        } catch (RuntimeException e) {
            e.printStackTrace();
            throw new DatabaseException("Database error", e);
        }
    }

    public void createCarrera(Carrera_DTO carreraDTO) {
        Carrera carreraModel = new Carrera();
        carreraModel.setNombre(carreraDTO.getNombre());
        carreraModel.setWorldTour(carreraDTO.isWorldTour());

        paisRepository.findById(carreraDTO.getPais().getCodigo()).ifPresent(carreraModel::setPais);
        if(carreraModel.getPais() == null) {
            throw new DatabaseException("Pais no encontrado");
        }

        categoriaRepository.findById(carreraDTO.getCategoria().getId()).ifPresent(carreraModel::setCategoria);
        if(carreraModel.getCategoria() == null) {
            throw new DatabaseException("Pais no encontrado");
        }
        
        try {
            carreraRepository.save(carreraModel);
        } catch (RuntimeException e) {
            e.printStackTrace();
            throw new DatabaseException("Database error", e);
        }
    }

    public void createPais(Pais_DTO paisDTO) throws DatabaseException {
        Pais paisModel = new Pais();
        paisModel.setNombre(paisDTO.getNombre());
        
        try {
            paisRepository.save(paisModel);
        } catch (RuntimeException e) {
            e.printStackTrace();
            throw new DatabaseException("Database error", e);
        }
    }
}
