<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #E6E6FA; /* Light lavender background */
            font-weight: bold;
        }
        .container {
            max-width: 500px;
            margin-top: 50px;
        }
        .card {
            border-radius: 8px;
            border: none;
            box-shadow: 10px 10px 10px 10px rgba(175, 197, 204, 0.5); /* Softer shadow */
        }
        .card-header {
            background-color: #6A5ACD; /* Dark lavender header */
            color: #ffffff;
            font-size: 1.5rem;
            text-align: center;
            border-bottom: 2px solid #D8BFD8; /* Lighter lavender border */
        }
        .card-body {
            padding: 2rem;
            background-color: #F5F5FD; /* Light lavender for the card body */
        }
        .form-control {
            border-radius: 0.25rem;
        }
        .btn-primary {
            background-color: #9370DB; /* Medium lavender for the button */
            border: none;
            border-radius: 0.25rem;
            font-size: 1.1rem;
        }
        .btn-primary:hover {
            background-color: #B19CD9; /* Lighter lavender on hover */
        }
        .signup-link {
            text-align: center;
            margin-top: 1rem;
        }
        .signup-link a {
            color: #6A5ACD; /* Matching lavender color for links */
            text-decoration: none;
        }
        .signup-link a:hover {
            color: #483D8B; /* Darker lavender on hover */
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="card">
            <div class="card-header">
                Login
            </div>
            <div class="card-body">
                <form action="login" method="post">
                    <div class="form-group">
                        <label for="username">Username</label>
                        <input type="text" class="form-control" id="username" name="username" required>
                    </div>
                    <div class="form-group">
                        <label for="password">Password</label>
                        <input type="password" class="form-control" id="password" name="password" required>
                    </div>
                    <button type="submit" class="btn btn-primary btn-block">Login</button>
                </form>
                <div class="signup-link">
                    <p>Don't have an account? <a href="signup.jsp">Signup here</a></p>
                </div>
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
