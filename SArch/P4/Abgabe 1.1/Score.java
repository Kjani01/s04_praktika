package edu.hm.cs.softarch.observer;

import java.util.ArrayDeque;
import java.util.Deque;

import org.apache.commons.lang3.tuple.ImmutablePair;
import org.apache.commons.lang3.tuple.Pair;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * Klasse zum Zählen eines Ergebnisses im Hand- oder Fußball.
 * 
 * @author katz.bastian
 */
public class Score implements EiScore {

	private static final Logger LOG = LoggerFactory.getLogger(Score.class);
	
	public Score() {
	}

	// Torzähler der Heimmannschaft
	private int homeScore = 0;

	// Torzähler der Gastmannschaft
	private int guestScore = 0;

	// Speicher der vergangenen Spielstände für Undo-Funktion
	private Deque<Pair<Integer, Integer>> history = new ArrayDeque<>();

	/** Erhöht den Torzähler der Heimmannschaft */
	public void incrementHomeScore() {
		saveState();
		homeScore++;
		LOG.debug("Home score set to {}, now at {}:{}.", homeScore, homeScore, guestScore);
	}

	/** Erhöht den Torzähler der Gastmannschaft */
	public void incrementGuestScore() {
		saveState();
		guestScore++;
		LOG.debug("Guest score set to {}, now at {}:{}.", guestScore, homeScore, guestScore);
	}

	/**
	 * @return ob eine Undo-Funktion zur Verfügung steht
	 */
	public boolean canUndo() {
		return !history.isEmpty();
	}

	/** Hilfsmethode zur Speicherung eines Spielstandes (Undo-Funktion) */
	private void saveState() {
		history.push(new ImmutablePair<Integer, Integer>(homeScore, guestScore));
	}

	/** Setzt den Spielstand auf den vorherigen Wert zurück. */
	public void undo() {
		if (canUndo()) {
			Pair<Integer, Integer> previousState = history.pop();
			homeScore = previousState.getLeft();
			guestScore = previousState.getRight();
		}
		LOG.debug("Score reset to {}:{}.", homeScore, guestScore);
	}

	/** @return Torzähler der Heimmannschaft */
	public int getHomeScore() {
		return homeScore;
	}

	/** @return Torzähler der Gastmannschaft */
	public int getGuestScore() {
		return guestScore;
	}

}
