package entities;

import java.io.Serializable;
import javax.persistence.*;

/**
 * Entity implementation class for Entity: vehicule
 *
 */
@Entity
@Table(name="Vehicules")

public abstract class Vehicule_entity implements Serializable {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private String type;
	private String marque;
	private String modele;
	private String prix;
	
	private static final long serialVersionUID = 1L;

	public Vehicule_entity() {
		super();
	}
	
	public Vehicule_entity(String marque, String modele, String prix) {
		super();
		this.marque = marque;
		this.modele = modele;
		this.prix = prix;
	}
	
	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getMarque() {
		return marque;
	}

	public void setMarque(String marque) {
		this.marque = marque;
	}

	public String getModele() {
		return modele;
	}

	public void setModele(String modele) {
		this.modele = modele;
	}

	public String getPrix() {
		return prix;
	}

	public void setPrix(String prix) {
		this.prix = prix;
	}
	
	
   
}
