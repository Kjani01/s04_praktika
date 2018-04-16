package edu.hm.cs.softarch.observer;

public class Hattrick implements EiScore {
	
	private Score score;
	
	public Hattrick (Score score) {
		this.score = score;
	}
	
	@Override
	public void incrementHomeScore() {
		if (score.getHomeScore() == 2) {
			System.out.println("Hattrick!");
		}
		score.incrementHomeScore();
		notifyObservers();
		
	}

	@Override
	public void incrementGuestScore() {
		if (score.getGuestScore() == 2) {
			System.out.println("Hattrick!");
		}
		
		score.incrementGuestScore();
		notifyObservers();
		
	}

	@Override
	public boolean canUndo() {
		// TODO Auto-generated method stub
		return score.canUndo();
	}

	@Override
	public void undo() {
		score.undo();
		notifyObservers();
		
	}

	@Override
	public int getHomeScore() {
		// TODO Auto-generated method stub
		return score.getHomeScore();
	}

	@Override
	public int getGuestScore() {
		// TODO Auto-generated method stub
		return score.getGuestScore();
	}
	
	private void notifyObservers() {
		for (Display d : displays) {
			d.updateScore();
		}
	}
	
	public void addAsListener(Display display) {
		score.addAsListener(display);
	}
	
	public void removeAsListener(Display display) {
		score.removeAsListener(display);
	}
}
