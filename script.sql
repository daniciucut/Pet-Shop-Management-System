USE [D:\MTP-PROJECT\PET SHOP MANAGEMENT SYSTEM\DBPETSHOP.MDF]
GO
/****** Object:  Table [dbo].[tbCash]    Script Date: 6/1/2024 3:11:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbCash](
	[cashid] [int] IDENTITY(1,1) NOT NULL,
	[transno] [varchar](15) NULL,
	[pcode] [varchar](10) NOT NULL,
	[pname] [varchar](50) NULL,
	[qty] [int] NULL,
	[price] [decimal](18, 2) NOT NULL,
	[total] [decimal](18, 2) NULL,
	[cid] [varchar](10) NULL,
	[cashier] [varchar](20) NULL,
 CONSTRAINT [PK_tbCash] PRIMARY KEY CLUSTERED 
(
	[cashid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbCustomer]    Script Date: 6/1/2024 3:11:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbCustomer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[address] [varchar](100) NULL,
	[phone] [varchar](20) NULL,
 CONSTRAINT [PK_tbCustomer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbProduct]    Script Date: 6/1/2024 3:11:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbProduct](
	[pcode] [int] IDENTITY(1,1) NOT NULL,
	[pname] [varchar](50) NOT NULL,
	[ptype] [varchar](50) NOT NULL,
	[pcategory] [varchar](50) NOT NULL,
	[pqty] [int] NOT NULL,
	[pprice] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_tbProduct] PRIMARY KEY CLUSTERED 
(
	[pcode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbUser]    Script Date: 6/1/2024 3:11:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbUser](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[address] [varchar](50) NOT NULL,
	[phone] [nchar](10) NOT NULL,
	[role] [varchar](50) NOT NULL,
	[dob] [date] NOT NULL,
	[password] [varchar](50) NULL,
 CONSTRAINT [PK_tbUser] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
