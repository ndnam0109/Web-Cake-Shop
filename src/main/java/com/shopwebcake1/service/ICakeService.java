package com.shopwebcake1.service;

import java.util.List;

import com.shopwebcake1.model.Cake;

public interface ICakeService {
	void insert(Cake cake);

	void edit(Cake cake);

	void delete(int id);
	
	public String currencyPrice(long price);

	Cake get(int id);

	List<Cake> getAll();

	List<Cake> search(String username);

	List<Cake> searchByCategory(int cate_id);

	List<Cake> searchByName(String cakeName);
}
