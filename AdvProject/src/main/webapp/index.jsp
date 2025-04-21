<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>Student Registration Table</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #87CEEB; /* Sky blue background */
        }
        .container {
            max-width: 400px;
            margin: auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            background-color: #fff;
            animation: fadeIn 1s ease-in-out;
        }
        label {
            margin-bottom: 5px;
        }
        input[type="text"], input[type="password"], input[type="email"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .error {
            color: red;
        }
        .btn-register {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .btn-register:hover {
            background-color: #0056b3;
        }
        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }
    </style>
    <script>
        function validateForm() {
            let isValid = true;
            const firstName = document.forms["registrationForm"]["firstname"].value;
            const lastName = document.forms["registrationForm"]["lastname"].value;
            const email = document.forms["registrationForm"]["email"].value;
            const password = document.forms["registrationForm"]["password"].value;

            if (firstName === "") {
                document.getElementById("firstNameError").innerText = "First name is required.";
                isValid = false;
            } else {
                document.getElementById("firstNameError").innerText = "";
            }

            if (lastName === "") {
                document.getElementById("lastNameError").innerText = "Last name is required.";
                isValid = false;
            } else {
                document.getElementById("lastNameError").innerText = "";
            }

            if (email === "") {
                document.getElementById("emailError").innerText = "Email is required.";
                isValid = false;
            } else {
                document.getElementById("emailError").innerText = "";
            }

            if (password === "") {
                document.getElementById("passwordError").innerText = "Password is required.";
                isValid = false;
            } else {
                document.getElementById("passwordError").innerText = "";
            }

            return isValid;
        }
    </script>
</head>
<body>
    <h3 class="text-center bold">Registration Form</h3>
    <div class="container">
        <form name="registrationForm" action="add" method="post" id="registrationForm" onsubmit="return validateForm()">
            <h3 class="text-center bold">Student Registration</h3>
            <div class="mb-3">
                <label for="firstName" class="form-label">First Name:</label>
                <input type="text" class="form-control" name="firstname" placeholder="Enter your first name">
                <div id="firstNameError" class="error"></div>
            </div>
            <div class="mb-3">
                <label for="lastName" class="form-label">Last Name:</label>
                <input type="text" class="form-control" name="lastname" placeholder="Enter your last name">
                <div id="lastNameError" class="error"></div>
            </div>
            <div class="mb-3">
                <label for="email" class="form-label">Email:</label>
                <input type="email" class="form-control" name="email" placeholder="Enter your email">
                <div id="emailError" class="error"></div>
            </div>
            <div class="mb-3">
                <label for="password" class="form-label">Password:</label>
                <input type="password" class="form-control" name="password" placeholder="Enter your password">
                <div id="passwordError" class="error"></div>
            </div>
            <button type="submit" class="btn btn-register">Register</button>
        </form>
    </div>
</body>
</html>

