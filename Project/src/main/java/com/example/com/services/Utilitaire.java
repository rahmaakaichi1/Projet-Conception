package com.example.com.services;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.com.entities.Groupe;
import com.example.com.entities.Rattrapage;
import com.example.com.entities.Salle;
import com.example.com.entities.SeanceCours;
import com.example.com.repositories.SalleRepository;

@Service
public class Utilitaire {
	
	@Autowired
	private SalleRepository salleRepository;
	
	public static boolean match(LocalDateTime datedebut , LocalDateTime dated,LocalDateTime datef) {
		
		boolean matchtime = false;
		if (datedebut.isAfter(dated) && datedebut.isBefore(datef)) {
			/*-------incompatibilite ---*/
			matchtime = true ;
			
		}
		return matchtime ;
	}
	public boolean possiblity(Rattrapage rattrapage ,java.util.List<SeanceCours> seanceCourslist) {
		boolean possible = true ;
		for (SeanceCours seanceCours2 : seanceCourslist) {
			
			if(match(rattrapage.getDate_debut(), seanceCours2.getDateDebut(), seanceCours2.getDateFin()) ==  true) {
				/*--- non possibility -- */
				possible = false ;
			}
			
			
		}
		return possible ;
	}
	
	public static ArrayList<String> GetSuggestions(Rattrapage ra,Groupe grp){
		
	LocalDateTime debutraDateTime = ra.getDate_debut();
	LocalDateTime finraDateTime= ra.getDate_fin();
	ArrayList<String> suggestionsArrayList = new ArrayList<String>();
	ArrayList< SeanceCours>seancesList =  (ArrayList<SeanceCours>) grp.getSeances();
	for(SeanceCours seanceCours : seancesList) {
		if(match(debutraDateTime, seanceCours.getDateDebut(), ra.getDate_fin()) == false) {
			suggestionsArrayList.add(seanceCours.getDateDebut().toString());
		}
		
	}
	return suggestionsArrayList;
	
	
}
	/*public ArrayList<Long> getSalles(Rattrapage rattrapage){
		List<Salle> salles ;
		salles= salleRepository.findAll();
		List<Long> totalSalles = new ArrayList<>();
		for (Salle salle : salles) {
			if(SeanceCours.getSal().getStatus() == "libre")
			
		}*/
	}


