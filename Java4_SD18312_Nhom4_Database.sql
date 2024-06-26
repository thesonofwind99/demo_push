USE [master]
GO
/****** Object:  Database [QL_BanGiay]    Script Date: 29/03/2024 8:06:59 SA ******/
CREATE DATABASE [QL_BanGiay]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QL_BanGiay', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\QL_BanGiay.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QL_BanGiay_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\QL_BanGiay_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [QL_BanGiay] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QL_BanGiay].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QL_BanGiay] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QL_BanGiay] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QL_BanGiay] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QL_BanGiay] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QL_BanGiay] SET ARITHABORT OFF 
GO
ALTER DATABASE [QL_BanGiay] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QL_BanGiay] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QL_BanGiay] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QL_BanGiay] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QL_BanGiay] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QL_BanGiay] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QL_BanGiay] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QL_BanGiay] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QL_BanGiay] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QL_BanGiay] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QL_BanGiay] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QL_BanGiay] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QL_BanGiay] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QL_BanGiay] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QL_BanGiay] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QL_BanGiay] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QL_BanGiay] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QL_BanGiay] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QL_BanGiay] SET  MULTI_USER 
GO
ALTER DATABASE [QL_BanGiay] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QL_BanGiay] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QL_BanGiay] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QL_BanGiay] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QL_BanGiay] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QL_BanGiay] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QL_BanGiay] SET QUERY_STORE = ON
GO
ALTER DATABASE [QL_BanGiay] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [QL_BanGiay]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 29/03/2024 8:06:59 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[ChiTietHoaDon_ID] [int] IDENTITY(1,1) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[TongGia] [float] NOT NULL,
	[HoaDon_ID] [int] NOT NULL,
	[MauSac_ID] [int] NOT NULL,
	[KichCo_ID] [int] NOT NULL,
	[SanPham_ID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ChiTietHoaDon_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietPhieuNhap]    Script Date: 29/03/2024 8:06:59 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuNhap](
	[SoLuong] [int] NOT NULL,
	[DonGia] [float] NOT NULL,
	[PhieuNhap_ID] [int] NOT NULL,
	[SanPham_ID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PhieuNhap_ID] ASC,
	[SanPham_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietPhieuXuat]    Script Date: 29/03/2024 8:06:59 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuXuat](
	[SoLuong] [int] NOT NULL,
	[PhieuXuat_ID] [int] NOT NULL,
	[SanPham_ID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PhieuXuat_ID] ASC,
	[SanPham_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietSanPham_KichCo]    Script Date: 29/03/2024 8:06:59 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietSanPham_KichCo](
	[KichCo_ID] [int] IDENTITY(1,1) NOT NULL,
	[KichCo] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[KichCo_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietSanPham_MauSac]    Script Date: 29/03/2024 8:06:59 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietSanPham_MauSac](
	[MauSac_ID] [int] IDENTITY(1,1) NOT NULL,
	[MauSac] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MauSac_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 29/03/2024 8:06:59 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[HoaDon_ID] [int] IDENTITY(1,1) NOT NULL,
	[NgayTao] [date] NOT NULL,
	[TongTien] [float] NULL,
	[DiaChiGiaoHang] [nvarchar](max) NOT NULL,
	[TrangThai] [nvarchar](255) NOT NULL,
	[GhiChu] [nvarchar](max) NULL,
	[PhuongThucThanhToan] [nvarchar](255) NOT NULL,
	[KhuyenMai_ID] [int] NULL,
	[TrangThaiThanhToan] [bit] NOT NULL,
	[KhachHang_ID] [int] NULL,
	[NhanVien_ID] [int] NOT NULL,
	[Khoa] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[HoaDon_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 29/03/2024 8:06:59 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[KhachHang_ID] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](max) NOT NULL,
	[GioiTinh] [nvarchar](max) NOT NULL,
	[Email] [varchar](255) NULL,
	[Anh] [nvarchar](max) NULL,
	[DienThoai] [varchar](15) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[NgaySinh] [date] NULL,
	[NgayTao] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[KhachHang_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhuyenMai]    Script Date: 29/03/2024 8:06:59 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhuyenMai](
	[KhuyenMai_ID] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](max) NOT NULL,
	[NgayBatDau] [date] NOT NULL,
	[NgayKetThuc] [date] NOT NULL,
	[KhachHang_ID] [int] NULL,
	[TrangThai] [nvarchar](max) NOT NULL,
	[TiLeGiam] [float] NOT NULL,
	[MoTa] [nvarchar](max) NOT NULL,
	[DieuKien] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[KhuyenMai_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhuyenMai_LichSuSuDung]    Script Date: 29/03/2024 8:06:59 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhuyenMai_LichSuSuDung](
	[LichSuSuDung_ID] [int] IDENTITY(1,1) NOT NULL,
	[KhuyenMai_ID] [int] NOT NULL,
	[SanPham_ID] [int] NULL,
	[KhachHang_ID] [int] NULL,
	[HoaDon_ID] [int] NULL,
	[NgaySuDung] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[LichSuSuDung_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSP]    Script Date: 29/03/2024 8:06:59 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSP](
	[LoaiSP_ID] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiSP] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[LoaiSP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 29/03/2024 8:06:59 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[NhaCungCap_ID] [int] IDENTITY(1,1) NOT NULL,
	[TenNhaCungCap] [nvarchar](max) NOT NULL,
	[DiaChi] [nvarchar](max) NOT NULL,
	[DienThoai] [varchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[NhaCungCap_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 29/03/2024 8:06:59 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[NhanVien_ID] [int] IDENTITY(1,1) NOT NULL,
	[ChucVu] [nvarchar](max) NULL,
	[HoTen] [nvarchar](max) NOT NULL,
	[GioiTinh] [nvarchar](max) NOT NULL,
	[DiaChi] [nvarchar](max) NOT NULL,
	[DienThoai] [varchar](15) NOT NULL,
	[Email] [varchar](255) NOT NULL,
	[Luong] [float] NOT NULL,
	[MatKhau] [varchar](255) NOT NULL,
	[NgayTao] [date] NULL,
	[NgaySinh] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[NhanVien_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 29/03/2024 8:06:59 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[PhieuNhap_ID] [int] IDENTITY(1,1) NOT NULL,
	[NgayNhap] [date] NOT NULL,
	[TongTien] [float] NOT NULL,
	[NhanVien_ID] [int] NOT NULL,
	[NhaCungCap_ID] [int] NOT NULL,
	[NgayTao] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[PhieuNhap_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuXuat]    Script Date: 29/03/2024 8:06:59 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuXuat](
	[PhieuXuat_ID] [int] IDENTITY(1,1) NOT NULL,
	[NgayXuat] [date] NOT NULL,
	[TongTien] [float] NOT NULL,
	[NhanVien_ID] [int] NOT NULL,
	[NgayTao] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[PhieuXuat_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 29/03/2024 8:06:59 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[SanPham_ID] [int] IDENTITY(1,1) NOT NULL,
	[TenSanPham] [nvarchar](max) NOT NULL,
	[Gia] [float] NOT NULL,
	[SoLuong] [int] NULL,
	[TrangThai] [nvarchar](255) NOT NULL,
	[Hinh] [nvarchar](max) NULL,
	[MoTa] [nvarchar](max) NULL,
	[KhuyenMai_ID] [int] NULL,
	[ThuongHieu_ID] [int] NOT NULL,
	[LoaiSP_ID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SanPham_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham_KichCo]    Script Date: 29/03/2024 8:06:59 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham_KichCo](
	[KichCo_ID] [int] NOT NULL,
	[SanPham_ID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[KichCo_ID] ASC,
	[SanPham_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham_MauSac]    Script Date: 29/03/2024 8:06:59 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham_MauSac](
	[MauSac_ID] [int] NOT NULL,
	[SanPham_ID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MauSac_ID] ASC,
	[SanPham_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThuongHieu]    Script Date: 29/03/2024 8:06:59 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThuongHieu](
	[ThuongHieu_ID] [int] IDENTITY(1,1) NOT NULL,
	[TenThuongHieu] [nvarchar](max) NOT NULL,
	[Email] [varchar](255) NOT NULL,
	[DiaChi] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ThuongHieu_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChiTietHoaDon] ON 

INSERT [dbo].[ChiTietHoaDon] ([ChiTietHoaDon_ID], [SoLuong], [TongGia], [HoaDon_ID], [MauSac_ID], [KichCo_ID], [SanPham_ID]) VALUES (1, 2, 2086000, 1, 2, 1, 3)
INSERT [dbo].[ChiTietHoaDon] ([ChiTietHoaDon_ID], [SoLuong], [TongGia], [HoaDon_ID], [MauSac_ID], [KichCo_ID], [SanPham_ID]) VALUES (2, 3, 2520000, 1, 1, 1, 1)
INSERT [dbo].[ChiTietHoaDon] ([ChiTietHoaDon_ID], [SoLuong], [TongGia], [HoaDon_ID], [MauSac_ID], [KichCo_ID], [SanPham_ID]) VALUES (3, 3, 2520000, 2, 1, 2, 1)
INSERT [dbo].[ChiTietHoaDon] ([ChiTietHoaDon_ID], [SoLuong], [TongGia], [HoaDon_ID], [MauSac_ID], [KichCo_ID], [SanPham_ID]) VALUES (4, 1, 1050000, 2, 2, 2, 2)
INSERT [dbo].[ChiTietHoaDon] ([ChiTietHoaDon_ID], [SoLuong], [TongGia], [HoaDon_ID], [MauSac_ID], [KichCo_ID], [SanPham_ID]) VALUES (5, 1, 1050000, 2, 2, 2, 2)
INSERT [dbo].[ChiTietHoaDon] ([ChiTietHoaDon_ID], [SoLuong], [TongGia], [HoaDon_ID], [MauSac_ID], [KichCo_ID], [SanPham_ID]) VALUES (6, 12, 12516000, 12, 1, 1, 3)
INSERT [dbo].[ChiTietHoaDon] ([ChiTietHoaDon_ID], [SoLuong], [TongGia], [HoaDon_ID], [MauSac_ID], [KichCo_ID], [SanPham_ID]) VALUES (8, 2, 2786000, 12, 4, 7, 4)
INSERT [dbo].[ChiTietHoaDon] ([ChiTietHoaDon_ID], [SoLuong], [TongGia], [HoaDon_ID], [MauSac_ID], [KichCo_ID], [SanPham_ID]) VALUES (9, 5, 4200000, 12, 2, 2, 1)
INSERT [dbo].[ChiTietHoaDon] ([ChiTietHoaDon_ID], [SoLuong], [TongGia], [HoaDon_ID], [MauSac_ID], [KichCo_ID], [SanPham_ID]) VALUES (10, 0, 0, 12, 1, 1, 3)
INSERT [dbo].[ChiTietHoaDon] ([ChiTietHoaDon_ID], [SoLuong], [TongGia], [HoaDon_ID], [MauSac_ID], [KichCo_ID], [SanPham_ID]) VALUES (11, 1, 1043000, 18, 1, 1, 3)
INSERT [dbo].[ChiTietHoaDon] ([ChiTietHoaDon_ID], [SoLuong], [TongGia], [HoaDon_ID], [MauSac_ID], [KichCo_ID], [SanPham_ID]) VALUES (12, 2, 2786000, 18, 4, 4, 4)
INSERT [dbo].[ChiTietHoaDon] ([ChiTietHoaDon_ID], [SoLuong], [TongGia], [HoaDon_ID], [MauSac_ID], [KichCo_ID], [SanPham_ID]) VALUES (13, 1, 1393000, 18, 4, 4, 4)
INSERT [dbo].[ChiTietHoaDon] ([ChiTietHoaDon_ID], [SoLuong], [TongGia], [HoaDon_ID], [MauSac_ID], [KichCo_ID], [SanPham_ID]) VALUES (14, 3, 4179000, 21, 4, 4, 4)
INSERT [dbo].[ChiTietHoaDon] ([ChiTietHoaDon_ID], [SoLuong], [TongGia], [HoaDon_ID], [MauSac_ID], [KichCo_ID], [SanPham_ID]) VALUES (15, 12, 12600000, 22, 1, 1, 2)
INSERT [dbo].[ChiTietHoaDon] ([ChiTietHoaDon_ID], [SoLuong], [TongGia], [HoaDon_ID], [MauSac_ID], [KichCo_ID], [SanPham_ID]) VALUES (16, 2, 3942000, 22, 9, 9, 5)
INSERT [dbo].[ChiTietHoaDon] ([ChiTietHoaDon_ID], [SoLuong], [TongGia], [HoaDon_ID], [MauSac_ID], [KichCo_ID], [SanPham_ID]) VALUES (17, 2, 2086000, 7, 1, 1, 3)
SET IDENTITY_INSERT [dbo].[ChiTietHoaDon] OFF
GO
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuong], [DonGia], [PhieuNhap_ID], [SanPham_ID]) VALUES (50, 1000000, 1, 1)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuong], [DonGia], [PhieuNhap_ID], [SanPham_ID]) VALUES (35, 1200000, 1, 2)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuong], [DonGia], [PhieuNhap_ID], [SanPham_ID]) VALUES (25, 1200000, 2, 3)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuong], [DonGia], [PhieuNhap_ID], [SanPham_ID]) VALUES (20, 1600000, 3, 4)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuong], [DonGia], [PhieuNhap_ID], [SanPham_ID]) VALUES (12, 4068778, 5, 3)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuong], [DonGia], [PhieuNhap_ID], [SanPham_ID]) VALUES (23, 324254, 6, 4)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuong], [DonGia], [PhieuNhap_ID], [SanPham_ID]) VALUES (12, 231442, 6, 5)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuong], [DonGia], [PhieuNhap_ID], [SanPham_ID]) VALUES (23, 235356, 7, 2)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuong], [DonGia], [PhieuNhap_ID], [SanPham_ID]) VALUES (8, 2352543, 7, 5)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuong], [DonGia], [PhieuNhap_ID], [SanPham_ID]) VALUES (3, 1342534, 8, 3)
INSERT [dbo].[ChiTietPhieuNhap] ([SoLuong], [DonGia], [PhieuNhap_ID], [SanPham_ID]) VALUES (7, 3345453, 8, 5)
GO
INSERT [dbo].[ChiTietPhieuXuat] ([SoLuong], [PhieuXuat_ID], [SanPham_ID]) VALUES (40, 1, 1)
INSERT [dbo].[ChiTietPhieuXuat] ([SoLuong], [PhieuXuat_ID], [SanPham_ID]) VALUES (25, 1, 2)
INSERT [dbo].[ChiTietPhieuXuat] ([SoLuong], [PhieuXuat_ID], [SanPham_ID]) VALUES (15, 2, 3)
INSERT [dbo].[ChiTietPhieuXuat] ([SoLuong], [PhieuXuat_ID], [SanPham_ID]) VALUES (4, 3, 3)
INSERT [dbo].[ChiTietPhieuXuat] ([SoLuong], [PhieuXuat_ID], [SanPham_ID]) VALUES (10, 3, 4)
INSERT [dbo].[ChiTietPhieuXuat] ([SoLuong], [PhieuXuat_ID], [SanPham_ID]) VALUES (6, 4, 3)
INSERT [dbo].[ChiTietPhieuXuat] ([SoLuong], [PhieuXuat_ID], [SanPham_ID]) VALUES (24, 4, 4)
INSERT [dbo].[ChiTietPhieuXuat] ([SoLuong], [PhieuXuat_ID], [SanPham_ID]) VALUES (0, 10, 2)
INSERT [dbo].[ChiTietPhieuXuat] ([SoLuong], [PhieuXuat_ID], [SanPham_ID]) VALUES (28, 10, 5)
INSERT [dbo].[ChiTietPhieuXuat] ([SoLuong], [PhieuXuat_ID], [SanPham_ID]) VALUES (3, 11, 2)
INSERT [dbo].[ChiTietPhieuXuat] ([SoLuong], [PhieuXuat_ID], [SanPham_ID]) VALUES (2, 11, 5)
GO
SET IDENTITY_INSERT [dbo].[ChiTietSanPham_KichCo] ON 

