package com.example.com.entities;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;


@Entity
public class Etudiant extends User{

	
	@ManyToOne(cascade=CascadeType.ALL)
    @JoinColumn
	private Groupe groupe;
	
	/*@JoinColumn(name="id")
	@ManyToOne(optional=false)
	private Emploi emploi;*/



	public Groupe getGroupe() {
		return groupe;
	}

	public void setGroupe(Groupe groupe) {
		this.groupe = groupe;
	}



}
