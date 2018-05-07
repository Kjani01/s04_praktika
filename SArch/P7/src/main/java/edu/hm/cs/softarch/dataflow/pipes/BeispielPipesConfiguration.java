package edu.hm.cs.softarch.dataflow.pipes;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.integration.annotation.Gateway;
import org.springframework.integration.annotation.MessagingGateway;
import org.springframework.integration.channel.PublishSubscribeChannel;
import org.springframework.integration.dsl.IntegrationFlow;
import org.springframework.integration.dsl.IntegrationFlows;
import org.springframework.messaging.MessageChannel;

@Configuration
public class BeispielPipesConfiguration {

	private static final int SHORTEN_THRESHOLD = 10;

	/**
	 * Ein {@link MessagingGateway} ist gleichzeitig Anfang und Ende einer
	 * Pipeline. Channels entsprechen den Pipes; wenn Sie nicht explizit anders
	 * definiert werden, handelt es sich um Push-Pipes. Liegt am Ende der Pipe
	 * nicht nach einer definierten Zeit ein Ergebnis an, wird <code>null</code>
	 * zurückgegeben.
	 */
	@MessagingGateway
	public interface InputGateway {
		@Gateway(requestChannel = "inputChannel", replyChannel = "outputChannel", replyTimeout = 1000)
		String push(String input);
	}

	/**
	 * Ein Integration-Flow kann ganze Ausschnitte einer
	 * Pipes-and-Filter-Konfiguration enthalten. Am einfachsten ist die
	 * Konfiguration zu lesen, wenn sie immer nur Eingangskanal, Ausgangskanal
	 * und dazwischen eine Operation enthält. Hier wird nur gefiltert.
	 */
	@Bean
	IntegrationFlow filter() {
		return IntegrationFlows.from("inputChannel")
				               .<String>filter(s -> !s.startsWith("#"))
				               .channel("channel2")
				               .get();
	}

	
	/**
	 * Ein explizit definierter {@link PublishSubscribeChannel} erlaubt die
	 * gleichzeitige Weitergabe eines Datums an mehrere Filter. "Normale"
	 * Channel (=Pipes) haben nur ein Ende und damit nur einen Folgefilter
	 */
	@Bean
	public MessageChannel channel3() {
		return new PublishSubscribeChannel();
	}
	
	/**
	 * Besser nachvollziehbar: Dieser Filter leitet nur von einem klassischen
	 * Channel auf einen Channel mit mehreren Enden um.
	 */
	@Bean
	IntegrationFlow Mehrfachbehandlung() {
		return IntegrationFlows.from("channel2")
				               .channel("channel3").get();
	}


	
	/**
	 * Filter, die eine "handle"-Methode definieren, leiten nicht weiter,
	 * sondern tun etwas finales mit einem Datum.
	 */
	@Bean
	IntegrationFlow behandlungOhneWeitergabe() {
		return IntegrationFlows.from("channel3")
				.handle(m -> {System.out.println("...verarbeite " + m.getPayload());})
				.get();
	}

	/**
	 * Routing-Knoten können auf Basis diverser Kriterien zwischen verschiedenen
	 * Ausgangskanälen auswählen.
	 */
	@Bean
	IntegrationFlow tee() {
		return IntegrationFlows.from("channel3")
				.<String, Boolean>route(s -> s.length() < SHORTEN_THRESHOLD, 
						mapping -> mapping.subFlowMapping(true, sf -> sf.channel("kurz"))
						                  .subFlowMapping(false, sf -> sf.channel("lang")))
				.get();
	}

	/**
	 * Transformatoren ändern das Datum; Sie können auch den Typen ändern.
	 */
	@Bean
	IntegrationFlow langeEingabenBehandlung() {
		return IntegrationFlows.from("lang")
				.<String, String>transform(s -> s.substring(0, 3)+".."+s.substring(s.length()-3))
				.channel("outputChannel")
				.get();
	}

	/**
	 * Mehrere Filter dürfen auf denselben Kanal schreiben. Insofern fallen
	 * eigene JOIN-Filter weg.
	 */
	@Bean
	IntegrationFlow kurzeEingabenBehandlung() {
		return IntegrationFlows.from("kurz")
				               .<String, String>transform(s -> s.toUpperCase())
				               .channel("outputChannel")
				.get();
	}


}
