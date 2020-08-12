package com.shopwebcake1.dao;

import java.util.List;

import com.shopwebcake1.model.User;



public interface IUserDao {
	void insert(User user);

	void edit(User user);

	void delete(int id);

	User get(String username);
	
	User get(int id);

	List<User> getAll();

	List<User> search(String username);
	
	boolean checkExistEmail(String gmail);
	
	boolean checkUsername(String username);

}
