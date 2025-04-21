<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.model.Student" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Students Management System</title>
		<!-- Bootstrap CSS -->
		<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-pzjw8f+ua7Kw1TIq0Q9i3tc6qD9z6p3Vr1vfzPQih4cW35Ak5EPU0Bpq8frp6g6P" crossorigin="anonymous">
		<!-- Bootstrap Icons -->
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css">
		
		<!-- Custom CSS for styling -->
		<style>
		    body {
		        background-color: #87CEEB; /* Sky blue background */
		        font-family: Arial, sans-serif;
		    }
		    .container {
		        margin-top: 50px;
		        text-align: center;
		    }
		    h1 {
		        color: #073837;
		    }
		    .btn-custom {
		        background-color: #dc3545;
		        color: skyblue;
		        padding: 10px 20px;
		        font-size: 16px;
		        border-radius: 5px;
		        text-decoration: none;
		        transition: background-color 0.3s ease;
		    }
		    .btn-custom:hover {
		        background-color: #c82333;
		        color:white;
		    }
		    .btn-skyblue {
		        background-color: skyblue;
		        color: white;
		        border-radius: 50px; /* Oval shape */
		        padding: 5px 15px;
		    }
		    .btn-skyblue:hover {
		        background-color: #87CEEB;
		        color: black;
		    }
		    table {
		        margin-top: 20px;
		        width: 100%;
		        border-collapse: collapse;
		    }
		    th, td {
		        border: 1px solid #ddd;
		        padding: 8px;
		        text-align: center;
		    }
		    th {
		        background-color: #f8b5d1;
		        color: black;
		    }
		    .navbar {
		        background-color: #f0f8ff;
		        width: 100%;
		        border-bottom: 2px solid #f8b5d1;
		        margin-bottom: 2rem;
		        animation: fadeIn 1s ease-in-out;
		    }
		    .navbar-brand, .nav-link, .btn {
		        color: #073837 !important;
		    }
		    .nav-link:hover, .btn:hover {
		        color: #c82333 !important;
		    }
		    .navbar-nav {
		        flex-direction: row; /* Align items horizontally */
		    }
		    .nav-item {
		        margin-right: 10px; /* Space between buttons */
		    }
		    .navbar-nav .nav-item .btn {
		        margin: 5px 0; /* Add some space above and below the buttons */
		    }
		    .jumbotron {
		        background-color: #f0f8ff;
		        padding: 1.5rem 1rem; /* Reduced padding */
		        margin-bottom: 2rem;
		        border-radius: 0.3rem;
		        animation: fadeIn 1s ease-in-out;
		        position: absolute; /* Added for center alignment */
		        top: 50%; /* Added for center alignment */
		        left: 50%; /* Added for center alignment */
		        transform: translate(-50%, -50%); /* Added for center alignment */
		    }
		    .center-button {
		        display: flex;
		        justify-content: center;
		    }
		    @keyframes fadeIn {
		        from { opacity: 0; }
		        to { opacity: 1; }
		    }
		</style>
	</head>
	<body>
		
		<!-- Navbar -->
		<nav class="navbar navbar-expand-lg navbar-light">
		    <a class="navbar-brand" href="#">
		        <i class="bi bi-person-circle" style="font-size: 1.5rem; margin-right: 10px;"></i>
		        Students Management
		    </a>
		    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
		        <span class="navbar-toggler-icon"></span>
		    </button>
		    <div class="collapse navbar-collapse">
		        <ul class="navbar-nav ml-auto"> <!-- ml-auto to push items to the right -->
		            <!-- Profile Button -->
		            <li class="nav-item">
		                <button class="btn btn-skyblue" onclick="window.location.href='view.jsp'">
		                    <i class="bi bi-person-circle"></i> Profile
		                </button>
		            </li>
		            <br>
		            <!-- Logout Button -->
		            <li class="nav-item">
		                <a class="btn btn-skyblue" onclick="window.location.href='login.html'">
		                    <i class="bi bi-box-arrow-right"></i> Logout
		                </a>
		            </li>
		        </ul>
		    </div>
		</nav>
		
		<!-- Jumbotron -->
		<div class="jumbotron">
		    <% HttpSession s1 = request.getSession(false);
		    Student s = (Student) s1.getAttribute("st");
		    %>
		    <h1 class="display-4">Welcome to the Home Page, <%= s.getFirstName() %>!</h1>
		    <p class="lead">Manage your students effectively and efficiently.</p>
		    <hr class="my-4">
		    <div class="center-button">
		        <a class="btn btn-custom btn-lg" href="StudentsListController" role="button">List of Students Details</a>
		    </div>
		</div>
		
		<!-- Main content container -->
		<div class="container">
		    <p>More content can be added here...</p>
		</div>
		
		<!-- Bootstrap JS and dependencies -->
		<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zyr1zYwAt1wvXFkC6g/3DEwB4WxlqJq9b4mKw6iM" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-pzjw8f+ua7Kw1TIq0Q9i3tc6qD9z6p3Vr1vfzPQih4cW35Ak5EPU0Bpq8frp6g6P" crossorigin="anonymous"></script>
		
	</body>
</html>
