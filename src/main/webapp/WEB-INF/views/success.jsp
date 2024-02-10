<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Success Page</title>
    <style>
        body {
            text-align: center;
            padding: 50px;
        }
        .success-message {
            color: green;
            font-size: 18px;
            margin-bottom: 20px;
        }
        .close-button {
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <div class="success-message">
        <p>Congratulations! Your registration was successful.</p>
    </div>
    <button class="close-button" onclick="redirectToHomePage()">Close</button>

    <script>
        function redirectToHomePage() {
            // You can customize this URL based on your home page URL
            window.location.href = "/";
        }
    </script>
</body>
</html>
