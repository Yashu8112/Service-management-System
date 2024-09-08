<%@ page import="java.util.List"%>
<%@ page import="com.xp.bean.Booking"%>

<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>Booking History</title>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans:wght@400;600&family=Poppins:wght@400;600&display=swap"
	rel="stylesheet">
<style>
* {
	padding: 0;
	margin: 0;
	box-sizing: border-box;
	font-family: "Poppins", sans-serif;
}

body {
	background-color: #1a1a1a; /* Dark background */
	color: #e0e0e0; /* Light text color for contrast */
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	min-height: 100vh;
	padding: 20px;
}

h2 {
	color: #43c7e8; /* Accent color */
	margin-bottom: 20px;
}

table {
	width: 100%;
	border-collapse: collapse;
	margin-top: 20px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
	background-color: #282828; /* Darker table background */
	border-radius: 8px;
	overflow: hidden;
}

th, td {
	padding: 12px;
	text-align: left;
	border-bottom: 1px solid #444; /* Darker border */
}

th {
	background-color: #43c7e8; /* Header background */
	color: white; /* Header text color */
}

tr:hover {
	background-color: #333; /* Darker row hover effect */
}

.no-bookings {
	color: #bbb; /* Lighter gray for no bookings message */
	font-size: 16px;
	margin-top: 20px;
}

.back-button {
	margin-top: 20px;
	padding: 10px 20px;
	background-color: #43c7e8; /* Button background */
	color: white; /* Button text color */
	border: none;
	border-radius: 5px;
	cursor: pointer;
	transition: background-color 0.3s;
}

.back-button:hover {
	background-color: #32a7c4; /* Darker button hover effect */
}
</style>
</head>
<body>
	<h2>Booking History</h2>

	<%
	List<Booking> bookingList = (List<Booking>) request.getAttribute("bookingList"); // Retrieve the booking list
	if (bookingList != null && !bookingList.isEmpty()) {
	%>
	<table>
		<tr>
			<th>Service ID</th>
			<th>User ID</th>
			<th>User Name</th>
			<th>Date</th>
			<th>Slot</th>
			<th>Address</th>
			<th>Vendor</th>
			<th>Service Type</th>
			<th>Status</th>
			<th>Amount</th>
		</tr>
		<%
		for (Booking booking : bookingList) {
		%>
		<tr>
			<td><%=booking.getServiceId()%></td>
			<td><%=booking.getUserId()%></td>
			<td><%=booking.getUserName()%></td>
			<td><%=booking.getDate()%></td>
			<td><%=booking.getSlot()%></td>
			<td><%=booking.getAddress()%></td>
			<td><%=booking.getVendor()%></td>
			<td><%=booking.getServiceType()%></td>
			<td><%=booking.getStatus()%></td>
			<td><%=booking.getAmount()%></td>
		</tr>
		<%
		}
		%>
	</table>
	<%
	} else {
	%>
	<p class="no-bookings">No bookings found.</p>
	<%
	}
	%>
	<button class="back-button" onclick="location.href='dashboard.jsp'">Back
		to Dashboard</button>
</body>
</html>
