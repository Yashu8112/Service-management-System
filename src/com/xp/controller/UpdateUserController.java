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

@WebServlet("/updateUser")
public class UpdateUserController extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String userId = request.getParameter("userId");
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String contactNumber = request.getParameter("contactNumber");

		User user = new User();
		user.setUserId(userId);
		user.setUsername(username);
		user.setEmail(email);
		user.setAddress(address);
		user.setContactNumber(contactNumber);

		UserDAO userDAO = new UserDAO();
		boolean isUpdated = userDAO.updateUser(user);

		if (isUpdated) {
			// Update the session attribute with the new user details
			request.getSession().setAttribute("loggedInUser", user);
			// Use 'updateMessage' to match the JSP
			request.setAttribute("updateMessage", "Details updated successfully.");
		} else {
			request.setAttribute("updateMessage", "Failed to update details.");
		}

		RequestDispatcher dispatcher = request.getRequestDispatcher("editUser.jsp"); // Redirect to editUser.jsp for
																						// alerts
		dispatcher.forward(request, response);
	}
}
