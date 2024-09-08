package com.xp.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class AdminDAO {

	public boolean authenticateAdmin(String username, String password) {
		Connection connection = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			Class.forName("org.sqlite.JDBC");
			connection = DriverManager.getConnection("jdbc:sqlite:C:\\Users\\2728326\\MySQLiteDB");

			String query = "SELECT * FROM admin WHERE username = ? AND password = ?";
			ps = connection.prepareStatement(query);
			ps.setString(1, username);
			ps.setString(2, password);
			rs = ps.executeQuery();

			return rs.next(); // Returns true if admin exists
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (ps != null)
					ps.close();
				if (connection != null)
					connection.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return false; // Return false if an error occurred
	}
}
