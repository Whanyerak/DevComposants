package src;

import java.util.ArrayList;
import java.util.List;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import entities.Moto_entity;
import entities.Voiture_entity;
import interfaces.Vehicule_interface;

//Ici on implémente les fonctions et méthodes qui agiront avec les entities définies dans le projet JPA

@Stateless
//@Table(name="Vehicules")

public class Vehicule implements Vehicule_interface {
	//Nome de la bdd définie dans persistence.xml (Entites/src/META-INF)
	@PersistenceContext(name="testbdd")
	public EntityManager em;
	
	public void add_voiture(String marque, String modele, String prix, String couleur) {
		
		//Définir l'entitée utilisée
		Voiture_entity ve = new Voiture_entity(marque, modele, prix, couleur);
		em.persist(ve);
	}

	public void add_voiture(Voiture_entity v) {
		
		Voiture_entity ve = new Voiture_entity();
		ve.setMarque(v.getMarque());
		ve.setModele(v.getModele());
		ve.setPrix(v.getPrix());
		ve.setCouleur(v.getCouleur());
		em.persist(ve);
	}
	
	
	public List<Voiture_entity> get_voitures() {
		
		List<Voiture_entity> voitures = new ArrayList<>();
//		voitures = (List<Voiture_entity>)em.createQuery("SELECT v FROM Voitures v").getResultList();
		voitures = (List<Voiture_entity>)em.createQuery("select v from Voiture_entity v").getResultList();
		
		return voitures;
	}
	
	
	public void add_moto(String marque, String modele, String prix, Boolean roulettes) {
		
		//Définir l'entitée utilisée
		Moto_entity me = new Moto_entity(marque, modele, prix, roulettes);
		em.persist(me);
	}

	public void add_moto(Moto_entity m) {
		
		Moto_entity me = new Moto_entity();
		me.setMarque(m.getMarque());
		me.setModele(m.getModele());
		me.setPrix(m.getPrix());
		me.setRoulettes(m.getRoulettes());
		em.persist(me);
	}
	
	
	public List<Moto_entity> get_motos() {
		
		List<Moto_entity> motos = new ArrayList<>();
//		voitures = (List<Voiture_entity>)em.createQuery("SELECT v FROM Voitures v").getResultList();
		motos = (List<Moto_entity>)em.createQuery("select m from Moto_entity m").getResultList();
		
		return motos;
	}
	
}