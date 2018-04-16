package edu.hm.cs.softarch.observer;

import java.awt.Dimension;
import java.awt.Font;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;

import javax.swing.GroupLayout;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JToggleButton;
import javax.swing.SwingConstants;

/**
 * Anzeige für ein Spielstand ({@link Score}).
 * 
 * @author katz.bastian
 */
public class Display extends JFrame {

	private static final long serialVersionUID = 1L;
	private static final Font SCORE_FONT = new Font("Sans", Font.BOLD, 150);
	private static final Font SMALL_FONT = new Font("Sans", Font.BOLD, 15);

	private EiScore score;
	private JLabel homeScore;
	private JLabel guestScore;
	private JButton refreshButton;
	private JToggleButton autoRefresh;

	public Display(EiScore score, String title) {
		super(title);
		this.score = score;
		this.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);

		// Einhängen in das Schließen des Fensters
		addWindowListener(new WindowAdapter() {
			@Override
			public void windowClosing(WindowEvent e) {
				// Code hier wird beim Schließen des Fensters ausgeführt
				// TODO: Deregistrierung beim Ergebnis
				super.windowClosing(e);
			}
		});

		// Erzeugung des Panels ist ausgelagert
		createPanel();
		
		// Aktion für Refresh-Button
		refreshButton.addActionListener(e -> {
			refresh();
		});

		// Aktion für Auto-Refresh-Toggle
		autoRefresh.addActionListener(e -> {
			if (autoRefresh.isSelected()) {
				// TODO: Registierung beim Ergebnis
			} else {
				// TODO: Deregistrierung beim Ergebnis
			}
		});
		this.pack();
		refresh(); 
		this.setVisible(true);
	}
	
	private void refresh() {
		homeScore.setText(String.valueOf(score.getHomeScore()));
		guestScore.setText(String.valueOf(score.getGuestScore()));
	}

	/* Hilfmethoden zur Erzeugung von Elementen und Layout */
	
	private JPanel createPanel() {
		// Erzeugung des Panels
		JPanel panel = new JPanel();
		this.add(panel);
		
		// Überschriften
		JLabel homeCaption = createCaption("Tore Heim");
		panel.add(homeCaption);
		JLabel guestCaption = createCaption("Tore Gast");
		panel.add(guestCaption);

		// Ergebnisziffern
		homeScore = createScoreElement(180, "0");
		panel.add(homeScore);
		JLabel separator = createScoreElement(30, ":");
		panel.add(separator);
		guestScore = createScoreElement(180, "0");
		panel.add(guestScore);

		// Refresh-Button
		refreshButton = createButton("Refresh");
		panel.add(refreshButton);

		//Auto-Aktualisierung
		autoRefresh = createToggleButton("Auto-Aktualisierung");
		panel.add(autoRefresh);

		// Erstellen des Layouts
		GroupLayout layout = new GroupLayout(panel);
		panel.setLayout(layout);
		layout.setVerticalGroup(layout.createSequentialGroup()
				.addGroup(layout.createParallelGroup().addComponent(homeCaption).addComponent(guestCaption))
				.addGroup(layout.createParallelGroup().addComponent(homeScore).addComponent(separator)
						.addComponent(guestScore).addGroup(
								layout.createSequentialGroup().addComponent(refreshButton).addComponent(autoRefresh))));
		layout.setHorizontalGroup(layout.createSequentialGroup()
				.addGroup(layout.createParallelGroup(GroupLayout.Alignment.CENTER).addComponent(homeCaption)
						.addComponent(homeScore, GroupLayout.PREFERRED_SIZE, GroupLayout.PREFERRED_SIZE,
								GroupLayout.PREFERRED_SIZE))
				.addComponent(separator)
				.addGroup(layout.createParallelGroup(GroupLayout.Alignment.CENTER).addComponent(guestCaption)
						.addComponent(guestScore, GroupLayout.PREFERRED_SIZE, GroupLayout.PREFERRED_SIZE,
								GroupLayout.PREFERRED_SIZE))
				.addGap(40)
				.addGroup(layout.createParallelGroup().addComponent(refreshButton).addComponent(autoRefresh)));
		
		return panel;
	}
	private JButton createButton(String label) {
		JButton button = new JButton(label);
		button.setFont(SMALL_FONT);
		return button;
	}

	private JToggleButton createToggleButton(String label) {
		JToggleButton button = new JToggleButton(label);
		button.setFont(SMALL_FONT);
		return button;
	}
	private JLabel createScoreElement(int width, String text) {
		JLabel scoreElement = new JLabel(text);
		scoreElement.setFont(SCORE_FONT);
		scoreElement.setHorizontalAlignment(SwingConstants.CENTER);
		scoreElement.setPreferredSize(new Dimension(width, 80));
		return scoreElement;
	}

	private JLabel createCaption(String text) {
		JLabel caption = new JLabel(text);
		caption.setFont(SMALL_FONT);
		return caption;
	}

	

}
