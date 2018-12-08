package src.voitures;

import java.util.ArrayList;
import java.util.List;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import entities.Voiture_entity;
import interfaces.IVoiture;

//Ici on implémente les fonctions et méthodes qui agiront avec les entities définies dans le projet JPA

@Stateless
public class Voitures implements IVoiture {
	@PersistenceContext(name="testbdd")
	public EntityManager em;

	@Override
	public void addVoiture(Voiture_entity voiture) {
		
		Voiture_entity ve = new Voiture_entity();
		ve.setMarque(voiture.getMarque());
		ve.setModele(voiture.getModele());
		ve.setPrix(voiture.getPrix());
		em.persist(ve);
	}
	
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Voiture_entity> getVoitures() {
		
		List<Voiture_entity> motos = new ArrayList<>();
		motos = (List<Voiture_entity>)em.createQuery("select v from Voiture_entity m").getResultList();
		
		return motos;
	}
}