package com.shopwebcake1.dao.impl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import com.shopwebcake1.dao.ICartDao;
import com.shopwebcake1.jdbc.JDBCConnection;
import com.shopwebcake1.model.Cart;
import com.shopwebcake1.model.User;

public class CartDao extends JDBCConnection implements ICartDao {
	
	
	
	@Override
	public void insert(Cart cart) {
		String sql = "INSERT INTO cart ( userid, buydate) VALUES (?,?)";
		java.sql.Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;

		try {
			connection = super.getJDBCConnection();
			connection.setAutoCommit(false);
			statement = connection.prepareStatement(sql, statement.RETURN_GENERATED_KEYS);

			statement.setInt(1, cart.getBuyer().getUserId());
			
			// Chuyển từ util.date sang kiểu timestamp trong sql
			Timestamp timestamp  = new Timestamp(cart.getBuyDate().getTime());
			statement.setTimestamp(2,  timestamp );

			
			statement.executeUpdate();
			connection.commit();

		} catch (SQLException e) {
			if (connection != null) {
				try {
					connection.rollback();
				} catch (SQLException e1) {
					e1.printStackTrace();
				}
			}

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
		
	}

	@Override
	public void edit(Cart cart) {
		
		
	}

	@Override
	public void delete(int id) {
		String sql = "DELETE FROM cart WHERE cartid=?";
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
	public Cart get(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Cart get(int id) {
		String sql = "SELECT * FROM cart WHERE cartId=?";
		java.sql.Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;
		Cart cart = new Cart();

		try {
			connection = super.getJDBCConnection();
			statement = connection.prepareStatement(sql);
			statement.setInt(1, id);
			resultSet = statement.executeQuery();
			

			while (resultSet.next()) {

				
				
				cart.setCartId(resultSet.getInt("cartId"));
				
				UserDao userDao= new UserDao();
				User user = userDao.get(resultSet.getInt("userId"));
				cart.setBuyer(user);

				
				cart.setBuyDate(resultSet.getTimestamp("buyDate"));
				
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
		return cart;
		
	}

	@Override
	public List<Cart> getAll() {
		List<Cart> cartList = new ArrayList<Cart>();
		String sql = "SELECT * FROM cart";
		java.sql.Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;

		try {
			connection = super.getJDBCConnection();
			statement = connection.prepareStatement(sql);
			resultSet = statement.executeQuery();

			while (resultSet.next()) {

				Cart cart = new Cart();
				
				cart.setCartId(resultSet.getInt("cartId"));
				
				UserDao userDao = new UserDao();
				User user = userDao.get(resultSet.getInt("userId"));
				cart.setBuyer(user);

				
				cart.setBuyDate(resultSet.getTimestamp("buyDate"));
				cartList.add(cart);
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
		return cartList;
	}
	

}