INSERT [dbo].[ChiTietSanPham_KichCo] ([KichCo_ID], [KichCo]) VALUES (1, N'36')
INSERT [dbo].[ChiTietSanPham_KichCo] ([KichCo_ID], [KichCo]) VALUES (2, N'37')
INSERT [dbo].[ChiTietSanPham_KichCo] ([KichCo_ID], [KichCo]) VALUES (3, N'38')
INSERT [dbo].[ChiTietSanPham_KichCo] ([KichCo_ID], [KichCo]) VALUES (4, N'39')
INSERT [dbo].[ChiTietSanPham_KichCo] ([KichCo_ID], [KichCo]) VALUES (5, N'40')
INSERT [dbo].[ChiTietSanPham_KichCo] ([KichCo_ID], [KichCo]) VALUES (6, N'41')
INSERT [dbo].[ChiTietSanPham_KichCo] ([KichCo_ID], [KichCo]) VALUES (7, N'42')
INSERT [dbo].[ChiTietSanPham_KichCo] ([KichCo_ID], [KichCo]) VALUES (8, N'43')
INSERT [dbo].[ChiTietSanPham_KichCo] ([KichCo_ID], [KichCo]) VALUES (9, N'44')
INSERT [dbo].[ChiTietSanPham_KichCo] ([KichCo_ID], [KichCo]) VALUES (10, N'45')
INSERT [dbo].[ChiTietSanPham_KichCo] ([KichCo_ID], [KichCo]) VALUES (11, N'S')
INSERT [dbo].[ChiTietSanPham_KichCo] ([KichCo_ID], [KichCo]) VALUES (12, N'M')
INSERT [dbo].[ChiTietSanPham_KichCo] ([KichCo_ID], [KichCo]) VALUES (13, N'L')
INSERT [dbo].[ChiTietSanPham_KichCo] ([KichCo_ID], [KichCo]) VALUES (14, N'XL')
INSERT [dbo].[ChiTietSanPham_KichCo] ([KichCo_ID], [KichCo]) VALUES (15, N'XXL')
SET IDENTITY_INSERT [dbo].[ChiTietSanPham_KichCo] OFF
GO
SET IDENTITY_INSERT [dbo].[ChiTietSanPham_MauSac] ON 

