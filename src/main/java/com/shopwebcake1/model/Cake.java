package com.shopwebcake1.model;

import java.io.Serializable;

public class Cake implements Serializable {
	private int cakeId;
	private String cakeName;
	private String thumbnail;
	private String content;
	private  Category category;
	private long price;
	
	
	public Cake() {
		super();
	}
	
	public Cake(int cakeId, String cakeName, String thumbnail, String content, Category category,
			long price) {
		super();
		this.cakeId = cakeId;
		this.cakeName = cakeName;
		this.thumbnail = thumbnail;
		this.content = content;
		this.category = category;
		this.price = price;
	}
	public int getCakeId() {
		return cakeId;
	}
	public void setCakeId(int cakeId) {
		this.cakeId = cakeId;
	}
	public String getCakeName() {
		return cakeName;
	}
	public void setCakeName(String cakeName) {
		this.cakeName = cakeName;
	}
	public String getThumbnail() {
		return thumbnail;
	}
	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public long getPrice() {
		return price;
	}
	public void setPrice(long price) {
		this.price = price;
	}
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return String.format("namecake: "+cakeName+"price: "+price+"thumbnail: "+thumbnail);
	}
	
	
}
