package com.example.com.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.com.entities.Etudiant;
import java.util.List;


@Repository
public interface EtudiantRepository extends JpaRepository<Etudiant, Long>{
	
	@Query(value="select DISTINCT * from etudiant e  join groupe g  on e.groupe_groupe_id = g.groupe_id where g.groupen=?", nativeQuery=true)
	List<Etudiant> findByGroupeName(String groupe);
	
	@Query(value="select DISTINCT e.email from etudiant e  join groupe g  on e.groupe_groupe_id = g.groupe_id where g.groupen=?", nativeQuery=true)
	List<String> findByGroupeEmails(String groupe);
	
	

}
