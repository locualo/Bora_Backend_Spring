package com.bora.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bora.model.Corredor;
import com.bora.model.Pais;
import com.bora.op.CorredorPorNombre;
import com.bora.repository.CorredorRepository;
import com.bora.repository.PaisRepository;

@Service
public class ServiceImpl {

    @Autowired
    private CorredorRepository corredorRepository;

    @Autowired
    private PaisRepository paisRepository;

    public Corredor recuperarCorredorPorNombre(CorredorPorNombre nombre) {
        return corredorRepository.findCorredorByName(null);
    }

    public CorredorPorNombre recuperarTodosLosCorredores() {
        List<Corredor> corredores = corredorRepository.findAll();
        CorredorPorNombre corredoresPorNombre = new CorredorPorNombre();
        corredoresPorNombre.setNombre(corredores.stream().map(Corredor::getNombre).toList());
        return corredoresPorNombre;
    }

    public List<Pais> recuperarTodosLosPaises() {
        return paisRepository.findAll();
    }
}
