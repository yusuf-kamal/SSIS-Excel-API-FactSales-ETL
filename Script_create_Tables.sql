--- All of Tables i created it from SSIS (New) so i did a script from SQL shown the Tables and Meta Data 
--- and for api tables  i controlled the data type and the length of Meta data from the SSIS From Output Columns
---to be fit with the C# Script  in Data Type and Length

USE [SalesDW]
GO
/****** Object:  Table [dbo].[API_Product_Reviews]    Script Date: 28/07/2026 2:05:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[API_Product_Reviews](
	[ReviewID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[Rating] [int] NULL,
	[Comment] [nvarchar](1000) NULL,
	[ReviewDate] [datetime2](7) NULL,
	[ReviewerName] [nvarchar](255) NULL,
	[ReviewerEmail] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ReviewID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[API_Products]    Script Date: 28/07/2026 2:05:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[API_Products](
	[ProductID] [int] NOT NULL,
	[Title] [varchar](255) NULL,
	[Description] [varchar](max) NULL,
	[Category] [varchar](100) NULL,
	[Price] [decimal](18, 2) NULL,
	[DiscountPercentage] [decimal](5, 2) NULL,
	[Rating] [decimal](3, 2) NULL,
	[Stock] [int] NULL,
	[Brand] [varchar](100) NULL,
	[SKU] [varchar](100) NULL,
	[Weight] [int] NULL,
	[WarrantyInformation] [varchar](255) NULL,
	[ShippingInformation] [varchar](255) NULL,
	[AvailabilityStatus] [varchar](100) NULL,
	[ReturnPolicy] [varchar](255) NULL,
	[MinimumOrderQuantity] [int] NULL,
 CONSTRAINT [PK__API_Prod__B40CC6ED1CFE28EE] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactSales]    Script Date: 28/07/2026 2:05:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactSales](
	[OrderID] [int] NULL,
	[CustomerID] [int] NULL,
	[ProductID] [int] NULL,
	[Quantity] [numeric](28, 0) NULL,
	[OrderDate] [datetime] NULL,
	[BranchID] [int] NULL,
	[ProductName] [nvarchar](255) NULL,
	[CategoryID] [int] NULL,
	[UnitPrice] [decimal](10, 2) NULL,
	[CategoryName] [nvarchar](100) NULL,
	[CustomerName] [nvarchar](255) NULL,
	[BranchName] [nvarchar](100) NULL,
	[LineTotal] [decimal](14, 2) NULL
) ON [PRIMARY]
GO


/****** Object:  Table [dbo].[Rejected_Orders]    Script Date: 28/07/2026 2:05:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rejected_Orders](
	[OrderID] [varchar](50) NULL,
	[CustomerID] [varchar](50) NULL,
	[ProductID] [varchar](50) NULL,
	[Quantity] [varchar](50) NULL,
	[OrderDate] [varchar](50) NULL,
	[BranchID] [varchar](50) NULL,
	[ErrorCode] [int] NULL,
	[ErrorColumn] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sales_Summary_By_Branch_Category]    Script Date: 28/07/2026 2:05:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sales_Summary_By_Branch_Category](
	[BranchID] [int] NULL,
	[CategoryID] [int] NULL,
	[CategoryName] [nvarchar](100) NULL,
	[BranchName] [nvarchar](100) NULL,
	[TotalRevenue] [decimal](14, 2) NULL,
	[OrderSizeCategory] [nvarchar](7) NULL,
	[OrderDate] [datetime] NULL,
	[AvgPricePerUnit] [decimal](10, 2) NULL,
	[TotalQuantity] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stg_Branches]    Script Date: 28/07/2026 2:05:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stg_Branches](
	[BranchID] [int] NULL,
	[BranchName] [nvarchar](100) NULL,
	[City] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stg_Categories]    Script Date: 28/07/2026 2:05:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stg_Categories](
	[CategoryID] [int] NULL,
	[CategoryName] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stg_Customers]    Script Date: 28/07/2026 2:05:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stg_Customers](
	[CustomerID] [int] NULL,
	[CustomerName] [nvarchar](255) NULL,
	[Gender] [nvarchar](50) NULL,
	[City] [nvarchar](100) NULL,
	[JoinDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stg_Orders]    Script Date: 28/07/2026 2:05:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stg_Orders](
	[OrderID] [int] NULL,
	[CustomerID] [int] NULL,
	[ProductID] [int] NULL,
	[Quantity] [decimal](28, 0) NULL,
	[OrderDate] [datetime] NULL,
	[BranchID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stg_Products]    Script Date: 28/07/2026 2:05:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stg_Products](
	[ProductID] [int] NULL,
	[ProductName] [nvarchar](255) NULL,
	[CategoryID] [int] NULL,
	[UnitPrice] [decimal](10, 2) NULL
) ON [PRIMARY]
GO