INSERT [dbo].[ChiTietSanPham_MauSac] ([MauSac_ID], [MauSac]) VALUES (1, N'Đen')
INSERT [dbo].[ChiTietSanPham_MauSac] ([MauSac_ID], [MauSac]) VALUES (2, N'Trắng')
INSERT [dbo].[ChiTietSanPham_MauSac] ([MauSac_ID], [MauSac]) VALUES (3, N'Xanh dương')
INSERT [dbo].[ChiTietSanPham_MauSac] ([MauSac_ID], [MauSac]) VALUES (4, N'Đỏ')
INSERT [dbo].[ChiTietSanPham_MauSac] ([MauSac_ID], [MauSac]) VALUES (5, N'Vàng')
INSERT [dbo].[ChiTietSanPham_MauSac] ([MauSac_ID], [MauSac]) VALUES (6, N'Nâu')
INSERT [dbo].[ChiTietSanPham_MauSac] ([MauSac_ID], [MauSac]) VALUES (7, N'Hồng')
INSERT [dbo].[ChiTietSanPham_MauSac] ([MauSac_ID], [MauSac]) VALUES (8, N'Xám')
INSERT [dbo].[ChiTietSanPham_MauSac] ([MauSac_ID], [MauSac]) VALUES (9, N'Be')
INSERT [dbo].[ChiTietSanPham_MauSac] ([MauSac_ID], [MauSac]) VALUES (10, N'Tím')
INSERT [dbo].[ChiTietSanPham_MauSac] ([MauSac_ID], [MauSac]) VALUES (11, N'Xanh Lam')
INSERT [dbo].[ChiTietSanPham_MauSac] ([MauSac_ID], [MauSac]) VALUES (12, N'Xanh Lục')
INSERT [dbo].[ChiTietSanPham_MauSac] ([MauSac_ID], [MauSac]) VALUES (13, N'Cam')
INSERT [dbo].[ChiTietSanPham_MauSac] ([MauSac_ID], [MauSac]) VALUES (14, N'Vàng nhạt')
SET IDENTITY_INSERT [dbo].[ChiTietSanPham_MauSac] OFF
GO
SET IDENTITY_INSERT [dbo].[HoaDon] ON 

