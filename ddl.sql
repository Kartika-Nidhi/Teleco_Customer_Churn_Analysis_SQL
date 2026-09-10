
USE eda_project_db;

-- Central Customer Dimension Table
CREATE TABLE customers (
    customerid VARCHAR(50) PRIMARY KEY,
    gender VARCHAR(20),
    seniorcitizen INT,
    partner VARCHAR(10),
    dependents VARCHAR(10)
);

-- Services Table linked via Foreign Key
CREATE TABLE services (
    customerid VARCHAR(50) PRIMARY KEY,
    phoneservice VARCHAR(10),
    multiplelines VARCHAR(20),
    internetservice VARCHAR(20),
    onlinesecurity VARCHAR(20),
    onlinebackup VARCHAR(20),
    deviceprotection VARCHAR(20),
    techsupport VARCHAR(20),
    streamingtv VARCHAR(20),
    streamingmovies VARCHAR(20),
    FOREIGN KEY (customerid) REFERENCES customers(customerid) ON DELETE CASCADE
);

-- Contracts and Billing Table linked via Foreign Key
CREATE TABLE contracts (
    customerid VARCHAR(50) PRIMARY KEY,
    tenure INT,
    contract VARCHAR(20),
    paperlessbilling VARCHAR(10),
    paymentmethod VARCHAR(50),
    monthlycharges DECIMAL(10, 2),
    totalcharges DECIMAL(10, 2),
    churn VARCHAR(10),
    FOREIGN KEY (customerid) REFERENCES customers(customerid) ON DELETE CASCADE
);