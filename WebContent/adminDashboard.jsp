<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.xp.dao.UserDAO"%>
<%@ page import="com.xp.bean.User"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin Dashboard</title>
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

.form-container {
	display: flex;
	justify-content: space-between;
	align-items: center;
	margin-bottom: 20px;
}

form {
	flex: 1;
	display: flex;
	justify-content: center;
	margin: 0 10px;
}

form input[type="text"] {
	padding: 10px;
	border-radius: 5px;
	border: 1px solid #ccc;
	width: 200px;
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

table {
	width: 100%;
	border-collapse: collapse;
	margin-top: 20px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

th, td {
	padding: 15px;
	text-align: left;
	border-bottom: 1px solid #ddd;
}

th {
	background-color: #6a11cb;
	color: white;
}

tr:hover {
	background-color: #f1f1f1;
}

.logout-btn {
	background: #ff4757;
	color: #fff;
	border: none;
	border-radius: 5px;
	padding: 10px 15px;
	cursor: pointer;
	transition: background 0.3s;
	margin-left: auto; /* Aligns the button to the right */
}

.logout-btn:hover {
	background: #e84118;
}

.container {
	max-width: 800px;
	margin: 0 auto;
	padding: 20px;
	background: white;
	border-radius: 10px;
	box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
}
</style>
</head>
<body>
	<div class="container">
		<h2>Admin Dashboard</h2>
		<div class="form-container">
			<form action="searchCustomer.jsp" method="post">
				<input type="text" id="userId" name="userId"
					placeholder="Search by User ID" required> <input
					type="submit" value="Search">
			</form>
			<form action="menu.jsp" method="post">
				<button type="submit" class="logout-btn">Logout</button>
			</form>
		</div>

		<h3>Customer List</h3>
		<%
		UserDAO userDAO = new UserDAO();
		List<User> customers = userDAO.getAllCustomers();
		if (customers.isEmpty()) {
		%>
		<p>No customers found.</p>
		<%
		} else {
		%>
		<table>
			<tr>
				<th>User ID</th>
				<th>Username</th>
				<th>Email</th>
				<th>Address</th>
				<th>Contact Number</th>
			</tr>
			<%
			for (User customer : customers) {
			%>
			<tr>
				<td><%=customer.getUserId()%></td>
				<td><%=customer.getUsername()%></td>
				<td><%=customer.getEmail()%></td>
				<td><%=customer.getAddress()%></td>
				<td><%=customer.getContactNumber()%></td>
			</tr>
			<%
			}
			%>
		</table>
		<%
		}
		%>
	</div>
</body>
</html>
