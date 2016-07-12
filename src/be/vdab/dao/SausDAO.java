package be.vdab.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import be.vdab.entities.Saus;

public class SausDAO {
	private static final Map<Long, Saus> SAUZEN = new ConcurrentHashMap<>();

	static {
		SAUZEN.put(1L, new Saus(1L, "mayonaise",
				new String[] { "ei", "plantaardige olie", "azijn", "mosterd", "peper", "zout" }));
		SAUZEN.put(2L, new Saus(2L, "cocktail", new String[] { "mayonaise", "ketchup", "whiskey" }));
		SAUZEN.put(3L, new Saus(3L, "mosterd",
				new String[] { "mosterdzaad", "water", "azijn", "zout", "peper", "rozemarijn" }));
		SAUZEN.put(4L, new Saus(4L, "tartare",
				new String[] { "mayonaise", "ei", "ui", "peterselie", "augurk", "dragon", "kappertjes", "bieslook" }));
		SAUZEN.put(5L, new Saus(5L, "vinaigrette",
				new String[] { "plantaardige olie", "azijn", "mosterd", "peper", "zout", "water" }));
	}

	public List<Saus> findAll() {
		return new ArrayList<>(SAUZEN.values());
	}

	public List<Saus> findSauzen(String ingredient) {
		List<Saus> sauzen = new ArrayList<>();
		for (Saus saus : SAUZEN.values()) {
			for (String sausIngredient : saus.getIngredienten()) {
				if (sausIngredient.equalsIgnoreCase(ingredient)) {
					sauzen.add(saus);
				}
			}
		}
		return sauzen;
	}

}
