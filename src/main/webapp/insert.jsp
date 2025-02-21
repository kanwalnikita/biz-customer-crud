<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register New Customer</title>
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
        .btn-primary, .btn-danger {
            background-color: #6f42c1; /* Purple */
            border: none;
        }
        .btn-primary:hover, .btn-danger:hover {
            background-color: #5a2d91; /* Darker purple */
        }
        .card-title {
            color: #4a0072; /* Dark purple for title */
        }
        .form-group label {
            font-weight: bold;
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

        <!-- Insert Customer Card -->
        <div class="card">
            <h3 class="card-title text-center">Add New Customer</h3>
            <div class="card-body">
                <form action="insertCustomer" method="post">
                    <!-- Customer Name -->
                    <div class="form-group">
                        <label for="customerName">Customer Name</label>
                        <input type="text" class="form-control" id="customerName" name="customerName" placeholder="Enter Customer Name" required>
                    </div>
                    <!-- Total Lifetime Value -->
                    <div class="form-group">
                        <label for="totalLifetimeValue">Total Lifetime Value</label>
                        <input type="text" class="form-control" id="totalLifetimeValue" name="totalLifetimeValue" placeholder="Enter Total Lifetime Value" required>
                    </div>
                    <!-- Average Order Value -->
                    <div class="form-group">
                        <label for="averageOrderValue">Average Order Value</label>
                        <input type="text" class="form-control" id="averageOrderValue" name="averageOrderValue" placeholder="Enter Average Order Value" required>
                    </div>
                    <!-- Customer Segment Category -->
                    <div class="form-group">
                        <label for="customerSegmentCategory">Customer Segment Category (optional)</label>
                        <select class="form-control" id="customerSegmentCategory" name="customerSegmentCategory">
                            <option value="">Select Category</option>
                            <option value="loyal">Loyal</option>
                            <option value="new">New</option>
                            <option value="at risk">At Risk</option>
                        </select>
                    </div>
                    <!-- Submit Button -->
                    <button type="submit" class="btn btn-success btn-block">Add New Customer</button>
                </form>
            </div>
        </div>

        <!-- Footer -->
        <div class="footer">
            <p>&copy; 2024 Netherlands Copy & Private Limited. All rights reserved.</p>
        </div>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
