package com.xp.controller;

import com.xp.bean.User;
import com.xp.dao.UserDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/userLogin")
public class LoginController extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String userId = request.getParameter("userId");
		String password = request.getParameter("password");

		UserDAO userDAO = new UserDAO();
		User user = userDAO.authenticateUser(userId, password);

		if (user != null) {
			// User authenticated successfully
			HttpSession session = request.getSession();
			session.setAttribute("loggedInUser", user); // Store the User object
			session.setAttribute("userId", user.getUserId()); // Store userId separately
			response.sendRedirect("dashboard.jsp"); // Redirect to the dashboard
		} else {
			// Authentication failed
			request.setAttribute("errorMessage", "Invalid User ID or Password");
			RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
			dispatcher.forward(request, response);
		}
	}
}
