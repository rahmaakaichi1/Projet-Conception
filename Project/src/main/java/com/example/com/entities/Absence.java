package com.example.com.entities;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class Absence {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long absence_id;
	
	@JoinColumn(name="id")
	@ManyToOne(optional=false)
	private Enseignant enseignant ;
	
	

	@Column(name="Debut")
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	LocalDate dateDebut ;
	
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	@Column(name="Fin")
	LocalDate  dateFin ;
	
	
	@Column(name="raison_description")
    String raison; 
	
	
	public long getAbsence_id() {
		return absence_id;
	}

	public void setAbsence_id(long absence_id) {
		this.absence_id = absence_id;
	}

	public String getRaison() {
		return raison;
	}

	public void setRaison(String raison) {
		this.raison = raison;
	}

	public Enseignant getEnseignant() {
		return enseignant;
	}

	public void setEnseignant(Enseignant enseignant) {
		this.enseignant = enseignant;
	}

	public LocalDate getDateDebut() {
		return dateDebut;
	}

	public void setDateDebut(LocalDate dateDebut) {
		this.dateDebut = dateDebut;
	}

	public LocalDate getDateFin() {
		return dateFin;
	}

	public void setDateFin(LocalDate dateFin) {
		this.dateFin = dateFin;
	}

}
