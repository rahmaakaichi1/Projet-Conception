package com.example.com.services;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.rmi.CORBA.Tie;

import org.springframework.beans.factory.DisposableBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.com.entities.Salle;
import com.example.com.repositories.SalleRepository;
import com.sun.mail.handlers.image_gif;

@Service
public class SalleService {
	
	@Autowired
	private SalleRepository salleRepository ;
	
	
	
	public Salle findByDispo(HashMap<String, String> e){
		List<Salle> salles  = salleRepository.findAll();
		List<Salle> sallesNondispoList = this.sallesNonDispo();
		boolean nondispo = true ;
		Salle salledispoo= null ;
		int i = 0 ;
		//on suppose il n y a pas de salle dispo
		while(i<salles.size() && nondispo) {
			
			// the salle is not taken
			if(!sallesNondispoList.contains(salles.get(i))){
				salledispoo = salles.get(i);
				nondispo = false ;
				
				
			}
			
		}
		return salledispoo;


	}
	//initialisation des salles dispo
	   public List<Salle> sallesNonDispo(){
		   
		   java.util.List<Salle> NondispoSalles= new ArrayList<Salle>();
		 Salle salleNondispo1 = new Salle();
		 salleNondispo1.setId_salle(1);
		 HashMap<String, String> timeHashMap = new HashMap<String, String>();
		 timeHashMap.put("Lundi", "8:30");
		// salleNondispo1.setDispo(timeHashMap);
		 NondispoSalles.add(salleNondispo1);
		 
		
		
		return  NondispoSalles ;
		   
	   }
	   
}
