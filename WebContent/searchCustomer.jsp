<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.xp.dao.UserDAO"%>
<%@ page import="com.xp.bean.User"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Search Customer</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap')
	;

body {
	font-family: 'Poppins', sans-serif;
	background: #f4f4f4;
	color: #333;
	margin: 0;
	padding: 20px;
}

h2 {
	text-align: center;
	color: #6a11cb;
}

.container {
	max-width: 600px;
	margin: 0 auto;
	padding: 20px;
	background: white;
	border-radius: 10px;
	box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
}

form {
	display: flex;
	justify-content: center;
	margin-bottom: 20px;
}

form input[type="text"] {
	padding: 10px;
	border-radius: 5px;
	border: 1px solid #ccc;
	width: 250px;
	margin-right: 10px;
}

form input[type="submit"] {
	padding: 10px 15px;
	border: none;
	border-radius: 5px;
	background: #6a11cb;
	color: #fff;
	cursor: pointer;
	transition: background 0.3s;
}

form input[type="submit"]:hover {
	background: #2575fc;
}

.button-container {
	display: flex;
	justify-content: space-between;
	margin-top: 20px;
}

.btn {
	background: #ff4757;
	color: #fff;
	border: none;
	border-radius: 5px;
	padding: 10px 15px;
	cursor: pointer;
	transition: background 0.3s;
	text-decoration: none;
	text-align: center;
	flex: 1;
	margin: 0 5px;
}

.btn:hover {
	background: #e84118;
}

.customer-details {
	margin-top: 20px;
	padding: 15px;
	background-color: #f9f9f9;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}
</style>
</head>
<body>
	<div class="container">
		<h2>Search Customer by User ID</h2>
		<form action="searchCustomer" method="post">
			<input type="text" id="userId" name="userId"
				placeholder="Enter User ID" required> <input type="submit"
				value="Search">
		</form>

		<div class="button-container">
			<a href="adminDashboard.jsp" class="btn">Back to Admin Dashboard</a>
			<form action="menu.jsp" method="post">
				<button type="submit" class="btn">Logout</button>
			</form>
		</div>

		<%
		String userId = request.getParameter("userId");
		if (userId != null) {
			UserDAO userDAO = new UserDAO();
			User customer = userDAO.getCustomerById(userId);
			if (customer != null) {
		%>
		<div class="customer-details">
			<h3>Customer Details</h3>
			<p>
				<strong>User ID:</strong>
				<%=customer.getUserId()%></p>
			<p>
				<strong>Username:</strong>
				<%=customer.getUsername()%></p>
			<p>
				<strong>Email:</strong>
				<%=customer.getEmail()%></p>
			<p>
				<strong>Address:</strong>
				<%=customer.getAddress()%></p>
			<p>
				<strong>Contact Number:</strong>
				<%=customer.getContactNumber()%></p>
		</div>
		<%
		} else {
		%>
		<p>
			No customer found with User ID:
			<%=userId%>.
		</p>
		<%
		}
		}
		%>
	</div>
</body>
</html>
