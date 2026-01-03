-- 1. Create the Database
CREATE DATABASE EcommerceProject;
GO
USE EcommerceProject;

-- 2. Create the Table
CREATE TABLE SalesOrders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10, 2),
    Category VARCHAR(50)
);

-- 3. Insert Dummy Data (The "Noob-friendly" way)
INSERT INTO SalesOrders VALUES 
(1, 101, '2025-01-10', 500.00, 'Electronics'),
(2, 102, '2025-01-15', 150.00, 'Home'),
(3, 101, '2025-02-10', 700.00, 'Electronics'),
(4, 103, '2025-02-20', 200.00, 'Fashion'),
(5, 104, '2025-03-05', 1200.00, 'Electronics'),
(6, 102, '2025-03-12', 300.00, 'Home'),
(7, 101, '2025-03-15', 50.00, 'Electronics');