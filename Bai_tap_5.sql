USE [master]
GO
/****** Object:  Database [QUANLYNHAHANG]    Script Date: 4/23/2025 11:07:52 PM ******/
CREATE DATABASE [QUANLYNHAHANG]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QUANLYNHAHANG', FILENAME = N'E:\SQL SERVER 2022\Bai_tap_5\QUANLYNHAHANG.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QUANLYNHAHANG_log', FILENAME = N'E:\SQL SERVER 2022\Bai_tap_5\QUANLYNHAHANG_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [QUANLYNHAHANG] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QUANLYNHAHANG].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QUANLYNHAHANG] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QUANLYNHAHANG] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QUANLYNHAHANG] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QUANLYNHAHANG] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QUANLYNHAHANG] SET ARITHABORT OFF 
GO
ALTER DATABASE [QUANLYNHAHANG] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QUANLYNHAHANG] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QUANLYNHAHANG] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QUANLYNHAHANG] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QUANLYNHAHANG] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QUANLYNHAHANG] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QUANLYNHAHANG] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QUANLYNHAHANG] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QUANLYNHAHANG] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QUANLYNHAHANG] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QUANLYNHAHANG] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QUANLYNHAHANG] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QUANLYNHAHANG] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QUANLYNHAHANG] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QUANLYNHAHANG] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QUANLYNHAHANG] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QUANLYNHAHANG] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QUANLYNHAHANG] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QUANLYNHAHANG] SET  MULTI_USER 
GO
ALTER DATABASE [QUANLYNHAHANG] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QUANLYNHAHANG] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QUANLYNHAHANG] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QUANLYNHAHANG] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QUANLYNHAHANG] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QUANLYNHAHANG] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QUANLYNHAHANG] SET QUERY_STORE = ON
GO
ALTER DATABASE [QUANLYNHAHANG] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [QUANLYNHAHANG]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 4/23/2025 11:07:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[iddonhang] [varchar](13) NOT NULL,
	[makh] [varchar](13) NOT NULL,
	[idmonan] [varchar](13) NOT NULL,
	[soluong] [int] NOT NULL,
	[thoigiandatdon] [time](7) NOT NULL,
	[masoban] [int] NOT NULL,
 CONSTRAINT [PK_DonHang] PRIMARY KEY CLUSTERED 
