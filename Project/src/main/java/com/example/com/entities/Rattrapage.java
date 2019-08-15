package com.example.com.entities;


import java.time.LocalDateTime;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;


import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;

@Entity
public class Rattrapage  {
	static public enum STATUS {
		EN_ATTENTE , CONFIRME ;
      
		}
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private long id_rattrapage;
	
	
	
	@Column(name="Date_Debut")
	@DateTimeFormat(iso = ISO.DATE_TIME)
	private LocalDateTime Date_debut ;
	
	@Column(name="Date_Fin")
	@DateTimeFormat(iso = ISO.DATE_TIME)
	private LocalDateTime Date_fin ;
	
	@Column(name="Status")
	private STATUS status;
	
	// un enseignant peu tmarquer plusieurs rattrapage , un rattrapage est marque par un enseignant 
	@JoinColumn(name="id")
	@ManyToOne
	private Enseignant enseignant ;
	
	
	
	// l enseignant ne peut faire q un rattrapage a la fois
	/*@JoinTable(name="GROUPE_RATTRAPAGE",joinColumns= {@JoinColumn(name="id_rattrapage")},inverseJoinColumns= {@JoinColumn(name="id")})
	@ManyToMany
	private List<Groupe> groupes ;*/
	
	
	@JoinColumn(name="groupe_id")
	@ManyToOne(cascade=CascadeType.ALL)
	private Groupe groupe ;
	

	@OneToOne
	@JoinColumn(name="id_rattrapage")
	private Salle salle ;
	
	
	public long getId_rattrapage() {
		return id_rattrapage;
	}

	public void setId_rattrapage(long id_rattrapage) {
		this.id_rattrapage = id_rattrapage;
	}

	
	public Salle getSalle() {
		return salle;
	}

	public void setSalle(Salle salle) {
		this.salle = salle;
	}

	

	

	public LocalDateTime getDate_debut() {
		return Date_debut;
	}

	public void setDate_debut(LocalDateTime date_debut) {
		Date_debut = date_debut;
	}

	public LocalDateTime getDate_fin() {
		return Date_fin;
	}

	public void setDate_fin(LocalDateTime date_fin) {
		Date_fin = date_fin;
	}

	
	public STATUS getStatus() {
		return status;
	}

	public void setStatus(STATUS status) {
		this.status = status;
	}

	public Enseignant getEnseignant() {
		return enseignant;
	}

	public void setEnseignant(Enseignant enseignant) {
		this.enseignant = enseignant;
	}

	public Groupe getGroupe() {
		return groupe;
	}

	public void setGroupe(Groupe groupe) {
		this.groupe = groupe;
	}
	

	
	

	
	
	
}

