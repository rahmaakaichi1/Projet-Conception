package com.example.com.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.com.entities.Role;

@Repository
public interface RoleRepository extends JpaRepository<Role, Long>{
	
	Role findByRoleName(String roleName);

}
