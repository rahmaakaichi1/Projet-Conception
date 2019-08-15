package com.example.com.services;

import java.time.LocalDateTime;
import java.util.ArrayList;

import org.springframework.stereotype.Service;

import com.example.com.entities.Groupe;
import com.example.com.entities.Rattrapage;
import com.example.com.entities.Salle;
import com.example.com.entities.SeanceCours;
import com.example.com.repositories.SalleRepository;

@Service
public class ReservationUtilityService {

	public static boolean match(LocalDateTime dateDebutRatt, LocalDateTime dateFinRatt, SeanceCours seanceCours) {
		boolean matchtime = false;

		if (!((seanceCours.getJour().compareTo(dateDebutRatt.getDayOfWeek()) == 1)
				|| ((seanceCours.getJour().compareTo(dateDebutRatt.getDayOfWeek()) == -1)))) {

			matchtime = true;
			System.out.println("Different day !");

		}

		else {
             boolean a = (dateDebutRatt.isBefore(seanceCours.getDateDebut()));
             boolean b = (dateFinRatt.isBefore(seanceCours.getDateDebut()));
             boolean c = (dateDebutRatt.isAfter(seanceCours.getDateFin()));
             boolean d = (dateFinRatt.isAfter(seanceCours.getDateFin()));
             
			if ( (a  && b)  || (c  && d)) {
				// a match is found
				matchtime = true;
				System.out.println("Seance de cours && Rattrapage not in same time");
			} else {

				System.out.println("Rattrapage and seance  in same Time !! ");

			}

		}

		return matchtime;
	}
	// public boolean possiblity(Rattrapage rattrapage
	// ,java.util.List<SeanceCours> seanceCourslist) {
	// boolean possible = true ;
	// for (SeanceCours seanceCours2 : seanceCourslist) {
	//
	// if(match(rattrapage.getDate_debut(), seanceCours2.getDateDebut(),
	// seanceCours2.getDateFin()) == true) {
	// /*--- non possibility -- */
	// possible = false ;
	// }
	//
	//
	// }
	// return possible ;
	// }
	//
	// public ArrayList<String> GetSuggestions(Rattrapage ra,Groupe grp){
	//
	// LocalDateTime debutraDateTime = ra.getDate_debut();
	// LocalDateTime finraDateTime= ra.getDate_fin();
	// ArrayList<String> suggestionsArrayList = new ArrayList<String>();
	// ArrayList< SeanceCours>seancesList = (ArrayList<SeanceCours>)
	// grp.getSeances();
	// for(SeanceCours seanceCours : seancesList) {
	// if(match(debutraDateTime, seanceCours.getDateDebut(), ra.getDate_fin())
	// == false) {
	// suggestionsArrayList.add(seanceCours.getDateDebut().toString());
	// }
	//
	// }
	// return suggestionsArrayList;
	//
	//
	// }

}
