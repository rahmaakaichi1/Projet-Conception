package com.example.com.entities;

import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class Matiere {
	
	@Id
	private long matiere_id;
	
	private String nomMatiere;
	
	
	/*@JoinColumn(name="groupe_id")
	@ManyToOne(optional=false)
	private Groupe groupe;*/
	
	@OneToMany(cascade=CascadeType.ALL,fetch=FetchType.LAZY,mappedBy="matiere")
	private List<SeanceCours> seancour;

	public long getMatiere_id() {
		return matiere_id;
	}

	public void setMatiere_id(long matiere_id) {
		this.matiere_id = matiere_id;
	}

	public String getNomMatiere() {
		return nomMatiere;
	}

	public void setNomMatiere(String nomMatiere) {
		this.nomMatiere = nomMatiere;
	}

	
	public List<SeanceCours> getSeancour() {
		return seancour;
	}

	public void setSeancour(List<SeanceCours> seancour) {
		this.seancour = seancour;
	}
	
	

	
	

}
