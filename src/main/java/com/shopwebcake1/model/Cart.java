package com.shopwebcake1.model;

import java.io.Serializable;

import java.util.Date;
import java.util.List;
 

public class Cart implements Serializable {
	private int cartId;
	private User buyer;
	private Date buyDate;
	private long totalPrice;
	
	
	public Cart() {
		super();
	}
	
	public long getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(long totalPrice) {
		this.totalPrice = totalPrice;
	}

	public Cart(int cartId, User buyer, Date buyDate) {
		super();
		this.cartId = cartId;
		this.buyer = buyer;
		this.buyDate = buyDate;
	}
	public Cart(int cartId, User buyer, Date buyDate,long totalPrie) {
		super();
		this.cartId = cartId;
		this.buyer = buyer;
		this.buyDate = buyDate;
		this.totalPrice = totalPrice;
	}
	public int getCartId() {
		return cartId;
	}
	public void setCartId(int cartId) {
		this.cartId = cartId;
	}
	public User getBuyer() {
		return buyer;
	}
	public void setBuyer(User buyer) {
		this.buyer = buyer;
	}
	public Date getBuyDate() {
		return buyDate;
	}
	public void setBuyDate(Date buyDate) {
		this.buyDate = buyDate;
	}
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return String.format("id: "+cartId+"buydate: "+buyDate);
	}
	
}
