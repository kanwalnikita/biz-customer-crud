package com.yourcompany.projectname.dao;

import com.yourcompany.projectname.pojo.UpdatePojo;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class UpdateCustomerDAO {
    
    public boolean updateCustomer(UpdatePojo updatePojo) {
        boolean isUpdated = false;

        try {
            // Load the MySQL JDBC driver
            Class.forName("com.mysql.jdbc.Driver");

            // Establish connection to the database
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db", "root", "");

            // Construct the dynamic SQL update query
            StringBuilder query = new StringBuilder("UPDATE cust SET ");
            boolean firstField = true;

            if (updatePojo.getCustomerName() != null && !updatePojo.getCustomerName().isEmpty()) {
                query.append("CustomerName = ?");
                firstField = false;
            }
            if (updatePojo.getTotalLifetimeValue() > 0) {
                if (!firstField) query.append(", ");
                query.append("TotalLifetimeValue = ?");
                firstField = false;
            }
            if (updatePojo.getAverageOrderValue() > 0) {
                if (!firstField) query.append(", ");
                query.append("AverageOrderValue = ?");
                firstField = false;
            }
            if (updatePojo.getCustomerSegmentCategory() != null && !updatePojo.getCustomerSegmentCategory().isEmpty()) {
                if (!firstField) query.append(", ");
                query.append("CustomerSegmentCategory = ?");
            }
            
            query.append(" WHERE CustomerID = ?");

            PreparedStatement pst = con.prepareStatement(query.toString());

            int paramIndex = 1;

            if (updatePojo.getCustomerName() != null && !updatePojo.getCustomerName().isEmpty()) {
                pst.setString(paramIndex++, updatePojo.getCustomerName());
            }
            if (updatePojo.getTotalLifetimeValue() > 0) {
                pst.setDouble(paramIndex++, updatePojo.getTotalLifetimeValue());
            }
            if (updatePojo.getAverageOrderValue() > 0) {
                pst.setDouble(paramIndex++, updatePojo.getAverageOrderValue());
            }
            if (updatePojo.getCustomerSegmentCategory() != null && !updatePojo.getCustomerSegmentCategory().isEmpty()) {
                pst.setString(paramIndex++, updatePojo.getCustomerSegmentCategory());
            }

            pst.setInt(paramIndex, updatePojo.getCustomerID());

            // Execute the update query
            int rowsAffected = pst.executeUpdate();
            if (rowsAffected > 0) {
                isUpdated = true;
            }

            // Close the connection
            pst.close();
            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return isUpdated;
    }
}
