<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Customer Profile</title>
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

        <!-- Update Profile Card -->
        <div class="card">
            <h3 class="card-title text-center">Update Customer Profile</h3>
            <div class="card-body">
                <form action="updateCustomer" method="post">
                    <!-- Enter CustomerID -->
                    <div class="form-group">
                        <label for="customerID">Customer ID</label>
                        <input type="text" class="form-control" id="customerID" name="customerID" placeholder="Enter Customer ID" required>
                    </div>
                    <!-- Enter fields to be updated (optional) -->
                    <div class="form-group">
                        <label for="customerName">Customer Name (Only enter if to be updated)</label>
                        <input type="text" class="form-control" id="customerName" name="customerName" placeholder="Enter new Customer Name">
                    </div>
                    <div class="form-group">
                        <label for="totalLifetimeValue">Total Lifetime Value (Only enter if to be updated)</label>
                        <input type="text" class="form-control" id="totalLifetimeValue" name="totalLifetimeValue" placeholder="Enter new Total Lifetime Value">
                    </div>
                    <div class="form-group">
                        <label for="averageOrderValue">Average Order Value (Only enter if to be updated)</label>
                        <input type="text" class="form-control" id="averageOrderValue" name="averageOrderValue" placeholder="Enter new Average Order Value">
                    </div>
                    <div class="form-group">
                        <label for="customerSegmentCategory">Customer Segment Category (Only enter if to be updated)</label>
                        <input type="text" class="form-control" id="customerSegmentCategory" name="customerSegmentCategory" placeholder="Enter new Customer Segment Category">
                    </div>
                    <!-- Submit Button -->
                    <button type="submit" class="btn btn-success btn-block">Update Profile</button>
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
