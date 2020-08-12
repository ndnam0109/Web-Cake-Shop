package com.shopwebcake1.dao;

import java.util.List;

import com.shopwebcake1.model.Cake;



public interface ICakeDao {
	void insert(Cake cake);

	void edit(Cake cake);

	void delete(int id);

	Cake get(int id);

	List<Cake> getAll();

	
	List<Cake> searchByCategory(int categoryId);
	
	List<Cake> searchByName(String cakeName);

}
