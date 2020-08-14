package com.shopwebcake1.dao.impl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import com.shopwebcake1.dao.ICakeDao;
import com.shopwebcake1.jdbc.JDBCConnection;
import com.shopwebcake1.model.Cake;
import com.shopwebcake1.model.Category;

public class CakeDao extends JDBCConnection implements ICakeDao {
	
	@Override
	public void insert(Cake cake) {
		String sql = "INSERT INTO cake(cakeName, thumbnail, content, categoryid, price) VALUES (?,?,?,?,?)";
		java.sql.Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;

		try {
			connection = super.getJDBCConnection();
			connection.setAutoCommit(false);
			statement = connection.prepareStatement(sql, statement.RETURN_GENERATED_KEYS);

			statement.setString(1, cake.getCakeName());
			statement.setString(2, cake.getThumbnail());
			statement.setString(3, cake.getContent());
			statement.setInt(4, cake.getCategory().getCategoryId());
			statement.setLong(5, cake.getPrice());
			statement.executeUpdate();
			connection.commit();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
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

	}

	@Override
	public void edit(Cake cake) {
		String sql = "UPDATE cake SET cakeName = ? , thumbnail = ?, content = ?,categoryid=?, price=?  WHERE cakeid = ?";
		java.sql.Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resutSet = null;

		try {
			connection = super.getJDBCConnection();
			connection.setAutoCommit(false);

			statement = connection.prepareStatement(sql);
			statement.setString(1, cake.getCakeName());
			statement.setString(2, cake.getThumbnail());
			statement.setString(3, cake.getContent());
			statement.setInt(4, cake.getCategory().getCategoryId());
			statement.setLong(5, cake.getPrice());
			statement.setInt(6, cake.getCakeId());

			statement.executeUpdate();
			connection.commit();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if (connection != null) {
					connection.close();
				}
				if (statement != null) {
					statement.close();
				}
			} catch (SQLException e2) {
				e2.printStackTrace();
			}
		}

	}

	@Override
	public void delete(int id) {
		String sql = "DELETE FROM cake WHERE cakeid=?";
		java.sql.Connection connection = null;
		PreparedStatement statement = null;

		try {
			connection = super.getJDBCConnection();
			connection.setAutoCommit(false);

			statement = connection.prepareStatement(sql);
			statement.setInt(1, id);
			statement.executeUpdate();
			connection.commit();
		} catch (SQLException e) {

			e.printStackTrace();
		}
		try {
			if (connection != null) {
				connection.close();
			}
			if (statement != null) {
				statement.close();
			}
		} catch (SQLException e2) {
			e2.printStackTrace();
		}
	}

	@Override
	public Cake get(int id) {
		String sql = "SELECT * FROM cake WHERE cakeId=?";
		java.sql.Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;
		Cake cake = new Cake();

		try {
			connection = super.getJDBCConnection();
			statement = connection.prepareStatement(sql);
			statement.setInt(1, id);
			resultSet = statement.executeQuery();

			while (resultSet.next()) {
				
				
				CategoryDao categoryDao = new CategoryDao();
				Category category = categoryDao.get(resultSet.getInt("categoryid"));
				cake.setCakeId(resultSet.getInt("cakeid"));
				cake.setCakeName(resultSet.getString("cakeName"));
				cake.setPrice(resultSet.getLong("price"));
				cake.setThumbnail(resultSet.getString("thumbnail"));
				cake.setContent(resultSet.getString("content"));
				cake.setCategory(category);

				
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
		return cake;
	}

	@Override
	public List<Cake> getAll() {
		List<Cake> cakeList = new ArrayList<Cake>();
		String sql = "SELECT * FROM cake";
		java.sql.Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;

		try {
			connection = super.getJDBCConnection();
			statement = connection.prepareStatement(sql);
			resultSet = statement.executeQuery();
			

			while (resultSet.next()) {
				
				Cake cake = new Cake();
				CategoryDao categoryDao = new CategoryDao();
				Category category = categoryDao.get(resultSet.getInt("categoryid"));
				
				cake.setCakeId(resultSet.getInt("cakeid"));
				cake.setCakeName(resultSet.getString("cakeName"));
				cake.setPrice(resultSet.getLong("price"));
				cake.setThumbnail(resultSet.getString("thumbnail"));
				cake.setContent(resultSet.getString("content"));
				cake.setCategory(category);

				cakeList.add(cake);
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
		return cakeList;
	}

	@Override
	public List<Cake> searchByCategory(int categoryId) {
		List<Cake> cakeList = new ArrayList<Cake>();
		String sql = "SELECT * FROM cake WHERE categoryId=?";
		java.sql.Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;
	

		try {
			connection = super.getJDBCConnection();
			statement = connection.prepareStatement(sql);
			statement.setInt(1,categoryId );
			resultSet = statement.executeQuery();

			while (resultSet.next()) {
				Cake cake = new Cake();
				CategoryDao categoryDao = new CategoryDao();
				Category category = categoryDao.get(resultSet.getInt("categoryId"));
				cake.setCakeId(resultSet.getInt("cakeid"));
				cake.setCakeName(resultSet.getString("cakeName"));
				cake.setPrice(resultSet.getLong("price"));
				cake.setThumbnail(resultSet.getString("thumbnail"));
				cake.setContent(resultSet.getString("content"));
				cake.setCategory(category);

				
				cakeList.add(cake);
			}

		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally {
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

		return cakeList;
	}

	@Override
	public List<Cake> searchByName(String cakeName) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String currencyPrice(long price) {
		
		Locale localeVN = new Locale("vi", "VN");
	    NumberFormat currencyVN = NumberFormat.getCurrencyInstance(localeVN);
	    String str1 = currencyVN.format(price);
		return str1;
	}

}
