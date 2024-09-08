<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <title>Login</title>
    <style>
        body {
            background: radial-gradient(#653d84, #332042);
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            font-family: Arial, sans-serif;
        }

        .login-box {
            width: 400px;
            padding: 40px;
            /* margin:10px; */
            background: #fff;
            border-radius: 15px;
            margin-top: 30px;
            box-shadow: 0 4px 30px rgba(0, 0, 0, 0.1);
        }

        .login-box h2 {
            margin-bottom: 20px;
            color:#8729E1;
            text-align: center;
            font-weight: bold;
        }

        .error-message {
            color: red;
            text-align: center;
            margin-top: 10px;
            font-size: 14px;
        }

        .form-control {
            border-radius: 5px;
            border: 1px solid #dddddd;
        }

        .form-control:focus {
            border-color: #8729E1;
            box-shadow: none;
        }

        .submit {
            width: 100%;
            background-color: #8729E1;
            color: #fff;
            border: none;
            padding: 10px;
            border-radius: 5px;
            font-weight: bold;
            transition: background-color 0.3s ease;
            margin-top: 20px;
        }

        .submit:hover {
            background-color:#8729E1;
        }

        .register-link {
            text-align: center;
            margin-top: 15px;
        }

        .register-link a {
            color: #8729E1;
            font-weight: bold;
        }

        .register-link a:hover {
            text-decoration: underline;
        }
        img{
            width:100px;
            height:100px;
            border-radius: 50%;
            position: absolute;
            top:10%;
            left:46.5%;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <div class="login-box">
        <img src="images/user.png" alt="user">
        <h2>Login</h2>
        <form action="userLogin" method="post">
            <div class="form-group">
                <label for="userId">User ID:</label>
                <input type="text" class="form-control" id="userId" name="userId" required>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" class="form-control" id="password" name="password" required>
            </div>
            <button type="submit" class="submit">Login</button>
            <c:if test="${not empty errorMessage}">
                <p class="error-message">${errorMessage}</p>
            </c:if>
        </form>
        <div class="register-link">
            <a href="register.jsp">Don't have an account? Register</a>
        </div>
    </div>
</body>
</html>