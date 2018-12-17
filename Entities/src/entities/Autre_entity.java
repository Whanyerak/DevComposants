package entities;

import java.io.Serializable;
import javax.persistence.*;

/**
 * Entity implementation class for Entity: Autres
 *
 */
@Entity
public class Autre_entity extends Vehicule_entity implements Serializable {
	
	private static final long serialVersionUID = 6124179836989716436L;

	public Autre_entity() {
		super();
	}
   
}
