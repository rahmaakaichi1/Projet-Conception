package com.example.com.repositories;

import javax.transaction.Transactional;

import org.jboss.logging.Param;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.com.entities.User;

@Repository
public interface UserRepository extends  JpaRepository<User, Long>{

	
	//@Query(value="SELECT * FROM user WHERE email = ?1 LIMIT 1", nativeQuery = true)
	 User findByEmail(String email);
	 User findById(long id);
	 
	 
	 @Modifying
	    @Transactional
	    void deleteById(long id);
	 
	 
	 
	 @Modifying

	 @Query(value="update User  u set u.prenom = ?1, u.nom = ?2 u.email= ?3  u.password= ?4  where u.user_id = ?4",nativeQuery=true)
	 void setUserInfoById(String prenom, String nom, String email ,String password, long id);


	 

	
}
