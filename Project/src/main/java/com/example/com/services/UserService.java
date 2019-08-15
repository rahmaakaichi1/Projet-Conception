package com.example.com.services;

import com.example.com.entities.User;

public interface UserService {
	public User findUserByEmail(String email);
	public void saveUser(User user);
	public User findUserById(long id);
	public void deleteByid(long id);
	
}
