package edu.hm.cs.softarch.kwic.dip;

import java.util.ArrayList;
import java.util.List;

import edu.hm.cs.softarch.kwic.dip.creator.IndexingEntryCreator;
import edu.hm.cs.softarch.kwic.dip.input.SimpleFileInput;
import edu.hm.cs.softarch.kwic.dip.output.AlternativeOutput;

public class OriginalFactory extends AbstractFactory {

	private Input input;
	private IndexingEntryCreator creator;
	private List<EntryListFilter> filters = new ArrayList<>();
	private EntryListConsumer consumer;
	
	@Override
	public void create(String phraseFileName) {

		input = new SimpleFileInput(phraseFileName);		
		creator = new IndexingEntryCreator();
		consumer = new AlternativeOutput();	
	}
	
	/**
	 * Stößt die Verarbeitung an.
	 */
	public void print() {
		input.read(creator);
		EntryListProvider previous = creator;
		
		for (EntryListFilter filter: filters) {
			filter.take(previous);
			previous = filter;
		}
		consumer.take(previous);
	}

}
