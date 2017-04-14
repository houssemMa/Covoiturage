package org.gestion.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Reclamation {

	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int idReclamation;

	@Column(name="description")
	private String description;
	
	public int getIdReclamation() {
		return idReclamation;
	}

	public void setIdReclamation(int idReclamation) {
		this.idReclamation = idReclamation;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	
}
