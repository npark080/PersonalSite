IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND type in (N'U'))
ALTER TABLE [dbo].[Products] DROP CONSTRAINT IF EXISTS [FK_Products_Suppliers]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND type in (N'U'))
ALTER TABLE [dbo].[Products] DROP CONSTRAINT IF EXISTS [FK_Products_Categories]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Orders]') AND type in (N'U'))
ALTER TABLE [dbo].[Orders] DROP CONSTRAINT IF EXISTS [FK_Orders_Users]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrderDetails]') AND type in (N'U'))
ALTER TABLE [dbo].[OrderDetails] DROP CONSTRAINT IF EXISTS [FK_OrderDetails_Products]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrderDetails]') AND type in (N'U'))
ALTER TABLE [dbo].[OrderDetails] DROP CONSTRAINT IF EXISTS [FK_OrderDetails_Orders]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserTokens]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetUserTokens] DROP CONSTRAINT IF EXISTS [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT IF EXISTS [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT IF EXISTS [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetUserLogins] DROP CONSTRAINT IF EXISTS [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetUserClaims] DROP CONSTRAINT IF EXISTS [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetRoleClaims]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetRoleClaims] DROP CONSTRAINT IF EXISTS [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 1/22/2024 4:32:35 PM ******/
DROP TABLE IF EXISTS [dbo].[Users]
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 1/22/2024 4:32:35 PM ******/
DROP TABLE IF EXISTS [dbo].[Suppliers]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 1/22/2024 4:32:35 PM ******/
DROP TABLE IF EXISTS [dbo].[Products]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 1/22/2024 4:32:35 PM ******/
DROP TABLE IF EXISTS [dbo].[Orders]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 1/22/2024 4:32:35 PM ******/
DROP TABLE IF EXISTS [dbo].[OrderDetails]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 1/22/2024 4:32:35 PM ******/
DROP TABLE IF EXISTS [dbo].[Categories]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 1/22/2024 4:32:35 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetUserTokens]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 1/22/2024 4:32:35 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetUsers]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 1/22/2024 4:32:35 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetUserRoles]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 1/22/2024 4:32:35 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetUserLogins]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 1/22/2024 4:32:35 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetUserClaims]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 1/22/2024 4:32:35 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetRoles]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 1/22/2024 4:32:35 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetRoleClaims]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 1/22/2024 4:32:35 PM ******/
DROP TABLE IF EXISTS [dbo].[__EFMigrationsHistory]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 1/22/2024 4:32:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 1/22/2024 4:32:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 1/22/2024 4:32:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 1/22/2024 4:32:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 1/22/2024 4:32:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 1/22/2024 4:32:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 1/22/2024 4:32:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 1/22/2024 4:32:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 1/22/2024 4:32:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](50) NOT NULL,
	[CategoryDescription] [varchar](500) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 1/22/2024 4:32:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderDetailID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Price] [money] NOT NULL,
	[Quantity] [smallint] NULL,
 CONSTRAINT [PK_OrderDetails_1] PRIMARY KEY CLUSTERED 
