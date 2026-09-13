CREATE DATABASE SalesDW;
GO
USE SalesDW;
GO





SELECT * FROM dbo.Stg_Orders SO 
SELECT * FROM dbo.Stg_Products SP
SELECT * FROM dbo.Stg_Branches SB
SELECT * FROM dbo.Stg_Customers SC
SELECT * FROM dbo.Stg_Categories SC


--TRUNCATE TABLE [dbo].[Stg_Products];
--TRUNCATE TABLE [dbo].[Stg_Orders];
--TRUNCATE TABLE [dbo].[Stg_Branches];
--TRUNCATE TABLE [dbo].[Stg_Customers];
--TRUNCATE TABLE [dbo].[Stg_Categories];


SELECT COUNT(*) FROM dbo.Stg_Products;
SELECT COUNT(*) FROM dbo.Stg_Customers;
SELECT COUNT(*) FROM dbo.Stg_Categories;
SELECT COUNT(*) FROM dbo.Stg_Branches;



ALTER TABLE dbo.Stg_Products
    ALTER COLUMN UnitPrice DECIMAL(10,2) NULL;




SELECT * FROM   dbo.FactSales FS


SELECT BranchID, BranchName, CategoryID, CategoryName, OrderDate, Quantity, LineTotal
FROM dbo.FactSales;


SELECT * FROM dbo.Rejected_Orders RO



SELECT * FROM  Sales_Summary_By_Branch_Category


--TRUNCATE TABLE Sales_Summary_By_Branch_Category;




SELECT * FROM dbo.API_Products AP;
SELECT * FROM dbo.API_Product_Reviews APR; 

TRUNCATE TABLE dbo.API_Product_Reviews;
TRUNCATE TABLE dbo.API_Products;






