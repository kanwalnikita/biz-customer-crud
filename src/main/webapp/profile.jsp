<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Profiles</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f3e6f9; /* Light purple background */
            font-weight: bold;
        }
        .container {
            margin-top: 50px;
        }
        .card {
            background-color: #d8b2f3; /* Light purple card background */
            box-shadow: 10px 10px 10px 10px rgba(128, 0, 128, 0.2); /* Light purple shadow */
        }
        .card-header {
            background-color: #6f42c1; /* Purple header */
            color: white;
            font-size: 1.5rem;
        }
        .btn-secondary {
            background-color: #5a2d91; /* Darker purple */
            border-color: #4b2c7f;
        }
        .btn-secondary:hover {
            background-color: #4b2c7f; /* Darker purple */
            border-color: #3b1e5c;
        }
        .footer {
            margin-top: 30px;
            text-align: center;
            color: #4a0072; /* Dark purple */
            font-size: 14px;
        }
        table {
            margin-top: 20px;
        }
        thead th {
            background-color: #6f42c1; /* Purple header for table */
            color: white;
        }
        tbody tr:nth-child(even) {
            background-color: #e1bee7; /* Light purple for even rows */
        }
    </style>
</head>
<body>
    <div class="container">
        <!-- Back Button -->
        <a href="home.jsp" class="btn btn-secondary mb-3">Back</a>

        <div class="card">
            <div class="card-header text-center">
                View All Customer Profiles
            </div>
            <div class="card-body">
                <%
                    // Fetch and display all customer data
                    Connection conn = null;
                    PreparedStatement stmt = null;
                    ResultSet rs = null;

                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/db", "root", "");
                        String sql = "SELECT * FROM cust"; // Corrected table name
                        stmt = conn.prepareStatement(sql);
                        rs = stmt.executeQuery();

                        if (rs.isBeforeFirst()) {
                %>
                <table class="table table-bordered table-hover">
                    <thead>
                        <tr>
                            <th>Customer ID</th>
                            <th>Customer Name</th>
                            <th>Total Lifetime Value</th>
                            <th>Average Order Value</th>
                            <th>Customer Segment Category</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            while (rs.next()) {
                        %>
                        <tr>
                            <td><%= rs.getInt("CustomerID") %></td>
                            <td><%= rs.getString("CustomerName") %></td>
                            <td><%= rs.getBigDecimal("TotalLifetimeValue") %></td>
                            <td><%= rs.getBigDecimal("AverageOrderValue") %></td>
                            <td><%= rs.getString("CustomerSegmentCategory") != null ? rs.getString("CustomerSegmentCategory") : "N/A" %></td>
                        </tr>
                        <%
                            }
                        %>
                    </tbody>
                </table>
                <%
                        } else {
                %>
                <div class="alert alert-warning text-center" role="alert">
                    No customer records found.
                </div>
                <%
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                %>
                <div class="alert alert-danger text-center" role="alert">
                    An error occurred while retrieving the data.
                </div>
                <%
                    } finally {
                        if (rs != null) rs.close();
                        if (stmt != null) stmt.close();
                        if (conn != null) conn.close();
                    }
                %>
            </div>
        </div>
        <div class="footer">
            <p>&copy; 2024 Your Company. All rights reserved.</p>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
