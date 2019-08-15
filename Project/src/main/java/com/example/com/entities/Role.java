package com.example.com.entities;

import java.io.Serializable;
import java.util.Set;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name = "role")
public class Role  implements Serializable{

	
		/**
	 * 
	 */
	private static final long serialVersionUID = 1L;


		@Id
		@GeneratedValue(strategy=GenerationType.AUTO)
		@Column(name="role_id")
		private int id ;
		
		@Column(name="role")
		private String roleName;


		
		@ManyToMany
		@JoinTable
	    private Set<User> users;



		public String getRoleName() {
			return roleName;
		}



		public void setRoleName(String roleName) {
			this.roleName = roleName;
		}





	
		
		
}
