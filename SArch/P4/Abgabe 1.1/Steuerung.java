package edu.hm.cs.softarch.observer;

import java.awt.Dimension;
import java.awt.Font;

import javax.swing.GroupLayout;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JPanel;

/**
 * Graphische Steuerung eines Ergebniszählers mit der Möglichkeit, Displays zu
 * erzeugen.
 * 
 * @author katz.bastian
 */
public class Steuerung extends JFrame {

	private static final long serialVersionUID = 1L;
	private static final Font BUTTON_FONT = new Font("Sans", Font.BOLD, 30);
	private static final Font BUTTON_FONT_SM = new Font("Sans", Font.BOLD, 15);

	private Score score2 = new Score();
	EiScore score = new Hattrick(score2);
	private JButton homeScoreButton;
	private JButton guestScoreButton;
	private JButton undoButton;
	private JButton newDisplayButton;

	public Steuerung(String string) {
		super(string);
		this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		createPanel();
		this.setVisible(true);

		// Aktion für Hochzählen des Heimzählers
		homeScoreButton.addActionListener(e -> {
			score.incrementHomeScore();
		});

		// Aktion für Hochzählen des Gastzählers
		guestScoreButton.addActionListener(e -> {
			score.incrementGuestScore();
		});

		// Aktion für Undo-Button
		undoButton.addActionListener(e -> {
			score.undo();
		});

		// Erzeugung eines neuen Displays
		newDisplayButton.addActionListener(e -> {
			new Display(score, "Spielstand");
		});

	}

	private void createPanel() {
		JPanel panel = new JPanel();
		this.add(panel);
		homeScoreButton = createBigButton("Tor für Heim!");
		panel.add(homeScoreButton);

		guestScoreButton = createBigButton("Tor für Gast!");
		panel.add(guestScoreButton);

		undoButton = createButton("Undo");
		panel.add(undoButton);

		newDisplayButton = createButton("Neue Anzeige");
		panel.add(newDisplayButton);

		// Optimiere Frame und mache sichtbar
		GroupLayout layout = new GroupLayout(panel);
		panel.setLayout(layout);
		layout.setVerticalGroup(layout.createSequentialGroup()
				.addGroup(layout.createParallelGroup(GroupLayout.Alignment.BASELINE)
						.addComponent(homeScoreButton, GroupLayout.PREFERRED_SIZE, GroupLayout.PREFERRED_SIZE,
								GroupLayout.PREFERRED_SIZE)
						.addComponent(guestScoreButton, GroupLayout.PREFERRED_SIZE, GroupLayout.PREFERRED_SIZE,
								GroupLayout.PREFERRED_SIZE))
				.addGap(20).addGroup(layout.createParallelGroup(GroupLayout.Alignment.BASELINE).addComponent(undoButton)
						.addComponent(newDisplayButton)));
		layout.setHorizontalGroup(layout.createParallelGroup()
				.addGroup(layout.createSequentialGroup().addComponent(homeScoreButton).addGap(20)
						.addComponent(guestScoreButton))
				.addGroup(layout.createSequentialGroup().addComponent(undoButton).addComponent(newDisplayButton)));

		this.pack();
	}

	private JButton createBigButton(String text) {
		JButton bigButton = new JButton(text);
		bigButton.setPreferredSize(new Dimension(200, 200));
		bigButton.setFont(BUTTON_FONT);
		return bigButton;
	}

	private JButton createButton(String text) {
		JButton bigButton = new JButton(text);
		bigButton.setFont(BUTTON_FONT_SM);
		return bigButton;
	}

}
