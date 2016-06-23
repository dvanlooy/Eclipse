package be.vdab.entities;

public class Saus {
	private long nummer;
	private String naam;
	private String[] ingredienten;
	
	//constructors
	public Saus() {
	}
	public Saus(long nummer, String naam, String[] ingredienten) {
		setNummer(nummer);
		setNaam(naam);
		setIngredienten(ingredienten);
	}
	
	//getters & setters
	public long getNummer() {
		return nummer;
	}
	public void setNummer(long nummer) {
		this.nummer = nummer;
	}
	public String getNaam() {
		return naam;
	}
	public void setNaam(String naam) {
		if (!isInputValid(naam)) {
			throw new IllegalArgumentException();
		}
		this.naam = naam;
	}
	public String[] getIngredienten() {
		return ingredienten;
	}
	public void setIngredienten(String[] ingredienten) {
		this.ingredienten = ingredienten;
	}
	
	
	public static boolean isInputValid(String input) { 
		return input != null && !input.isEmpty();
	}
	
	
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + (int) (nummer ^ (nummer >>> 32));
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (!(obj instanceof Saus))
			return false;
		Saus other = (Saus) obj;
		if (nummer != other.nummer)
			return false;
		return true;
	}
	
	
	
	
}
