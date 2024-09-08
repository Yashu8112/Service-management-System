package com.xp.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;

import com.xp.bean.Booking;
import com.xp.dao.BookingDAO;

@WebServlet("/viewBookingHistory")
public class ViewBookingHistoryController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String userId = (String) session.getAttribute("userId"); // Get the user ID from session

		BookingDAO bookingDAO = new BookingDAO();
		List<Booking> bookingList = bookingDAO.getBookingHistory(userId); // Fetch booking history

		request.setAttribute("bookingList", bookingList); // Set bookingList as request attribute

		RequestDispatcher dispatcher = request.getRequestDispatcher("bookingHistory.jsp"); // Forward to the JSP page
		dispatcher.forward(request, response);
	}
}
