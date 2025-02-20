<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin Login</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<link rel="stylesheet" href="style.css">
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap')
	;

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Poppins', sans-serif;
}

body {
	display: flex;
	justify-content: center;
	align-items: center;
	min-height: 100vh;
	background: url("admingbg.jpg") no-repeat center center fixed;
	background-size: cover;
}

.wrapper {
	width: 420px;
	background: rgba(255, 255, 255, 0.1);
	backdrop-filter: blur(10px);
	color: #fff;
	border-radius: 10px;
	padding: 30px 40px;
	box-shadow: 0 0 15px rgba(0, 0, 0, 0.3);
	animation: fadeIn 0.5s ease-in-out;
}

.wrapper h1 {
	font-size: 36px;
	text-align: center;
	margin-bottom: 20px;
}

.input-box {
	position: relative;
	width: 100%;
	height: 50px;
	margin: 30px 0;
}

.input-box input {
	width: 100%;
	height: 100%;
	background: transparent;
	border: 2px solid rgba(255, 255, 255, 0.2);
	border-radius: 40px;
	font-size: 16px;
	color: #fff;
	padding: 15px 45px 15px 20px;
	transition: border 0.3s ease;
}

.input-box input:focus {
	border-color: #6a11cb;
}

.input-box input::placeholder {
	color: rgba(255, 255, 255, 0.5);
}

.btn {
	width: 100%;
	height: 45px;
	background: #6a11cb;
	border: none;
	border-radius: 40px;
	cursor: pointer;
	font-size: 20px;
	color: #fff;
	font-weight: 600;
	transition: background 0.3s ease, transform 0.2s ease;
}

.btn:hover {
	background: #2575fc;
	transform: translateY(-2px);
}

@
keyframes fadeIn {from { opacity:0;
	transform: translateY(-20px);
}

to {
	opacity: 1;
	transform: translateY(0);
}
}
</style>
</head>
<body>
	<div class="wrapper">
		<form action="adminLogin" method="post">
			<h1>Admin Login</h1>
			<div class="input-box">
				<input type="text" id="username" name="username"
					placeholder="Username" required> <i class="fas fa-user"
					style="position: absolute; right: 20px; top: 15px; color: #fff;"></i>
			</div>
			<div class="input-box">
				<input type="password" id="password" name="password"
					placeholder="Password" required> <i class="fas fa-lock"
					style="position: absolute; right: 20px; top: 15px; color: #fff;"></i>
			</div>
			<input type="submit" value="Login" class="btn">

			<%
			String errorMessage = (String) request.getAttribute("errorMessage");
			%>
			<%
			if (errorMessage != null) {
			%>
			<p style="color: red; text-align: center; margin-top: 10px;"><%=errorMessage%></p>
			<%
			}
			%>
		</form>
	</div>
</body>
</html>
