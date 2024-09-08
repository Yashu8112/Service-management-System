package com.xp.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/logout") // Ensure this matches the URL in the logout link
public class LogoutController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession(false); // Get existing session
		if (session != null) {
			session.invalidate(); // Invalidate session
		}
		response.sendRedirect("menu.jsp"); // Redirect to menu.jsp
	}
}
