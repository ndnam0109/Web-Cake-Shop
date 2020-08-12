package com.shopwebcake1.service;

import java.util.List;

import com.shopwebcake1.model.Category;

public interface ICategoryService {

	

	Category get(int id);
	
	Category get(String name);

	List<Category> getAll();

	
}

