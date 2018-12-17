package entities;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Option")
public class Option implements Serializable{

	private static final long serialVersionUID = -6133546827107135520L;

	@Id
	private String name;
	
	public Option() {
		super();
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

}