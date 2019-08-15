package com.example.com.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.example.com.entities.SeanceCours;


public interface SeanceCoursRepository extends JpaRepository<SeanceCours, Long>{
	
	List<SeanceCours> findByGroupes(long id);
	
	@Query(value="select DISTINCT * from seance_cours e  join salle g  on e.salle_id = g.id_salle where g.nom=?", nativeQuery=true)
	List<SeanceCours> findBySalle(String salleName);
	
	@Query(value="select DISTINCT seancecours_id from seance_cours e  join salle g  on e.salle_id = g.id_salle where g.nom=?", nativeQuery=true)
	List<SeanceCours> findIdBySalle(String salleName);
	
	@Query(value="select DISTINCT seancecours_id from seance_cours e  join salle g  on e.salle_id = g.id_salle where g.id_salle=?", nativeQuery=true)
	List<SeanceCours> findBySalleId(long salleid);
	
	

}
