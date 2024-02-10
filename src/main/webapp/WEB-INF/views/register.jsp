<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BudgetBuddy - Register</title>
    <style>
		body {
		    background-image: url('/images/Budget-Calculator management.webp');
		    background-size: cover;
		    background-position: center;
		    background-attachment: fixed;
		}

        .container {
            text-align: center;
            margin: 50px auto;
            max-width: 400px;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
        }
		header {
		    background-color: #333;
		    color: white;
		    padding: 10px;
		    text-align: center;
		}

        h1 {
            margin-top: 0;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 10px;
            font-weight: bold;
        }

        input[type="text"],
        input[type="email"],
        input[type="password"] {
            width: 95%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        button {
            padding: 10px 20px;
            background-color: #007acc;
            color: white;
            border: none;
            cursor: pointer;
            border-radius: 3px;
        }

        button:hover {
            background-color: #0056b3;
        }

        p {
            margin-top: 20px;
            font-size: 14px;
        }
		footer {
		    background-color: #333;
		    color: white;
		    text-align: center;
		    padding: 10px;
		    position: absolute;
		    bottom: 0;
		    width: 100%;
		}
		header div {
		    font-size: 24px; 
		    font-weight: bold;
		    margin-right: 10px; 
		    color: white;
		}
		nav ul {
		    list-style-type: none;
		    margin: 0;
		    padding: 0;
		    display: flex;
		    justify-content: center;
		    align-items: center;
		}

		nav ul li {
		    margin: 0 20px;
		}

		nav ul li a {
		    color: white;
		    text-decoration: none;
		    font-weight: bold;
		    font-size: 18px;
		}

		nav ul li a:hover {
		    text-decoration: underline;
		}
		
	
		
    </style>
</head>
<header>
    <nav>
        <ul>
            <li><a href="/budgetbuddy" style="color: white;">Home</a></li>
            <li><a href="/budgetbuddy/login" style="color: white;">Login</a></li>
            <li><a href="/budgetbuddy/register" style="color: white;">Register</a></li>
        </ul>
    </nav>
</header>

<body>
    <div class="container">
        <h1>Register for budgetbuddy</h1>
        <form action="/budgetbuddy/register" method="post" onsubmit="return isValidationCheckPassed()">
            <div class="form-group">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" required>
            </div>

            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
            </div>

            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
            </div>

            <div class="form-group">
                <label for="confirm_password">Confirm Password:</label>
                <input type="password" id="confirm_password" name="confirm_password" required>
            </div>

            <button type="submit">Register</button>
        </form>
        <p>Already have an account? <a href="/budgetbuddy/login">Login here</a></p>
    </div>

    <!-- Add your JavaScript and jQuery scripts here -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        function isValidationCheckPassed() {
            // Your validation logic here
        }

        $(document).ready(function() {
            // Your AJAX submission logic here
        });
    </script>
</body>
<footer>
    &copy; 2024 BudgetBuddy
</footer>
</html>
