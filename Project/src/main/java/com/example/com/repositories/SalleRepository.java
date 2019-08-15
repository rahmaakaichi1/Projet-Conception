package com.example.com.repositories;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.example.com.entities.Salle;
import com.example.com.entities.SeanceCours;

import java.lang.String;

public interface SalleRepository extends JpaRepository<Salle, Long>{
	
	

//	
//	@Query(value="select absence_id from absence a join enseignant e on a.id = e.user_id where e.user_id= ?) ",nativeQuery=true)
//	List<Long> findSeancesForSalle(String nom);
	
//	the test is if im ok with all seance so i can take this salle if i'm not i will move to the next one 
	// if im not so the registration is not ok and the system will look for a solution...
	
	
	
	
	ArrayList<Salle> findAll();

}
