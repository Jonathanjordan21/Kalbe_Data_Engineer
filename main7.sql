use KALBE;

CREATE TABLE Sales (
	sales_id INT PRIMARY KEY,
    sales_amount DECIMAL(10,2),
    quantity_sold INT,
    date_key INT,
    product_key INT,
    customer_key INT,
    location_key INT,
    employee_key INT
);

CREATE TABLE Product (
	product_key INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(50)
);

CREATE TABLE Cust(
	customer_key INT PRIMARY KEY,
    customer_name VARCHAR(50),
    email VARCHAR(100)
);

CREATE TABLE Dates (
	date_key INT PRIMARY KEY,
    calendar_date DATE,
    days INT,
    months INT,
    years INT
);

CREATE TABLE Location (
	location_key INT PRIMARY KEY,
    store_name VARCHAR(255),
    city VARCHAR(100),
    state VARCHAR(50)
);

CREATE TABLE Employee(
	employee_key INT PRIMARY KEY,
    employee_name VARCHAR(255),
    job_title VARCHAR(100)
);