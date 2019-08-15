package com.example.com.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.com.entities.Absence;

public interface AbsenceRepository extends JpaRepository<Absence, Long> {

	
	Absence save(Absence absence);
	
	
	List<Absence> findAll();
}
