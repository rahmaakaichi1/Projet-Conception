package com.example.com.entities;

import java.time.DayOfWeek;
import java.time.LocalDateTime;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;

@Entity
public class SeanceCours {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long seancecours_id;

	@DateTimeFormat(iso = ISO.DATE_TIME)
	private LocalDateTime dateDebut;
	@DateTimeFormat(iso = ISO.DATE_TIME)
	private LocalDateTime dateFin;

	private DayOfWeek jour;

	@JoinColumn(name = "id")
	@ManyToOne
	private Enseignant enseignant;

	@JoinColumn(name = "matiere_id")
	@ManyToOne
	private Matiere matiere;

	@ManyToOne
	@JoinColumn(name = "salle_id")
	private Salle sal;

	@JoinTable(name = "SEANCE_GROUPE", joinColumns = { @JoinColumn(name = "seancecours_id") }, inverseJoinColumns = {
			@JoinColumn(name = "groupe_id") })
	@ManyToMany
	private List<Groupe> groupes;

	public long getSeancecours_id() {
		return seancecours_id;
	}

	public void setSeancecours_id(long seancecours_id) {
		this.seancecours_id = seancecours_id;
	}

	public LocalDateTime getDateDebut() {
		return dateDebut;
	}

	public void setDateDebut(LocalDateTime dateDebut) {
		this.dateDebut = dateDebut;
	}

	public LocalDateTime getDateFin() {
		return dateFin;
	}

	public void setDateFin(LocalDateTime dateFin) {
		this.dateFin = dateFin;
	}

	public Enseignant getEnseignant() {
		return enseignant;
	}

	public void setEnseignant(Enseignant enseignant) {
		this.enseignant = enseignant;
	}

	public Matiere getMatiere() {
		return matiere;
	}

	public void setMatiere(Matiere matiere) {
		this.matiere = matiere;
	}

	public Salle getSal() {
		return sal;
	}

	public void setSal(Salle sal) {
		this.sal = sal;
	}

	public List<Groupe> getGroupes() {
		return groupes;
	}

	public void setGroupes(List<Groupe> groupes) {
		this.groupes = groupes;
	}

	public DayOfWeek getJour() {
		return jour;
	}

	public void setJour(DayOfWeek jour) {
		this.jour = jour;
	}

}
