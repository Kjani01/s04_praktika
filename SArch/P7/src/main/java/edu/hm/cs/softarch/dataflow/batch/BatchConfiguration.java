package edu.hm.cs.softarch.dataflow.batch;

import java.net.MalformedURLException;

import org.springframework.batch.core.Job;
import org.springframework.batch.core.Step;
import org.springframework.batch.core.configuration.annotation.JobBuilderFactory;
import org.springframework.batch.core.configuration.annotation.StepBuilderFactory;
import org.springframework.batch.item.ItemProcessor;
import org.springframework.batch.item.ItemReader;
import org.springframework.batch.item.ItemWriter;
import org.springframework.batch.item.file.builder.FlatFileItemReaderBuilder;
import org.springframework.batch.item.file.builder.FlatFileItemWriterBuilder;
import org.springframework.batch.item.file.transform.BeanWrapperFieldExtractor;
import org.springframework.batch.item.file.transform.DelimitedLineAggregator;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;

import edu.hm.cs.softarch.dataflow.batch.pojos.InputStudent;
import edu.hm.cs.softarch.dataflow.batch.pojos.SimpleStudent;
import edu.hm.cs.softarch.dataflow.batch.pojos.Ergebnis;

/**
 * Konfiguration eines Batch-Jobs aus einem Schritt mit einem Reader, Processor und Writer. 
 * TODO: Ergänzen des Jobs um einen weiteren Schritt. 
 */
@Configuration
public class BatchConfiguration {

	@Bean("myJob")
	Job myJob(JobBuilderFactory jbf, @Qualifier("step1") Step step1, @Qualifier("stepB") Step stepB, @Qualifier("stepNB") Step stepNB) {
		return jbf.get("myJob").start(step1).next(stepB).next(stepNB).build();
	}

	@Bean("step1")
	Step step1(StepBuilderFactory sbf, @Qualifier("reader1") ItemReader<InputStudent> reader,
			@Qualifier("processor1") ItemProcessor<InputStudent, SimpleStudent> processor,
			@Qualifier("writer1") ItemWriter<SimpleStudent> writer) {
		return sbf.get("step1").<InputStudent, SimpleStudent>chunk(4).reader(reader).processor(processor).writer(writer)
				.build();
	}

	@Bean("stepB")
	Step stepB(StepBuilderFactory sbf, @Qualifier("reader1") ItemReader<InputStudent> reader,
			@Qualifier("processorB") ItemProcessor<InputStudent, SimpleStudent> processor,
			@Qualifier("writerB") ItemWriter<SimpleStudent> writer) {
		return sbf.get("stepB").<InputStudent, SimpleStudent>chunk(4).reader(reader).processor(processor).writer(writer)
				.build();
	}

	@Bean("stepNB")
	Step stepNB(StepBuilderFactory sbf, @Qualifier("reader1") ItemReader<InputStudent> reader,
			@Qualifier("processorNB") ItemProcessor<InputStudent, SimpleStudent> processor,
			@Qualifier("writerNB") ItemWriter<SimpleStudent> writer) {
		return sbf.get("stepNB").<InputStudent, SimpleStudent>chunk(4).reader(reader).processor(processor).writer(writer)
				.build();
	}

	@Bean("reader1")
	ItemReader<InputStudent> reader1() throws MalformedURLException {
		Resource in = new FileSystemResource("students.txt");
		return new FlatFileItemReaderBuilder<InputStudent>().name("student-reader").resource(in)
				.targetType(InputStudent.class).delimited().delimiter(",")
				.names(new String[] { "vorname", "name", "punkte" }).build();
	}

	@Bean("processor1")
	ItemProcessor<InputStudent, SimpleStudent> transformer1() throws MalformedURLException {
		return inputStudent -> new SimpleStudent(inputStudent.getVorname() + " " + inputStudent.getName(),
				inputStudent.getPunkte() >= 20 ? Ergebnis.BESTANDEN : Ergebnis.NICHT_BESTANDEN);
	}

	@Bean("processorB")
	ItemProcessor<InputStudent, SimpleStudent> transformerB() throws MalformedURLException {
		return inputStudent -> {if ( inputStudent.getPunkte() >= 20 )
		{
			//System.out.println("INPUTSTUD: " + inputStudent.getName() + inputStudent.getPunkte());
			return new SimpleStudent(inputStudent.getVorname() + " " + inputStudent.getName(), Ergebnis.BESTANDEN);
		}
		return null;};
	}

	@Bean("processorNB")
	ItemProcessor<InputStudent, SimpleStudent> transformerNB() throws MalformedURLException {
		return inputStudent -> {if ( inputStudent.getPunkte() < 20 )
		{
			//System.out.println("INPUTSTUD: " + inputStudent.getName() + inputStudent.getPunkte());
			return new SimpleStudent(inputStudent.getVorname() + " " + inputStudent.getName(), Ergebnis.NICHT_BESTANDEN);
		}
		return null;};
	}

	@Bean("writer1")
	ItemWriter<SimpleStudent> writer1() throws MalformedURLException {
		Resource out = new FileSystemResource("students_simple.txt");
		
		// Extraktoren legen fest, welche Attribute aus den Objekten extrahiert werden.
		BeanWrapperFieldExtractor<SimpleStudent> extractor = new BeanWrapperFieldExtractor<>();
		extractor.setNames(new String[] { "name", "ergebnis"});

		DelimitedLineAggregator<SimpleStudent> aggregator = new DelimitedLineAggregator<SimpleStudent>();
		aggregator.setFieldExtractor(extractor);
		return new FlatFileItemWriterBuilder<SimpleStudent>().name("student-writer").lineAggregator(aggregator)
				.resource(out).build();
	}

	@Bean("writerB")
	ItemWriter<SimpleStudent> writerB() throws MalformedURLException {
		Resource out = new FileSystemResource("bestanden.txt");
		
		// Extraktoren legen fest, welche Attribute aus den Objekten extrahiert werden.
		BeanWrapperFieldExtractor<SimpleStudent> extractor = new BeanWrapperFieldExtractor<>();
		extractor.setNames(new String[] { "name" });

		DelimitedLineAggregator<SimpleStudent> aggregator = new DelimitedLineAggregator<SimpleStudent>();
		aggregator.setFieldExtractor(extractor);
		return new FlatFileItemWriterBuilder<SimpleStudent>().name("bestanden-writer").lineAggregator(aggregator)
				.resource(out).build();
	}

	@Bean("writerNB")
	ItemWriter<SimpleStudent> writerNB() throws MalformedURLException {
		Resource out = new FileSystemResource("nichtbestanden.txt");
		
		// Extraktoren legen fest, welche Attribute aus den Objekten extrahiert werden.
		BeanWrapperFieldExtractor<SimpleStudent> extractor = new BeanWrapperFieldExtractor<>();
		extractor.setNames(new String[] { "name" });

		DelimitedLineAggregator<SimpleStudent> aggregator = new DelimitedLineAggregator<SimpleStudent>();
		aggregator.setFieldExtractor(extractor);
		return new FlatFileItemWriterBuilder<SimpleStudent>().name("nichtbestanden-writer").lineAggregator(aggregator)
				.resource(out).build();
	}

}
