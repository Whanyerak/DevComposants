package interfaces;

import entities.Cart_entity;
import entities.Vehicule_entity;

public interface ICart {

	public void addProduct(Cart_entity cart, Vehicule_entity vehicule);
	public Cart_entity getCart(int idUser);
	public void cleanCart(int id);
	public void checkOut(Cart_entity cart);
	
}