INSERT [dbo].[HoaDon] ([HoaDon_ID], [NgayTao], [TongTien], [DiaChiGiaoHang], [TrangThai], [GhiChu], [PhuongThucThanhToan], [KhuyenMai_ID], [TrangThaiThanhToan], [KhachHang_ID], [NhanVien_ID], [Khoa]) VALUES (1, CAST(N'2023-07-01' AS Date), 3684800, N'123 Đường ABC, Quận XYZ', N'Chờ nhận hàng', N'Ghi chú về đơn hàng', N'Tiền mặt', 1, 1, 4, 1, NULL)
INSERT [dbo].[HoaDon] ([HoaDon_ID], [NgayTao], [TongTien], [DiaChiGiaoHang], [TrangThai], [GhiChu], [PhuongThucThanhToan], [KhuyenMai_ID], [TrangThaiThanhToan], [KhachHang_ID], [NhanVien_ID], [Khoa]) VALUES (2, CAST(N'2023-07-02' AS Date), 4620000, N'456 Đường DEF, Quận UVW', N'Đã nhận hàng', N'Ghi chú về đơn hàng khác', N'Chuyển khoản', NULL, 0, 2, 2, NULL)
INSERT [dbo].[HoaDon] ([HoaDon_ID], [NgayTao], [TongTien], [DiaChiGiaoHang], [TrangThai], [GhiChu], [PhuongThucThanhToan], [KhuyenMai_ID], [TrangThaiThanhToan], [KhachHang_ID], [NhanVien_ID], [Khoa]) VALUES (7, CAST(N'2023-12-03' AS Date), 2086000, N'', N'Đã nhận hàng', N'', N'Tiền mặt', NULL, 1, NULL, 2, NULL)
INSERT [dbo].[HoaDon] ([HoaDon_ID], [NgayTao], [TongTien], [DiaChiGiaoHang], [TrangThai], [GhiChu], [PhuongThucThanhToan], [KhuyenMai_ID], [TrangThaiThanhToan], [KhachHang_ID], [NhanVien_ID], [Khoa]) VALUES (8, CAST(N'2023-12-03' AS Date), NULL, N'', N'Đã nhận hàng', N'', N'Tiền mặt', NULL, 1, NULL, 2, NULL)
INSERT [dbo].[HoaDon] ([HoaDon_ID], [NgayTao], [TongTien], [DiaChiGiaoHang], [TrangThai], [GhiChu], [PhuongThucThanhToan], [KhuyenMai_ID], [TrangThaiThanhToan], [KhachHang_ID], [NhanVien_ID], [Khoa]) VALUES (9, CAST(N'2023-12-03' AS Date), NULL, N'', N'Đã nhận hàng', N'', N'Tiền mặt', NULL, 1, NULL, 2, NULL)
INSERT [dbo].[HoaDon] ([HoaDon_ID], [NgayTao], [TongTien], [DiaChiGiaoHang], [TrangThai], [GhiChu], [PhuongThucThanhToan], [KhuyenMai_ID], [TrangThaiThanhToan], [KhachHang_ID], [NhanVien_ID], [Khoa]) VALUES (11, CAST(N'2023-12-03' AS Date), NULL, N'', N'Đã nhận hàng', N'', N'Tiền mặt', NULL, 1, NULL, 2, NULL)
INSERT [dbo].[HoaDon] ([HoaDon_ID], [NgayTao], [TongTien], [DiaChiGiaoHang], [TrangThai], [GhiChu], [PhuongThucThanhToan], [KhuyenMai_ID], [TrangThaiThanhToan], [KhachHang_ID], [NhanVien_ID], [Khoa]) VALUES (12, CAST(N'2023-12-03' AS Date), 19502000, N'', N'Đã nhận hàng', N'', N'Tiền mặt', NULL, 1, NULL, 2, NULL)
INSERT [dbo].[HoaDon] ([HoaDon_ID], [NgayTao], [TongTien], [DiaChiGiaoHang], [TrangThai], [GhiChu], [PhuongThucThanhToan], [KhuyenMai_ID], [TrangThaiThanhToan], [KhachHang_ID], [NhanVien_ID], [Khoa]) VALUES (14, CAST(N'2023-12-03' AS Date), NULL, N'', N'Đã nhận hàng', N'', N'Tiền mặt', NULL, 1, NULL, 2, NULL)
INSERT [dbo].[HoaDon] ([HoaDon_ID], [NgayTao], [TongTien], [DiaChiGiaoHang], [TrangThai], [GhiChu], [PhuongThucThanhToan], [KhuyenMai_ID], [TrangThaiThanhToan], [KhachHang_ID], [NhanVien_ID], [Khoa]) VALUES (15, CAST(N'2023-12-03' AS Date), NULL, N'', N'Đã nhận hàng', N'', N'Tiền mặt', NULL, 1, NULL, 2, NULL)
INSERT [dbo].[HoaDon] ([HoaDon_ID], [NgayTao], [TongTien], [DiaChiGiaoHang], [TrangThai], [GhiChu], [PhuongThucThanhToan], [KhuyenMai_ID], [TrangThaiThanhToan], [KhachHang_ID], [NhanVien_ID], [Khoa]) VALUES (17, CAST(N'2023-12-03' AS Date), NULL, N'', N'Đã nhận hàng', N'', N'Tiền mặt', NULL, 1, NULL, 2, NULL)
INSERT [dbo].[HoaDon] ([HoaDon_ID], [NgayTao], [TongTien], [DiaChiGiaoHang], [TrangThai], [GhiChu], [PhuongThucThanhToan], [KhuyenMai_ID], [TrangThaiThanhToan], [KhachHang_ID], [NhanVien_ID], [Khoa]) VALUES (18, CAST(N'2023-12-06' AS Date), 5222000, N'', N'Đã nhận hàng', N'', N'Tiền mặt', NULL, 1, NULL, 2, NULL)
INSERT [dbo].[HoaDon] ([HoaDon_ID], [NgayTao], [TongTien], [DiaChiGiaoHang], [TrangThai], [GhiChu], [PhuongThucThanhToan], [KhuyenMai_ID], [TrangThaiThanhToan], [KhachHang_ID], [NhanVien_ID], [Khoa]) VALUES (19, CAST(N'2023-12-06' AS Date), NULL, N'', N'Đã nhận hàng', N'', N'Tiền mặt', NULL, 1, NULL, 2, NULL)
INSERT [dbo].[HoaDon] ([HoaDon_ID], [NgayTao], [TongTien], [DiaChiGiaoHang], [TrangThai], [GhiChu], [PhuongThucThanhToan], [KhuyenMai_ID], [TrangThaiThanhToan], [KhachHang_ID], [NhanVien_ID], [Khoa]) VALUES (21, CAST(N'2023-12-08' AS Date), 4179000, N'', N'Đã nhận hàng', N'', N'Tiền mặt', NULL, 1, NULL, 2, NULL)
INSERT [dbo].[HoaDon] ([HoaDon_ID], [NgayTao], [TongTien], [DiaChiGiaoHang], [TrangThai], [GhiChu], [PhuongThucThanhToan], [KhuyenMai_ID], [TrangThaiThanhToan], [KhachHang_ID], [NhanVien_ID], [Khoa]) VALUES (22, CAST(N'2023-12-13' AS Date), 16542000, N'', N'Đã nhận hàng', N'', N'Tiền mặt', NULL, 1, NULL, 2, NULL)
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([KhachHang_ID], [HoTen], [GioiTinh], [Email], [Anh], [DienThoai], [DiaChi], [NgaySinh], [NgayTao]) VALUES (1, N'Nguyễn Văn Hoàn', N'Nam', N'hoannv2097@gmail.com', N'avatar_hoannv2097.jpg', N'0911895126', N'19 Đ. Số 53, ấp Chợ, Củ Chi, TP.HCM, Việt Nam', CAST(N'1990-01-15' AS Date), CAST(N'2022-06-10' AS Date))
INSERT [dbo].[KhachHang] ([KhachHang_ID], [HoTen], [GioiTinh], [Email], [Anh], [DienThoai], [DiaChi], [NgaySinh], [NgayTao]) VALUES (2, N'Trần Thị Mỹ Hạnh', N'Nữ', N'hanhmy1175@gmail.com', N'avatar_hanhmy1175.jpg', N'0382764115', N'19/2A phường Tân Chánh Hiệp, quận 12, TP.HCM, Việt Nam', CAST(N'1992-03-20' AS Date), CAST(N'2022-02-19' AS Date))
INSERT [dbo].[KhachHang] ([KhachHang_ID], [HoTen], [GioiTinh], [Email], [Anh], [DienThoai], [DiaChi], [NgaySinh], [NgayTao]) VALUES (3, N'Hoàng Minh Phúc', N'Nam', N'hoangminhphuc2207@gmail.com', N'avatar_phuchoangminh2207.jpg', N'0722159594', N'27/9A Xuân Thới Thượng, Hóc Môn, TP.HCM, Việt Nam', CAST(N'1997-11-09' AS Date), CAST(N'2019-07-20' AS Date))
INSERT [dbo].[KhachHang] ([KhachHang_ID], [HoTen], [GioiTinh], [Email], [Anh], [DienThoai], [DiaChi], [NgaySinh], [NgayTao]) VALUES (4, N'Phạm Hoàng Nhật Nam', N'Nam', N'nhatnamphamhoang217@gmail.com', N'avatar_nhatnamphamhoang217.jpg', N'0795743741', N'RPXH+9P6, Khu phố 7, Thủ Đức, TP.HCM, Việt Nam', CAST(N'1994-10-22' AS Date), CAST(N'2019-05-12' AS Date))
INSERT [dbo].[KhachHang] ([KhachHang_ID], [HoTen], [GioiTinh], [Email], [Anh], [DienThoai], [DiaChi], [NgaySinh], [NgayTao]) VALUES (6, N'adfsaf', N'Nam', N'dfsafsdfa@dfad.dsa', NULL, N'0908096678', N'gf', CAST(N'2023-12-12' AS Date), CAST(N'2023-12-07' AS Date))
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
SET IDENTITY_INSERT [dbo].[KhuyenMai] ON 

INSERT [dbo].[KhuyenMai] ([KhuyenMai_ID], [Ten], [NgayBatDau], [NgayKetThuc], [KhachHang_ID], [TrangThai], [TiLeGiam], [MoTa], [DieuKien]) VALUES (1, N'HOADON500', CAST(N'2023-07-01' AS Date), CAST(N'2024-01-01' AS Date), NULL, N'Kết thúc', 20, N'Khuyến mãi giảm giá 20% dành cho hóa đơn trên 500.000 đồng', N'DonHang.TongTien > 500000')
INSERT [dbo].[KhuyenMai] ([KhuyenMai_ID], [Ten], [NgayBatDau], [NgayKetThuc], [KhachHang_ID], [TrangThai], [TiLeGiam], [MoTa], [DieuKien]) VALUES (2, N'HOADON1TR', CAST(N'2023-09-01' AS Date), CAST(N'2024-01-01' AS Date), NULL, N'Kết thúc', 30, N'Khuyến mãi giảm giá 30% dành cho hóa đơn có giá trên 1 triệu', N'DonHang.TongTien > 1000000')
INSERT [dbo].[KhuyenMai] ([KhuyenMai_ID], [Ten], [NgayBatDau], [NgayKetThuc], [KhachHang_ID], [TrangThai], [TiLeGiam], [MoTa], [DieuKien]) VALUES (3, N'HOADON2TR', CAST(N'2023-04-01' AS Date), CAST(N'2024-01-01' AS Date), NULL, N'Kết thúc', 10, N'Khuyến mãi giảm giá 30% dành cho hóa đơn có giá trên 2 triệu', N'DonHang.TongTien > 2000000')
INSERT [dbo].[KhuyenMai] ([KhuyenMai_ID], [Ten], [NgayBatDau], [NgayKetThuc], [KhachHang_ID], [TrangThai], [TiLeGiam], [MoTa], [DieuKien]) VALUES (4, N'SP500', CAST(N'2023-04-01' AS Date), CAST(N'2024-01-01' AS Date), NULL, N'Kết thúc', 20, N'Khuyến mãi giảm giá 20% dành cho tất cả sản phẩm có giá trên 500.000 đồng', N'SanPham.Gia > 500000')
INSERT [dbo].[KhuyenMai] ([KhuyenMai_ID], [Ten], [NgayBatDau], [NgayKetThuc], [KhachHang_ID], [TrangThai], [TiLeGiam], [MoTa], [DieuKien]) VALUES (5, N'SP1TR', CAST(N'2023-04-01' AS Date), CAST(N'2024-01-01' AS Date), NULL, N'Kết thúc', 30, N'Khuyến mãi giảm giá 30% dành cho tất cả sản phẩm có giá trên 1 triệu', N'SanPham.Gia > 1000000')
INSERT [dbo].[KhuyenMai] ([KhuyenMai_ID], [Ten], [NgayBatDau], [NgayKetThuc], [KhachHang_ID], [TrangThai], [TiLeGiam], [MoTa], [DieuKien]) VALUES (6, N'SP2TR', CAST(N'2023-04-01' AS Date), CAST(N'2024-01-01' AS Date), NULL, N'Kết thúc', 10, N'Khuyến mãi giảm giá 10% dành cho tất cả sản phẩm có giá trên 2 triệu', N'SanPham.Gia > 2000000')
SET IDENTITY_INSERT [dbo].[KhuyenMai] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiSP] ON 

