<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Dashboard</title>
    <style>
        /* CSS styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('/images/Budget-Calculator management.webp');
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            color: white;
        }
        header {
            background-color: #333;
            color: white;
            padding: 2px;
            text-align: center;
            width: 100%;
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
        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
        }
        h1 {
            text-align: center;
            margin-bottom: 20px;
        }
        .content {
            display: flex;
            flex-direction: row;
            justify-content: space-between;
            background-color: rgba(255, 255, 255, 0.8);
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            color: #333;
        }
        .section {
            flex: 1;
            padding: 20px;
        }
        .section h2 {
            margin-bottom: 10px;
        }
        .btn-primary {
            display: block;
            width: 100%;
            padding: 10px 0;
            background-color: #0052a3;
            color: white;
            border: none;
            cursor: pointer;
            font-size: 18px;
            text-decoration: none;
            margin-top: 20px;
            transition: background-color 0.3s ease;
        }
        .btn-primary:hover {
            background-color: #003366;
        }
    </style>
</head>
<body>
    <header>
        <div>
            BudgetBuddy
        </div>
        <nav>
            <ul>
                <li><a href="/budgetbuddy">Home</a></li>
                <li><a href="/budgetbuddy/login">Login</a></li>
                <li><a href="/budgetbuddy/register">Register</a></li>
            </ul>
        </nav>
    </header>

    <div class="container">
        <h1>User Dashboard</h1>
        <div class="content">
            <div class="section">
                <h2>Welcome, ${username}!</h2>
				
				 <h2>Expense</h2>
                <button class="btn-primary" onclick="addExpense()">Add Expense</button>
            </div>
            <div class="section">
				
			 <h2> .</h2>
				
                <h2>Income</h2>
                <button class="btn-primary" onclick="addIncome()">Add Income</button>
            </div>
        </div>
    </div>

    <script>
        // JavaScript functions to handle button clicks
        function addExpense() {
            // Redirect to the add expense page
            window.location.href = "/budgetbuddy/addExpense";
        }

        function addIncome() {
            // Redirect to the add income page
            window.location.href = "/budgetbuddy/addincome";
        }
    </script>

</body>

<footer>
    &copy; 2024 BudgetBuddy.
</footer>
</html>
