package com.shopwebcake1.model;

import java.io.Serializable;

public class Category implements Serializable {
	private int categoryId;
	private String name;
	private String code;
	
	public Category() {
		super();
	}
	
	
	public Category(int categoryId, String name, String code) {
		super();
		this.categoryId = categoryId;
		this.name = name;
		this.code = code;
	}


	public int getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	@Override
	public String toString() {
		return
		String.format("name "+name);
	}
}
