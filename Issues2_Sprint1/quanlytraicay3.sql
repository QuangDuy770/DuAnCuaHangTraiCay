USE [master]
GO
/****** Object:  Database [Quanlybantraicay3]    Script Date: 1/20/2024 2:00:05 PM ******/
CREATE DATABASE [Quanlybantraicay3] ON  PRIMARY 
( NAME = N'Quanlybantraicay3', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\Quanlybantraicay3.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Quanlybantraicay3_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\Quanlybantraicay3_log.LDF' , SIZE = 576KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Quanlybantraicay3] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Quanlybantraicay3].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Quanlybantraicay3] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Quanlybantraicay3] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Quanlybantraicay3] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Quanlybantraicay3] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Quanlybantraicay3] SET ARITHABORT OFF 
GO
ALTER DATABASE [Quanlybantraicay3] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Quanlybantraicay3] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Quanlybantraicay3] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Quanlybantraicay3] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Quanlybantraicay3] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Quanlybantraicay3] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Quanlybantraicay3] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Quanlybantraicay3] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Quanlybantraicay3] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Quanlybantraicay3] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Quanlybantraicay3] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Quanlybantraicay3] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Quanlybantraicay3] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Quanlybantraicay3] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Quanlybantraicay3] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Quanlybantraicay3] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Quanlybantraicay3] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Quanlybantraicay3] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Quanlybantraicay3] SET  MULTI_USER 
GO
ALTER DATABASE [Quanlybantraicay3] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Quanlybantraicay3] SET DB_CHAINING OFF 
GO
USE [Quanlybantraicay3]
GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 1/20/2024 2:00:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[TaiKhoan] [nvarchar](20) NOT NULL,
	[MatKhau] [nvarchar](20) NULL,
 CONSTRAINT [PK_NguoiDung] PRIMARY KEY CLUSTERED 
(
	[TaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblChitietHDBan]    Script Date: 1/20/2024 2:00:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblChitietHDBan](
	[MaChiTietHD] [nvarchar](30) NOT NULL,
	[MaTraiCay] [nvarchar](50) NOT NULL,
	[MaNhanVien] [nvarchar](50) NOT NULL,
	[MaKhachHang] [nvarchar](10) NOT NULL,
	[SoLuong] [float] NOT NULL,
	[DonGia] [float] NOT NULL,
	[GiamGia] [float] NOT NULL,
	[ThanhTien] [float] NOT NULL,
 CONSTRAINT [PK_tblChitietHDBan] PRIMARY KEY CLUSTERED 
(
	[MaChiTietHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblKhachHang]    Script Date: 1/20/2024 2:00:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblKhachHang](
	[MaKhachHang] [nvarchar](10) NOT NULL,
	[TenKhachHang] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[DienThoai] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblKhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLoaiTraiCay]    Script Date: 1/20/2024 2:00:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLoaiTraiCay](
	[MaLoaiTraiCay] [nvarchar](50) NOT NULL,
	[TenLoaiTraiCay] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblLoaiTraiCay] PRIMARY KEY CLUSTERED 
