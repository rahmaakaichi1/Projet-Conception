package com.example.com.entities;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class Salle {


	
	public static enum SALLE_TYPE{
		
		COURS,TP, AMPHI
		
	}
	
	
	@Id
	@GeneratedValue
	private long id_salle;

	private SALLE_TYPE type;

	private String nom;



	@OneToOne(mappedBy = "salle")
	private Rattrapage rattrapage;
	
	@OneToOne(mappedBy = "salles")
	private DevoirSurveille devoir;

	@OneToMany(mappedBy = "sal",cascade = CascadeType.ALL)
	private Set<SeanceCours> sCours;

	public long getId_salle() {
		return id_salle;
	}

	public void setId_salle(long id_salle) {
		this.id_salle = id_salle;
	}

	public SALLE_TYPE getType() {
		return type;
	}

	public void setType(SALLE_TYPE type) {
		this.type = type;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}



	public Rattrapage getRattrapage() {
		return rattrapage;
	}

	public void setRattrapage(Rattrapage rattrapage) {
		this.rattrapage = rattrapage;
	}

	public Set<SeanceCours> getsCours() {
		return sCours;
	}

	public void setsCours(Set<SeanceCours> sCours) {
		this.sCours = sCours;
	}


	
	
	
	

}