INSERT [dbo].[LoaiSP] ([LoaiSP_ID], [TenLoaiSP]) VALUES (1, N'Giày Thể Thao')
INSERT [dbo].[LoaiSP] ([LoaiSP_ID], [TenLoaiSP]) VALUES (2, N'Giày Cao Gót')
INSERT [dbo].[LoaiSP] ([LoaiSP_ID], [TenLoaiSP]) VALUES (3, N'Giày Bóng Đá')
INSERT [dbo].[LoaiSP] ([LoaiSP_ID], [TenLoaiSP]) VALUES (4, N'Giày Nam')
INSERT [dbo].[LoaiSP] ([LoaiSP_ID], [TenLoaiSP]) VALUES (5, N'Giày Nữ')
INSERT [dbo].[LoaiSP] ([LoaiSP_ID], [TenLoaiSP]) VALUES (6, N'Giày Trẻ Em')
SET IDENTITY_INSERT [dbo].[LoaiSP] OFF
GO
SET IDENTITY_INSERT [dbo].[NhaCungCap] ON 

INSERT [dbo].[NhaCungCap] ([NhaCungCap_ID], [TenNhaCungCap], [DiaChi], [DienThoai]) VALUES (1, N'Kho Giày Phố', N'205 Nguyễn Gia Thiều, Tp Bắc Ninh', N'0963333652')
INSERT [dbo].[NhaCungCap] ([NhaCungCap_ID], [TenNhaCungCap], [DiaChi], [DienThoai]) VALUES (2, N'Tổng Kho Sỉ Giày Authentic Sài Gòn', N'75A đường số 14, phường Linh Chiểu, quận Thủ Đức, TPHCM', N'0969883369')
INSERT [dbo].[NhaCungCap] ([NhaCungCap_ID], [TenNhaCungCap], [DiaChi], [DienThoai]) VALUES (3, N'Xưởng giày Ngọc Thạch', N'Lầu 1, 49A Đặng Văn Bi, P. Trường Thọ, Quận Thủ Đức, Tp.HCM', N'0334672418')
INSERT [dbo].[NhaCungCap] ([NhaCungCap_ID], [TenNhaCungCap], [DiaChi], [DienThoai]) VALUES (4, N'Xưởng giày dép Moon Shoes', N'Số 7 Hoàng Diệu 2, Thủ Đức, Tp.HCM', N'0938835393')
INSERT [dbo].[NhaCungCap] ([NhaCungCap_ID], [TenNhaCungCap], [DiaChi], [DienThoai]) VALUES (6, N'fdsgq3w4r', N'234afeaw', N'0546454744')
SET IDENTITY_INSERT [dbo].[NhaCungCap] OFF
GO
SET IDENTITY_INSERT [dbo].[NhanVien] ON 

INSERT [dbo].[NhanVien] ([NhanVien_ID], [ChucVu], [HoTen], [GioiTinh], [DiaChi], [DienThoai], [Email], [Luong], [MatKhau], [NgayTao], [NgaySinh]) VALUES (1, N'Quản Lý', N'Lê Trọng Hưng', N'Nam', N'6/6 Nam Lân, Bà Điểm, Hóc Môn, TPHCM', N'0325439459', N'tronghungle2195@gmail.com', 21000000, N'123456', CAST(N'2017-12-09' AS Date), NULL)
INSERT [dbo].[NhanVien] ([NhanVien_ID], [ChucVu], [HoTen], [GioiTinh], [DiaChi], [DienThoai], [Email], [Luong], [MatKhau], [NgayTao], [NgaySinh]) VALUES (2, N'Nhân Viên Bán Hàng', N'Nguyễn Anh Tài', N'Nam', N'23/9A Trịnh Thị Miếng, Tổ 67, Âp Trung Đông, Thới Tam Thôn, Hóc Môn, TPHCM', N'0911895158', N'tainguyenanh124@gmail.com', 12000000, N'123456', CAST(N'2020-07-21' AS Date), NULL)
INSERT [dbo].[NhanVien] ([NhanVien_ID], [ChucVu], [HoTen], [GioiTinh], [DiaChi], [DienThoai], [Email], [Luong], [MatKhau], [NgayTao], [NgaySinh]) VALUES (3, N'Nhân Viên Kho Hàng', N'Huỳnh Văn Tiến', N'Nam', N'225 Phạm Văn Chiêu, Phường 9, Gò Vấp, TPHCM', N'0391752061', N'tienvanhuynh2129@gmail.com', 13000000, N'123456', CAST(N'2021-03-22' AS Date), CAST(N'2003-12-15' AS Date))
INSERT [dbo].[NhanVien] ([NhanVien_ID], [ChucVu], [HoTen], [GioiTinh], [DiaChi], [DienThoai], [Email], [Luong], [MatKhau], [NgayTao], [NgaySinh]) VALUES (4, N'Quản Lý', N'Lê Thị Nhật Ánh', N'Nữ', N'795 Quang Trung, Phường 12, Gò Vấp, TPHCM', N'0791025118', N'lethinhatanh1275@gmail.com', 21000000, N'123456', CAST(N'2021-09-17' AS Date), NULL)
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
GO
SET IDENTITY_INSERT [dbo].[PhieuNhap] ON 

INSERT [dbo].[PhieuNhap] ([PhieuNhap_ID], [NgayNhap], [TongTien], [NhanVien_ID], [NhaCungCap_ID], [NgayTao]) VALUES (1, CAST(N'2023-07-20' AS Date), 92000000, 1, 1, CAST(N'2023-07-02' AS Date))
INSERT [dbo].[PhieuNhap] ([PhieuNhap_ID], [NgayNhap], [TongTien], [NhanVien_ID], [NhaCungCap_ID], [NgayTao]) VALUES (2, CAST(N'2023-08-05' AS Date), 30000000, 3, 2, CAST(N'2023-07-02' AS Date))
INSERT [dbo].[PhieuNhap] ([PhieuNhap_ID], [NgayNhap], [TongTien], [NhanVien_ID], [NhaCungCap_ID], [NgayTao]) VALUES (3, CAST(N'2023-09-10' AS Date), 32000000, 4, 3, CAST(N'2023-07-02' AS Date))
INSERT [dbo].[PhieuNhap] ([PhieuNhap_ID], [NgayNhap], [TongTien], [NhanVien_ID], [NhaCungCap_ID], [NgayTao]) VALUES (5, CAST(N'2023-12-12' AS Date), 48825336, 3, 1, CAST(N'2023-12-12' AS Date))
INSERT [dbo].[PhieuNhap] ([PhieuNhap_ID], [NgayNhap], [TongTien], [NhanVien_ID], [NhaCungCap_ID], [NgayTao]) VALUES (6, CAST(N'2023-12-12' AS Date), 10235146, 3, 1, CAST(N'2023-12-12' AS Date))
INSERT [dbo].[PhieuNhap] ([PhieuNhap_ID], [NgayNhap], [TongTien], [NhanVien_ID], [NhaCungCap_ID], [NgayTao]) VALUES (7, CAST(N'2023-12-12' AS Date), 24233532, 3, 1, CAST(N'2023-12-12' AS Date))
INSERT [dbo].[PhieuNhap] ([PhieuNhap_ID], [NgayNhap], [TongTien], [NhanVien_ID], [NhaCungCap_ID], [NgayTao]) VALUES (8, CAST(N'2023-12-12' AS Date), 27445773, 3, 1, CAST(N'2023-12-12' AS Date))
SET IDENTITY_INSERT [dbo].[PhieuNhap] OFF
GO
SET IDENTITY_INSERT [dbo].[PhieuXuat] ON 

