package com.xp.controller;

import com.xp.bean.User;
import com.xp.dao.UserDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/searchCustomer")
public class SearchCustomerController extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String userId = request.getParameter("userId");
		UserDAO userDAO = new UserDAO();
		User customer = userDAO.getCustomerById(userId);

		if (customer != null) {
			request.setAttribute("customer", customer);
			RequestDispatcher dispatcher = request.getRequestDispatcher("searchCustomer.jsp");
			dispatcher.forward(request, response);
		} else {
			request.setAttribute("errorMessage", "No customer found with User ID: " + userId);
			RequestDispatcher dispatcher = request.getRequestDispatcher("adminDashboard.jsp");
			dispatcher.forward(request, response);
		}
	}
}
