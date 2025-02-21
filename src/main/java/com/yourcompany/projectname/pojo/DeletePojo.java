package com.yourcompany.projectname.pojo;

public class DeletePojo {
    private int customerID;

    // Default constructor
    public DeletePojo() {
    }

    // Parameterized constructor
    public DeletePojo(int customerID) {
        this.customerID = customerID;
    }

    // Getter and Setter methods
    public int getCustomerID() {
        return customerID;
    }

    public void setCustomerID(int customerID) {
        this.customerID = customerID;
    }

    // Optional: Override toString method for debugging purposes
    @Override
    public String toString() {
        return "DeletePojo{" +
                "customerID=" + customerID +
                '}';
    }
}
