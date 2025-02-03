CREATE DATABASE CompanyDB;
GO  -- 'GO' is a batch separator used in SSMS

USE CompanyDB;
GO

CREATE TABLE Employees (
    ID INT IDENTITY(1,1) PRIMARY KEY,  -- Auto-incrementing ID
    Name NVARCHAR(50) NOT NULL,        -- Unicode string (Use NVARCHAR for internationalization)
    Department NVARCHAR(50) NULL,      -- Nullable column
    Salary DECIMAL(10,2) CHECK (Salary > 0) -- Constraint to ensure positive salary
);
GO

INSERT INTO Employees (Name, Department, Salary)
VALUES 
    ('Alice', 'HR', 50000.00),
    ('Bob', 'IT', 60000.00),
    ('Charlie', 'IT', 70000.00),
    ('David', 'Finance', 55000.00),
    ('Eve', 'HR', 52000.00);
GO

SELECT * FROM Employees;
GO




