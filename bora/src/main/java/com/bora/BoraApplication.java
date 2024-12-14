package com.bora;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.bora.model.Corredor;
import com.bora.service.ServiceImpl;

@SpringBootApplication
@RestController
public class BoraApplication {

	@Autowired
	private ServiceImpl service;

	public static void main(String[] args) {
		SpringApplication.run(BoraApplication.class, args);
	}

	@RequestMapping("/hola")
	public String hello() {
		return "hola mundo";
	}

	@RequestMapping("/todos")
	public List<Corredor> recuperarCorredores() {
		return service.recuperarTodosLosCorredores();
	}

}
