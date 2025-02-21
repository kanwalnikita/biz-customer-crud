package com.yourcompany.projectname.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class DeleteCustomerDAO {

    private String jdbcURL = "jdbc:mysql://localhost:3306/db"; // Update with your database URL
    private String jdbcUsername = "root"; // Update with your MySQL username
    private String jdbcPassword = ""; // Update with your MySQL password
    private String jdbcDriver = "com.mysql.jdbc.Driver"; // Update if needed based on your MySQL version

    private static final String DELETE_SQL = "DELETE FROM cust WHERE CustomerID = ?";

    public DeleteCustomerDAO() {
        try {
            // Load the JDBC driver
            Class.forName(jdbcDriver);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public boolean deleteCustomer(int customerID) {
        boolean rowDeleted = false;

        try (Connection connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
             PreparedStatement preparedStatement = connection.prepareStatement(DELETE_SQL)) {

            preparedStatement.setInt(1, customerID);

            rowDeleted = preparedStatement.executeUpdate() > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return rowDeleted;
    }
}
