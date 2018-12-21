package com.amazonaws.lambda.demo.input;

public class ConverterInput {
	private double prix;
	
	private String deviseVoulue;
	
	public ConverterInput() {
		super();
	}

	public double getPrix() {
		return prix;
	}

	public void setPrix(double prix) {
		this.prix = prix;
	}

	public String getDeviseVoulue() {
		return deviseVoulue;
	}

	public void setDeviseVoulue(String deviseVoulue) {
		this.deviseVoulue = deviseVoulue;
	}
}
