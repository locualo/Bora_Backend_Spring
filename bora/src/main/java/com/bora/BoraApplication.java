package com.bora;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.bora.model.Corredor;
import com.bora.model.Pais;
import com.bora.op.CorredorPorNombre;
import com.bora.service.ServiceImpl;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;


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
	public ResponseEntity<CorredorPorNombre> recuperarCorredores() {
		return ResponseEntity.ok().body(service.recuperarTodosLosCorredores());
	}

	@RequestMapping("/todospaises")
	public List<Pais> recuperarPaises() {
		return service.recuperarTodosLosPaises();
	}

	@PostMapping("/corredor")
	public Corredor postMethodName(@RequestBody CorredorPorNombre entity) {
		return service.recuperarCorredorPorNombre(entity);
	}
}
