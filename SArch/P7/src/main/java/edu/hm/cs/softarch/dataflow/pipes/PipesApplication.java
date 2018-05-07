package edu.hm.cs.softarch.dataflow.pipes;

import org.springframework.batch.core.configuration.annotation.DefaultBatchConfigurer;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.integration.config.EnableIntegration;

/**
 * Einfache Konfiguration für eine Batch-Anwendung ohne Persistierung des
 * Fortschritts der Batch-Verarbeitung.
 * 
 * @author katz.bastian
 *
 */
@SpringBootApplication
@EnableIntegration
public class PipesApplication extends DefaultBatchConfigurer {

	public static void main(String[] args) {
		SpringApplication.run(PipesApplication.class, args);
	}
}
