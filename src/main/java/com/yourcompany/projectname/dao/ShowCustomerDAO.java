package com.yourcompany.projectname.dao;

import com.yourcompany.projectname.pojo.ShowPojo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ShowCustomerDAO {

    private String jdbcURL = "jdbc:mysql://localhost:3306/db"; // Update with your database URL
    private String jdbcUsername = "root"; // Update with your MySQL username
    private String jdbcPassword = ""; // Update with your MySQL password
    private String jdbcDriver = "com.mysql.jdbc.Driver"; // Update if needed based on your MySQL version

    private static final String SELECT_SQL = "SELECT * FROM cust WHERE CustomerID = ?";

    public ShowCustomerDAO() {
        try {
            // Load the JDBC driver
            Class.forName(jdbcDriver);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public ShowPojo getCustomerByID(int customerID) {
        ShowPojo customer = null;

        try (Connection connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_SQL)) {

            preparedStatement.setInt(1, customerID);

            ResultSet rs = preparedStatement.executeQuery();

            // Process the ResultSet object
            if (rs.next()) {
                customer = new ShowPojo();
                customer.setCustomerID(rs.getInt("CustomerID"));
                customer.setCustomerName(rs.getString("CustomerName"));
                customer.setTotalLifetimeValue(rs.getDouble("TotalLifetimeValue"));
                customer.setAverageOrderValue(rs.getDouble("AverageOrderValue"));
                customer.setCustomerSegmentCategory(rs.getString("CustomerSegmentCategory"));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return customer;
    }
}
