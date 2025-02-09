package com.bora.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bora.excepciones.BoraException;
import com.bora.model.Carrera;
import com.bora.model.Corredor;
import com.bora.model.Pais;
import com.bora.model.Puestometro;
import com.bora.model.PuntuacionCategoria;
import com.bora.model.TemporadaCorredor;
import com.bora.model.Victoria;
import com.bora.op.carrera.EntradaRecuperarCarrera;
import com.bora.op.carrera.SalidaRecuperarCarrera;
import com.bora.op.comunes.Carrera_DTO;
import com.bora.op.comunes.Categoria_DTO;
import com.bora.op.comunes.Pais_DTO;
import com.bora.op.corredor.CorredorPorNombre;
import com.bora.op.palmares.Corredor_DTO;
import com.bora.op.palmares.Logro_DTO;
import com.bora.op.palmares.PalmaresSelectoPorTemporada;
import com.bora.op.palmares.Puestometro_DTO;
import com.bora.op.palmares.Victoria_DTO;
import com.bora.repository.CarreraRepository;
import com.bora.repository.CorredorRepository;
import com.bora.repository.PaisRepository;
import com.bora.repository.PuestometroRepository;
import com.bora.repository.PuntuacionCategoriaRepository;
import com.bora.repository.TemporadaCorredorRepository;
import com.bora.repository.VictoriaRepository;
import com.bora.service.util.Constants;

@Service
public class ServiceImpl {    @Autowired
    private CorredorRepository corredorRepository;

    @Autowired
    private PaisRepository paisRepository;

    @Autowired
    private TemporadaCorredorRepository temporadaCorredorRepository;

    @Autowired
    private PuntuacionCategoriaRepository puntuacionCategoriaRepository;

    @Autowired
    private VictoriaRepository victoriaRepository;

    @Autowired
    private PuestometroRepository puestometroRepository;

    @Autowired
    private CarreraRepository carreraRepository;

    public Corredor recuperarCorredorPorNombre(CorredorPorNombre nombre) {
        return corredorRepository.findCorredorByName(null);
    }

    public CorredorPorNombre recuperarTodosLosCorredores() {
        List<Corredor> corredores = corredorRepository.findAll();
        CorredorPorNombre corredoresPorNombre = new CorredorPorNombre();
        corredores.sort((c1, c2) -> c1.getNombre().compareToIgnoreCase(c2.getNombre()));
        corredoresPorNombre.setCorredores(corredores.stream().map(this::mapCorredor).toList());
        return corredoresPorNombre;
    }

    public List<Pais> recuperarTodosLosPaises() {
        return paisRepository.findAll();
    }

    public PalmaresSelectoPorTemporada palmaresSelectoPorTemporada(int temporada, int limite) {
        List<TemporadaCorredor> corredoresPorTemporada = temporadaCorredorRepository.findCorredoresByTemporada(temporada);

        List<Corredor_DTO> corredoresInmmutable = corredoresPorTemporada.stream().map(this::calcularLogrosCorredor).toList();
        List<Corredor_DTO> corredores = new ArrayList<>(corredoresInmmutable);
        corredores.sort((c1, c2) -> c2.getPuntosTotales() - c1.getPuntosTotales());

        PalmaresSelectoPorTemporada palmares = new PalmaresSelectoPorTemporada();
        palmares.setCorredores(corredores);
        return palmares;
    }

