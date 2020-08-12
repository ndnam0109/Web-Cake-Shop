package com.shopwebcake1.dao.impl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.shopwebcake1.dao.ICategoryDao;
import com.shopwebcake1.jdbc.JDBCConnection;
import com.shopwebcake1.model.Category;

public class CategoryDao extends  JDBCConnection implements ICategoryDao {

	@Override
	public Category get(int id) {
		String sql = "SELECT * FROM category WHERE categoryid=?";
		java.sql.Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;
		Category category = new Category();

		try {
			connection = super.getJDBCConnection();
			statement = connection.prepareStatement(sql);
			statement.setInt(1, id);
			resultSet = statement.executeQuery();

			while (resultSet.next()) {
				
				category.setCategoryId(resultSet.getInt("categoryid"));
				category.setCode(resultSet.getString("code"));
				category.setName(resultSet.getString("name"));
				
			}

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			try {
				if (connection != null) {
					connection.close();
				}
				if (statement != null) {
					statement.close();
				}
				if (resultSet != null) {
					resultSet.close();
				}
			} catch (SQLException e) {
				return null;
			}
		}
		return category;
	
	}

	@Override
	public Category get(String name) {
		String sql = "SELECT * FROM category WHERE name=?";
		java.sql.Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;
		Category category = new Category();

		try {
			connection = super.getJDBCConnection();
			statement = connection.prepareStatement(sql);
			statement.setString(1, name);
			resultSet = statement.executeQuery();

			while (resultSet.next()) {
				
				category.setCategoryId(resultSet.getInt("categoryid"));
				category.setCode(resultSet.getString("code"));
				category.setName(resultSet.getString("name"));
				
			}

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			try {
				if (connection != null) {
					connection.close();
				}
				if (statement != null) {
					statement.close();
				}
				if (resultSet != null) {
					resultSet.close();
				}
			} catch (SQLException e) {
				return null;
			}
		}
		return category;
	}

	@Override
	public List<Category> getAll() {
		List<Category> categoryList = new ArrayList<Category>();
		String sql = "SELECT * FROM category ";
		java.sql.Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;
		

		try {
			connection = super.getJDBCConnection();
			statement = connection.prepareStatement(sql);
			resultSet = statement.executeQuery();
			
			while (resultSet.next()) {
				Category category = new Category();
				category.setCategoryId(resultSet.getInt("categoryid"));
				category.setCode(resultSet.getString("code"));
				category.setName(resultSet.getString("name"));
				
				categoryList.add(category);
				
			}

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			try {
				if (connection != null) {
					connection.close();
				}
				if (statement != null) {
					statement.close();
				}
				if (resultSet != null) {
					resultSet.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return categoryList;
	}

}
