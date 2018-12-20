package interfaces;

import java.util.List;

import entities.Vehicule_entity;

public interface ICart {

	public void addProduct(Vehicule_entity vehicule);
	public List<Vehicule_entity> getCart();
	public void cleanCart();
	
}
