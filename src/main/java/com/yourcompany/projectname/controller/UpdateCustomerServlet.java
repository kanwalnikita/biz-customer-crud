package com.yourcompany.projectname.controller;

import com.yourcompany.projectname.dao.UpdateCustomerDAO;
import com.yourcompany.projectname.pojo.UpdatePojo;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class UpdateCustomerServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get the form data
        int customerID = Integer.parseInt(request.getParameter("customerID"));
        String customerName = request.getParameter("customerName");
        String totalLifetimeValueStr = request.getParameter("totalLifetimeValue");
        String averageOrderValueStr = request.getParameter("averageOrderValue");
        String customerSegmentCategory = request.getParameter("customerSegmentCategory");

        // Initialize the POJO
        UpdatePojo updatePojo = new UpdatePojo();
        updatePojo.setCustomerID(customerID);

        if (customerName != null && !customerName.trim().isEmpty()) {
            updatePojo.setCustomerName(customerName);
        }
        if (totalLifetimeValueStr != null && !totalLifetimeValueStr.trim().isEmpty()) {
            updatePojo.setTotalLifetimeValue(Double.parseDouble(totalLifetimeValueStr));
        }
        if (averageOrderValueStr != null && !averageOrderValueStr.trim().isEmpty()) {
            updatePojo.setAverageOrderValue(Double.parseDouble(averageOrderValueStr));
        }
        if (customerSegmentCategory != null && !customerSegmentCategory.trim().isEmpty()) {
            updatePojo.setCustomerSegmentCategory(customerSegmentCategory);
        }

        // DAO logic to update the customer profile
        UpdateCustomerDAO dao = new UpdateCustomerDAO();
        boolean isUpdated = dao.updateCustomer(updatePojo);

        if (isUpdated) {
            // Forward to show.jsp if the update is successful
            request.setAttribute("customerProfile", updatePojo); // Assuming show.jsp uses this attribute to display details
            RequestDispatcher dispatcher = request.getRequestDispatcher("home.jsp");
            dispatcher.forward(request, response);
        } else {
            // Handle failure case (you can redirect to an error page or show a message)
            response.getWriter().println("Error updating customer profile.");
        }
    }
}
