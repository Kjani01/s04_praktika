package edu.hm.cs.softarch.dataflow.batch.pojos;

public class SimpleStudent {

	String name;
	Ergebnis ergebnis;
	
	public Ergebnis getErgebnis() {
		return ergebnis;
	}


	public void setErgebnis(Ergebnis ergebnis) {
		this.ergebnis = ergebnis;
	}


	public SimpleStudent(String name, Ergebnis status) {
		this.name = name;
		this.ergebnis = status;
	}


	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

}
