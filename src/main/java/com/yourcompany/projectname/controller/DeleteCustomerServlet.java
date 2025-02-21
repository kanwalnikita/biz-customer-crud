package com.yourcompany.projectname.controller;

import com.yourcompany.projectname.pojo.DeletePojo;
import com.yourcompany.projectname.dao.DeleteCustomerDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class DeleteCustomerServlet extends HttpServlet {
    private DeleteCustomerDAO deleteCustomerDAO;

    @Override
    public void init() throws ServletException {
        deleteCustomerDAO = new DeleteCustomerDAO();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Retrieve CustomerID from the form
        int customerID = Integer.parseInt(request.getParameter("customerID"));

        // Use the POJO
        DeletePojo deletePojo = new DeletePojo();
        deletePojo.setCustomerID(customerID);

        // Perform the deletion
        boolean isDeleted = deleteCustomerDAO.deleteCustomer(deletePojo.getCustomerID());

        // Forward to the appropriate page based on the outcome
        if (isDeleted) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("home.jsp");
            dispatcher.forward(request, response);
        } else {
            response.getWriter().println("Error: Unable to delete the customer.");
        }
    }
}
