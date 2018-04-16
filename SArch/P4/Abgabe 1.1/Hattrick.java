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
		
	}

	@Override
	public void incrementGuestScore() {
		if (score.getGuestScore() == 2) {
			System.out.println("Hattrick!");
		}
		
		score.incrementGuestScore();
		
	}

	@Override
	public boolean canUndo() {
		// TODO Auto-generated method stub
		return score.canUndo();
	}

	@Override
	public void undo() {
		score.undo();
		
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
}
