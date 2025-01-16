package com.bora.service;

import org.checkerframework.checker.units.qual.A;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bora.excepciones.BoraException;
import com.bora.model.Carrera;
import com.bora.model.Categoria;
import com.bora.model.Corredor;
import com.bora.model.Pais;
import com.bora.model.Puestometro;
import com.bora.model.Temporada;
import com.bora.model.TemporadaCorredor;
import com.bora.model.Victoria;
import com.bora.op.comunes.Carrera_DTO;
import com.bora.op.comunes.Categoria_DTO;
import com.bora.op.comunes.Corredor_DTO;
import com.bora.op.comunes.TemporadaCorredor_DTO;
import com.bora.op.comunes.Pais_DTO;
import com.bora.op.comunes.Puestometro_DTO;
import com.bora.op.comunes.Temporada_DTO;
import com.bora.op.comunes.Victoria_DTO;
import com.bora.op.legacy.CreatePuestometroLegacyIn;
import com.bora.op.legacy.CreateVictoryLegacyIn;
import com.bora.op.legacy.Posicion;
import com.bora.repository.CarreraRepository;
import com.bora.repository.CategoriaRepository;
import com.bora.repository.CorredorRepository;
import com.bora.repository.PaisRepository;
import com.bora.repository.PuestometroRepository;
import com.bora.repository.TemporadaCorredorRepository;
import com.bora.repository.TemporadaRepository;
import com.bora.repository.VictoriaRepository;

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

    @Autowired
    private CorredorRepository corredorRepository;

    @Autowired
    private TemporadaCorredorRepository temporadaCorredorRepository;

    @Autowired
    private VictoriaRepository victoriaRepository;

    @Autowired
    private PuestometroRepository puestometroRepository;
    
    public void createTemporada(Temporada_DTO temporadaDTO) throws BoraException {
        Temporada temporadaModel = new Temporada();
        temporadaModel.setId(temporadaDTO.getId());

        try {
            temporadaRepository.save(temporadaModel);
        } catch (RuntimeException e) {
            e.printStackTrace();
            throw new BoraException(BoraException.DatabaseExceptionType.DATABASE_ERROR_MESSAGE.getMessage(), e.getMessage());
        }
    }

    public void createCategoria(Categoria_DTO categoriaDTO) throws BoraException {
        
        Categoria categoriaModel = new Categoria();
        categoriaModel.setNombre(categoriaDTO.getCodigo());
        
        try {
            categoriaRepository.save(categoriaModel);
        } catch (RuntimeException e) {
            e.printStackTrace();
            throw new BoraException(BoraException.DatabaseExceptionType.DATABASE_ERROR_MESSAGE.getMessage(), e.getMessage());
        }
    }

    public void createCarrera(Carrera_DTO carreraDTO) throws BoraException {
        Carrera carreraModel = new Carrera();
        carreraModel.setNombre(carreraDTO.getNombre());
        carreraModel.setWorldTour(carreraDTO.isWorldTour());

        paisRepository.findById(carreraDTO.getPais().getCodigo()).ifPresent(carreraModel::setPais);
        validarPais(carreraModel.getPais());

        categoriaRepository.findById(carreraDTO.getCategoria().getId()).ifPresent(carreraModel::setCategoria);
        validarCategoria(carreraModel.getCategoria());
        
        try {
            carreraRepository.save(carreraModel);
        } catch (RuntimeException e) {
            e.printStackTrace();
            throw new BoraException(BoraException.DatabaseExceptionType.DATABASE_ERROR_MESSAGE.getMessage(), e.getMessage());
        }
    }

    public void createPais(Pais_DTO paisDTO) throws BoraException {
        Pais paisModel = new Pais();
        paisModel.setNombre(paisDTO.getNombre());
        
        try {
            paisRepository.save(paisModel);
        } catch (RuntimeException e) {
            e.printStackTrace();
            throw new BoraException(BoraException.DatabaseExceptionType.DATABASE_ERROR_MESSAGE.getMessage(), e.getMessage());
        }
    }

    public void createCorredor(Corredor_DTO corredorDTO) throws BoraException {
        Corredor corredorModel = new Corredor();

        corredorModel.setNombre(corredorDTO.getNombre());
        corredorModel.setfotoURL(corredorDTO.getFotoURL());
        corredorModel.setSeHaDopadoAlgunaVez(corredorDTO.isSeHaDopadoAlgunaVez());
        
        paisRepository.findById(corredorDTO.getPais().getCodigo()).ifPresent(corredorModel::setPais);
        validarPais(corredorModel.getPais());

        try {
            corredorRepository.save(corredorModel);
        } catch (RuntimeException e) {
            e.printStackTrace();
            throw new BoraException(BoraException.DatabaseExceptionType.DATABASE_ERROR_MESSAGE.getMessage(), e.getMessage());
        }
    }

    public void createTemporadaCorredor(TemporadaCorredor_DTO in) throws BoraException {
        TemporadaCorredor temporadaCorredorModel = new TemporadaCorredor();

        temporadaRepository.findById(in.getTemporadaDTO().getId()).ifPresent(temporadaCorredorModel::setTemporada);
        validarTemporada(temporadaCorredorModel.getTemporada());

        corredorRepository.findById(in.getCorredorDTO().getId()).ifPresent(temporadaCorredorModel::setCorredor);
        validarCorredor(temporadaCorredorModel.getCorredor());

        try {
            temporadaCorredorRepository.save(temporadaCorredorModel);
        } catch (RuntimeException e) {
            e.printStackTrace();
            throw new BoraException(BoraException.DatabaseExceptionType.DATABASE_ERROR_MESSAGE.getMessage(), e.getMessage());
        }
    }

    public void createVictoria(Victoria_DTO victoriaDTO) throws BoraException {
        Victoria victoriaModel = new Victoria();

        carreraRepository.findById(victoriaDTO.getCarreraDTO().getId()).ifPresent(victoriaModel::setCarrera);
        validarCarrera(victoriaModel.getCarrera());

        TemporadaCorredor temporadaCorredor = new TemporadaCorredor();

        temporadaRepository.findById(victoriaDTO.getTemporadaDTO().getId()).ifPresent(temporadaCorredor::setTemporada);
        validarTemporada(temporadaCorredor.getTemporada());
        corredorRepository.findById(victoriaDTO.getCorredorDTO().getId()).ifPresent(temporadaCorredor::setCorredor);
        validarCorredor(temporadaCorredor.getCorredor());

        temporadaCorredor = temporadaCorredorRepository.findByCorredorAndTemporada(victoriaDTO.getCorredorDTO().getId(), victoriaDTO.getTemporadaDTO().getId());
        validarTemporadaCorredor(temporadaCorredor);

        victoriaModel.setTemporadaCorredor(temporadaCorredor);

        if(victoriaDTO.isEtapa()) {
           victoriaModel.setEtapa(true);
           victoriaModel.setTT(victoriaDTO.isTt());
        }else {
            victoriaModel.setEtapa(false);
            victoriaModel.setTT(false);
        }

        try {
            victoriaRepository.save(victoriaModel);
        } catch (RuntimeException e) {
            e.printStackTrace();
            throw new BoraException(BoraException.DatabaseExceptionType.DATABASE_ERROR_MESSAGE.getMessage(), e.getMessage());
        }
    }

    public void createPuestometro(Puestometro_DTO puestometroDTO) throws BoraException {
        Puestometro puestometroModel = new Puestometro();

        puestometroModel.setPuesto(puestometroDTO.getPuesto());

        carreraRepository.findById(puestometroDTO.getCarrera().getId()).ifPresent(puestometroModel::setCarrera);
        validarCarrera(puestometroModel.getCarrera());

        TemporadaCorredor temporadaCorredor = new TemporadaCorredor();

        temporadaRepository.findById(puestometroDTO.getTemporada().getId()).ifPresent(temporadaCorredor::setTemporada);
        validarTemporada(temporadaCorredor.getTemporada());
        corredorRepository.findById(puestometroDTO.getCorredor().getId()).ifPresent(temporadaCorredor::setCorredor);
        validarCorredor(temporadaCorredor.getCorredor());

        temporadaCorredor = temporadaCorredorRepository.findByCorredorAndTemporada(puestometroDTO.getCorredor().getId(), puestometroDTO.getTemporada().getId());
        validarTemporadaCorredor(temporadaCorredor);

        puestometroModel.setTemporadaCorredor(temporadaCorredor);

        try {
            puestometroRepository.save(puestometroModel);
        } catch (RuntimeException e) {
            throw new BoraException(BoraException.DatabaseExceptionType.DATABASE_ERROR_MESSAGE.getMessage(), e.getMessage());
        }
    }

    public void createPuestometroLegacy(CreatePuestometroLegacyIn in) throws BoraException {
        for (Posicion pos : in.getPosiciones()) {
            Puestometro_DTO puestometro = new Puestometro_DTO();

            puestometro.setPuesto(pos.getPuesto());

            Carrera_DTO carrera = new Carrera_DTO();
            carrera.setId(pos.getCarreraid());
            puestometro.setCarrera(carrera);

            Temporada_DTO temporada = new Temporada_DTO();
            temporada.setId(pos.getTemporada());
            puestometro.setTemporada(temporada);

            Corredor_DTO corredor = new Corredor_DTO();
            corredor.setId(pos.getCorredorid());
            puestometro.setCorredor(corredor);

            try {
                createPuestometro(puestometro);
            } catch (BoraException e) {
                throw new BoraException(BoraException.DatabaseExceptionType.DATABASE_ERROR_MESSAGE.getMessage(), e.getMessage());
            }
        }
    }

    public void createVictoryLegacy(CreateVictoryLegacyIn in) throws BoraException {
        for (Posicion pos : in.getPosiciones()) {
            Victoria_DTO victoria = new Victoria_DTO();

            Carrera_DTO carrera = new Carrera_DTO();
            carrera.setId(pos.getCarreraid());
            victoria.setCarreraDTO(carrera);

            Temporada_DTO temporada = new Temporada_DTO();
            temporada.setId(pos.getTemporada());
            victoria.setTemporadaDTO(temporada);

            Corredor_DTO corredor = new Corredor_DTO();
            corredor.setId(pos.getCorredorid());
            victoria.setCorredorDTO(corredor);

            victoria.setEtapa(pos.isEtapa());
            victoria.setTt(pos.isTt());

            try {
                createVictoria(victoria);
            } catch (BoraException e) {
                throw new BoraException(BoraException.DatabaseExceptionType.DATABASE_ERROR_MESSAGE.getMessage(), e.getMessage());
            }
        }
    }
    
    private void validarTemporadaCorredor(TemporadaCorredor temporadaCorredor) {
        if (temporadaCorredor == null) {
            throw new BoraException(BoraException.DatabaseExceptionType.TEMPORADA_CORREDOR_NOT_FOUND.getMessage());
        }
    }

    private void validarCorredor(Corredor corredor) {
        if (corredor == null) {
            throw new BoraException(BoraException.DatabaseExceptionType.CORREDOR_NOT_FOUND.getMessage());
        }
    }

    private void validarCarrera(Carrera carrera) {
        if (carrera == null) {
            throw new BoraException(BoraException.DatabaseExceptionType.CARRERA_NOT_FOUND.getMessage());
        }
    }

    private void validarTemporada(Temporada temporada) {
        if (temporada == null) {
            throw new BoraException(BoraException.DatabaseExceptionType.TEMPORADA_NOT_FOUND.getMessage());
        }
    }

    private void validarCategoria(Categoria categoria) {
        if (categoria == null) {
            throw new BoraException(BoraException.DatabaseExceptionType.CATEGORIA_NOT_FOUND.getMessage());
        }
    }

    private void validarPais(Pais pais) {
        if (pais == null) {
            throw new BoraException(BoraException.DatabaseExceptionType.PAIS_NOT_FOUND.getMessage());
        }
    }
}
