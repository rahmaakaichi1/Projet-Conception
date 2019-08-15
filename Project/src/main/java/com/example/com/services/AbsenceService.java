package com.example.com.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.com.entities.Absence;
import com.example.com.repositories.AbsenceRepository;
import com.example.com.repositories.EnseignantRepository;



@Service
public class AbsenceService {
	
	  @Autowired
	  private AbsenceRepository absenceRepository ;
	  
	  @Autowired
	  private EnseignantRepository enseignantRepository;
	  
	  
	  public Absence save(Absence absence) {
		  return absenceRepository.save(absence);
	  }
	  
	  public List<Absence> findAll(){
		  return absenceRepository.findAll();
	  }
	  
	  public List<Integer> findEnseignantByGroupe(String grString) {
		  
		 return enseignantRepository.findIdsByGroupe(grString);
		
	}
	  
	  
	  
	  

}