(
	[MaLoaiTraiCay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblNhanVien]    Script Date: 1/20/2024 2:00:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNhanVien](
	[MaNhanVien] [nvarchar](50) NOT NULL,
	[TenNhanVien] [nvarchar](50) NOT NULL,
	[GioiTinh] [nvarchar](10) NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
	[DienThoai] [nvarchar](15) NOT NULL,
	[NgaySinh] [date] NOT NULL,
 CONSTRAINT [PK_tblNhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTraiCay]    Script Date: 1/20/2024 2:00:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTraiCay](
	[MaTraiCay] [nvarchar](50) NOT NULL,
	[TenTraiCay] [nvarchar](50) NOT NULL,
	[MaLoaiTraiCay] [nvarchar](50) NOT NULL,
	[SoLuong] [float] NOT NULL,
	[DonGiaNhap] [float] NOT NULL,
	[DonGiaBan] [float] NOT NULL,
	[GhiChu] [nvarchar](200) NULL,
 CONSTRAINT [PK_tblTraiCay] PRIMARY KEY CLUSTERED 
(
	[MaTraiCay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[NguoiDung] ([TaiKhoan], [MatKhau]) VALUES (N'luan', N'123')
INSERT [dbo].[NguoiDung] ([TaiKhoan], [MatKhau]) VALUES (N'ngan', N'123')
GO
INSERT [dbo].[tblChitietHDBan] ([MaChiTietHD], [MaTraiCay], [MaNhanVien], [MaKhachHang], [SoLuong], [DonGia], [GiamGia], [ThanhTien]) VALUES (N'202', N'TC 2', N'102', N'056', 2, 25000, 2, 49000)
INSERT [dbo].[tblChitietHDBan] ([MaChiTietHD], [MaTraiCay], [MaNhanVien], [MaKhachHang], [SoLuong], [DonGia], [GiamGia], [ThanhTien]) VALUES (N'204', N'TC 3', N'103', N'097', 1, 23000, 2, 22540)
INSERT [dbo].[tblChitietHDBan] ([MaChiTietHD], [MaTraiCay], [MaNhanVien], [MaKhachHang], [SoLuong], [DonGia], [GiamGia], [ThanhTien]) VALUES (N'208', N'TC 2', N'105', N'032', 3, 25000, 0, 75000)
INSERT [dbo].[tblChitietHDBan] ([MaChiTietHD], [MaTraiCay], [MaNhanVien], [MaKhachHang], [SoLuong], [DonGia], [GiamGia], [ThanhTien]) VALUES (N'305', N'TC 1', N'101', N'056', 3, 12000, 1, 35640)
INSERT [dbo].[tblChitietHDBan] ([MaChiTietHD], [MaTraiCay], [MaNhanVien], [MaKhachHang], [SoLuong], [DonGia], [GiamGia], [ThanhTien]) VALUES (N'309', N'TC 3', N'102', N'032', 3, 23000, 1, 68310)
INSERT [dbo].[tblChitietHDBan] ([MaChiTietHD], [MaTraiCay], [MaNhanVien], [MaKhachHang], [SoLuong], [DonGia], [GiamGia], [ThanhTien]) VALUES (N'HD6', N'TC 2', N'A01', N'MKH9', 34, 25000, 5, 807500)
INSERT [dbo].[tblChitietHDBan] ([MaChiTietHD], [MaTraiCay], [MaNhanVien], [MaKhachHang], [SoLuong], [DonGia], [GiamGia], [ThanhTien]) VALUES (N'HD9', N'MTC6', N'A01', N'MKH9', 100, 1500, 120, -30000)
INSERT [dbo].[tblChitietHDBan] ([MaChiTietHD], [MaTraiCay], [MaNhanVien], [MaKhachHang], [SoLuong], [DonGia], [GiamGia], [ThanhTien]) VALUES (N'MH01', N'MTC2', N'A01', N'056', 2, 80000, 0, 160000)
INSERT [dbo].[tblChitietHDBan] ([MaChiTietHD], [MaTraiCay], [MaNhanVien], [MaKhachHang], [SoLuong], [DonGia], [GiamGia], [ThanhTien]) VALUES (N'MHD09', N'TC 1', N'A02', N'B03', 30, 12000, 10, 324000)
GO
INSERT [dbo].[tblKhachHang] ([MaKhachHang], [TenKhachHang], [DiaChi], [DienThoai]) VALUES (N'001', N'Lê Thị Nguyễn Ánh', N'Sóc Trăng', N'( 07) 070-6845')
INSERT [dbo].[tblKhachHang] ([MaKhachHang], [TenKhachHang], [DiaChi], [DienThoai]) VALUES (N'032', N'Nguyễn Duy Độ', N'Tiền Giang', N'( 08) 786-9988')
INSERT [dbo].[tblKhachHang] ([MaKhachHang], [TenKhachHang], [DiaChi], [DienThoai]) VALUES (N'056', N'Đặng Thị Leo', N'Vĩnh Long', N'( 02) 997-4683')
INSERT [dbo].[tblKhachHang] ([MaKhachHang], [TenKhachHang], [DiaChi], [DienThoai]) VALUES (N'097', N'Hứa Thị Hóa', N'Hậu Giang', N'( 04) 974-7646')
INSERT [dbo].[tblKhachHang] ([MaKhachHang], [TenKhachHang], [DiaChi], [DienThoai]) VALUES (N'1', N'Hóa Thị Mệt', N'Tây Nguyên', N'( 08) 974-5765')
INSERT [dbo].[tblKhachHang] ([MaKhachHang], [TenKhachHang], [DiaChi], [DienThoai]) VALUES (N'B01', N'Hoa', N'TP.HCM', N'( 05) 358-8900')
INSERT [dbo].[tblKhachHang] ([MaKhachHang], [TenKhachHang], [DiaChi], [DienThoai]) VALUES (N'B02', N'Bạnh Chỉ', N'TP.Hà Nội', N'( 09) 739-2241')
INSERT [dbo].[tblKhachHang] ([MaKhachHang], [TenKhachHang], [DiaChi], [DienThoai]) VALUES (N'B03', N'Bạch Cốt Chảo', N'TP.TV', N'( 09) 134-5275')
INSERT [dbo].[tblKhachHang] ([MaKhachHang], [TenKhachHang], [DiaChi], [DienThoai]) VALUES (N'MKH9', N'Tui nè', N'TP.TV', N'(096) 789-5467')
GO
INSERT [dbo].[tblLoaiTraiCay] ([MaLoaiTraiCay], [TenLoaiTraiCay]) VALUES (N'ML11', N'Trái cây Campuchia')
INSERT [dbo].[tblLoaiTraiCay] ([MaLoaiTraiCay], [TenLoaiTraiCay]) VALUES (N'MLTC 1', N'Trái cây lào')
INSERT [dbo].[tblLoaiTraiCay] ([MaLoaiTraiCay], [TenLoaiTraiCay]) VALUES (N'MLTC 2', N'Trái cây Trung Quốc')
INSERT [dbo].[tblLoaiTraiCay] ([MaLoaiTraiCay], [TenLoaiTraiCay]) VALUES (N'MLTC 3', N'Trái cây Việt Nam')
INSERT [dbo].[tblLoaiTraiCay] ([MaLoaiTraiCay], [TenLoaiTraiCay]) VALUES (N'MLTC 4', N'Trái cây Thái Lan')
INSERT [dbo].[tblLoaiTraiCay] ([MaLoaiTraiCay], [TenLoaiTraiCay]) VALUES (N'MLTC 5', N'Trái cây Thụy Điển')
INSERT [dbo].[tblLoaiTraiCay] ([MaLoaiTraiCay], [TenLoaiTraiCay]) VALUES (N'MLTC 8', N'Trái cây Mỹ')
INSERT [dbo].[tblLoaiTraiCay] ([MaLoaiTraiCay], [TenLoaiTraiCay]) VALUES (N'MLTC10', N'Trái cây nội địa')
INSERT [dbo].[tblLoaiTraiCay] ([MaLoaiTraiCay], [TenLoaiTraiCay]) VALUES (N'MLTC6', N'Trái cây Anh')
INSERT [dbo].[tblLoaiTraiCay] ([MaLoaiTraiCay], [TenLoaiTraiCay]) VALUES (N'MLTC7', N'Trái cây tháng')
INSERT [dbo].[tblLoaiTraiCay] ([MaLoaiTraiCay], [TenLoaiTraiCay]) VALUES (N'MLTC9', N'Trái cây nhập khẩu')
GO
INSERT [dbo].[tblNhanVien] ([MaNhanVien], [TenNhanVien], [GioiTinh], [DiaChi], [DienThoai], [NgaySinh]) VALUES (N'101', N'Nguyễn Văn A', N'Nam', N'Hà Nội', N'(055) 709-5367', CAST(N'1992-01-05' AS Date))
INSERT [dbo].[tblNhanVien] ([MaNhanVien], [TenNhanVien], [GioiTinh], [DiaChi], [DienThoai], [NgaySinh]) VALUES (N'102', N'Lê Thị B', N'Nữ', N'Kiêng Giang', N'(055) 846-3534', CAST(N'1995-01-12' AS Date))
INSERT [dbo].[tblNhanVien] ([MaNhanVien], [TenNhanVien], [GioiTinh], [DiaChi], [DienThoai], [NgaySinh]) VALUES (N'103', N'Nguyễn Thị D', N'Nữ', N'An Giang', N'( 02) 875-3589', CAST(N'1990-01-06' AS Date))
INSERT [dbo].[tblNhanVien] ([MaNhanVien], [TenNhanVien], [GioiTinh], [DiaChi], [DienThoai], [NgaySinh]) VALUES (N'105', N'Hứa Thị G', N'Nữ', N'Bạc Liêu', N'(050) 977-6354', CAST(N'1991-03-06' AS Date))
INSERT [dbo].[tblNhanVien] ([MaNhanVien], [TenNhanVien], [GioiTinh], [DiaChi], [DienThoai], [NgaySinh]) VALUES (N'A01', N'Ngân', N'Nữ', N'Tp.VL', N'( 07) 954-0553', CAST(N'2024-01-05' AS Date))
INSERT [dbo].[tblNhanVien] ([MaNhanVien], [TenNhanVien], [GioiTinh], [DiaChi], [DienThoai], [NgaySinh]) VALUES (N'A02', N'ÂN', N'Nam', N'TP.TV', N'( 07) 894-5324', CAST(N'2024-01-05' AS Date))
INSERT [dbo].[tblNhanVien] ([MaNhanVien], [TenNhanVien], [GioiTinh], [DiaChi], [DienThoai], [NgaySinh]) VALUES (N'A03', N'Hòa', N'Nam', N'TP.VL', N'( 07) 658-9342', CAST(N'2024-01-05' AS Date))
GO
INSERT [dbo].[tblTraiCay] ([MaTraiCay], [TenTraiCay], [MaLoaiTraiCay], [SoLuong], [DonGiaNhap], [DonGiaBan], [GhiChu]) VALUES (N'1', N'Sầu Riêng', N'MLTC 1', 590, 11111, 11111, N'trái cây mới')
INSERT [dbo].[tblTraiCay] ([MaTraiCay], [TenTraiCay], [MaLoaiTraiCay], [SoLuong], [DonGiaNhap], [DonGiaBan], [GhiChu]) VALUES (N'2', N'Mít', N'MLTC 1', 500, 10000, 111, N'')
INSERT [dbo].[tblTraiCay] ([MaTraiCay], [TenTraiCay], [MaLoaiTraiCay], [SoLuong], [DonGiaNhap], [DonGiaBan], [GhiChu]) VALUES (N'MTC2', N'Nho', N'MLTC9', 50, 35000, 80000, N'Hàng nhập khẩu')
INSERT [dbo].[tblTraiCay] ([MaTraiCay], [TenTraiCay], [MaLoaiTraiCay], [SoLuong], [DonGiaNhap], [DonGiaBan], [GhiChu]) VALUES (N'MTC6', N'Ổi', N'MLTC 3', 50.5, 2000, 1500, N'Trái cây dễ thương')
INSERT [dbo].[tblTraiCay] ([MaTraiCay], [TenTraiCay], [MaLoaiTraiCay], [SoLuong], [DonGiaNhap], [DonGiaBan], [GhiChu]) VALUES (N'TC 1', N'Ổi', N'MLTC 1', 1000, 10000, 12000, N'')
INSERT [dbo].[tblTraiCay] ([MaTraiCay], [TenTraiCay], [MaLoaiTraiCay], [SoLuong], [DonGiaNhap], [DonGiaBan], [GhiChu]) VALUES (N'TC 2', N'Xoày', N'MLTC 4', 910, 20000, 25000, N'')
INSERT [dbo].[tblTraiCay] ([MaTraiCay], [TenTraiCay], [MaLoaiTraiCay], [SoLuong], [DonGiaNhap], [DonGiaBan], [GhiChu]) VALUES (N'TC 3', N'Cam', N'MLTC 3', 550, 19000, 23000, N'')
GO
ALTER TABLE [dbo].[tblChitietHDBan]  WITH CHECK ADD  CONSTRAINT [FK_tblChitietHDBan_tblKhachHang] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[tblKhachHang] ([MaKhachHang])
GO
ALTER TABLE [dbo].[tblChitietHDBan] CHECK CONSTRAINT [FK_tblChitietHDBan_tblKhachHang]
GO
ALTER TABLE [dbo].[tblChitietHDBan]  WITH CHECK ADD  CONSTRAINT [FK_tblChitietHDBan_tblNhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[tblNhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[tblChitietHDBan] CHECK CONSTRAINT [FK_tblChitietHDBan_tblNhanVien]
GO
ALTER TABLE [dbo].[tblChitietHDBan]  WITH CHECK ADD  CONSTRAINT [FK_tblChitietHDBan_tblTraiCay] FOREIGN KEY([MaTraiCay])
REFERENCES [dbo].[tblTraiCay] ([MaTraiCay])
GO
ALTER TABLE [dbo].[tblChitietHDBan] CHECK CONSTRAINT [FK_tblChitietHDBan_tblTraiCay]
GO
ALTER TABLE [dbo].[tblTraiCay]  WITH CHECK ADD  CONSTRAINT [FK_tblTraiCay_tblLoaiTraiCay] FOREIGN KEY([MaLoaiTraiCay])
REFERENCES [dbo].[tblLoaiTraiCay] ([MaLoaiTraiCay])
GO
ALTER TABLE [dbo].[tblTraiCay] CHECK CONSTRAINT [FK_tblTraiCay_tblLoaiTraiCay]
GO
USE [master]
GO
ALTER DATABASE [Quanlybantraicay3] SET  READ_WRITE 
GO
