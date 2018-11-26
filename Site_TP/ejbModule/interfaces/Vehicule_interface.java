package interfaces;

import java.util.List;

import entities.Moto_entity;
import entities.Voiture_entity;

public interface Vehicule_interface {

	public void add_voiture(String marque, String modele, String prix, String couleur);
	public void add_voiture(Voiture_entity v);
	public List<Voiture_entity> get_voitures();
	public void add_moto(String marque, String modele, String prix, Boolean roulettes);
	public void add_moto(Moto_entity m);
	public List<Moto_entity> get_motos();
}
