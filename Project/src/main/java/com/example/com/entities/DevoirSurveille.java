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
public class DevoirSurveille  {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private long id_devoirsurveille;
	
	
	
	@Column(name="Date_Debut")
	@DateTimeFormat(iso = ISO.DATE_TIME)
	private LocalDateTime Date_debut ;
	
	@Column(name="Date_Fin")
	@DateTimeFormat(iso = ISO.DATE_TIME)
	private LocalDateTime Date_fin ;
	
	
	
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
	private Groupe groupes ;
	

	@OneToOne
	@JoinColumn(name="id_devoirsurveille")
	private Salle salles ;
	
	
	

	
	
	

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

	
	

	public Enseignant getEnseignant() {
		return enseignant;
	}

	public void setEnseignant(Enseignant enseignant) {
		this.enseignant = enseignant;
	}

	public long getId_devoirsurveille() {
		return id_devoirsurveille;
	}

	public void setId_devoirsurveille(long id_devoirsurveille) {
		this.id_devoirsurveille = id_devoirsurveille;
	}

	public Groupe getGroupes() {
		return groupes;
	}

	public void setGroupes(Groupe groupes) {
		this.groupes = groupes;
	}

	public Salle getSalles() {
		return salles;
	}

	public void setSalles(Salle salles) {
		this.salles = salles;
	}

	

		
	

	
	
	
}

