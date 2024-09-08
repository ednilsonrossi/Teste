package br.ifsp.dsw1;

import java.util.LinkedList;
import java.util.List;

public class Dados {
	public static Dados instance = null;
	private List<Animal> animais;
	
	private Dados() {
		animais = new LinkedList<Animal>();
	}
	
	public static Dados getInstance() {
		if (instance == null) {
			instance = new Dados();
		}
		return instance;
	}
	
	public void insereAnimal(Animal animal) {
		animais.add(animal);
	}
	
	public int getPatas() {
		return animais.stream()
		.map(a -> a.getPatas())
		.mapToInt(Integer::intValue)
		.sum();
	}
}
