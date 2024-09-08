<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">
<title>Service Management System</title>
<style>
body {
	font-family: 'Arial', sans-serif;
	margin: 0;
	padding: 0;
	background: linear-gradient(to right, #232526, #414345);
	height: 100vh;
	display: flex;
	align-items: center;
	justify-content: center;
	background-image: url("images/bg.jpg");
	background-size: cover;
}

.container {
	width: 400px;
	padding: 20px;
	background-color: #2c2f33;
	border-radius: 10px;
	box-shadow: 0 5px 15px rgba(0, 0, 0, 0.5);
	text-align: center;
	animation: fadeIn 0.5s ease-in-out;
	color: white;
}

h2 {
	margin-bottom: 20px;
	color: #1bbb85;
	font-weight: bold;
}

button {
	width: 100%;
	padding: 15px;
	background-color: #383b3a;
	color: #1bbb85;
	border: 2px solid #1bbb85;
	border-radius: 5px;
	cursor: pointer;
	margin: 10px 0;
	transition: background 400ms ease-out, color 400ms ease-out;
}

button:hover {
	background-color: #1bbb85;
	color: #383b3a;
	border-radius: 5px;
}

}

</style>
</head>
<body>
	<div class="container">
		<h2>Welcome to the Service Management System</h2>
		<button onclick="location.href='register.jsp'">Register</button>
		<button onclick="location.href='login.jsp'">User Login</button>
		<button onclick="location.href='adminLogin.jsp'">Admin Login</button>
	</div>
</body>
</html>
