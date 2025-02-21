package com.yourcompany.projectname.pojo;

public class ShowPojo {
    private int customerID;
    private String customerName;
    private double totalLifetimeValue;
    private double averageOrderValue;
    private String customerSegmentCategory;

    // Default constructor
    public ShowPojo() {
    }

    // Getter and Setter methods
    public int getCustomerID() {
        return customerID;
    }

    public void setCustomerID(int customerID) {
        this.customerID = customerID;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public double getTotalLifetimeValue() {
        return totalLifetimeValue;
    }

    public void setTotalLifetimeValue(double totalLifetimeValue) {
        this.totalLifetimeValue = totalLifetimeValue;
    }

    public double getAverageOrderValue() {
        return averageOrderValue;
    }

    public void setAverageOrderValue(double averageOrderValue) {
        this.averageOrderValue = averageOrderValue;
    }

    public String getCustomerSegmentCategory() {
        return customerSegmentCategory;
    }

    public void setCustomerSegmentCategory(String customerSegmentCategory) {
        this.customerSegmentCategory = customerSegmentCategory;
    }

    // Optional: Override toString method for debugging purposes
    @Override
    public String toString() {
        return "ShowPojo{" +
                "customerID=" + customerID +
                ", customerName='" + customerName + '\'' +
                ", totalLifetimeValue=" + totalLifetimeValue +
                ", averageOrderValue=" + averageOrderValue +
                ", customerSegmentCategory='" + customerSegmentCategory + '\'' +
                '}';
    }
}
