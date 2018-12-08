package interfaces;

import java.util.List;

import entities.Moto_entity;

public interface IMoto {
	public void addMoto(Moto_entity m);
	public List<Moto_entity> getMotos();
}
