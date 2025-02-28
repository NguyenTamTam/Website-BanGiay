
USE [shopgiay-myshoes]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 4/12/2021 3:07:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Fullname] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Authorities]    Script Date: 4/12/2021 3:07:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authorities](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[RoleId] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_UserRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Categories]    Script Date: 4/12/2021 3:07:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [char](4) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 4/12/2021 3:07:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[OrderId] [bigint] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orders]    Script Date: 4/12/2021 3:07:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[Address] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Products]    Script Date: 4/12/2021 3:07:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Image] [nvarchar](50) NOT NULL,
	[Price] [float] NOT NULL,
	[CreateDate] [date] NOT NULL,
	[Available] [bit] NOT NULL,
	[CategoryId] [char](4) NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 4/12/2021 3:07:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [nvarchar](10) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Students]    Script Date: 4/12/2021 3:07:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product-QC](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Image] [nvarchar](50) NOT NULL,
	[Price] [float] NOT NULL,
	[CreateDate] [date] NOT NULL,
	[UploadDate] [date] NOT NULL,
 CONSTRAINT [PK_Product-QC] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'ALFKI', N'alfki', N'Maria Anders', N'alfki@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'ANATR', N'anatr', N'Ana Trujillo', N'anatr@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'ANTON', N'anton', N'Antonio Moreno', N'anton@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'AROUT', N'arout', N'Thomas Hardy', N'arout@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'BERGS', N'bergs', N'Christina Berglund', N'bergs@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'lamlc', N'123', N'lê cao Lâm', N'lamlc@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'tamtam', N'123', N'Nguyễn Tâm Tâm', N'Tamzhy21@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'director', N'123', N'Nguyễn Chí Phèo', N'pheonc@fpt.edu.vn', N'-1407968806.jpg')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'phongtpt', N'123', N'Trần Phạm Thế Phong', N'phongtpt@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'thuan', N'123', N'Nguyễn Anh Thuận', N'phongtpt@gmail.com', N'user.png')

go
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (N'CUST', N'Customers')
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (N'DIRE', N'Directors')
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (N'STAF', N'Staffs')
go
SET IDENTITY_INSERT [dbo].[Authorities] ON 

INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (2, N'ALFKI', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (3, N'ANATR', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (4, N'ANTON', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (5, N'AROUT', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (6, N'BERGS', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (7, N'lamlc', N'DIRE')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (8, N'tamtam', N'DIRE')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (9, N'phongtpt', N'DIRE')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (98, N'director', N'DIRE')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (10, N'thuan', N'STAF')
SET IDENTITY_INSERT [dbo].[Authorities] OFF
go
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'1000', N'Jordan')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'1001', N'Nike')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'1002', N'Adidas')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'1003', N'Yeezy')
go
SET IDENTITY_INSERT [dbo].[Products] ON 
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1001, N'Jordan One', N'sp1.jpg', 190, CAST(0xD6070B00 AS Date), 0, N'1000')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1002, N'Jordan One', N'sp2.jpg', 19, CAST(0xB80B0B00 AS Date), 0, N'1000')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1003, N'Jordan One', N'sp3.jpg', 10, CAST(0x26FE0A00 AS Date), 1, N'1000')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1004, N'Jordan One', N'sp4.jpg', 22, CAST(0x0E020B00 AS Date), 0, N'1000')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1005, N'Jordan One', N'sp5.jpg', 21.35, CAST(0xF7050B00 AS Date), 1, N'1000')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1006, N'Jordan One', N'sp6.jpg', 25, CAST(0xE1090B00 AS Date), 0, N'1000')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1007, N'Jordan One', N'sp7.jpg', 30, CAST(0x0D0C0B00 AS Date), 0, N'1000')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1008, N'Jordan One', N'sp8.jpg', 40, CAST(0x4CFC0A00 AS Date), 0, N'1000')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1009, N'Jordan One', N'sp9.jpg', 97, CAST(0xF80F0B00 AS Date), 0, N'1000')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1010, N'Jordan One', N'sp10.jpg', 31, CAST(0xC91B0B00 AS Date), 0, N'1000')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1011, N'Jordan One', N'sp12.jpg', 21, CAST(0xEC0F0B00 AS Date), 0, N'1000')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1012, N'Jordan One', N'sp14.png', 38, CAST(0xD7130B00 AS Date), 1, N'1000')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1013, N'AIR FORCE 1 NBY', N'AIR-FORCE 1-NBY-NAM.png', 6, CAST(0x97270B00 AS Date), 0, N'1001')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1014, N'AIR FORCE 1 FONTANKA', N'AIR-FORCE-1-FONTANKA-NAM.png', 23.25, CAST(0x90270B00 AS Date), 1, N'1001')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1015, N'AIR FORCE 1 LOW RETRO', N'AIR-FORCE-1-LOW-RETRO-NAM.png', 15.5, CAST(0xAB170B00 AS Date), 0, N'1001')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1016, N'ADIDAS ADISTAR', N'ADIDAS_ADISTAR.png', 17.45, CAST(0x8B1F0B00 AS Date), 0, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1017, N'ADIDAS BOSTON 10', N'ADIDAS_BOSTON_10-(NAM).png', 39, CAST(0x602F0B00 AS Date), 1, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1018, N'ADIDAS GRAND COURT', N'ADIDAS_GRAND_COURT_(NAM).png', 62.5, CAST(0x1F340B00 AS Date), 1, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1019, N'ADIDAS SAMBA CLASSIC', N'ADIDAS-SAMBA-CLASSIC-(NAM).png', 9.2, CAST(0x4A2B0B00 AS Date), 0, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1020, N'ADIDAS ULTRA 4D', N'ADIDAS-ULTRA-4D.png', 81, CAST(0x342F0B00 AS Date), 0, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1021, N'ADIDAS UTRABOOST-4.0 DNA', N'ADIDAS-UTRABOOST-4.0-DNA (NAM).png', 10, CAST(0x1D330B00 AS Date), 0, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1022, N'ADIDAS ZNCHILL LIGHTMOTION', N'ADIDAS-ZNCHILL LIGHTMOTION-(NAM).png', 21, CAST(0xC0300B00 AS Date), 1, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1023, N'ALPHABOOST', N'ALPHABOOST-(NAM).png', 9, CAST(0xAB340B00 AS Date), 1, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1024, N'ASIDAS STAN SMITH', N'ASIDAS-STAN-SMITH-(NAM).png', 4.5, CAST(0xB92F0B00 AS Date), 0, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1025, N'FORUM LOW GREEN ', N'FORUM-LOW-GREEN-(NAM).png', 14, CAST(0x81340B00 AS Date), 0, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1026, N'NEW BALANCE 550 WHITE RED BLACK', N'NEW-BALANCE-550-WHITE-RED-BLACK-(NAM).png', 31.23, CAST(0x49310B00 AS Date), 1, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1027, N'NMD R1 SPEVTOO', N'NMD_R1-SPEVTOO-(NAM).png', 31.23, CAST(0x49310B00 AS Date), 1, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1028, N'NMD R1 V1 SILVER GOLD', N'NMD-R1.V1-SILVER-GOLD-(NAM).png', 31.23, CAST(0x49310B00 AS Date), 1, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1029, N'SOLAR HU NMD', N'SOLAR-HU-NMD-(NAM).png', 31.23, CAST(0x49310B00 AS Date), 1, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1030, N'X9000L4 ADIDAS', N'X9000L4-ADIDAS-(NAM).png', 31.23, CAST(0x49310B00 AS Date), 1, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1031, N'ADIDAS FORUM LOW CL', N'ADIDAS-FORUM-LOW-CL.png', 15.5, CAST(0xAB170B00 AS Date), 0, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1032, N'ADIDAS GALAXY 6 W', N'ADIDAS-GALAXY-6-W-(NU).png', 17.45, CAST(0x8B1F0B00 AS Date), 0, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1033, N'ADIDAS GRADAS CLOUD WHITE', N'ADIDAS-GRADAS-CLOUD-WHITE-(NU).png', 39, CAST(0x602F0B00 AS Date), 1, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1034, N'ADIDAS PUREMOTION', N'ADIDAS-PUREMOTION-(NU).png', 62.5, CAST(0x1F340B00 AS Date), 1, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1035, N'ADIDAS RUN FALCON 3.0', N'ADIDAS-RUN-FALCON-3.0.png', 18, CAST(0x2B340B00 AS Date), 0, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1036, N'DAY JOGGER DASH GREEN LINEN', N'DAY-JOGGER-DASH-GREEN LINEN-(NU).png', 19, CAST(0xCA080B00 AS Date), 0, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1037, N'EGDE LUX 4', N'EGDE-LUX-4-(NU).png', 26, CAST(0xB80C0B00 AS Date), 0, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1038, N'FALCON PINK PURPLE', N'FALCON-PINK-PURPLE-(NU).png', 263.5, CAST(0xAC090B00 AS Date), 0, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1039, N'FALCON W', N'FALCON-W.png', 18, CAST(0x950D0B00 AS Date), 0, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1040, N'FORUM LOW GREEN', N'FORUM-LOW-GREEN-(NU).png', 18.4, CAST(0x1F030B00 AS Date), 0, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1041, N'NMD R1 SPECTOO', N'NMD_R1-SPECTOO-(NU).png', 9.65, CAST(0x0D070B00 AS Date), 0, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1042, N'SN1997 X MARIMEKKO', N'SN1997-X-MARIMEKKO-(NU).png', 14, CAST(0xC6FE0A00 AS Date), 0, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1043, N'ULTRABOOST 20 BLUE BOOST', N'ULTRABOOST-20-BLUE-BOOST-(NU).png', 46, CAST(0xCD070B00 AS Date), 0, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1044, N'ULTRABOOST 20 METALLIC GOLD', N'ULTRABOOST-20-METALLIC-GOLD-(NU).png', 19.45, CAST(0x63FA0A00 AS Date), 0, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1045, N'ULTRABOOST 21', N'ULTRABOOST-21-(NU).png', 9.5, CAST(0xCA160B00 AS Date), 1, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1046, N'AIR JORDAN 1 HI OG', N'AIR-JORDAN-1-HI-OG.png', 12, CAST(0xB81A0B00 AS Date), 0, N'1000')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1047, N'AIR JORDAN 1 LOW', N'AIR-JORDAN-1-LOW.png', 9.5, CAST(0x340A0B00 AS Date), 0, N'1000')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1048, N'AIR JORDAN 1 LOW BLACK AND WHITE', N'AIR-JORDAN-1-LOW-BLACK-AND-WHITE.png', 12.75, CAST(0x1F0E0B00 AS Date), 0, N'1000')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1049, N'AIR JORDAN 1 LOW SE', N'AIR-JORDAN-1-LOW-SE.png', 20, CAST(0x09120B00 AS Date), 0, N'1000')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1050, N'AIR JORDAN 1 MID', N'AIR-JORDAN-1-MID.png', 16.25, CAST(0xF2150B00 AS Date), 0, N'1000')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1051, N'AIR JORDAN 2 LOW', N'AIR-JORDAN-2-LOW.png', 53, CAST(0x4A2A0B00 AS Date), 0, N'1000')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1052, N'AIR JORDAN 2 MID', N'AIR-JORDAN-2-MID.png', 7, CAST(0x00260B00 AS Date), 0, N'1000')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1053, N'AIR JORDAN 4 BLACK', N'AIR-JORDAN-4-BLACK.png', 32.8, CAST(0x092E0B00 AS Date), 0, N'1000')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1054, N'JORDAN 1 HI OG', N'JORDAN-1 HI-OG.png', 7.45, CAST(0xF6310B00 AS Date), 1, N'1000')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1055, N'JORDAN 1-HI ZOOM CMFT', N'JORDAN-1-HI-ZOOM-CMFT.png', 24, CAST(0xC02E0B00 AS Date), 0, N'1000')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1056, N'JORDAN 1 LOW ALUMINUM', N'JORDAN-1-LOW-ALUMINUM.png', 38, CAST(0x8D2E0B00 AS Date), 0, N'1000')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1057, N'JORDAN 1 LOW ELEVATE', N'JORDAN-1-LOW-ELEVATE.png', 19.5, CAST(0x7A320B00 AS Date), 0, N'1000')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1058, N'JORDAN STAY LOYAL 2', N'JORDAN-STAY-LOYAL-2.png', 13.25, CAST(0x87340B00 AS Date), 0, N'1000')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1059, N'NIKE AIR JORDAN 4 PINE GREEN', N'NIKE-AIR-JORDAN-4-PINE-GREEN.png', 55, CAST(0x0C2F0B00 AS Date), 0, N'1000')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1060, N'NIKE DUNK LOW CHICAGO SPLIT', N'NIKE-DUNK-LOW-CHICAGO-SPLIT', 34, CAST(0xF6320B00 AS Date), 0, N'1000')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1061, N'YEEZY 700 V3 SAFFLOWER', N'YEEZY-700-V3-SAFFLOWER.png', 28.5, CAST(0x982E0B00 AS Date), 0, N'1003')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1062, N'YEEZY BOOS 380', N'YEEZY-BOOS-380.png', 49.3, CAST(0x852F0B00 AS Date), 0, N'1003')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1063, N'YEEZY BOOST 350', N'YEEZY-BOOST-350', 43.9, CAST(0x482F0B00 AS Date), 0, N'1003')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1064, N'YEEZY BOOST 350 PIRATE BLACK', N'YEEZY-BOOST-350-PIRATE-BLACK.png', 33.25, CAST(0x65310B00 AS Date), 0, N'1003')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1065, N'YEEZY BOOST 350 V2.1', N'YEEZY-BOOST-350-V2.1.png', 21.05, CAST(0xF82F0B00 AS Date), 0, N'1003')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1066, N'YEEZY BOOST 350 V2.3', N'YEEZY-BOOST-350-V2.3.png', 17, CAST(0xE1330B00 AS Date), 1, N'1003')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1067, N'YEEZY BOOST 350 V2', N'YEEZY-BOOST-350-V2.png', 14, CAST(0x9E330B00 AS Date), 1, N'1003')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1068, N'YEEZY BOOST 350 V2 BLACK RED', N'YEEZY-BOOST-350-V2-BLACK-RED.png', 12.5, CAST(0x9B310B00 AS Date), 0, N'1003')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1069, N'YEEZY BOOST 350 V2 BONE', N'YEEZY-BOOST-350-V2-BONE.png', 36, CAST(0xFC330B00 AS Date), 0, N'1003')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1070, N'YEEZY BOOST 350 V2 DAZZLING BLUE', N'YEEZY-BOOST-350-V2-DAZZLING-BLUE.png', 15, CAST(0x12310B00 AS Date), 0, N'1000')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1071, N'YEEZY BOOST 350 V2 NATURAL', N'YEEZY-BOOST-350-V2-NATURAL.png', 21.5, CAST(0x75080B00 AS Date), 1, N'1003')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1072, N'YEEZY BOOST 350 V2 ONYX', N'YEEZY-BOOST-350-V2-ONYX.png', 34.8, CAST(0x5F0C0B00 AS Date), 0, N'1003')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1073, N'YEEZY BOOST 350 V2 YEEZREEL', N'YEEZY-BOOST-350-V2-YEEZREEL.png', 15, CAST(0xA90B0B00 AS Date), 0, N'1003')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1074, N'YEEZY BOOST 350 VE BELUGA REFLECTIVE', N'YEEZY-BOOST-350-VE-BELUGA-REFLECTIVE.png', 10, CAST(0x660B0B00 AS Date), 0, N'1003')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1075, N'NIKE AIR FORCE 1 07', N'NIKE-AIR-FORCE-1-07-NAM.png', 7.75, CAST(0x880B0B00 AS Date), 0, N'1000')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1076, N'NIKE AIR MAX 2017', N'NIKE-AIR-MAX-2017-NAM.png', 18, CAST(0x0AFA0A00 AS Date), 0, N'1000')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1077, N'NIKE COURT ROYALE', N'NIKE-COURT-ROYALE-NAM.png', 13, CAST(0x27020B00 AS Date), 0, N'1001')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1078, N'NIKE DOWN SHIFTER 12', N'NIKE-DOWN-SHIFTER-12-NAM.png', 19, CAST(0x910D0B00 AS Date), 0, N'1000')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1079, N'NIKE QUEST 4 NAM', N'NIKE-QUEST-4-NAM.png', 97, CAST(0x21150B00 AS Date), 0, N'1000')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1080, N'NIKE REVOLUTION 6 NN', N'NIKE-REVOLUTION-6-NN-NAM.png', 9.5, CAST(0x340A0B00 AS Date), 0, N'1000')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1081, N'NIKE SB ALLEYOOP', N'NIKE-SB-ALLEYOOP-NAM.png', 12.75, CAST(0x1F0E0B00 AS Date), 0, N'1000')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1082, N'ADIDAS GRADAS CLOUDWHITE', N'ADIDAS-GRADAS-CLOUD-WHITE-(NU).png', 13, CAST(0x1F0E0B00 AS Date), 0, N'1001')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1083, N'ADIDAS PUREMOTION', N'ADIDAS-PUREMOTION-(NU).png', 15, CAST(0x1F0E0B00 AS Date), 0, N'1001')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1084, N'AIR MAX EXCEE', N'AIR-MAX-EXCEE-NAM.png', 12, CAST(0x1F0E0B00 AS Date), 0, N'1001')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1085, N'AIR MAX EXCEE', N'AIR-MAX-EXCEE-NAM.png', 16, CAST(0x1F0E0B00 AS Date), 0, N'1001')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1086, N'AIR MAX 90 NAM', N'AIR-MAX-90-NAM.png', 15, CAST(0x1F0E0B00 AS Date), 0, N'1001')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1087, N'AIR FORCE 1 NAM', N'AIR-FORCE-1-NAM1.png', 15, CAST(0x1F0E0B00 AS Date), 0, N'1001')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1088, N'NIKE QUEST 4 NAM', N'NIKE-QUEST-4-NAM.png', 17.2, CAST(0x1F0E0B00 AS Date), 0, N'1001')
SET IDENTITY_INSERT [dbo].[Products] OFF
go
SET IDENTITY_INSERT [dbo].[Orders] ON 
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10249, N'ALFKI', CAST(0x000089B100000000 AS DateTime), N'Luisenstr. 48')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10250, N'ANATR', CAST(0x000089B400000000 AS DateTime), N'Rua do Paço, 67')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10251, N'ANTON', CAST(0x000089B400000000 AS DateTime), N'2, rue du Commerce')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10252, N'AROUT', CAST(0x000089B500000000 AS DateTime), N'Boulevard Tirou, 255')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10253, N'BERGS', CAST(0x000089B600000000 AS DateTime), N'Rua do Paço, 67')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10254, N'lamlc', CAST(0x000089B700000000 AS DateTime), N'Hauptstr. 31')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10255, N'tamtam', CAST(0x000089B800000000 AS DateTime), N'Starenweg 5')
SET IDENTITY_INSERT [dbo].[Orders] OFF
go
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100005, 10249, 1001, 42.4, 40)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100006, 10250, 1002, 7.7, 10)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100009, 10251, 1002, 14, 6)

INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100010, 10252, 1001, 15.6, 15)

INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100011, 10253, 1001, 16.8, 20)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100008, 10254, 1003, 16.8, 15)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100007, 10255, 1003, 42.4, 35)



SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
go

ALTER TABLE [dbo].[Accounts] ADD  CONSTRAINT [DF_Customers_Photo]  DEFAULT (N'Photo.gif') FOR [Photo]
GO
ALTER TABLE [dbo].[OrderDetails] ADD  CONSTRAINT [DF_Order_Details_UnitPrice]  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[OrderDetails] ADD  CONSTRAINT [DF_Order_Details_Quantity]  DEFAULT ((1)) FOR [Quantity]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_OrderDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Image]  DEFAULT (N'Product.gif') FOR [Image]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_UnitPrice]  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_ProductDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Available]  DEFAULT ((1)) FOR [Available]
GO

ALTER TABLE [dbo].[Authorities]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_Roles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Authorities] CHECK CONSTRAINT [FK_UserRoles_Roles]
GO
ALTER TABLE [dbo].[Authorities]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_Users] FOREIGN KEY([Username])
REFERENCES [dbo].[Accounts] ([Username])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Authorities] CHECK CONSTRAINT [FK_UserRoles_Users]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Customers] FOREIGN KEY([Username])
REFERENCES [dbo].[Accounts] ([Username])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Customers]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK3ess0s7i9qs6sim1pf9kxhkpq] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK3ess0s7i9qs6sim1pf9kxhkpq]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã khách hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounts', @level2type=N'COLUMN',@level2name=N'Username'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mật khẩu đăng nhập' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounts', @level2type=N'COLUMN',@level2name=N'Password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Họ và tên' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounts', @level2type=N'COLUMN',@level2name=N'Fullname'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Email' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounts', @level2type=N'COLUMN',@level2name=N'Email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Hình ảnh' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounts', @level2type=N'COLUMN',@level2name=N'Photo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã loại' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên tiếng Việt' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã chi tiết' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã hóa đơn' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'OrderId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã hàng hóa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'ProductId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Đơn giá bán' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Số lượng mua' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'Quantity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã hóa đơn' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã khách hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'Username'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày đặt hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Địa chỉ nhận' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã hàng hóa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên hàng hóa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Hình ảnh' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Image'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Đơn giá' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày sản xuất' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Đang kinh doanh ?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Available'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã loại, FK' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'CategoryId'
GO
