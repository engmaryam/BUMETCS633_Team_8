<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BudgetBuddy - Smart Money Management</title>
    <style>
	
			body {
			    font-family: Arial, sans-serif;
			    margin: 0;
			    padding: 0;
			    color: white;
			
	
		}
		body {
		    background-image: url('/images/Budget-Calculator.jpg');
		    background-size: cover;
		    background-position: center;
		    background-attachment: fixed;
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

		.hero {
		    text-align: center;
		    padding: 80px 20px;
		    color: black;
		}

		.hero h1 {
		    font-size: 36px;
		    margin-bottom: 10px;
		}

		.hero p {
		    font-size: 18px;
		    margin-top: 20px;
		}

		.btn-primary {
		    display: inline-block;
		    padding: 10px 30px;
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

		.features {
		    display: flex;
		    justify-content: center;
		    align-items: center;
		    flex-wrap: wrap;
		    margin: 40px 0;
		}

		.feature {
		    text-align: center;
		    margin: 20px;
		    padding: 20px;
		    background-color: rgba(255, 255, 255, 0.8);
		    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
		    border-radius: 10px;
		}

		.feature h2 {
		    font-size: 24px;
		    margin-bottom: 10px;
		    color: #333;
		}

		.feature p {
		    font-size: 16px;
		    color: #666;
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

    <div class="hero">
        <h1>Welcome to BudgetBuddy</h1>
        <p>Your Smart Money Management Solution</p>
        <a href="#" class="btn-primary" id="get-started-button">Get Started</a>
    </div>

    <section class="features">
        <div class="feature">
            <h2>Money Management Made Easy</h2>
            <p>Experience the simplicity of BudgetBuddy, where you can effortlessly track your expenses, set savings goals, and gain valuable insights into your finances through beautiful charts and graphs. Take control of your financial journey with our user-friendly app designed to make managing your money a breeze.</p>
        </div>
    </section>

    <footer>
        &copy; 2024 BudgetBuddy.
    </footer>
</body>

</html>
