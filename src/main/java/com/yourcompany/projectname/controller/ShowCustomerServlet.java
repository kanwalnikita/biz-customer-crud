package com.yourcompany.projectname.controller;

import com.yourcompany.projectname.pojo.ShowPojo;
import com.yourcompany.projectname.dao.ShowCustomerDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class ShowCustomerServlet extends HttpServlet {
    private ShowCustomerDAO showCustomerDAO;

    @Override
    public void init() throws ServletException {
        showCustomerDAO = new ShowCustomerDAO();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Retrieve CustomerID from the form
        int customerID = Integer.parseInt(request.getParameter("customerID"));

        // Use the POJO
        ShowPojo showPojo = new ShowPojo();
        showPojo.setCustomerID(customerID);

        // Fetch the customer profile
        ShowPojo customerProfile = showCustomerDAO.getCustomerByID(showPojo.getCustomerID());

        // Forward to the appropriate page based on the outcome
        if (customerProfile != null) {
            request.setAttribute("customerProfile", customerProfile);
            RequestDispatcher dispatcher = request.getRequestDispatcher("profile.jsp");
            dispatcher.forward(request, response);
        } else {
            response.getWriter().println("Error: Customer not found.");
        }
    }
}
