package com.example.com.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.com.entities.Groupe;
import com.example.com.repositories.GroupeRepository;

@Service
public class GroupeService {
	
	@Autowired
	private GroupeRepository groupeRepository ;
	
	
	public List<Groupe> findAll()
	{
		return groupeRepository.findAll();
	}

}
