package edu.hm.cs.softarch.observer;

public interface EiScore {
	
	public void incrementHomeScore();
	
	public void incrementGuestScore();

	public boolean canUndo();
	
	public void undo();
	
	public int getHomeScore();
	
	public int getGuestScore();
	
}