INSERT [dbo].[PhieuXuat] ([PhieuXuat_ID], [NgayXuat], [TongTien], [NhanVien_ID], [NgayTao]) VALUES (1, CAST(N'2023-07-22' AS Date), 59850000, 1, CAST(N'2023-07-02' AS Date))
INSERT [dbo].[PhieuXuat] ([PhieuXuat_ID], [NgayXuat], [TongTien], [NhanVien_ID], [NgayTao]) VALUES (2, CAST(N'2023-08-07' AS Date), 15645000, 2, CAST(N'2023-07-02' AS Date))
INSERT [dbo].[PhieuXuat] ([PhieuXuat_ID], [NgayXuat], [TongTien], [NhanVien_ID], [NgayTao]) VALUES (3, CAST(N'2023-09-12' AS Date), 18102000, 3, CAST(N'2023-07-02' AS Date))
INSERT [dbo].[PhieuXuat] ([PhieuXuat_ID], [NgayXuat], [TongTien], [NhanVien_ID], [NgayTao]) VALUES (4, CAST(N'2023-12-12' AS Date), 39690000, 3, CAST(N'2023-12-12' AS Date))
INSERT [dbo].[PhieuXuat] ([PhieuXuat_ID], [NgayXuat], [TongTien], [NhanVien_ID], [NgayTao]) VALUES (10, CAST(N'2023-12-12' AS Date), 55188000, 3, CAST(N'2023-12-12' AS Date))
INSERT [dbo].[PhieuXuat] ([PhieuXuat_ID], [NgayXuat], [TongTien], [NhanVien_ID], [NgayTao]) VALUES (11, CAST(N'2023-12-12' AS Date), 7092000, 3, CAST(N'2023-12-12' AS Date))
SET IDENTITY_INSERT [dbo].[PhieuXuat] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([SanPham_ID], [TenSanPham], [Gia], [SoLuong], [TrangThai], [Hinh], [MoTa], [KhuyenMai_ID], [ThuongHieu_ID], [LoaiSP_ID]) VALUES (1, N'Giày thể thao Adidas UltraBoost', 1200000, 96, N'Còn hàng', N'sp1_img.jpg', N'Giày thể thao chất lượng cao từ Adidas.', NULL, 1, 1)
INSERT [dbo].[SanPham] ([SanPham_ID], [TenSanPham], [Gia], [SoLuong], [TrangThai], [Hinh], [MoTa], [KhuyenMai_ID], [ThuongHieu_ID], [LoaiSP_ID]) VALUES (2, N'Giày thể thao Nike Air Max', 1500000, 108, N'Còn hàng', N'sp2_img.jpg', N'Siêu nhẹ và thoải mái với Nike Air Max.', NULL, 2, 1)
INSERT [dbo].[SanPham] ([SanPham_ID], [TenSanPham], [Gia], [SoLuong], [TrangThai], [Hinh], [MoTa], [KhuyenMai_ID], [ThuongHieu_ID], [LoaiSP_ID]) VALUES (3, N'Giày cao gót mũi tròn Pearl Embellished Slingback', 1490000, 90, N'Còn hàng', N'sp3_img.jpg', N'Giày cao gót mới với phần mũi giày tương phản cùng phần quai ngang hiện đại, chắc chắn sẽ giúp nâng tầm cho bộ trang phục của bạn', NULL, 11, 2)
INSERT [dbo].[SanPham] ([SanPham_ID], [TenSanPham], [Gia], [SoLuong], [TrangThai], [Hinh], [MoTa], [KhuyenMai_ID], [ThuongHieu_ID], [LoaiSP_ID]) VALUES (4, N'Giày Chạy Bộ Nam Reebok Lite Plus 3', 1990000, 62, N'Còn hàng', N'sp4_img1.jpg', N'Giày Chạy Bộ Nam Reebok Lite Plus 3 mang lại trải nghiệm tuyệt vời nhất của một sản phẩm giày thể thao', NULL, 6, 1)
INSERT [dbo].[SanPham] ([SanPham_ID], [TenSanPham], [Gia], [SoLuong], [TrangThai], [Hinh], [MoTa], [KhuyenMai_ID], [ThuongHieu_ID], [LoaiSP_ID]) VALUES (5, N'Giày chạy bộ Hyperdrive ProFoam SPEED Running', 2190000, 83, N'Còn hàng', N'sp5_img.jpg', N'Giày thể thao Puma Nam Hyperdrive Profoam Speed – phù hợp mọi hoàn cảnh với phiên bản màu đen mang lại sự cá tính, mạnh mẽ cho các Runner.', NULL, 3, 1)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
INSERT [dbo].[SanPham_KichCo] ([KichCo_ID], [SanPham_ID]) VALUES (1, 2)
INSERT [dbo].[SanPham_KichCo] ([KichCo_ID], [SanPham_ID]) VALUES (1, 3)
INSERT [dbo].[SanPham_KichCo] ([KichCo_ID], [SanPham_ID]) VALUES (2, 1)
INSERT [dbo].[SanPham_KichCo] ([KichCo_ID], [SanPham_ID]) VALUES (2, 2)
INSERT [dbo].[SanPham_KichCo] ([KichCo_ID], [SanPham_ID]) VALUES (3, 1)
INSERT [dbo].[SanPham_KichCo] ([KichCo_ID], [SanPham_ID]) VALUES (3, 2)
INSERT [dbo].[SanPham_KichCo] ([KichCo_ID], [SanPham_ID]) VALUES (4, 4)
INSERT [dbo].[SanPham_KichCo] ([KichCo_ID], [SanPham_ID]) VALUES (6, 5)
INSERT [dbo].[SanPham_KichCo] ([KichCo_ID], [SanPham_ID]) VALUES (7, 4)
INSERT [dbo].[SanPham_KichCo] ([KichCo_ID], [SanPham_ID]) VALUES (9, 5)
GO
INSERT [dbo].[SanPham_MauSac] ([MauSac_ID], [SanPham_ID]) VALUES (1, 2)
INSERT [dbo].[SanPham_MauSac] ([MauSac_ID], [SanPham_ID]) VALUES (1, 3)
INSERT [dbo].[SanPham_MauSac] ([MauSac_ID], [SanPham_ID]) VALUES (2, 1)
INSERT [dbo].[SanPham_MauSac] ([MauSac_ID], [SanPham_ID]) VALUES (2, 2)
INSERT [dbo].[SanPham_MauSac] ([MauSac_ID], [SanPham_ID]) VALUES (3, 1)
INSERT [dbo].[SanPham_MauSac] ([MauSac_ID], [SanPham_ID]) VALUES (3, 2)
INSERT [dbo].[SanPham_MauSac] ([MauSac_ID], [SanPham_ID]) VALUES (4, 4)
INSERT [dbo].[SanPham_MauSac] ([MauSac_ID], [SanPham_ID]) VALUES (6, 5)
INSERT [dbo].[SanPham_MauSac] ([MauSac_ID], [SanPham_ID]) VALUES (7, 4)
INSERT [dbo].[SanPham_MauSac] ([MauSac_ID], [SanPham_ID]) VALUES (9, 5)
GO
SET IDENTITY_INSERT [dbo].[ThuongHieu] ON 

