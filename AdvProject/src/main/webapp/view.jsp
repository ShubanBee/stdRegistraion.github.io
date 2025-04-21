<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.model.Student" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile View</title>

    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    
    <!-- FontAwesome for Icons -->
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>

    <!-- Custom CSS -->
    <style>
    /* Change the background color of the body to sky blue */
    body {
        background-color: #87CEEB; /* Sky blue background */
        height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
        font-family: 'Poppins', sans-serif;
    }

    /* Profile Container */
    .profile-container {
        background: rgba(255, 255, 255, 0.9); /* Slight transparency */
        padding: 40px;
        border-radius: 20px;
        color: #333;
        text-align: center;
        box-shadow: 0px 10px 25px rgba(0, 0, 0, 0.3);
        width: 40%;
    }

    /* Profile Header */
    .profile-header h2 {
        color: #333;
        font-weight: bold;
    }

    .profile-header p {
        color: #555;
    }

    .profile-header i {
        font-size: 60px;
        color: #FFD700;
        margin-bottom: 15px;
    }

    /* Profile Info */
    .profile-info {
        text-align: left;
        margin-top: 20px;
        background: rgba(255, 255, 255, 0.9);
        padding: 15px;
        border-radius: 10px;
    }

    .label {
        font-weight: bold;
        color: #333;
    }

    .value {
        font-size: 18px;
        color: #555;
    }

    /* Buttons */
    .btn-custom {
        border-radius: 30px;
        padding: 12px 20px;
        font-weight: bold;
        transition: 0.3s ease-in-out;
        display: inline-flex;
        align-items: center;
        justify-content: center;
        font-size: 18px;
        width: 100%;
        border: none;
        margin-top: 10px;
    }

    /* Edit Button */
    .btn-edit {
        background: linear-gradient(45deg, #4682B4, #1E90FF);
        color: white;
        box-shadow: 0px 5px 15px rgba(30, 144, 255, 0.5);
    }

    .btn-edit:hover {
        background: linear-gradient(45deg, #1E90FF, #4682B4);
        transform: scale(1.05);
    }

    /* Back Button */
    .btn-back {
        background: linear-gradient(45deg, #708090, #2F4F4F);
        color: white;
        box-shadow: 0px 5px 15px rgba(47, 79, 79, 0.5);
    }

    .btn-back:hover {
        background: linear-gradient(45deg, #2F4F4F, #708090);
        transform: scale(1.05);
    }
    </style>

</head>
<body>

    <% 
        HttpSession ss = request.getSession(false);
        Student e = (Student) ss.getAttribute("st");
    %>

    <!-- Profile Card -->
    <div class="profile-container">
        <div class="profile-header">
            <i class="fas fa-user-circle"></i>
            <h2>Profile Information</h2>
            <p class="text-muted">Your profile details are displayed below</p>
        </div>

        <div class="profile-info">
            <!-- Display Employee ID -->
            <div class="row">
                <div class="col-4 label">ID:</div>
                <div class="col-8 value"><%= e.getId() %></div>
            </div>

            <!-- Display Username -->
            <div class="row">
                <div class="col-4 label">FirstName:</div>
                <div class="col-8 value"><%= e.getFirstName()%></div>
            </div>
            
            <!-- Display Lastname -->
            <div class="row">
                <div class="col-4 label">LastName:</div>
                <div class="col-8 value"><%= e.getLastName()%></div>
            </div>

            <!-- Display Email -->
            <div class="row">
                <div class="col-4 label">Email:</div>
                <div class="col-8 value"><%= e.getEmail() %></div>
            </div>

            <!-- Display Password -->
            <div class="row">
                <div class="col-4 label">Password:</div>
                <div class="col-8 value"><%= e.getPassword() %></div>
            </div>
        </div>

        <!-- Edit & Back Buttons -->
        <form action="update?id=<%=e.getId()%>" method="get">
            <input type="hidden" name="id" value="<%=e.getId() %>">
            <button type="submit" class="btn-custom btn-edit"><i class="fas fa-edit"></i> Edit Profile</button>
        </form>
        <form action="Welcome.jsp" method="get">
            <button type="submit" class="btn-custom btn-back"><i class="fas fa-arrow-left"></i> Back</button>
        </form>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
