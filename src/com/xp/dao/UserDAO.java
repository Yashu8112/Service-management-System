package com.xp.dao;

import com.xp.bean.User;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDAO {

	private static final String DB_URL = "jdbc:sqlite:C:\\Users\\2728326\\MySQLiteDB";

	public boolean registerUser(User user) {
		Connection connection = null;
		PreparedStatement ps = null;

		try {
			Class.forName("org.sqlite.JDBC");
			connection = DriverManager.getConnection(DB_URL);

			String query = "INSERT INTO customers (userId, username, email, password, address, contactNumber) VALUES (?, ?, ?, ?, ?, ?)";
			ps = connection.prepareStatement(query);
			ps.setString(1, user.getUserId());
			ps.setString(2, user.getUsername());
			ps.setString(3, user.getEmail());
			ps.setString(4, user.getPassword());
			ps.setString(5, user.getAddress());
			ps.setString(6, user.getContactNumber());

			int result = ps.executeUpdate();
			return result > 0; // Return true if a row was inserted
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeResources(ps, connection);
		}
		return false; // Return false if an error occurred
	}

	public String generateUserId() {
		// Generates a random 7-digit user ID
		return String.format("%07d", (int) (Math.random() * 10000000));
	}

	public User authenticateUser(String userId, String password) {
		Connection connection = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		User user = null;

		try {
			Class.forName("org.sqlite.JDBC");
			connection = DriverManager.getConnection(DB_URL);

			String query = "SELECT * FROM customers WHERE userId = ? AND password = ?";
			ps = connection.prepareStatement(query);
			ps.setString(1, userId);
			ps.setString(2, password);
			rs = ps.executeQuery();

			if (rs.next()) {
				// User found, create a User object
				user = new User();
				user.setUserId(rs.getString("userId")); // Assuming userId is in the table
				user.setUsername(rs.getString("username"));
				user.setEmail(rs.getString("email"));
				user.setAddress(rs.getString("address"));
				user.setContactNumber(rs.getString("contactNumber"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeResources(rs, ps, connection);
		}
		return user; // Return the authenticated user or null if not found
	}

	public List<User> getAllCustomers() {
		List<User> customers = new ArrayList<>();
		Connection connection = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			Class.forName("org.sqlite.JDBC");
			connection = DriverManager.getConnection(DB_URL);

			String query = "SELECT userId, username, email, address, contactNumber FROM customers";
			ps = connection.prepareStatement(query);
			rs = ps.executeQuery();

			while (rs.next()) {
				User customer = new User();
				customer.setUserId(rs.getString("userId"));
				customer.setUsername(rs.getString("username"));
				customer.setEmail(rs.getString("email"));
				customer.setAddress(rs.getString("address"));
				customer.setContactNumber(rs.getString("contactNumber"));
				customers.add(customer);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeResources(rs, ps, connection);
		}
		return customers;
	}

	public User getCustomerById(String userId) {
		User customer = null;
		Connection connection = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			Class.forName("org.sqlite.JDBC");
			connection = DriverManager.getConnection(DB_URL);

			String query = "SELECT username, email, address, contactNumber FROM customers WHERE userId = ?";
			ps = connection.prepareStatement(query);
			ps.setString(1, userId);
			rs = ps.executeQuery();

			if (rs.next()) {
				customer = new User();
				customer.setUserId(userId);
				customer.setUsername(rs.getString("username"));
				customer.setEmail(rs.getString("email"));
				customer.setAddress(rs.getString("address"));
				customer.setContactNumber(rs.getString("contactNumber"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeResources(rs, ps, connection);
		}
		return customer;
	}

	private void closeResources(ResultSet rs, PreparedStatement ps, Connection connection) {
		try {
			if (rs != null)
				rs.close();
			if (ps != null)
				ps.close();
			if (connection != null)
				connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	private void closeResources(PreparedStatement ps, Connection connection) {
		try {
			if (ps != null)
				ps.close();
			if (connection != null)
				connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public boolean updateUser(User user) {
		Connection connection = null;
		PreparedStatement ps = null;

		try {
			Class.forName("org.sqlite.JDBC");
			connection = DriverManager.getConnection("jdbc:sqlite:C:\\Users\\2728326\\MySQLiteDB");

			String query = "UPDATE customers SET username = ?, email = ?, address = ?, contactNumber = ? WHERE userId = ?";
			ps = connection.prepareStatement(query);
			ps.setString(1, user.getUsername());
			ps.setString(2, user.getEmail());
			ps.setString(3, user.getAddress());
			ps.setString(4, user.getContactNumber());
			ps.setString(5, user.getUserId());

			int result = ps.executeUpdate();
			return result > 0; // Return true if the update was successful
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (ps != null)
					ps.close();
				if (connection != null)
					connection.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return false; // Return false if an error occurred
	}

}
