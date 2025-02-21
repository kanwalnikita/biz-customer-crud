<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete Customer</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f2e6ff; /* Light purple background */
        }
        .container {
            margin-top: 50px;
            max-width: 600px;
        }
        .card {
            padding: 30px;
            box-shadow: 10px 10px 10px 10px rgba(128, 0, 128, 0.2); /* Light purple shadow */
            border: none;
            background: #e6d0f5; /* Light purple shade for card */
        }
        .card-title {
            color: #4a0072; /* Dark purple for title */
        }
        .btn-primary, .btn-danger {
            background-color: #6f42c1; /* Purple */
            border: none;
        }
        .btn-primary:hover, .btn-danger:hover {
            background-color: #5a2d91; /* Darker purple */
        }
        .footer {
            margin-top: 30px;
            text-align: center;
            color: #4a0072; /* Dark purple */
            font-size: 14px;
        }
    </style>
</head>
<body>
    <div class="container">
        <!-- Back Button -->
        <a href="home.jsp" class="btn btn-primary mb-3">&larr; Back</a>

        <!-- Delete Card -->
        <div class="card">
            <h3 class="card-title text-center">Delete Customer Record</h3>
            <form action="deleteCustomer" method="post">
                <div class="form-group">
                    <label for="customerID">Customer ID</label>
                    <input type="number" class="form-control" id="customerID" name="customerID" placeholder="Enter Customer ID" required>
                </div>
                <button type="submit" class="btn btn-danger btn-block">Delete Customer</button>
            </form>
        </div>

        <!-- Footer -->
        <div class="footer">
            <p>&copy; 2024 Your Company Name. All rights reserved.</p>
        </div>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
