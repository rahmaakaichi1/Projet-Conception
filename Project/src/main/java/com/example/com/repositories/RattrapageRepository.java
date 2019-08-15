package com.example.com.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.com.entities.Rattrapage;

public interface RattrapageRepository extends JpaRepository<Rattrapage, Long> {

	
	Rattrapage save(Rattrapage ra);
}