(
	[iddonhang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 4/23/2025 11:07:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[idhoadon] [varchar](13) NOT NULL,
	[iddonhang] [varchar](13) NOT NULL,
	[idnhanvien] [varchar](13) NOT NULL,
	[thoigianthanhtoan] [datetime] NOT NULL,
	[phuongthucthanhtoan] [nvarchar](20) NOT NULL,
	[sotiengiamgia] [money] NOT NULL,
	[tongthanhtoan] [money] NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[idhoadon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 4/23/2025 11:07:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[makh] [varchar](13) NOT NULL,
	[tenKH] [nvarchar](50) NOT NULL,
	[sdt] [int] NOT NULL,
	[diachi] [nvarchar](50) NOT NULL,
	[gioitinh] [nvarchar](5) NOT NULL,
	[hangmuckh] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[makh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 4/23/2025 11:07:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[idnhanvien] [varchar](13) NOT NULL,
	[tennhanvien] [nvarchar](50) NOT NULL,
	[ngaysinh] [date] NOT NULL,
	[gioitinh] [nvarchar](5) NOT NULL,
	[diachi] [nvarchar](50) NOT NULL,
	[ngayvaolam] [date] NOT NULL,
	[macalamviec] [smallint] NOT NULL,
	[tienluong] [money] NOT NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[idnhanvien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThucDon]    Script Date: 4/23/2025 11:07:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThucDon](
	[idmonan] [varchar](13) NOT NULL,
	[tenmon] [nvarchar](50) NOT NULL,
	[dongia] [money] NOT NULL,
 CONSTRAINT [PK_ThucDon] PRIMARY KEY CLUSTERED 
(
	[idmonan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DonHang] ([iddonhang], [makh], [idmonan], [soluong], [thoigiandatdon], [masoban]) VALUES (N'd01', N'MKH02', N'm02', 4, CAST(N'11:00:00' AS Time), 8)
INSERT [dbo].[DonHang] ([iddonhang], [makh], [idmonan], [soluong], [thoigiandatdon], [masoban]) VALUES (N'd02', N'MKH05', N'm04', 1, CAST(N'17:30:00' AS Time), 2)
INSERT [dbo].[DonHang] ([iddonhang], [makh], [idmonan], [soluong], [thoigiandatdon], [masoban]) VALUES (N'd03', N'MKH01', N'm06', 3, CAST(N'18:00:00' AS Time), 1)
INSERT [dbo].[DonHang] ([iddonhang], [makh], [idmonan], [soluong], [thoigiandatdon], [masoban]) VALUES (N'd04', N'MKH03', N'm01', 5, CAST(N'10:30:00' AS Time), 15)
INSERT [dbo].[DonHang] ([iddonhang], [makh], [idmonan], [soluong], [thoigiandatdon], [masoban]) VALUES (N'd05', N'MKH04', N'm05', 7, CAST(N'11:00:00' AS Time), 9)
GO
INSERT [dbo].[HoaDon] ([idhoadon], [iddonhang], [idnhanvien], [thoigianthanhtoan], [phuongthucthanhtoan], [sotiengiamgia], [tongthanhtoan]) VALUES (N'h01', N'd02', N'n04', CAST(N'2025-04-23T13:00:00.000' AS DateTime), N'maQR', 50000.0000, NULL)
INSERT [dbo].[HoaDon] ([idhoadon], [iddonhang], [idnhanvien], [thoigianthanhtoan], [phuongthucthanhtoan], [sotiengiamgia], [tongthanhtoan]) VALUES (N'h02', N'd01', N'n01', CAST(N'2025-04-22T21:30:00.000' AS DateTime), N'tienmat', 100000.0000, NULL)
INSERT [dbo].[HoaDon] ([idhoadon], [iddonhang], [idnhanvien], [thoigianthanhtoan], [phuongthucthanhtoan], [sotiengiamgia], [tongthanhtoan]) VALUES (N'h03', N'd05', N'n06', CAST(N'2025-04-23T22:00:00.000' AS DateTime), N'maQR', 50000.0000, NULL)
INSERT [dbo].[HoaDon] ([idhoadon], [iddonhang], [idnhanvien], [thoigianthanhtoan], [phuongthucthanhtoan], [sotiengiamgia], [tongthanhtoan]) VALUES (N'h04', N'd03', N'n03', CAST(N'2025-04-23T13:30:00.000' AS DateTime), N'tienmat', 0.0000, 0.0000)
INSERT [dbo].[HoaDon] ([idhoadon], [iddonhang], [idnhanvien], [thoigianthanhtoan], [phuongthucthanhtoan], [sotiengiamgia], [tongthanhtoan]) VALUES (N'h05', N'd04', N'n05', CAST(N'2025-04-23T14:00:00.000' AS DateTime), N'tienmat', 0.0000, 0.0000)
INSERT [dbo].[HoaDon] ([idhoadon], [iddonhang], [idnhanvien], [thoigianthanhtoan], [phuongthucthanhtoan], [sotiengiamgia], [tongthanhtoan]) VALUES (N'h08', N'd01', N'n01', CAST(N'2025-04-23T22:39:58.147' AS DateTime), N'maQR', 50000.0000, 50000.0000)
INSERT [dbo].[HoaDon] ([idhoadon], [iddonhang], [idnhanvien], [thoigianthanhtoan], [phuongthucthanhtoan], [sotiengiamgia], [tongthanhtoan]) VALUES (N'h09', N'd01', N'n01', CAST(N'2025-04-23T22:42:13.860' AS DateTime), N'maQR', 50000.0000, 50000.0000)
INSERT [dbo].[HoaDon] ([idhoadon], [iddonhang], [idnhanvien], [thoigianthanhtoan], [phuongthucthanhtoan], [sotiengiamgia], [tongthanhtoan]) VALUES (N'h10', N'd01', N'n01', CAST(N'2025-04-23T22:43:33.930' AS DateTime), N'maQR', 50000.0000, 50000.0000)
GO
INSERT [dbo].[KhachHang] ([makh], [tenKH], [sdt], [diachi], [gioitinh], [hangmuckh]) VALUES (N'MKH01', N'NguyenVanMinh', 123456789, N'BacGiang', N'nam', N'Thuong')
INSERT [dbo].[KhachHang] ([makh], [tenKH], [sdt], [diachi], [gioitinh], [hangmuckh]) VALUES (N'MKH02', N'NguyenTienDat', 987653421, N'ThaiNguyen', N'nam', N'VIP')
INSERT [dbo].[KhachHang] ([makh], [tenKH], [sdt], [diachi], [gioitinh], [hangmuckh]) VALUES (N'MKH03', N'PhungThiYen', 321456798, N'BacGiang', N'nu', N'VIP')
INSERT [dbo].[KhachHang] ([makh], [tenKH], [sdt], [diachi], [gioitinh], [hangmuckh]) VALUES (N'MKH04', N'NguyenHaiHuy', 897635421, N'HaNoi', N'nam', N'Thuong')
INSERT [dbo].[KhachHang] ([makh], [tenKH], [sdt], [diachi], [gioitinh], [hangmuckh]) VALUES (N'MKH05', N'NguyenThiTrang', 897265143, N'QuangNinh', N'nu', N'Vip')
GO
INSERT [dbo].[NhanVien] ([idnhanvien], [tennhanvien], [ngaysinh], [gioitinh], [diachi], [ngayvaolam], [macalamviec], [tienluong]) VALUES (N'n01', N'duong', CAST(N'1999-12-02' AS Date), N'nam', N'HaNoi', CAST(N'2024-01-10' AS Date), 32145, 8500000.0000)
INSERT [dbo].[NhanVien] ([idnhanvien], [tennhanvien], [ngaysinh], [gioitinh], [diachi], [ngayvaolam], [macalamviec], [tienluong]) VALUES (N'n02', N'thuy', CAST(N'2004-01-04' AS Date), N'nu', N'BacGiang', CAST(N'2024-02-13' AS Date), -32145, 10000000.0000)
INSERT [dbo].[NhanVien] ([idnhanvien], [tennhanvien], [ngaysinh], [gioitinh], [diachi], [ngayvaolam], [macalamviec], [tienluong]) VALUES (N'n03', N'hang', CAST(N'2005-09-10' AS Date), N'nu', N'ThaiNguyen', CAST(N'2025-02-19' AS Date), 32145, 10000000.0000)
INSERT [dbo].[NhanVien] ([idnhanvien], [tennhanvien], [ngaysinh], [gioitinh], [diachi], [ngayvaolam], [macalamviec], [tienluong]) VALUES (N'n04', N'hung', CAST(N'1998-03-12' AS Date), N'nam', N'HaNoi', CAST(N'2024-01-19' AS Date), -32145, 15000000.0000)
INSERT [dbo].[NhanVien] ([idnhanvien], [tennhanvien], [ngaysinh], [gioitinh], [diachi], [ngayvaolam], [macalamviec], [tienluong]) VALUES (N'n05', N'khanh', CAST(N'2000-08-17' AS Date), N'nam', N'HaiDuong', CAST(N'2025-01-15' AS Date), -32145, 12000000.0000)
INSERT [dbo].[NhanVien] ([idnhanvien], [tennhanvien], [ngaysinh], [gioitinh], [diachi], [ngayvaolam], [macalamviec], [tienluong]) VALUES (N'n06', N'taun', CAST(N'2002-09-19' AS Date), N'nam', N'PhuTho', CAST(N'2024-07-17' AS Date), 32145, 11000000.0000)
GO
INSERT [dbo].[ThucDon] ([idmonan], [tenmon], [dongia]) VALUES (N'm01', N'lauhaisan', 500.0000)
INSERT [dbo].[ThucDon] ([idmonan], [tenmon], [dongia]) VALUES (N'm02', N'nuong', 750.0000)
INSERT [dbo].[ThucDon] ([idmonan], [tenmon], [dongia]) VALUES (N'm03', N'lauthapcam', 600.0000)
INSERT [dbo].[ThucDon] ([idmonan], [tenmon], [dongia]) VALUES (N'm04', N'lauech', 350.0000)
INSERT [dbo].[ThucDon] ([idmonan], [tenmon], [dongia]) VALUES (N'm05', N'calang', 500.0000)
INSERT [dbo].[ThucDon] ([idmonan], [tenmon], [dongia]) VALUES (N'm06', N'buffer', 450.0000)
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_KhachHang] FOREIGN KEY([makh])
REFERENCES [dbo].[KhachHang] ([makh])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_KhachHang]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_ThucDon] FOREIGN KEY([idmonan])
REFERENCES [dbo].[ThucDon] ([idmonan])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_ThucDon]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_DonHang] FOREIGN KEY([iddonhang])
REFERENCES [dbo].[DonHang] ([iddonhang])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_DonHang]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NhanVien] FOREIGN KEY([idnhanvien])
REFERENCES [dbo].[NhanVien] ([idnhanvien])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_NhanVien]
GO
USE [master]
GO
ALTER DATABASE [QUANLYNHAHANG] SET  READ_WRITE 
GO