(
	[OrderDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 1/22/2024 4:32:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [nvarchar](128) NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[ShipToName] [varchar](100) NULL,
	[ShipRegion] [varchar](500) NULL,
	[ShipCity] [varchar](100) NULL,
	[ShipState] [char](2) NULL,
	[ShipZip] [char](5) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 1/22/2024 4:32:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [varchar](200) NOT NULL,
	[Price] [money] NOT NULL,
	[ProductDescription] [varchar](500) NULL,
	[UnitsInStock] [smallint] NOT NULL,
	[Season] [varchar](50) NOT NULL,
	[CategoryID] [int] NOT NULL,
	[SupplierID] [int] NULL,
	[ImageName] [nvarchar](75) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 1/22/2024 4:32:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers](
	[SupplierID] [int] IDENTITY(1,1) NOT NULL,
	[SupplierName] [varchar](100) NOT NULL,
	[Region] [varchar](500) NULL,
	[Address] [varchar](150) NULL,
	[City] [varchar](100) NULL,
	[State] [char](2) NULL,
	[Zip] [char](5) NULL,
	[Phone] [varchar](24) NULL,
 CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED 
(
	[SupplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 1/22/2024 4:32:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [nvarchar](128) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[Region] [varchar](500) NULL,
	[Address] [varchar](150) NULL,
	[City] [varchar](100) NULL,
	[State] [char](2) NULL,
	[Zip] [char](5) NULL,
	[Phone] [varchar](24) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'6.0.24')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'cb58e17b-1124-4c52-bc32-60ee9110e39a', N'Admin', N'ADMIN', N'2167650c-6380-4d33-aba4-476ef6b40bf2')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7b3251a0-04c3-442a-a433-06bf3508ca43', N'cb58e17b-1124-4c52-bc32-60ee9110e39a')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'53e3a5c8-46cc-4ae1-8e71-584ee573da3a', N'customer@email.com', N'CUSTOMER@EMAIL.COM', N'customer@email.com', N'CUSTOMER@EMAIL.COM', 0, N'AQAAAAEAACcQAAAAEDiemprXTGvGmS0jrToDQCmfQjVQ8+Wc6w/BPHUgjC3WyPtn5wWPajcnmR32FoL1Bg==', N'DDNREVX2CYQH3XVULRMM6QMT4EUEEFUQ', N'71e6d165-ac2d-4605-82f3-4e8a7e51b001', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'7b3251a0-04c3-442a-a433-06bf3508ca43', N'admin@email.com', N'ADMIN@EMAIL.COM', N'admin@email.com', N'ADMIN@EMAIL.COM', 1, N'AQAAAAEAACcQAAAAEMmxYj4Kds1zphZAC4OAb+bk/UqOo7LyPtaXJVPn4ySAsofClBRWmyCgTUPK0onlig==', N'RAAUZYAPGGPIEX6SSL2H5AE44OAWAXGA', N'e36878fb-98f3-4929-a7e6-57ba93166ecc', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryDescription]) VALUES (1, N'Elixirs', N'Cheaper, faster, and better than western medicine!')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryDescription]) VALUES (2, N'Seeds', N'Grow your own crops!')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryDescription]) VALUES (3, N'Culinary', N'Culinary essentials for every person''s home.')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryDescription]) VALUES (5, N'Tools', N'Tools for every farming need.')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryDescription]) VALUES (6, N'Weapons', N'Going somewhere dangerous?  We got you covered!')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryDescription]) VALUES (7, N'Fishing', N'Go fish!')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryDescription]) VALUES (8, N'Hats', N'Keeping the sun out of your eyes and the bugs out of your hair.')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryDescription]) VALUES (9, N'Jewelry', N'May grant additional effects!')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryDescription]) VALUES (10, N'Decorative', N'Keep your space looking spiffy!')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryDescription]) VALUES (11, N'Slimes', N'Some find them quite cute.')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryDescription]) VALUES (12, N'Junimos', N'They love doing your work for you!')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryDescription]) VALUES (13, N'Statues', N'The best sculptures in the valley!')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryDescription]) VALUES (14, N'Paintings', N'Paintings from around the globe.')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryDescription]) VALUES (15, N'Obelisks', N'Ditch traveling by foot and travel with magic!')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryDescription]) VALUES (16, N'Structures', N'Yes, we even sell buildings!')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryDescription]) VALUES (17, N'Livestock', N'Cute and useful!')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryDescription]) VALUES (18, N'Minerals', N'Mined from local caverns!')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryDescription]) VALUES (19, N'Materials', N'Basic materials for building.')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryDescription]) VALUES (20, N'Miscellaneous', N'Other odds and ends.')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryDescription]) VALUES (22, N'test1', NULL)
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (1, N'Bait', 5.0000, N'Causes fish to bite faster.  Must first be attached to a fishing rod.', 500, N'Yearly', 7, 1, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (2, N'Crab Pot', 1500.0000, N'Place it in the water, load it with bait, and check the next day to see if you''ve caught anything.  Works in streams, lakes, and the ocean.', 250, N'Yearly', 7, 1, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (3, N'Spinner', 500.0000, N'The shape makes it spin around in the water.  Slightly increases the bite-rate when fishing.', 500, N'Yearly', 7, 1, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (4, N'Trap Bobber', 500.0000, N'Causes fish to escape slower when you aren''t reeling them in.', 500, N'Yearly', 7, 1, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (5, N'Lead Bobber', 200.0000, N'Adds weight to your "fishing bar", preventing it from bouncing along the bottom.', 500, N'Yearly', 7, 1, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (6, N'Treasure Hunter', 750.0000, N'Fish don''t escape while collecting treasures. Also slightly increases the chance to find treasures.', 250, N'Yearly', 7, 1, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (7, N'Cork Bobber', 750.0000, N'	Slightly increases the size of your "fishing bar".', 250, N'Yearly', 7, 1, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (8, N'Barbed Hook', 1000.0000, N'Makes your catch more secure, causing the "fishing bar" to cling to your catch. Works best on slow, weak fish.', 250, N'Yearly', 7, 1, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (9, N'Dressed Spinner', 1000.0000, N'The metal tab and colorful streamers create an enticing spectacle for fish. Increases the bite-rate when fishing.', 250, N'Yearly', 7, 1, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (10, N'Magnet', 1000.0000, N'Increases the chance of finding treasures when fishing. However, fish aren''t crazy about the taste.', 250, N'Yearly', 7, 1, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (11, N'Bamboo Pole', 500.0000, N'Use in the water to catch fish.', 10, N'Yearly', 7, 1, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (12, N'Fiberglass Rod', 1800.0000, N'Use in the water to catch fish.', 10, N'Yearly', 7, 1, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (13, N'Iridium Rod', 7500.0000, N'Use in the water to catch fish.', 10, N'Yearly', 7, 1, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (14, N'Training Rod', 25.0000, N'It''s a lot easier to use than other rods, but can only catch basic fish.', 5, N'Yearly', 7, 1, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (15, N'Copper Pan', 2500.0000, N'Use to gather ore from streams.', 10, N'Yearly', 7, 1, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (16, N'Large Fish Tank', 2000.0000, N'Can be placed inside your house.', 20, N'Yearly', 10, 1, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (17, N'Small Fish Tank', 500.0000, N'	Can be placed inside your house.', 20, N'Yearly', 10, 1, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (18, N'Deluxe Fish Tank', 5000.0000, N'	Can be placed inside your house.', 20, N'Yearly', 10, 1, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (19, N'Fisher Double Bed', 25000.0000, N'	Can be placed inside your house.', 10, N'Yearly', 10, 1, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (20, N'Good Ol'' Cap', 1000.0000, N'A floppy old topper with a creased bill. Looks like it''s been through a lot.', 5, N'Yearly', 8, 2, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (21, N'Lucky Bow', 1000.0000, N'The middle is made of solid gold.', 5, N'Yearly', 8, 2, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (22, N'Cool Cap', 1000.0000, N'	It looks really faded, but it used to be a vibrant blue.', 5, N'Yearly', 8, 2, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (23, N'Bowler Hat', 1000.0000, N'Made from smooth felt.', 5, N'Yearly', 8, 2, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (24, N'Sombrero', 1000.0000, N'A festively decorated hat made from woven straw.', 5, N'Yearly', 8, 2, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (25, N'Blue Bonnet', 1000.0000, N'Harken back to simpler times with this prairie bonnet.', 5, N'Yearly', 8, 2, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (26, N'Cowboy Hat', 1000.0000, N'The leather is old and cracked, but surprisingly supple. It smells musty.', 5, N'Yearly', 8, 2, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (27, N'Butterfly Bow', 1000.0000, N'This one is very soft.', 5, N'Yearly', 8, 2, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (28, N'Mouse Ears', 1000.0000, N'Made from synthetic fibers.', 5, N'Yearly', 8, 2, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (29, N'Cat Ears', 1000.0000, N'Whiskers included.', 5, N'Yearly', 8, 2, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (30, N'Tiara', 1000.0000, N'This one has a big amethyst encircled by gold.', 5, N'Yearly', 8, 2, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (31, N'Santa Hat', 1000.0000, N'Celebrate the magical season.', 5, N'Yearly', 8, 2, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (32, N'Earmuffs', 1000.0000, N'Keep your ears toasty. Lined with artisanal velvet from Castle Village.', 5, N'Yearly', 8, 2, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (33, N'Delicate Bow', 1000.0000, N'Little pink jewels glisten as you examine it.', 5, N'Yearly', 8, 2, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (34, N'Plum Chapeau', 1000.0000, N'Looks alright.', 5, N'Yearly', 8, 2, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (35, N'Archer''s Cap', 1000.0000, N'Fashionable whether you''re an archer or not.', 5, N'Yearly', 8, 2, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (36, N'Tropiclip', 1000.0000, N'It''s shaped like a little palm tree.', 5, N'Yearly', 8, 2, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (37, N'Cactus Seeds', 150.0000, N'Can only be grown indoors. Takes 12 days to mature, and then produces fruit every 3 days.', 500, N'Yearly', 2, 3, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (38, N'Rhubarb Seeds', 100.0000, N'Plant these in the spring. Takes 13 days to mature.', 0, N'Spring', 2, 3, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (39, N'Starfruit Seeds', 400.0000, N'Plant these in the summer. Takes 13 days to mature.', 0, N'Summer', 2, 3, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (40, N'Beet Seeds', 20.0000, N'Plant these in the fall. Takes 6 days to mature.', 20, N'Fall', 2, 3, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (41, N'Seasonal Plant', 100.0000, N'An ornamental plant that changes with each season. It doesn''t need to be watered.', 100, N'Yearly', 10, 3, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (42, N'Wall Cactus', 700.0000, N'Can be placed inside your house.', 50, N'Yearly', 10, 3, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (43, N'Earth Obelisk', 500000.0000, N'Warps you to the mountains.', 10, N'Yearly', 15, 4, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (44, N'Water Obelisk', 500000.0000, N'Warps you to the beach.', 10, N'Yearly', 15, 4, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (45, N'Desert Obelisk', 1000000.0000, N'Warps you to the desert.', 10, N'Yearly', 15, 4, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (46, N'Island Obelisk', 1000000.0000, N'Warps you to Ginger Island.', 10, N'Yearly', 15, 4, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (47, N'Junimo Hut', 20000.0000, N'	Junimos will harvest crops around the hut for you.', 15, N'Yearly', 16, 4, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (48, N'Gold Clock', 10000000.0000, N'Prevents debris from appearing on your farm. Keeps fences from decaying.', 10, N'Yearly', 16, 4, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (49, N'Wood', 10.0000, N'A sturdy, yet flexible plant material with a wide variety of uses.', 999, N'Yearly', 19, 5, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (50, N'Stone', 20.0000, N'A common material with many uses in crafting and building.', 999, N'Yearly', 19, 5, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (51, N'Barn', 6000.0000, N'Houses 4 barn-dwelling animals.', 50, N'Yearly', 16, 5, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (52, N'Coop', 4000.0000, N'	Houses 4 coop-dwelling animals.', 50, N'Yearly', 16, 5, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (53, N'Fish Pond', 5000.0000, N'Raise fish and harvest their produce. Fish multiply over time.', 50, N'Yearly', 16, 5, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (54, N'Shed', 15000.0000, N'An empty building. Fill it with whatever you like! The interior can be decorated.', 50, N'Yearly', 16, 5, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (55, N'Slime Hutch', 10000.0000, N'Raise up to 20 slimes. Fill water troughs and slimes will create slime balls.', 25, N'Yearly', 16, 5, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (56, N'Stable', 10000.0000, N'Allows you to keep and ride a horse. Horse included.', 20, N'Yearly', 16, 5, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (57, N'Grass Starter', 100.0000, N'Place this on your farm to start a new patch of grass.', 999, N'Yearly', 2, 6, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (58, N'Sugar', 100.0000, N'Adds sweetness to pastries and candies. Too much can be unhealthy.', 250, N'Yearly', 3, 6, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (59, N'Wheat Flour', 100.0000, N'A common cooking ingredient made from crushed wheat seeds.', 200, N'Yearly', 3, 6, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (60, N'Rice', 200.0000, N'A basic grain often served under vegetables.', 250, N'Yearly', 3, 6, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (61, N'Wallpaper', 100.0000, N'Decorates the walls of one room.', 100, N'Yearly', 10, 6, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (62, N'Flooring', 100.0000, N'Decorates the floor of one room.', 100, N'Yearly', 10, 6, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (63, N'Parsnip Seeds', 20.0000, N'Plant these in the spring. Takes 4 days to mature.', 999, N'Spring', 2, 6, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (64, N'Bean Starter', 60.0000, N'Plant these in the spring. Takes 10 days to mature, but keeps producing after that. Grows on a trellis.', 999, N'Spring', 2, 6, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (65, N'Cauliflower Seeds', 80.0000, N'Plant these in the spring. Takes 12 days to produce a large cauliflower.', 999, N'Spring', 2, 6, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (66, N'Potato Seeds', 50.0000, N'Plant these in the spring. Takes 6 days to mature, and has a chance of yielding multiple potatoes at harvest.', 999, N'Spring', 2, 6, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (67, N'Tulip Bulb', 20.0000, N'	Plant in spring. Takes 6 days to produce a colorful flower. Assorted colors.', 999, N'Spring', 2, 6, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (68, N'Kale Seeds', 70.0000, N'Plant these in the spring. Takes 6 days to mature. Harvest with the scythe.', 999, N'Spring', 2, 6, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (69, N'Jazz Seeds', 30.0000, N'Plant in spring. Takes 7 days to produce a blue puffball flower.', 999, N'Spring', 2, 6, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (70, N'Garlic Seeds', 40.0000, N'	Plant these in the spring. Takes 4 days to mature.', 999, N'Spring', 2, 6, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (71, N'Rice Shoot', 40.0000, N'	Plant these in the spring. Takes 8 days to mature. Grows faster if planted near a body of water. Harvest with the scythe.', 999, N'Spring', 2, 6, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (72, N'Melon Seeds', 80.0000, N'	Plant these in the summer. Takes 12 days to mature.', 0, N'Summer', 2, 6, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (73, N'Tomato Seeds', 50.0000, N'Plant these in the summer. Takes 11 days to mature, and continues to produce after first harvest.', 0, N'Summer', 2, 6, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (74, N'Blueberry Seeds', 80.0000, N'Plant these in the summer. Takes 13 days to mature, and continues to produce after first harvest.', 0, N'Summer', 2, 6, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (75, N'Pepper Seeds', 40.0000, N'	Plant these in the summer. Takes 5 days to mature, and continues to produce after first harvest.', 0, N'Summer', 2, 6, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (76, N'Wheat Seeds', 10.0000, N'	Plant these in the summer or fall. Takes 4 days to mature. Harvest with the scythe.', 0, N'Summer', 2, 6, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (77, N'Radish Seeds', 40.0000, N'Plant these in the summer. Takes 6 days to mature.', 0, N'Summer', 2, 6, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (78, N'Poppy Seeds', 100.0000, N'Plant in summer. Produces a bright red flower in 7 days.', 0, N'Summer', 2, 6, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (79, N'Spangle Seeds', 50.0000, N'	Plant in summer. Takes 8 days to produce a vibrant tropical flower. Assorted colors.', 0, N'Summer', 2, 6, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (80, N'Hops Starter', 60.0000, N'Plant these in the summer. Takes 11 days to grow, but keeps producing after that. Grows on a trellis.', 0, N'Summer', 2, 6, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (81, N'Corn Seeds', 150.0000, N'	Plant these in the summer or fall. Takes 14 days to mature, and continues to produce after first harvest.', 0, N'Summer', 2, 6, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (82, N'Sunflower Seeds', 200.0000, N'	Plant in summer or fall. Takes 8 days to produce a large sunflower. Yields more seeds at harvest.', 0, N'Summer', 2, 6, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (83, N'Red Cabbage Seeds', 100.0000, N'Plant these in the summer. Takes 9 days to mature.', 0, N'Summer', 2, 6, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (84, N'Eggplant Seeds', 20.0000, N'Plant these in the fall. Takes 5 days to mature, and continues to produce after first harvest.', 0, N'Fall', 2, 6, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (85, N'Pumpkin Seeds', 100.0000, N'	Plant these in the fall. Takes 13 days to mature.', 0, N'Fall', 2, 6, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (86, N'Bok Choy Seeds', 50.0000, N'Plant these in the fall. Takes 4 days to mature.', 0, N'Fall', 2, 6, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (87, N'Yam Seeds', 60.0000, N'	Plant these in the fall. Takes 10 days to mature.', 0, N'Fall', 2, 6, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (88, N'Cranberry Seeds', 240.0000, N'Plant these in the fall. Takes 7 days to mature, and continues to produce after first harvest.', 0, N'Fall', 2, 6, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (89, N'Fairy Seeds', 200.0000, N'	Plant in fall. Takes 12 days to produce a mysterious flower. Assorted Colors.', 0, N'Fall', 2, 6, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (90, N'Amaranth Seeds', 70.0000, N'Plant these in the fall. Takes 7 days to grow. Harvest with the scythe.', 0, N'Fall', 2, 6, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (91, N'Grape Starter', 60.0000, N'Plant these in the fall. Takes 10 days to grow, but keeps producing after that. Grows on a trellis.', 0, N'Fall', 2, 6, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (92, N'Artichoke Seeds', 30.0000, N'Plant these in the fall. Takes 8 days to mature.', 0, N'Fall', 2, 6, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (93, N'Life Elixir', 2000.0000, N'	Restores health to full.', 50, N'Yearly', 1, 7, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (94, N'Oil of Garlic', 3000.0000, N'	Drink this and weaker monsters will avoid you.', 50, N'Yearly', 1, 7, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (95, N'Stone Cairn', 200.0000, N'	A decorative piece for your farm.', 50, N'Yearly', 10, 7, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [ProductDescription], [UnitsInStock], [Season], [CategoryID], [SupplierID], [ImageName]) VALUES (96, N'Energy Elixir', 2000.0000, N'Restores energy to full.', 50, N'Yearly', 1, 7, NULL)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Suppliers] ON 

INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [Region], [Address], [City], [State], [Zip], [Phone]) VALUES (1, N'Willy', N'Stardew Valley', N'Beach', NULL, NULL, NULL, NULL)
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [Region], [Address], [City], [State], [Zip], [Phone]) VALUES (2, N'Hat Mouse', N'Stardew Valley', N'Cindersnap Forest', NULL, NULL, NULL, NULL)
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [Region], [Address], [City], [State], [Zip], [Phone]) VALUES (3, N'Oasis', N'Calico Desert', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [Region], [Address], [City], [State], [Zip], [Phone]) VALUES (4, N'Wizard', N'Stardew Valley', N'Cindersnap Forest', NULL, NULL, NULL, NULL)
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [Region], [Address], [City], [State], [Zip], [Phone]) VALUES (5, N'Robin', N'Stardew Valley', N'Mountain', NULL, NULL, NULL, NULL)
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [Region], [Address], [City], [State], [Zip], [Phone]) VALUES (6, N'Joja Corporation', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [Region], [Address], [City], [State], [Zip], [Phone]) VALUES (7, N'Dwarf', N'Stardew Valley', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [Region], [Address], [City], [State], [Zip], [Phone]) VALUES (8, N'Krobus', N'Stardew Valley', N'Sewers', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Suppliers] OFF
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OrderID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Users]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Suppliers] FOREIGN KEY([SupplierID])
REFERENCES [dbo].[Suppliers] ([SupplierID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Suppliers]
GO
