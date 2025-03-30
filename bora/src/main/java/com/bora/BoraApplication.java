package com.bora;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.Bean;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.bora.model.Pais;
import com.bora.op.carrera.EntradaRecuperarCarrera;
import com.bora.op.carrera.SalidaRecuperarCarrera;
import com.bora.op.corredor.CorredorPorNombre;
import com.bora.op.legacy.CreatePuestometroLegacyIn;
import com.bora.op.legacy.CreateVictoryLegacyIn;
import com.bora.op.logroscorredor.LogrosPorCorredor_IN;
import com.bora.op.logroscorredor.LogrosPorCorredor_OUT;
import com.bora.op.palmares.PalmaresSelectoPorTemporada;
import com.bora.service.CreateEntityServiceImpl;
import com.bora.service.ServiceImpl;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;


@SpringBootApplication
@RestController
public class BoraApplication extends SpringBootServletInitializer{

	@Autowired
	private ServiceImpl service;

	@Autowired
	private CreateEntityServiceImpl createEntityService;

	public static void main(String[] args) {
		SpringApplication.run(BoraApplication.class, args);
	}

	@Override
  	protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
      return builder.sources(BoraApplication.class);
  	}

	@RequestMapping("/hola")
	public String hello() {
		return "hola mundo";
	}

	@GetMapping("/recuperarCorredores")
	public ResponseEntity<CorredorPorNombre> recuperarCorredores() {
		return ResponseEntity.ok().body(service.recuperarTodosLosCorredores());
	}

	@RequestMapping("/todospaises")
	public List<Pais> recuperarPaises() {
		return service.recuperarTodosLosPaises();
	}

	@PostMapping("/createPuestometroLegacy")
	public void createPuestometroLegacyPost(@RequestBody CreatePuestometroLegacyIn entity) {
		createEntityService.createPuestometroLegacy(entity);
	}

	@PostMapping("/createVictoryLegacy")
	public void createVictoryLegacyPost(@RequestBody CreateVictoryLegacyIn entity) {
		createEntityService.createVictoryLegacy(entity);
	}

	@PostMapping("/palmaresTemporada")
	public ResponseEntity<PalmaresSelectoPorTemporada> palmaresTemporada(@RequestBody int idTemporada) {
		return ResponseEntity.ok().body(service.palmaresSelectoPorTemporada(idTemporada, 0));
	}

	@PostMapping("/recuperarCarreras")
	public ResponseEntity<SalidaRecuperarCarrera> recuperarCarreras(@RequestBody EntradaRecuperarCarrera in) {
		return ResponseEntity.ok().body(service.recuperarCarreras(in));
	}

	@PostMapping("/logrosPorCorredor")
	public ResponseEntity<LogrosPorCorredor_OUT> logrosPorCorredor(@RequestBody LogrosPorCorredor_IN in) {
		return ResponseEntity.ok().body(service.logrosPorCorredor(in));
	}

	@Bean
    public WebMvcConfigurer corsConfigurer() {
        return new WebMvcConfigurer() {
            @Override
            public void addCorsMappings(CorsRegistry registry) {
                registry.addMapping("/**")
						.allowedOrigins("http://localhost:4200")
                        .allowedMethods("GET", "POST", "PUT", "DELETE", "OPTIONS")
                        .allowedHeaders("*")
                        .allowCredentials(true);
            }
        };
    }
}
