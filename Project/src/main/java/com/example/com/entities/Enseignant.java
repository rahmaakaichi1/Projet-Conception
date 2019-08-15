package com.example.com.entities;


import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;




@Entity
public class Enseignant extends User{
	
	
	@ManyToMany(cascade = {CascadeType.ALL})
	@JoinTable(name = "enseignant_groupe", joinColumns = @JoinColumn(name = "id"), inverseJoinColumns = @JoinColumn(name = "groupe_id"))
	private Set<Groupe> groupes;
	
	@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY,mappedBy="enseignant")
	private Set<Rattrapage> seancecours;
	
	@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY,mappedBy="enseignant")
	private Set<DevoirSurveille> devoirs;
	
	

	public Set<Groupe> getGroupes() {
		return groupes;
	}

	public void setGroupes(Set<Groupe> groupes) {
		this.groupes = groupes;
	}

	public Set<Rattrapage> getSeancecours() {
		return seancecours;
	}

	public void setSeancecours(Set<Rattrapage> seancecours) {
		this.seancecours = seancecours;
	}
	

	
   
	
}
