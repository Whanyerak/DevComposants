package entities;

import java.io.Serializable;
import java.util.List;

import javax.persistence.*;

/**
 * Entity implementation class for Entity: Cart
 *
 */
@Entity
@Table(name="Cart")
public class Cart_entity implements Serializable {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	@OneToOne
	private User_entity user;
	@OneToMany(cascade=CascadeType.ALL , fetch = FetchType.EAGER)
	private List<Vehicule_entity> vehicules;
	private boolean valide;
	
	private static final long serialVersionUID = 1L;

	public Cart_entity() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public User_entity getUser() {
		return user;
	}

	public void setUser(User_entity user) {
		this.user = user;
	}

	public List<Vehicule_entity> getVehicules() {
		return vehicules;
	}

	public void setVehicules(List<Vehicule_entity> vehicules) {
		this.vehicules = vehicules;
	}

	public boolean isValide() {
		return valide;
	}

	public void setValide(boolean valide) {
		this.valide = valide;
	}
	
}
