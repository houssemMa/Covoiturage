package org.gestion.models;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;
@Entity
@DiscriminatorValue("Client")
public class Client extends Utilisateur{

	@Column(name="nom")
	private String nom;
	
	@Column(name="prenom")
	private String prenom;
	
	@Column(name="cin")
	private String cin;
	
	@Column(name="etatCompte")
	private Boolean etatCompte;
	
	@Column(name="sex")
	private String sex;
	
	@Column(name="dateNaissance")
	private Date dateNaissance;

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getCin() {
		return cin;
	}

	public void setCin(String cin) {
		this.cin = cin;
	}

	public Boolean getEtatCompte() {
		return etatCompte;
	}

	public void setEtatCompte(Boolean etatCompte) {
		this.etatCompte = etatCompte;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public Date getDateNaissance() {
		return dateNaissance;
	}

	public void setDateNaissance(Date dateNaissance) {
		this.dateNaissance = dateNaissance;
	}
	
	
	
}
