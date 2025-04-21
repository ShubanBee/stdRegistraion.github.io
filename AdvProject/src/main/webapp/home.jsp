<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.model.Student"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Table</title>
    <!-- Bootstrap 4.5 CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .action-buttons {
            display: flex;
            gap: 10px; /* Space between buttons */
        }
        .btn-oval {
            border-radius: 50px; /* Oval shape */
            padding: 5px 15px;
            transition: transform 0.3s ease; /* Smooth transition for transform */
        }
        .btn-oval:hover {
            transform: scale(1.1); /* Slightly enlarge button on hover */
        }
        .nav-buttons {
            display: flex;
            justify-content: flex-end;
            gap: 10px;
            margin-top: 20px; /* Adjust if needed */
        }
        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }
        table {
            animation: fadeIn 1s ease-in-out;
        }
    </style>
</head>
<body class="bg-light">

    <!-- Container for centering the content -->
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-8">

                <!-- Page Header -->
                <div class="text-center mb-4">
                    <h1>Welcome to the Student Table</h1>
                    <p class="lead">Here are the Student details:</p>
                </div>

              

                <%
                    List<Student> Students = (List<Student>) request.getAttribute("allstu");
                    if (Students == null || Students.isEmpty()) {
                        out.println("<div class='alert alert-warning'>No Students found!</div>");
                    } else {
                %>

                <!-- Student Table -->
                <table class="table table-bordered table-hover" style="background-color:#99edf2 ;">
                    <thead class="thead-dark">
                        <tr>
                            <th>id</th>
                            <th>firstname</th>
                            <th>lastname</th>
                            <th>email</th>
                            <th>password</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            for (Student Stu : Students) {
                        %>
                        <tr>
                            <td><%= Stu.getId() %></td>
                            <td><%= Stu.getFirstName() %></td>
                            <td><%= Stu.getLastName() %></td>
                            <td><%= Stu.getEmail() %></td>
                            <td><%= Stu.getPassword() %></td>
                            <td class="action-buttons">
                                <a href="update?id=<%= Stu.getId() %>" class="btn btn-warning btn-sm btn-oval">Update</a>
                                <a href="delete?id=<%= Stu.getId() %>" class="btn btn-danger btn-sm btn-oval">Delete</a>
                            </td>
                        </tr>
                        <%
                            }
                        %>
                    </tbody>
                </table>

                <%
                    }
                %>

            </div>
        </div>
    </div>

    <!-- Bootstrap JS and dependencies (Optional, if you need JS features) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
