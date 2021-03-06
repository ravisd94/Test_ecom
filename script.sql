USE [master]
GO
/****** Object:  Database [e_cloth]    Script Date: 23-05-2021 21:56:24 ******/
CREATE DATABASE [e_cloth]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'e_cloth', FILENAME = N'D:\Ravi\Online_Cloths\DB\e_cloth.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'e_cloth_log', FILENAME = N'D:\Ravi\Online_Cloths\DB\e_cloth_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [e_cloth] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [e_cloth].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [e_cloth] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [e_cloth] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [e_cloth] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [e_cloth] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [e_cloth] SET ARITHABORT OFF 
GO
ALTER DATABASE [e_cloth] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [e_cloth] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [e_cloth] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [e_cloth] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [e_cloth] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [e_cloth] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [e_cloth] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [e_cloth] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [e_cloth] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [e_cloth] SET  DISABLE_BROKER 
GO
ALTER DATABASE [e_cloth] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [e_cloth] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [e_cloth] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [e_cloth] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [e_cloth] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [e_cloth] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [e_cloth] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [e_cloth] SET RECOVERY FULL 
GO
ALTER DATABASE [e_cloth] SET  MULTI_USER 
GO
ALTER DATABASE [e_cloth] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [e_cloth] SET DB_CHAINING OFF 
GO
ALTER DATABASE [e_cloth] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [e_cloth] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [e_cloth] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [e_cloth] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'e_cloth', N'ON'
GO
ALTER DATABASE [e_cloth] SET QUERY_STORE = OFF
GO
USE [e_cloth]
GO
/****** Object:  Table [dbo].[product_master]    Script Date: 23-05-2021 21:56:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_master](
	[prd_id] [bigint] IDENTITY(1,1) NOT NULL,
	[prd_Name] [varchar](100) NULL,
	[prd_price] [float] NULL,
	[prod_weight] [float] NULL,
	[prod_image] [varchar](max) NULL,
	[prod_category_id] [int] NULL,
	[prod_stock] [int] NULL,
	[prod_sale] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[prd_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[product_master] ON 

INSERT [dbo].[product_master] ([prd_id], [prd_Name], [prd_price], [prod_weight], [prod_image], [prod_category_id], [prod_stock], [prod_sale]) VALUES (1, N'T-Shirt', 300, 100, N'https://cdn.shopify.com/s/files/1/1367/5201/products/315ShortSleeveT-ShirtBlack-CharcoalGreyGMST5409.A-Edit_ZH_ZH_600x.jpg?v=1618581465', 1, 10, 10)
INSERT [dbo].[product_master] ([prd_id], [prd_Name], [prd_price], [prod_weight], [prod_image], [prod_category_id], [prod_stock], [prod_sale]) VALUES (2, N'Hoodies', 600, 200, N'https://cdn.shopify.com/s/files/1/1367/5201/products/CRITICALWINDBREAKERBLACK.A-Edit_BK_5b7e391a-93f8-4255-a860-40e6f3415278_600x.jpg?v=1600884639', 2, 5, 5)
INSERT [dbo].[product_master] ([prd_id], [prd_Name], [prd_price], [prod_weight], [prod_image], [prod_category_id], [prod_stock], [prod_sale]) VALUES (3, N'Track', 800, 250, N'https://cdn.shopify.com/s/files/1/1367/5201/products/CRESTPANTSNAVY.A-Edit_ZH_221f86de-6eba-4d3c-9d29-a06e04eaac59_600x.jpg?v=1599236856', 2, 10, 10)
INSERT [dbo].[product_master] ([prd_id], [prd_Name], [prd_price], [prod_weight], [prod_image], [prod_category_id], [prod_stock], [prod_sale]) VALUES (4, N'Hoodies', 600, 200, N'https://cdn.shopify.com/s/files/1/1367/5201/products/CRITICALWINDBREAKERBLACK.A-Edit_BK_5b7e391a-93f8-4255-a860-40e6f3415278_600x.jpg?v=1600884639', 2, 5, 5)
INSERT [dbo].[product_master] ([prd_id], [prd_Name], [prd_price], [prod_weight], [prod_image], [prod_category_id], [prod_stock], [prod_sale]) VALUES (5, N'Track', 500, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[product_master] ([prd_id], [prd_Name], [prd_price], [prod_weight], [prod_image], [prod_category_id], [prod_stock], [prod_sale]) VALUES (6, NULL, 800, 250, N'https://cdn.shopify.com/s/files/1/1367/5201/products/CRESTPANTSNAVY.A-Edit_ZH_221f86de-6eba-4d3c-9d29-a06e04eaac59_600x.jpg?v=1599236856', 2, NULL, NULL)
SET IDENTITY_INSERT [dbo].[product_master] OFF
GO
USE [master]
GO
ALTER DATABASE [e_cloth] SET  READ_WRITE 
GO
