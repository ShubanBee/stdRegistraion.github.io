<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.model.Student" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Profile</title>
<!-- Link to FontAwesome for icons -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<style>
    /* Basic page styles */
    body {
        font-family: 'Arial', sans-serif;
        background: #e5e9f2; /* Light grey background */
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }

    /* Card style */
    .card {
        background: linear-gradient(135deg, #00b4d8, #0077b6); /* Gradient background */
        border-radius: 15px;
        padding: 30px;
        width: 400px;
        box-shadow: 0 8px 24px rgba(0, 0, 0, 0.1);
        text-align: center;
        color: #fff;
        opacity: 0;
        transform: translateY(-100px);
        animation: slideInFromTop 1s forwards;
    }

    /* Animation to slide the card in from top */
    @keyframes slideInFromTop {
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }

    /* Title style */
    .card h2 {
        font-size: 26px;
        margin-bottom: 20px;
        font-weight: bold;
        color: white;
    }

    /* Input fields and icons styles */
    .input-group {
        display: flex;
        align-items: center;
        margin-bottom: 20px;
    }

    .input-group i {
        font-size: 18px;
        background-color: #00b4d8; /* Icon background color */
        color: white;
        padding: 12px;
        border-radius: 8px;
        margin-right: 15px;
    }

    .card input[type="text"], .card input[type="email"], .card input[type="password"] {
        width: 100%;
        padding: 12px;
        border: 2px solid #00b4d8;
        border-radius: 8px;
        font-size: 16px;
        box-sizing: border-box;
        transition: border-color 0.3s ease;
    }

    .card input[type="text"]:focus, .card input[type="email"]:focus, .card input[type="password"]:focus {
        border-color: #0077b6; /* Darker blue for focus */
        outline: none;
    }

    /* Button style */
    .card button {
        background-color: #0077b6; /* Blue background */
        border: none;
        padding: 12px 25px;
        color: white;
        font-size: 18px;
        cursor: pointer;
        border-radius: 50px;
        transition: all 0.3s ease;
        display: inline-flex;
        align-items: center;
        justify-content: center;
        margin-top: 20px;
    }

    .card button:hover {
        background-color: #005f87; /* Darker blue on hover */
        transform: scale(1.05);
    }

    /* Back button style */
    .back-button {
        background-color: #f0f4f8;
        color: #0077b6;
        font-size: 16px;
        padding: 10px 20px;
        border-radius: 50px;
        border: 2px solid #0077b6;
        cursor: pointer;
        display: inline-flex;
        align-items: center;
        justify-content: center;
        margin-top: 15px;
        transition: all 0.3s ease;
    }

    .back-button:hover {
        background-color: #0077b6;
        color: white;
    }

    /* Icon style */
    .card i {
        margin-right: 12px;
    }
</style>
</head>
<body>

<% 
	Student stu = (Student) request.getAttribute("Students");
%>



<!-- Card to update profile information -->
<div class="card">
    <h2>Update Profile</h2>
   <form name="updatepage" method="post" action="update">
            <div class="mb-3">
                <label for="id" class="form-label">Student ID</label>
                <input type="text" class="form-control" name="id" id="id" value="<%= stu.getId() %>">
            </div>

            <div class="mb-3">
                <label for="firstname" class="form-label">Firstname</label>
                <input type="text" class="form-control" name="Firstname" id="Firstname" value="<%= stu.getFirstName() %>">
            </div>
             <div class="mb-3">
                <label for="text" class="form-label">Lastname</label>
                <input type="text" class="form-control" name="Lastname" id="Lastname" value="<%= stu.getLastName() %>">
            </div>

            <div class="mb-3">
                <label for="mail" class="form-label">Email</label>
                <input type="email" class="form-control" name="mail" id="mail" value="<%= stu.getEmail() %>">
            </div>

            <div class="mb-3">
                <label for="password" class="form-label">Password</label>
                <input type="password" class="form-control" name="password" id="password" value="<%= stu.getPassword() %>">
            </div>

            <div class="text-center">
                <button type="submit" class="btn btn-custom">Update Details</button>
            </div>
        </form>
    <!-- Back button -->
    <a href="javascript:history.back()" class="back-button">
        <i class="fas fa-arrow-left"></i> Back
    </a>
</div>

</body>
</html>