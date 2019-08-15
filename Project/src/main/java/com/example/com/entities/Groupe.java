package com.example.com.entities;

import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;



@Entity
public class Groupe {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="groupe_id")
	private long id;

	public String getGroupeN() {
		return groupeN;
	}

	public void setGroupeN(String groupeN) {
		this.groupeN = groupeN;
	}

	private String groupeN;
	 //etudiant  : manytoone
	
	
	@ManyToMany
	private List<SeanceCours> seances ;
	
	/*@ManyToMany
	private List<Rattrapage> rattrapages ;*/
	
	@OneToMany(cascade=CascadeType.ALL,fetch=FetchType.LAZY,mappedBy="groupe")
	private List<Rattrapage> rattrapages ;
	
	
	@OneToMany(cascade=CascadeType.ALL,fetch=FetchType.LAZY,mappedBy="groupes")
	private List<DevoirSurveille> devoirs ;
	
	/*@OneToMany(cascade=CascadeType.ALL,fetch=FetchType.LAZY,mappedBy="groupe")
	private Set<Matiere> matieres;*/
	
	@ManyToMany()
	@JoinTable
    private List<Enseignant> enseignants;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public List<Enseignant> getEnseignants() {
		return enseignants;
	}

	public void setEnseignants(List<Enseignant> enseignants) {
		this.enseignants = enseignants;
	}

	public List<Rattrapage> getRattrapages() {
		return rattrapages;
	}

	public void setRattrapages(List<Rattrapage> rattrapages) {
		this.rattrapages = rattrapages;
	}

	public List<SeanceCours> getSeances() {
		return seances;
	}

	public void setSeances(List<SeanceCours> seances) {
		this.seances = seances;
	}

	
	
	
	

}
