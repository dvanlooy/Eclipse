package be.vdab.entities;

public class Gemeente {
	private String naam;
	private int postCode;

	// constructors
	public Gemeente() {
	}

	public Gemeente(String naam, int postCode) {
		this.naam = naam;
		this.postCode = postCode;
	}

	// getters & setters
	public String getNaam() {
		return naam;
	}

	public void setNaam(String naam) {
		this.naam = naam;
	}

	public int getPostCode() {
		return postCode;
	}

	public void setPostCode(int postCode) {
		this.postCode = postCode;
	}

}
