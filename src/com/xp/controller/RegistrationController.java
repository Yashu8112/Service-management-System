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

@WebServlet("/register")
public class RegistrationController extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String address = request.getParameter("address");
		String contactNumber = request.getParameter("contactNumber");

		User user = new User();
		UserDAO userDAO = new UserDAO();
		user.setUserId(userDAO.generateUserId());
		user.setUsername(username);
		user.setEmail(email);
		user.setPassword(password);
		user.setAddress(address);
		user.setContactNumber(contactNumber);

		boolean isRegistered = userDAO.registerUser(user);
		if (isRegistered) {
			request.setAttribute("user", user);
			RequestDispatcher dispatcher = request.getRequestDispatcher("acknowledgment.jsp");
			dispatcher.forward(request, response);
		} else {
			response.sendRedirect("register.jsp");
		}
	}
}
