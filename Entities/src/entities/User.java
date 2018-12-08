package entities;

import javax.persistence.Entity;
import javax.persistence.Id;

import enums.Role;

@Entity
public class User {
	@Id
	private String username;
	private String password;
	private Boolean isConnected;
	private Role role;
	
	public User() {
		super();
	}
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	
}
