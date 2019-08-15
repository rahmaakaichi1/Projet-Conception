package com.example.com.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.com.entities.SeanceCours;
import com.example.com.repositories.SeanceCoursRepository;

@Service

public class SeanceCoursService {
	
	@Autowired
	private SeanceCoursRepository seanceCoursRepository ;
	
	
	public List<SeanceCours> findByGroupes(long id){
		return seanceCoursRepository.findByGroupes(id);
	}

}
