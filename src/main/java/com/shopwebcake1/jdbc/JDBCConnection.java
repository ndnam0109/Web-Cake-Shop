package com.shopwebcake1.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JDBCConnection {

	public static Connection getJDBCConnection() {

		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/webshop";
			String user = "root";
			String password = "Ginbe970901";
			return DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException | SQLException e) {

			return null;
		}
	}
}
