package com.example.echoBuzzing.service;


import org.springframework.stereotype.Service;


import com.example.echoBuzzing.model.User;

@Service
public interface UserService {


	public void register(User user); 
	public String getPassword(String name);
	public User searchUser(String name);
	public void changePassword(String name,String password);
}
