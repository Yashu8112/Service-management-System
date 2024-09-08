<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.xp.bean.User"%>
<!DOCTYPE html>
<html>
<head>
<title>Customer Details</title>
</head>
<body>
	<h2>Customer Details</h2>
	<%
	User customer = (User) request.getAttribute("customer");
	if (customer != null) {
	%>
	<p>
		User ID:
		<%=customer.getUserId()%></p>
	<p>
		Username:
		<%=customer.getUsername()%></p>
	<p>
		Email:
		<%=customer.getEmail()%></p>
	<p>
		Address:
		<%=customer.getAddress()%></p>
	<p>
		Contact Number:
		<%=customer.getContactNumber()%></p>
	<%
	} else {
	%>
	<p>No customer found.</p>
	<%
	}
	%>
	<form action="adminDashboard.jsp" method="post">
		<input type="submit" value="Back to Dashboard" />
	</form>
</body>
</html>
