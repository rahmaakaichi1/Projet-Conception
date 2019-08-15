package com.example.com.services;

import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.com.entities.Enseignant;
import com.example.com.repositories.EnseignantRepository;

@Service
public class EnseignantService {
	
	@Autowired
	private EnseignantRepository enseignantRepository ;
	
	
	public List<Enseignant> findAll(){
		return enseignantRepository.findAll();
	}

}
