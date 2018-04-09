package edu.hm.cs.softarch.kwic.dip;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/**
 * Klasse zum Sortieren einer List von Kwic-Index-Einträgen.
 * 
 * @author katz.bastian
 */
public class Sorter implements EntryListFilter {

	private List<KwicEntry> entries = new ArrayList<>();
	private static Sorter instance = null;
	
	private Sorter() {}
	
	public static Sorter getInstance() {
		if (instance == null)
			instance = new Sorter();
		return instance;
	}

	@Override
	public void take(EntryListProvider provider) {
		provider.getEntries().forEach(entries::add);
		
		entries.sort(new Comparator<KwicEntry>() {

			@Override
			public int compare(KwicEntry o1, KwicEntry o2) {
				return o1.getWord().compareTo(o2.getWord());
			}
		});
	}

	@Override
	public List<KwicEntry> getEntries() {
		return Collections.unmodifiableList(entries);
	}
}
