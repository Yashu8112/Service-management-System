<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.xp.bean.User" %>
<%
    // Check if the update success message is set
    String updateMessage = (String) request.getAttribute("updateMessage");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Edit User Details</title>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans:wght@400;600&family=Poppins:wght@400;600&display=swap" rel="stylesheet">
    <style>
        * {
            padding: 0;
            margin: 0;
            box-sizing: border-box;
            font-family: "Poppins", sans-serif;
        }
        body {
            background-color: #f4f4f4;
            display: flex;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
            padding: 20px;
            background-image: url("bg1.jpg");
        }
        .container {
            background-color: #1a1a1a;
            color: #fff;
            border-radius: 30px;
            padding: 30px;
            max-width: 400px;
            width: 100%;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
        }
        .title {
            color: #43c7e8;
            font-size: 30px;
            font-weight: 600;
            text-align: center;
            margin-bottom: 20px;
        }
        label {
            display: block;
            margin-bottom: 10px;
            font-weight: 600;
        }
        input[type="text"], input[type="email"], textarea {
            background-color: #333;
            color: #fff;
            border: 1px solid rgba(105, 105, 105, 0.397);
            border-radius: 10px;
            padding: 15px;
            width: 100%;
            margin-bottom: 15px;
            outline: none;
            transition: border 0.3s;
        }
        input[type="text"]:focus, input[type="email"]:focus, textarea:focus {
            border: 1px solid #43c7e8;
        }
        textarea {
            resize: none;
            height: 60px;
        }
        button {
            background-color: #43c7e8;
            color: #fff;
            border: none;
            border-radius: 10px;
            padding: 10px;
            font-size: 16px;
            width: 100%;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        button:hover {
            background-color: #32a7c4;
        }
        .cancel-button {
            background-color: #dc3545;
            margin-top: 10px;
        }
        .cancel-button:hover {
            background-color: #c82333;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2 class="title">Edit Your Details</h2>
        <form action="updateUser" method="post">
            <label for="username">User Name:</label>
            <input type="text" id="username" name="username" value="${loggedInUser.username}" maxlength="50" required>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" value="${loggedInUser.email}" required>

            <label for="address">Address:</label>
            <textarea id="address" name="address" maxlength="100" required>${loggedInUser.address}</textarea>

            <label for="contactNumber">Contact Number:</label>
            <input type="text" id="contactNumber" name="contactNumber" value="${loggedInUser.contactNumber}" maxlength="10" required>

            <input type="hidden" name="userId" value="${loggedInUser.userId}">
            <button type="submit">Update</button>
            <button type="button" class="cancel-button" onclick="location.href='dashboard.jsp'">Back to Dashboard</button>
        </form>
    </div>
    <script>
        window.onload = function() {
            // Check if there is an update message to show
            var updateMessage = "<%= updateMessage != null ? updateMessage : "" %>";
            if (updateMessage) {
                alert(updateMessage);
            }
        };
    </script>
</body>
</html>
