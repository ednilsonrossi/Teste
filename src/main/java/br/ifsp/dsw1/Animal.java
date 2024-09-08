package br.ifsp.dsw1;

public class Animal {
	private String especie;
	private int patas;
	
	public Animal(String especie, int patas) {
		super();
		this.especie = especie;
		this.patas = patas;
	}

	public String getEspecie() {
		return especie;
	}

	public void setEspecie(String especie) {
		this.especie = especie;
	}

	public int getPatas() {
		return patas;
	}

	public void setPatas(int patas) {
		this.patas = patas;
	}
	
}
