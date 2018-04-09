package edu.hm.cs.softarch.kwic.dip.output;

import edu.hm.cs.softarch.kwic.dip.EntryListConsumer;
import edu.hm.cs.softarch.kwic.dip.EntryListProvider;
import edu.hm.cs.softarch.kwic.dip.KwicEntry;

/**
 * Klasse zur Ausgabe eines Wortes mit seinem Kontext.
 * 
 * @author katz.bastian
 */
public class ConsoleOutput implements EntryListConsumer {
	
	private static ConsoleOutput instance = null;
	
	private ConsoleOutput() {}
	
	public static ConsoleOutput getInstance() {
		if (instance == null)
			instance = new ConsoleOutput();
		return instance;
	}

	/**
	 * Gibt ein Wort mit umgebendem Kontext aus.
	 * 
	 * @param entryProvider
	 *            Klasse, die sortierte Liste von Wörtern bereitstellt.
	 */
	@Override
	public void take(EntryListProvider provider) {

		for (KwicEntry kwicEntry : provider.getEntries()) {
			StringBuffer sb = new StringBuffer();

			// Das indizierte Wort
			sb.append(kwicEntry.getWord());

			// Rechts-Kontext
			if (kwicEntry.hasPostContext()) {
				sb.append(" ");
				sb.append(String.join(" ", kwicEntry.getPostContext()));
			}

			// Linkt-Kontext, sofern vorhanden mit Komma trennen
			if (kwicEntry.hasPreContext()) {
				sb.append(", ");
				sb.append(String.join(" ", kwicEntry.getPreContext()));
			}

			// Ausgabe
			System.out.println(sb);
		}
	}
}
