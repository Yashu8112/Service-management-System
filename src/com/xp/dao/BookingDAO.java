package com.xp.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.xp.bean.Booking;

public class BookingDAO {
    private static final String DB_URL = "jdbc:sqlite:C:\\Users\\2728326\\MySQLiteDB";

    public boolean bookService(Booking booking) {
        Connection connection = null;
        PreparedStatement ps = null;

        try {
            Class.forName("org.sqlite.JDBC");
            connection = DriverManager.getConnection(DB_URL);
            String query = "INSERT INTO bookings (userId, userName, serviceId, date, slot, address, vendor, serviceType, status, amount) VALUES (?, ?, ?, ?, ?, ?, ?, ?, 'Booked', ?)";
            ps = connection.prepareStatement(query);
            ps.setString(1, booking.getUserId());
            ps.setString(2, booking.getUserName());
            ps.setString(3, booking.getServiceId());
            ps.setString(4, booking.getDate());
            ps.setString(5, booking.getSlot());
            ps.setString(6, booking.getAddress());
            ps.setString(7, booking.getVendor());
            ps.setString(8, booking.getServiceType());
            ps.setString(9, booking.getAmount());

            int result = ps.executeUpdate();
            return result > 0; // Return true if a row was inserted
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (ps != null) ps.close();
                if (connection != null) connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return false; // Return false if an error occurred
    }

    public List<Booking> getBookingHistory(String userId) {
        List<Booking> bookingList = new ArrayList<>();
        Connection connection = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            Class.forName("org.sqlite.JDBC");
            connection = DriverManager.getConnection(DB_URL);
            String query = "SELECT * FROM bookings WHERE userId = ?";
            ps = connection.prepareStatement(query);
            ps.setString(1, userId);
            rs = ps.executeQuery();

            while (rs.next()) {
                Booking booking = new Booking();
                booking.setServiceId(rs.getString("serviceId"));
                booking.setUserId(rs.getString("userId"));
                booking.setUserName(rs.getString("userName"));
                booking.setDate(rs.getString("date"));
                booking.setSlot(rs.getString("slot"));
                booking.setAddress(rs.getString("address"));
                booking.setVendor(rs.getString("vendor"));
                booking.setServiceType(rs.getString("serviceType"));
                booking.setStatus(rs.getString("status"));
                booking.setAmount(rs.getString("amount"));

                bookingList.add(booking);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
                if (connection != null) connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return bookingList;
    }
}
