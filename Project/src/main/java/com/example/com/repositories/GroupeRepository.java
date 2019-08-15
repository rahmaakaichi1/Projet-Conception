package com.example.com.repositories;



import org.springframework.data.jpa.repository.JpaRepository;


import com.example.com.entities.Groupe;



public interface GroupeRepository extends JpaRepository<Groupe, Long> {

	//java.util.List<Enseignant> findById(long id);
Groupe findById(long id);

	
}
