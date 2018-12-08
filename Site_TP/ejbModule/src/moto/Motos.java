package src.moto;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import entities.Moto_entity;
import entities.Voiture_entity;
import interfaces.IMoto;

public class Motos implements IMoto{
	@PersistenceContext(name="testbdd")
	public EntityManager em;

	@Override
	public void addMoto(Moto_entity voiture) {

		Voiture_entity ve = new Voiture_entity();
		ve.setMarque(voiture.getMarque());
		ve.setModele(voiture.getModele());
		ve.setPrix(voiture.getPrix());
		em.persist(ve);
	}


	@SuppressWarnings("unchecked")
	@Override
	public List<Moto_entity> getMotos() {

		List<Moto_entity> motos = new ArrayList<>();
		motos = (List<Moto_entity>)em.createQuery("select m from Moto_entity m").getResultList();

		return motos;
	}
}
