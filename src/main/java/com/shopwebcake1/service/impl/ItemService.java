package com.shopwebcake1.service.impl;

import java.util.List;

import com.shopwebcake1.dao.impl.ItemDao;
import com.shopwebcake1.model.Item;
import com.shopwebcake1.service.IItemService;

public class ItemService implements IItemService {
 
	ItemDao itemDao = new ItemDao();

	@Override
	public void insert(Item item) {
		itemDao.insert(item);
		
	}

	@Override
	public void edit(Item item) {
		itemDao.edit(item);
		
	}

	@Override
	public void delete(int id) {
		itemDao.delete(id);
		
	}

	@Override
	public Item get(int id) {
		
		return itemDao.get(id);
	}

	@Override
	public List<Item> getAll() {
		
		return itemDao.getAll();
	}
	
}
