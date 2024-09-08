<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Registration Acknowledgment</title>
<style>
body {
	background: linear-gradient(#141e30, #243b55);
	color: #fff;
	font-family: Arial, sans-serif;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	height: 100vh;
	margin: 0;
}

.container {
	background-color: rgba(21, 23, 43, 0.9);
	border-radius: 15px;
	box-shadow: 0 4px 10px rgba(0, 0, 0, 0.5);
	padding: 30px;
	text-align: center;
	width: 300px;
	border: white solid;
}

h2 {
	color: #16BFFD;
	margin-bottom: 20px;
}

p {
	margin: 10px 0;
}

a {
	display: inline-block;
	margin-top: 20px;
	padding: 10px 15px;
	background: linear-gradient(to right, #16BFFD, #CB3066);
	color: white;
	text-decoration: none;
	border-radius: 5px;
	transition: background 0.3s ease;
}

img {
	width: 80px;
	height: 80px;
	border: white solid;
	border-radius: 50%;
	position: absolute;
	top: 23%;
}

a:hover {
	background: linear-gradient(to right, #CB3066, #16BFFD);
}
</style>
</head>
<body>
	<img src="images/tick.jpg" alt="Successful">
	<div class="container">
		<h2>User Registration Successful</h2>
		<p>User ID: ${user.userId}</p>
		<p>User Name: ${user.username}</p>
		<p>Email: ${user.email}</p>
		<a href="menu.jsp">Back to Menu</a>
	</div>
</body>
</html>