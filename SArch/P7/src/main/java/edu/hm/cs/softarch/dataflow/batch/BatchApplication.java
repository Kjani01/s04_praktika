package edu.hm.cs.softarch.dataflow.batch;

import javax.sql.DataSource;

import org.springframework.batch.core.configuration.annotation.DefaultBatchConfigurer;
import org.springframework.batch.core.configuration.annotation.EnableBatchProcessing;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * Einfache Konfiguration für eine Batch-Anwendung ohne Persistierung des
 * Fortschritts der Batch-Verarbeitung.
 * 
 * @author katz.bastian
 *
 */
@SpringBootApplication
@EnableBatchProcessing
public class BatchApplication extends DefaultBatchConfigurer {

	public static void main(String[] args) {
		SpringApplication.run(BatchApplication.class, args);
	}

	@Override
	public void setDataSource(DataSource dataSource) {
		// empty data source forces non-persistent job status
	}
}
