package entities;

import java.io.Serializable;

import javax.persistence.Entity;

/**
 * Entity implementation class for Entity: moto
 *
 */
@Entity
//@Table(name="Motos")
public class Moto_entity extends Vehicule_entity implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private Boolean roulettes;
	
	public Moto_entity() {
		super();
		this.setType("moto");
	}
	
	public Moto_entity(String marque, String modele, String prix, Boolean roulettes) {
		super(marque, modele, prix);
		this.setType("moto");
		this.roulettes = true;
	}

	public Boolean getRoulettes() {
		return roulettes;
	}

	public void setRoulettes(Boolean roulettes) {
		this.roulettes = roulettes;
	}
	
	
   
}
