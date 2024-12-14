package com.bora.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bora.model.Corredor;
import com.bora.repository.CorredorRepository;

@Service
public class ServiceImpl {

    @Autowired
    private CorredorRepository corredorRepository;

    public Corredor recuperarCorredorPorNombre(String nombre) {
        return corredorRepository.findCorredorByName(nombre);
    }

    public List<Corredor> recuperarTodosLosCorredores() {
        return corredorRepository.findAll();
    }
}