INSERT [dbo].[ThuongHieu] ([ThuongHieu_ID], [TenThuongHieu], [Email], [DiaChi]) VALUES (1, N'Adidas', N'adidas@example.com', N'123 Adidas Street, Adidas Town')
INSERT [dbo].[ThuongHieu] ([ThuongHieu_ID], [TenThuongHieu], [Email], [DiaChi]) VALUES (2, N'Nike', N'nike@example.com', N'456 Nike Street, Nike City')
INSERT [dbo].[ThuongHieu] ([ThuongHieu_ID], [TenThuongHieu], [Email], [DiaChi]) VALUES (3, N'Puma', N'puma@example.com', N'789 Puma Street, Puma Village')
INSERT [dbo].[ThuongHieu] ([ThuongHieu_ID], [TenThuongHieu], [Email], [DiaChi]) VALUES (4, N'New Balance', N'newbalance@example.com', N'101 New Balance Road, New Balance Land')
INSERT [dbo].[ThuongHieu] ([ThuongHieu_ID], [TenThuongHieu], [Email], [DiaChi]) VALUES (5, N'Converse', N'converse@example.com', N'555 Converse Avenue, Converseville')
INSERT [dbo].[ThuongHieu] ([ThuongHieu_ID], [TenThuongHieu], [Email], [DiaChi]) VALUES (6, N'Reebok', N'reebok@example.com', N'777 Reebok Lane, Reeboksville')
INSERT [dbo].[ThuongHieu] ([ThuongHieu_ID], [TenThuongHieu], [Email], [DiaChi]) VALUES (7, N'Biti''s', N'bitis@example.com', N'22 Lý Chiêu Hoàng, Phường 10, Quận 6, TP. Hồ Chí Minh')
INSERT [dbo].[ThuongHieu] ([ThuongHieu_ID], [TenThuongHieu], [Email], [DiaChi]) VALUES (8, N'Vans', N'vans@example.com', N'723 Vans Street, Vans Town')
INSERT [dbo].[ThuongHieu] ([ThuongHieu_ID], [TenThuongHieu], [Email], [DiaChi]) VALUES (9, N'Under Armour', N'underarmour@example.com', N'227 Under Armour Lane, Armoursville')
INSERT [dbo].[ThuongHieu] ([ThuongHieu_ID], [TenThuongHieu], [Email], [DiaChi]) VALUES (10, N'Supreme', N'supreme@example.com', N'192 Supreme Lane, Supreme Town')
INSERT [dbo].[ThuongHieu] ([ThuongHieu_ID], [TenThuongHieu], [Email], [DiaChi]) VALUES (11, N'Charles & Keith', N'charlesandkeith@example.com', N'154 Charles Lane, Keithsville')
SET IDENTITY_INSERT [dbo].[ThuongHieu] OFF
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD FOREIGN KEY([HoaDon_ID])
REFERENCES [dbo].[HoaDon] ([HoaDon_ID])
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD FOREIGN KEY([KichCo_ID])
REFERENCES [dbo].[ChiTietSanPham_KichCo] ([KichCo_ID])
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD FOREIGN KEY([MauSac_ID])
REFERENCES [dbo].[ChiTietSanPham_MauSac] ([MauSac_ID])
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD FOREIGN KEY([SanPham_ID])
REFERENCES [dbo].[SanPham] ([SanPham_ID])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD FOREIGN KEY([PhieuNhap_ID])
REFERENCES [dbo].[PhieuNhap] ([PhieuNhap_ID])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD FOREIGN KEY([SanPham_ID])
REFERENCES [dbo].[SanPham] ([SanPham_ID])
GO
ALTER TABLE [dbo].[ChiTietPhieuXuat]  WITH CHECK ADD FOREIGN KEY([PhieuXuat_ID])
REFERENCES [dbo].[PhieuXuat] ([PhieuXuat_ID])
GO
ALTER TABLE [dbo].[ChiTietPhieuXuat]  WITH CHECK ADD FOREIGN KEY([SanPham_ID])
REFERENCES [dbo].[SanPham] ([SanPham_ID])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([KhachHang_ID])
REFERENCES [dbo].[KhachHang] ([KhachHang_ID])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([KhuyenMai_ID])
REFERENCES [dbo].[KhuyenMai] ([KhuyenMai_ID])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([NhanVien_ID])
REFERENCES [dbo].[NhanVien] ([NhanVien_ID])
GO
ALTER TABLE [dbo].[KhuyenMai_LichSuSuDung]  WITH CHECK ADD FOREIGN KEY([HoaDon_ID])
REFERENCES [dbo].[HoaDon] ([HoaDon_ID])
GO
ALTER TABLE [dbo].[KhuyenMai_LichSuSuDung]  WITH CHECK ADD FOREIGN KEY([KhachHang_ID])
REFERENCES [dbo].[KhachHang] ([KhachHang_ID])
GO
ALTER TABLE [dbo].[KhuyenMai_LichSuSuDung]  WITH CHECK ADD FOREIGN KEY([KhuyenMai_ID])
REFERENCES [dbo].[KhuyenMai] ([KhuyenMai_ID])
GO
ALTER TABLE [dbo].[KhuyenMai_LichSuSuDung]  WITH CHECK ADD FOREIGN KEY([SanPham_ID])
REFERENCES [dbo].[SanPham] ([SanPham_ID])
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD FOREIGN KEY([NhaCungCap_ID])
REFERENCES [dbo].[NhaCungCap] ([NhaCungCap_ID])
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD FOREIGN KEY([NhanVien_ID])
REFERENCES [dbo].[NhanVien] ([NhanVien_ID])
GO
ALTER TABLE [dbo].[PhieuXuat]  WITH CHECK ADD FOREIGN KEY([NhanVien_ID])
REFERENCES [dbo].[NhanVien] ([NhanVien_ID])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([KhuyenMai_ID])
REFERENCES [dbo].[KhuyenMai] ([KhuyenMai_ID])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([LoaiSP_ID])
REFERENCES [dbo].[LoaiSP] ([LoaiSP_ID])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([ThuongHieu_ID])
REFERENCES [dbo].[ThuongHieu] ([ThuongHieu_ID])
GO
ALTER TABLE [dbo].[SanPham_KichCo]  WITH CHECK ADD FOREIGN KEY([KichCo_ID])
REFERENCES [dbo].[ChiTietSanPham_KichCo] ([KichCo_ID])
GO
ALTER TABLE [dbo].[SanPham_KichCo]  WITH CHECK ADD FOREIGN KEY([SanPham_ID])
REFERENCES [dbo].[SanPham] ([SanPham_ID])
GO
ALTER TABLE [dbo].[SanPham_MauSac]  WITH CHECK ADD FOREIGN KEY([MauSac_ID])
REFERENCES [dbo].[ChiTietSanPham_MauSac] ([MauSac_ID])
GO
ALTER TABLE [dbo].[SanPham_MauSac]  WITH CHECK ADD FOREIGN KEY([SanPham_ID])
REFERENCES [dbo].[SanPham] ([SanPham_ID])
GO
/****** Object:  StoredProcedure [dbo].[DoanhThuTheoQuy]    Script Date: 29/03/2024 8:07:00 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[DoanhThuTheoQuy](@Quy INT, @Nam INT)
AS BEGIN
	-- Tạo bảng tạm
    CREATE TABLE DoanhThu (KhachHang_ID INT, DoanhSo INT);
    CREATE TABLE TongDoanhThu(Quy INT, Nam INT, Tong INT);
    -- Tính tổng doanh thu theo quý
    INSERT INTO DoanhThu (KhachHang_ID, DoanhSo)
    SELECT d.khachhang_ID, SUM(d.TongTien)
    FROM HoaDon d
    WHERE DATEPART(QUARTER, d.NgayTao) = @Quy AND DATEPART(YEAR, d.NgayTao) = @Nam
    GROUP BY d.KhachHang_ID;
    -- Tính tổng doanh thu cho quý và năm cụ thể
    INSERT INTO TongDoanhThu (Quy, Nam, Tong)
    SELECT @Quy AS Quy, @Nam AS Nam, SUM(dt.DoanhSo) AS Tong
    FROM DoanhThu dt;
    -- Hiển thị thông tin trong bảng tạm DoanhThu
    SELECT * FROM DoanhThu;
    -- Hiển thị tổng doanh thu cho quý và năm cụ thể
    SELECT * FROM TongDoanhThu;
    -- Xóa bảng tạm
    DROP TABLE DoanhThu;
    DROP TABLE TongDoanhThu;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_GetNamTaoNhanVien]    Script Date: 29/03/2024 8:07:00 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[sp_GetNamTaoNhanVien]
AS
BEGIN
    SELECT DISTINCT YEAR(NgayTao) AS NamTao
    FROM NhanVien;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_ThongTinSP]    Script Date: 29/03/2024 8:07:00 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[sp_ThongTinSP]
AS
BEGIN
    SELECT
		sp.SanPham_ID,
        sp.TenSanPham,
        CASE
            WHEN sp.KhuyenMai_ID IS NOT NULL THEN sp.Gia - sp.Gia * km.TiLeGiam/100
            ELSE sp.Gia
        END AS Gia,
        sp.SoLuong,
        sp.TrangThai,
        km.Ten AS TenKhuyenMai,
        th.TenThuongHieu,
        lsp.TenLoaiSP
    FROM
        SanPham sp
    JOIN
        ThuongHieu th ON sp.ThuongHieu_ID = th.ThuongHieu_ID
    JOIN
        LoaiSP lsp ON sp.LoaiSP_ID = lsp.LoaiSP_ID
    LEFT JOIN
        KhuyenMai km ON sp.KhuyenMai_ID = km.KhuyenMai_ID;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateExpiredKhuyenMai]    Script Date: 29/03/2024 8:07:00 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[sp_UpdateExpiredKhuyenMai]
AS
BEGIN
    UPDATE SanPham
    SET KhuyenMai_ID = NULL
    WHERE KhuyenMai_ID IS NOT NULL
        AND GETDATE() > (SELECT NgayKetThuc FROM KhuyenMai WHERE KhuyenMai.KhuyenMai_ID = SanPham.KhuyenMai_ID);
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateKhuyenMaiStatus]    Script Date: 29/03/2024 8:07:00 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[sp_UpdateKhuyenMaiStatus]
AS
BEGIN
    -- Cập nhật trạng thái của khuyến mãi dựa trên NgayBatDau và NgayKetThuc
    UPDATE km
    SET TrangThai = 
        CASE
            WHEN GETDATE() < km.NgayBatDau THEN N'Chưa bắt đầu'
            WHEN GETDATE() BETWEEN km.NgayBatDau AND km.NgayKetThuc THEN N'Hoạt động'
            ELSE N'Kết thúc'
        END
    FROM KhuyenMai km
END;
GO
/****** Object:  StoredProcedure [dbo].[TopSanPhamBanChay]    Script Date: 29/03/2024 8:07:00 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[TopSanPhamBanChay]
    @Top INT,
    @Thang INT
AS
BEGIN
    SELECT TOP (@Top)
        SP.SanPham_ID,
        SP.TenSanPham,
        SUM(ChiTietHoaDon.SoLuong) AS TongSoLuong
    FROM
        SanPham SP
    JOIN
        ChiTietHoaDon ON SP.SanPham_ID = ChiTietHoaDon.SanPham_ID
    JOIN
        HoaDon ON ChiTietHoaDon.HoaDon_ID = HoaDon.HoaDon_ID
    WHERE
        MONTH(HoaDon.NgayTao) = @Thang
    GROUP BY
        SP.SanPham_ID, SP.TenSanPham
    ORDER BY
        TongSoLuong DESC;
END;
GO
/****** Object:  StoredProcedure [dbo].[UpdateChiTietHoaDon_TongGia]    Script Date: 29/03/2024 8:07:00 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[UpdateChiTietHoaDon_TongGia]
AS
BEGIN
    UPDATE ChiTietHoaDon
    SET TongGia = cthd.SoLuong * CASE
        WHEN sp.KhuyenMai_ID IS NOT NULL THEN (sp.Gia - (sp.Gia * km.TiLeGiam/100))
        ELSE sp.Gia
    END
    FROM ChiTietHoaDon cthd
    JOIN SanPham sp ON cthd.SanPham_ID = sp.SanPham_ID
    LEFT JOIN KhuyenMai km ON sp.KhuyenMai_ID = km.KhuyenMai_ID;
END;
GO
/****** Object:  StoredProcedure [dbo].[UpdateSoLuongSanPham]    Script Date: 29/03/2024 8:07:00 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateSoLuongSanPham]
    @SanPhamID INT,
    @SoLuong INT
AS
BEGIN
    UPDATE sp
    SET SoLuong = SoLuong - @SoLuong
    FROM SanPham sp
    WHERE sp.SanPham_ID = @SanPhamID;
END;
GO
/****** Object:  StoredProcedure [dbo].[UpdateTongTien_HoaDon]    Script Date: 29/03/2024 8:07:00 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateTongTien_HoaDon]
AS
BEGIN
    UPDATE HoaDon
    SET TongTien = (
        SELECT SUM(ChiTietHoaDon.TongGia)
        FROM ChiTietHoaDon
        WHERE ChiTietHoaDon.HoaDon_ID = HoaDon.HoaDon_ID
    );
END;
GO
/****** Object:  StoredProcedure [dbo].[UpdateTongTien_HoaDonKhuyenMai]    Script Date: 29/03/2024 8:07:00 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[UpdateTongTien_HoaDonKhuyenMai]
AS
BEGIN
    UPDATE HoaDon
    SET TongTien = 
        CASE
            WHEN HoaDon.KhuyenMai_ID IS NOT NULL THEN TongTien * (1 - km.TiLeGiam / 100)
            ELSE TongTien
        END
    FROM HoaDon
    LEFT JOIN KhuyenMai km ON HoaDon.KhuyenMai_ID = km.KhuyenMai_ID;
END;
GO
/****** Object:  StoredProcedure [dbo].[UpdateTongTien_PhieuNhap]    Script Date: 29/03/2024 8:07:00 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Tạo stored procedure cho bảng PhieuNhap
CREATE   PROCEDURE [dbo].[UpdateTongTien_PhieuNhap]
AS
BEGIN
    UPDATE PhieuNhap
    SET TongTien = (
        SELECT SUM(cp.DonGia * cp.SoLuong)
        FROM ChiTietPhieuNhap cp
        WHERE cp.PhieuNhap_ID = PhieuNhap.PhieuNhap_ID
    );
END;
GO
/****** Object:  StoredProcedure [dbo].[UpdateTongTien_PhieuXuat]    Script Date: 29/03/2024 8:07:00 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Tạo stored procedure cho bảng PhieuXuat
CREATE   PROCEDURE [dbo].[UpdateTongTien_PhieuXuat]
AS
BEGIN
    UPDATE PhieuXuat
    SET TongTien = (
        SELECT SUM(
            CASE
                WHEN sp.KhuyenMai_ID IS NOT NULL THEN (cp.SoLuong * (sp.Gia - (sp.Gia * km.TiLeGiam/100)))
                ELSE (cp.SoLuong * sp.Gia)
            END
        )
        FROM ChiTietPhieuXuat cp
        INNER JOIN SanPham sp ON cp.SanPham_ID = sp.SanPham_ID
        LEFT JOIN KhuyenMai km ON sp.KhuyenMai_ID = km.KhuyenMai_ID
        WHERE cp.PhieuXuat_ID = PhieuXuat.PhieuXuat_ID
    );
END;
GO
USE [master]
GO
ALTER DATABASE [QL_BanGiay] SET  READ_WRITE 
GO
---------------------
CREATE PROCEDURE lichSuMuaHang @idKhachHang INT
AS
BEGIN
    SELECT sp.SanPham_ID as sp_id, hd.KhachHang_ID as khach_id, sp.TenSanPham as sp_title, sp.Hinh as sp_hinh, sp.Gia as gia, SUM(ct.SoLuong) as soluong_mua, hd.TrangThai as trangthai FROM ChiTietHoaDon ct JOIN HoaDon hd ON ct.HoaDon_ID = hd.HoaDon_ID JOIN SanPham sp ON ct.SanPham_ID = sp.SanPham_ID
	JOIN KhachHang kh ON hd.KhachHang_ID = kh.KhachHang_ID WHERE hd.KhachHang_ID = @idKhachHang GROUP BY sp.SanPham_ID, hd.KhachHang_ID, sp.TenSanPham, sp.Gia, hd.TrangThai, sp.Hinh
END
GO

EXEC lichSuMuaHang 2
GO
-------------------------
CREATE PROCEDURE lichSuMuaHang_wonder @idKhachHang INT, @trangThai NVARCHAR(255)
AS
BEGIN
    SELECT sp.SanPham_ID as sp_id, hd.KhachHang_ID as khach_id, sp.TenSanPham as sp_title, sp.Hinh as sp_hinh, sp.Gia as gia, SUM(ct.SoLuong) as soluong_mua, hd.TrangThai as trangthai FROM ChiTietHoaDon ct JOIN HoaDon hd ON ct.HoaDon_ID = hd.HoaDon_ID JOIN SanPham sp ON ct.SanPham_ID = sp.SanPham_ID
	JOIN KhachHang kh ON hd.KhachHang_ID = kh.KhachHang_ID WHERE hd.KhachHang_ID = @idKhachHang AND hd.TrangThai = @trangThai GROUP BY sp.SanPham_ID, hd.KhachHang_ID, sp.TenSanPham, sp.Gia, hd.TrangThai, sp.Hinh
END
GO

EXEC lichSuMuaHang_wonder 2, "Đã nhận hàng"
