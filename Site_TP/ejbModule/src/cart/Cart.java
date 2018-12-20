package src.cart;

import java.util.ArrayList;
import java.util.List;

import javax.ejb.Stateful;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import entities.Vehicule_entity;
import interfaces.ICart;

@Stateful
public class Cart implements ICart {
	@PersistenceContext(name="testbdd")
	public EntityManager em;

	@Override
	public void addProduct(Vehicule_entity vehicule) {
		em.persist(vehicule);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Vehicule_entity> getCart() {

		List<Vehicule_entity> vehicules = new ArrayList<>();
		vehicules = (List<Vehicule_entity>)em.createQuery("SELECT m FROM Moto_entity m").getResultList();

		return vehicules;
	}

	@Override
	public void cleanCart() {
		em.createQuery("DELETE c FROM Cart_entity c").executeUpdate();
	}
}
