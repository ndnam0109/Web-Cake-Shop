package com.shopwebcake1.service;

import java.util.List;

import com.shopwebcake1.model.User;

public interface IUserService {
	void insert(User user);

	void edit(User user);

	void delete(int id);

	User get(String userName);
	
	User get(int id);
	
	User login(String userName, String password);
	
	void register(String userName, String password, String fullName, int roleId, String gmail);

	List<User> getAll();

	List<User> search(String keyword);
	
	boolean checkExistEmail(String email);
	
	boolean checkExistUsername(String username);
	


}
