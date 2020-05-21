package com.Transerve.modal;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="mytable")
public class User {
	
	@Id
	private int id;	
	private String username;	
	private String email;	
	private String organisation;
	private String password;
	private String confirm;
	
	public User() {
		
	}
	
	public User(String username, String email, String organisation, String password, String confirm) {
		super();
		this.username = username;
		this.email = email;
		this.organisation = organisation;
		this.password = password;
		this.confirm = confirm;
	}
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getOrganisation() {
		return organisation;
	}
	public void setOrganisation(String organisation) {
		this.organisation = organisation;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getConfirm() {
		return confirm;
	}
	public void setConfirm(String confirm) {
		this.confirm = confirm;
	}
	
	
	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", email=" + email + ", organisation=" + organisation
				+ ", password=" + password + ", confirm=" + confirm + "]";
	}	
	
	
	

}
