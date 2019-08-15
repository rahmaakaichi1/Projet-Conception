package com.example.com.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.com.entities.Absence;
import com.example.com.entities.Enseignant;
import java.util.List;


@Repository
public interface EnseignantRepository extends JpaRepository<Enseignant, Long> {
	@Query( value = "select DISTINCT u.user_id from enseignant u inner join enseignant_groupe ur on(u.user_id=ur.id) inner join groupe r on(ur.groupe_id=r.groupe_id)"
			+ " where r.groupen=?", 
			  nativeQuery = true)
	List<Integer> findIdsByGroupe(String groupe);
	
	
	/*------liste des absences d un enseignant u ----- */
	@Query(value="select absence_id from absence a join enseignant e on a.id = e.user_id where e.user_id= ?) ",nativeQuery=true)
	List<Integer> findAbsencesById(long id);
	
	
	
	@Query(value="select rattrapage_id from rattrapage a join enseignant e on a.id = e.user_id where e.user_id= ?) ",nativeQuery=true)
	List<Integer> findRattrapagesById(long id);

	
	List<Enseignant> findAll();

}



