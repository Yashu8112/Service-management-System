package com.xp.controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.xp.bean.Booking;
import com.xp.dao.BookingDAO;

@WebServlet("/bookService") // URL mapping
public class BookServiceController extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String userId = (String) request.getSession().getAttribute("userId"); // Assuming userId is stored in session
		String userName = request.getParameter("userName");
		String serviceId = request.getParameter("serviceId");
		String date = request.getParameter("date");
		String slot = request.getParameter("slot");
		String address = request.getParameter("address");
		String vendor = request.getParameter("vendor");
		String serviceType = request.getParameter("serviceType");
		String amount = request.getParameter("amount");

		Booking booking = new Booking();
		booking.setUserId(userId);
		booking.setUserName(userName);
		booking.setServiceId(serviceId);
		booking.setDate(date);
		booking.setSlot(slot);
		booking.setAddress(address);
		booking.setVendor(vendor);
		booking.setServiceType(serviceType);
		booking.setAmount(amount);

		BookingDAO bookingDAO = new BookingDAO();
		boolean isBooked = bookingDAO.bookService(booking);

		if (isBooked) {
			request.setAttribute("successMessage", "Booking successful");
		} else {
			request.setAttribute("errorMessage", "Booking failed");
		}

		RequestDispatcher dispatcher = request.getRequestDispatcher("dashboard.jsp"); // Forward back to dashboard
		dispatcher.forward(request, response);
		request.setAttribute("successMessage", "Booking successful!");

		// After successfully booking the service

	}
}
