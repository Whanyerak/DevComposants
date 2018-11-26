package entities;

import java.io.Serializable;

import javax.persistence.Entity;

/**
 * Entity implementation class for Entity: voiture
 *
 */
@Entity
//@Table(name="Voitures")
public class Voiture_entity extends Vehicule_entity implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private String couleur;
	
	public Voiture_entity() {
		super();
		this.setType("voiture");
	}
	
	public Voiture_entity(String marque, String modele, String prix, String couleur) {
		super(marque, modele, prix);
		this.setType("voiture");
		this.couleur = couleur;
	}

	public String getCouleur() {
		return couleur;
	}

	public void setCouleur(String couleur) {
		this.couleur = couleur;
	}
	
	
   
}
