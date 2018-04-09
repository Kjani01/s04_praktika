package edu.hm.cs.softarch.kwic.dip;

import java.util.ArrayList;
import java.util.List;

import edu.hm.cs.softarch.kwic.dip.creator.IndexingEntryCreator;
import edu.hm.cs.softarch.kwic.dip.input.SimpleFileInput;
import edu.hm.cs.softarch.kwic.dip.output.AlternativeOutput;

/**
 * Klasse zum Einlesen, Erstellen und Ausgeben einer Liste von Schlüsselwörtern
 * im Kontext. Verbindet die Verarbeitungsschritte.
 * 
 * @author katz.bastian
 */
public class Kwic {



	/**
	 * Konstruktor.
	 * 
	 * @param phraseFileName
	 *            Dateiname mit Phrasen oder Titeln (zeilenweise).
	 */
	public Kwic(String phraseFileName) {
		OriginalFactory fac = new OriginalFactory();
		fac.create(phraseFileName);
		fac.print();
		FilterFactory facfilter = new FilterFactory();
		facfilter.create(phraseFileName);
		facfilter.print();

	}
	
	



}
