package com.shopwebcake1.dao;

import java.util.List;

import com.shopwebcake1.model.Item;



public interface IItemDao {
	void insert(Item item);

	void edit(Item item);

	void delete(int id);

	Item get(String name);

	Item get(int id);

	List<Item> getAll();

	List<Item> search(String name);
}
