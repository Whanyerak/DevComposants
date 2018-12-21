package src.cart;

import java.util.List;

import javax.ejb.EJB;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;

import entities.Cart_entity;
import entities.User_entity;
import entities.Vehicule_entity;
import interfaces.ICart;
import interfaces.IUser;

@Stateless
public class Cart implements ICart {

	@PersistenceContext(name="testbdd")
	private EntityManager em;
	
	@EJB
	private IUser interU;

	@Override
	public void addProduct(Cart_entity cart, Vehicule_entity vehicule) {
		
		cart.getVehicules().add(vehicule);
		
		Cart_entity new_cart = new Cart_entity();
		new_cart = cart;
		
		em.createQuery("DELETE FROM Cart_entity c WHERE c.id="+cart.getId()).executeUpdate();
		em.persist(new_cart);
		
	}

	@Override
	public Cart_entity getCart(int idUser) {
		
		Cart_entity cart;
		try {
			cart = (Cart_entity)em.createQuery("Select c from Cart_entity c WHERE c.user.id = "+idUser).getSingleResult();
		} catch(NoResultException e) {
			cart = new Cart_entity();
			User_entity user = interU.getUser(idUser);
			cart.setUser(user);
			cart.setValide(false);
			
			em.persist(cart);
		}
	
		return cart;
	}

	@Override
	public void cleanCart(int id) {
		em.createQuery("DELETE c.vehicules FROM Cart_entity c where id="+id).executeUpdate();
		
	}

	@Override
	public void checkOut(Cart_entity cart) {
		em.createQuery("Update Cart_entity Set valide = true where id="+cart.getId()).executeUpdate();

	}
}
