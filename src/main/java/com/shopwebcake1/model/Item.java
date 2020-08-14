package com.shopwebcake1.model;

public class Item {
	private int id;
	private Cake cake;
	private int quantity;
	private long unitPrice;
	private Cart cart;
	private String currencyPrice;
	
	


	public Item() {
		super();
	}
	
	
	public Item(int id, Cake cake, int quantity, long unitPrice, Cart cart) {
		super();
		this.id = id;
		this.cake = cake;
		this.quantity = quantity;
		this.unitPrice = unitPrice;
		this.cart = cart;
	}

	public Item(int id, Cake cake, int quantity, long unitPrice, Cart cart, String currencyPrice) {
		super();
		this.id = id;
		this.cake = cake;
		this.quantity = quantity;
		this.unitPrice = unitPrice;
		this.cart = cart;
		this.currencyPrice = currencyPrice;
	}



	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Cake getCake() {
		return cake;
	}
	public void setCake(Cake cake) {
		this.cake = cake;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public long getUnitPrice() {
		return unitPrice;
	}
	public void setUnitPrice(long unitPrice) {
		this.unitPrice = unitPrice;
	}
	public Cart getCart() {
		return cart;
	}
	public void setCart(Cart cart) {
		this.cart = cart;
	}

	public String getCurrencyPrice() {
		return currencyPrice;
	}


	public void setCurrencyPrice(String currencyPrice) {
		this.currencyPrice = currencyPrice;
	}
	
}
