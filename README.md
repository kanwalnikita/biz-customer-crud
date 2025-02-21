This project is a Customer Management System built using Java (JSP, Servlets, MVC Architecture), MySQL, and JDBC. It allows users to perform CRUD (Create, Read, Update, Delete) operations on customer data stored in a MySQL database. The project follows the MVC (Model-View-Controller) design pattern to ensure a structured and scalable approach.
Features
•	Add Customers: Users can add new customers to the system.
•	View Customers: Displays a list of all registered customers.
•	Update Customers: Allows updating customer details.
•	Delete Customers: Enables removal of customer records.
•	User Authentication: Login and signup functionality.
•	Database Connectivity: Uses MySQL as the database and JDBC for interaction.
Database Structure
The application interacts with a MySQL database containing a table named customers_module. The structure includes fields like:
•	id (Primary Key, Auto Increment)
•	name (VARCHAR)
•	email (VARCHAR, Unique)
•	phone (VARCHAR)
•	address (TEXT)
•	created_at (TIMESTAMP)
Technologies Used
•	Java (JSP & Servlets) for backend logic.
•	MySQL for database management.
•	JDBC for database interaction.
•	Apache Tomcat as the server.
•	HTML, CSS, JSP for frontend.
Setting Up the Project
1. Prerequisites
•	Install JDK (Java Development Kit)
•	Install Apache Tomcat Server
•	Install MySQL Database Server
•	Install Eclipse/IntelliJ IDEA
•	Add the required JAR files (mysql-connector-java-5.1.47-bin.jar, servlet-api.jar) in the Build Path:
o	Eclipse: Right-click project > Build Path > Configure Build Path > Add External JARs > Select JAR files > Apply & Close
2. Clone the Repository
git clone https://github.com/kanwalnikita/biz-customer-crud.git
3. Database Configuration
Create a MySQL database and import the provided SQL file:
CREATE DATABASE customers_db;
USE customers_db;
CREATE TABLE customers_module (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    phone VARCHAR(20) NOT NULL,
    address TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
4. Running the Application
•	Import the project into Eclipse
•	Configure Tomcat Server
•	Run the project as a Dynamic Web Application
•	Access via http://localhost:8080/customers_module/
MVC Architecture Breakdown
1.	Model (DAO & POJO)
o	DAO (Data Access Object) classes handle database operations.
o	POJO (Plain Old Java Object) classes represent data models.
2.	View (JSP Pages)
o	JSP files are used for displaying customer data and user interactions.
3.	Controller (Servlets)
o	Servlets process user requests and interact with DAO to fetch/update data.

