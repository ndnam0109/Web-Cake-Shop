package com.shopwebcake1.service;

import java.util.List;

import com.shopwebcake1.model.Cart;

public interface ICartService {
	void insert(Cart cart);

	void edit(Cart cart);

	void delete(int id);

	Cart get(int id);
	
	List<Cart> getAll();

	
}