    private Corredor_DTO calcularLogrosCorredor(TemporadaCorredor tc) {
        Corredor_DTO corredor = new Corredor_DTO();
        corredor.setNombre(tc.getCorredor().getNombre());
        corredor.setId(tc.getCorredor().getId());
        corredor.setFoto(tc.getCorredor().getfotoURL());

        List<Logro_DTO> logros = new ArrayList<>();
        Map<Long, Victoria_DTO> carreraPuntosVictoria = new HashMap<>();

        List<Victoria> victoriaModel = victoriaRepository.findVictoriaByTemporadaCorredor(tc.getId());

        victoriaModel.stream().filter(p -> p.isEtapa()).forEach(v -> {
            Long categoria = v.getCarrera().getCategoria().getId();
            int categoriaPuntos;
            switch (categoria.intValue()) {
                case Constants.UWT_Major:
                    categoriaPuntos = Constants.UWT_Major_StageRace;
                    break;
                case Constants.UWT_Minor:
                    categoriaPuntos = Constants.UWT_Minor_StageRace;
                    break;
                case Constants.UWT_2Pro:
                    categoriaPuntos = Constants.Pro2_StageRace;
                    break;
                case Constants.UWT_21:
                    categoriaPuntos = Constants.CT_StageRace;
                    break;
                default:
                    categoriaPuntos = Constants.UWT_GT_StageRace;
                    break;
            }

            List<PuntuacionCategoria> pc = puntuacionCategoriaRepository.findPuntuacionCategoriaByCategoria(categoriaPuntos);
            validarPuntuacionCategoria(pc);
            
            Victoria_DTO victoria = new Victoria_DTO();
            if(carreraPuntosVictoria.containsKey(v.getCarrera().getId())) {
                carreraPuntosVictoria.get(v.getCarrera().getId()).setPuntos(carreraPuntosVictoria.get(v.getCarrera().getId()).getPuntos() + pc.get(0).getPuntos());
                carreraPuntosVictoria.get(v.getCarrera().getId()).setNumero(carreraPuntosVictoria.get(v.getCarrera().getId()).getNumero() + 1);
            }else{
                victoria.setCarrera(v.getCarrera().getNombre());
                victoria.setPuntos(pc.get(0).getPuntos());
                victoria.setNumero(1);
                carreraPuntosVictoria.put(v.getCarrera().getId(), victoria);
            }        
        });

        carreraPuntosVictoria.forEach((_, v) -> logros.add(v));

        victoriaModel.stream().filter(p -> !p.isEtapa() && !p.getCarrera().isWorldTour()).forEach(v -> {
            Optional<PuntuacionCategoria> pc = puntuacionCategoriaRepository.findPuntuacionCategoriaByCategoriaAndPuesto(v.getCarrera().getCategoria().getId(), 
            Constants.PrimerPuesto);
            validarPuntuacionCategoriaPuestometro(pc);
            
            Puestometro_DTO puestometro = new Puestometro_DTO();
            
            puestometro.setCarrera(v.getCarrera().getNombre());
            puestometro.setPuntos(pc.get().getPuntos());
            puestometro.setPuesto(Constants.PrimerPuesto);
            
            logros.add(puestometro); 
        });       

        List<Puestometro> puestometroModel = puestometroRepository.findPuestometroByTemporadaCorredor(tc.getId());

        puestometroModel.forEach(p -> {
            Optional<PuntuacionCategoria> pc = puntuacionCategoriaRepository.findPuntuacionCategoriaByCategoriaAndPuesto(p.getCarrera().getCategoria().getId(), p.getPuesto());
            validarPuntuacionCategoriaPuestometro(pc);
            
            Puestometro_DTO puestometro = new Puestometro_DTO();
            
            puestometro.setCarrera(p.getCarrera().getNombre());
            puestometro.setPuntos(pc.get().getPuntos());
            puestometro.setPuesto(p.getPuesto());
            
            logros.add(puestometro);
        });

        int puntosTotales = logros.stream().mapToInt(Logro_DTO::getPuntos).sum();
        logros.sort((l1, l2) -> l2.getPuntos() - l1.getPuntos());

        corredor.setPuntosTotales(puntosTotales);
        corredor.setLogros(logros);
        return corredor;
    }

    private void validarPuntuacionCategoria(List<PuntuacionCategoria> pc) {
        if (pc == null || pc.isEmpty()) {
            throw new BoraException(BoraException.DatabaseExceptionType.PUNTUACION_CATEGORIA_NOT_FOUND.getMessage());
        }else if(pc.size() > 1){
            throw new BoraException(BoraException.DatabaseExceptionType.PUNTUACION_CATEGORIA_MULTIPLE.getMessage());
        }
    }

    private void validarPuntuacionCategoriaPuestometro(Optional<PuntuacionCategoria> pc) {
        if (!pc.isPresent()) {
            throw new BoraException(BoraException.DatabaseExceptionType.PUNTUACION_CATEGORIA_NOT_FOUND.getMessage());
        }
    }

    public SalidaRecuperarCarrera recuperarCarreras(EntradaRecuperarCarrera in) {
        List<Carrera> carrerasModel;
        if(in.isWorldTour()){
            carrerasModel = carreraRepository.findCarreraWorldTour();
        }else{
            carrerasModel = carreraRepository.findAll();
        }

        if(in.getIdCategoria() != null){
            carrerasModel = carrerasModel.stream().filter(c -> c.getCategoria().getId() == in.getIdCategoria()).toList();
        }

         List<Carrera_DTO> carreras = carrerasModel.stream()
                .map(this::mapCarrera)
                .sorted((c1, c2) -> c1.getNombre().compareToIgnoreCase(c2.getNombre()))
                .toList();
         SalidaRecuperarCarrera salida = new SalidaRecuperarCarrera();
         salida.setCarreras(carreras);
         return salida;
    }

    private Carrera_DTO mapCarrera(Carrera c) {
        Carrera_DTO carrera = new Carrera_DTO();
        carrera.setId(c.getId());
        carrera.setNombre(c.getNombre());
        carrera.setWorldTour(c.isWorldTour());

        Categoria_DTO categoria = new Categoria_DTO();
        categoria.setId(c.getCategoria().getId());
        categoria.setCodigo(c.getCategoria().getNombre());

        carrera.setCategoria(categoria);
        
        Pais_DTO pais = new Pais_DTO();
        pais.setCodigo(c.getPais().getId());
        pais.setNombre(c.getPais().getNombre());

        carrera.setPais(pais);
        return carrera;
    }

    private com.bora.op.comunes.Corredor_DTO mapCorredor(Corredor corredor) {
        com.bora.op.comunes.Corredor_DTO corredorDTO = new com.bora.op.comunes.Corredor_DTO();
        corredorDTO.setId(corredor.getId());
        corredorDTO.setNombre(corredor.getNombre());
        corredorDTO.setSeHaDopadoAlgunaVez(false);
        corredorDTO.setFotoURL(corredor.getfotoURL());

        Pais_DTO pais = new Pais_DTO();
        pais.setCodigo(corredor.getPais().getId());
        pais.setNombre(corredor.getPais().getNombre());

        corredorDTO.setPais(pais);
        return corredorDTO;
    }

}
