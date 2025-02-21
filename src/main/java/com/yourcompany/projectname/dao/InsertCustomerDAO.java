package com.yourcompany.projectname.dao;

import com.yourcompany.projectname.pojo.InsertPojo;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class InsertCustomerDAO {

    public boolean insertCustomer(InsertPojo insertPojo) {
        boolean isInserted = false;

        try {
            // Load the MySQL JDBC driver
            Class.forName("com.mysql.jdbc.Driver");

            // Establish connection to the database
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db", "root", "");

            // SQL insert query
            String query = "INSERT INTO cust (CustomerName, TotalLifetimeValue, AverageOrderValue, CustomerSegmentCategory) VALUES (?, ?, ?, ?)";

            PreparedStatement pst = con.prepareStatement(query);

            // Set values from the POJO
            pst.setString(1, insertPojo.getCustomerName());
            pst.setDouble(2, insertPojo.getTotalLifetimeValue());
            pst.setDouble(3, insertPojo.getAverageOrderValue());
            pst.setString(4, insertPojo.getCustomerSegmentCategory());

            // Execute the insert query
            int rowsAffected = pst.executeUpdate();
            if (rowsAffected > 0) {
                isInserted = true;
            }

            // Close the connection
            pst.close();
            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return isInserted;
    }
}
