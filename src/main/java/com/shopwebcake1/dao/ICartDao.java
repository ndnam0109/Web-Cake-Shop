package com.shopwebcake1.dao;

import java.util.List;

import com.shopwebcake1.model.Cart;



public interface ICartDao {
	void insert(Cart cart);

	void edit(Cart cart);

	void delete(int id);

	Cart get(String name);

	Cart get(int id);

	List<Cart> getAll();

	

}
