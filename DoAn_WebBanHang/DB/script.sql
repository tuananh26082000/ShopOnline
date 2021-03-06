USE [master]
GO
/****** Object:  Database [DoAn_ShopOnline]    Script Date: 12/21/2020 19:25:13 ******/
CREATE DATABASE [DoAn_ShopOnline] ON  PRIMARY 
( NAME = N'DoAn_ShopOnline', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\DoAn_ShopOnline.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DoAn_ShopOnline_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\DoAn_ShopOnline_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DoAn_ShopOnline] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DoAn_ShopOnline].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DoAn_ShopOnline] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [DoAn_ShopOnline] SET ANSI_NULLS OFF
GO
ALTER DATABASE [DoAn_ShopOnline] SET ANSI_PADDING OFF
GO
ALTER DATABASE [DoAn_ShopOnline] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [DoAn_ShopOnline] SET ARITHABORT OFF
GO
ALTER DATABASE [DoAn_ShopOnline] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [DoAn_ShopOnline] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [DoAn_ShopOnline] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [DoAn_ShopOnline] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [DoAn_ShopOnline] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [DoAn_ShopOnline] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [DoAn_ShopOnline] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [DoAn_ShopOnline] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [DoAn_ShopOnline] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [DoAn_ShopOnline] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [DoAn_ShopOnline] SET  DISABLE_BROKER
GO
ALTER DATABASE [DoAn_ShopOnline] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [DoAn_ShopOnline] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [DoAn_ShopOnline] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [DoAn_ShopOnline] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [DoAn_ShopOnline] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [DoAn_ShopOnline] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [DoAn_ShopOnline] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [DoAn_ShopOnline] SET  READ_WRITE
GO
ALTER DATABASE [DoAn_ShopOnline] SET RECOVERY SIMPLE
GO
ALTER DATABASE [DoAn_ShopOnline] SET  MULTI_USER
GO
ALTER DATABASE [DoAn_ShopOnline] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [DoAn_ShopOnline] SET DB_CHAINING OFF
GO
USE [DoAn_ShopOnline]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 12/21/2020 19:25:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSanPham] [nvarchar](10) NOT NULL,
	[MaLoaiSanPham] [nvarchar](10) NULL,
	[MaNhaSanXuat] [nvarchar](10) NULL,
	[TenSanPham] [nvarchar](max) NULL,
	[CauHinh] [nvarchar](max) NULL,
	[HinhChinh] [nvarchar](50) NULL,
	[Hinh1] [nvarchar](50) NULL,
	[Hinh2] [nvarchar](50) NULL,
	[Hinh3] [nvarchar](50) NULL,
	[Hinh4] [nvarchar](50) NULL,
	[Gia] [int] NULL,
	[SoLuongDaBan] [int] NULL,
	[LuotView] [int] NULL,
	[TinhTrang] [nchar](10) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'FX2', N'02', N'OP', N'Oppo Find X2', N'thường', N'x2.png', NULL, NULL, NULL, NULL, 20000000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'IP11', N'03', N'AP', N'Iphone 11', N'ngon', N'iphone11.png', NULL, NULL, NULL, NULL, 21000000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'IP11P', N'03', N'AP', N'Iphone 11 Pro Max', N'ngon', N'iphone11pro.png', NULL, NULL, NULL, NULL, 24000000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'IP12', N'03', N'AP', N'Iphone 12 Pro Max', N'khủng', N'iphone12.png', NULL, NULL, NULL, NULL, 43000000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'IP7', N'01', N'AP', N'Iphone 7', N'Cùi', N'iphone7plus.png', NULL, NULL, NULL, NULL, 5000000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'IP8', N'01', N'AP', N'Iphone 8', N'thường', N'iphone8.png', NULL, NULL, NULL, NULL, 6000000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'IPX', N'02', N'AP', N'Iphone X', N'ngon', N'iphonex.png', NULL, NULL, NULL, NULL, 9000000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'NOTE20U', N'03', N'SS', N'SamSung Galaxy Note 20 Ultra', N'khủng', N'note20.png', NULL, NULL, NULL, NULL, 28000000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'R4P', N'02', N'OP', N'Oppo Reno4', N'thường', N'Reno4.png', NULL, NULL, NULL, NULL, 12000000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'S20', N'03', N'SS', N'SamSung Galaxy S20', N'khủng', N's20.png', NULL, NULL, NULL, NULL, 22000000, 0, 0, N'0         ')
/****** Object:  Table [dbo].[NhaSanXuat]    Script Date: 12/21/2020 19:25:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaSanXuat](
	[MaNhaSanXuat] [nvarchar](10) NOT NULL,
	[TenNhaSanXuat] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhaSanXuat] PRIMARY KEY CLUSTERED 
(
	[MaNhaSanXuat] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat]) VALUES (N'AP', N'Apple')
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat]) VALUES (N'OP', N'Oppo')
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat]) VALUES (N'SN', N'SONNY')
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat]) VALUES (N'SS', N'SamSung')
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 12/21/2020 19:25:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoaiSanPham] [nvarchar](10) NOT NULL,
	[TenLoaiSanPham] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoaiSanPham] PRIMARY KEY CLUSTERED 
(
	[MaLoaiSanPham] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham]) VALUES (N'LSP01', N'Trung bình')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham]) VALUES (N'LSP02', N'Cao cấp')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham]) VALUES (N'LSP03', N'Lắc xu ry')
/****** Object:  Default [DF_SanPham_Gia]    Script Date: 12/21/2020 19:25:13 ******/
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_Gia]  DEFAULT ((0)) FOR [Gia]
GO
/****** Object:  Default [DF_SanPham_SoLuongDaBan]    Script Date: 12/21/2020 19:25:13 ******/
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_SoLuongDaBan]  DEFAULT ((0)) FOR [SoLuongDaBan]
GO
/****** Object:  Default [DF_SanPham_LuotView]    Script Date: 12/21/2020 19:25:13 ******/
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_LuotView]  DEFAULT ((0)) FOR [LuotView]
GO
/****** Object:  Default [DF_SanPham_TinhTrang]    Script Date: 12/21/2020 19:25:13 ******/
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_TinhTrang]  DEFAULT ((0)) FOR [TinhTrang]
GO
