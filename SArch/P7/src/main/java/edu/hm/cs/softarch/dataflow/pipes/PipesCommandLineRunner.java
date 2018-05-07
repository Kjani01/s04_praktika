package edu.hm.cs.softarch.dataflow.pipes;

import java.util.Scanner;

import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

import edu.hm.cs.softarch.dataflow.pipes.BeispielPipesConfiguration.InputGateway;


@Component
public class PipesCommandLineRunner implements CommandLineRunner {

	private InputGateway entryPipe;

	public PipesCommandLineRunner(InputGateway entryPipe) {
		this.entryPipe = entryPipe;
	}

	@Override
	public void run(String... args) throws Exception {
		Scanner scanner = new Scanner(System.in);
		boolean quit = false;
		while (!quit) {
			System.out.print("> ");
			while (!scanner.hasNextLine()) {
				Thread.sleep(100);
			}
			String input = scanner.nextLine();
			String result = entryPipe.push(input);
			System.out.println("--> "+result);
			if (input.equalsIgnoreCase("Q")) {
				quit = true;
			}
		}
		scanner.close();
	}

}
