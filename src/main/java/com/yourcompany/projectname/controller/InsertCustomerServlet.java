package com.yourcompany.projectname.controller;

import com.yourcompany.projectname.dao.InsertCustomerDAO;
import com.yourcompany.projectname.pojo.InsertPojo;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class InsertCustomerServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get form data
        String customerName = request.getParameter("customerName");
        String totalLifetimeValueStr = request.getParameter("totalLifetimeValue");
        String averageOrderValueStr = request.getParameter("averageOrderValue");
        String customerSegmentCategory = request.getParameter("customerSegmentCategory");

        // Initialize the POJO
        InsertPojo insertPojo = new InsertPojo();
        insertPojo.setCustomerName(customerName);
        insertPojo.setTotalLifetimeValue(Double.parseDouble(totalLifetimeValueStr));
        insertPojo.setAverageOrderValue(Double.parseDouble(averageOrderValueStr));
        insertPojo.setCustomerSegmentCategory(customerSegmentCategory);

        // DAO logic to insert the customer
        InsertCustomerDAO dao = new InsertCustomerDAO();
        boolean isInserted = dao.insertCustomer(insertPojo);

        if (isInserted) {
            // Forward to show.jsp if the insertion is successful
            RequestDispatcher dispatcher = request.getRequestDispatcher("home.jsp");
            dispatcher.forward(request, response);
        } else {
            // Handle failure case (you can redirect to an error page or show a message)
            response.getWriter().println("Error inserting customer record.");
        }
    }
}
