package edu.hm.cs.softarch.observer;

import java.util.Collection;
import java.util.HashSet;

public interface EiScore {
	
	Collection<Display> displays = new HashSet<>();
	
	public void incrementHomeScore();
	
	public void incrementGuestScore();

	public boolean canUndo();
	
	public void undo();
	
	public int getHomeScore();
	
	public int getGuestScore();
	
	public void addAsListener(Display display);
	
	public void removeAsListener(Display display);
	
}
