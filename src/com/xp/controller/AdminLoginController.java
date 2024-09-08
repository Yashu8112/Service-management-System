package com.xp.controller;

import com.xp.dao.AdminDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/adminLogin")
public class AdminLoginController extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		AdminDAO adminDAO = new AdminDAO();
		boolean isAuthenticated = adminDAO.authenticateAdmin(username, password);

		if (isAuthenticated) {
			// Admin authenticated successfully
			response.sendRedirect("adminDashboard.jsp"); // Redirect to the admin dashboard
		} else {
			// Authentication failed
			request.setAttribute("errorMessage", "Invalid Username or Password");
			RequestDispatcher dispatcher = request.getRequestDispatcher("adminLogin.jsp");
			dispatcher.forward(request, response);
		}
	}
}
