package com.shopwebcake1.model;

import java.io.Serializable;

public class News implements Serializable {
	private int newsId;
	private String name;
	private String content;

	public News() {
		super();
	}

	public News(int newsId, String name, String content) {
		super();
		this.newsId = newsId;
		this.name = name;
		this.content = content;
	}

	public int getNewsId() {
		return newsId;
	}

	public void setNewsId(int newsId) {
		this.newsId = newsId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

}
