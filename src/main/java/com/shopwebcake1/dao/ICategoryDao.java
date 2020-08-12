package com.shopwebcake1.dao;

import java.util.List;

import com.shopwebcake1.model.Category;




public interface ICategoryDao {
	Category get(int id);

	Category get(String name);

	List<Category> getAll();
}
