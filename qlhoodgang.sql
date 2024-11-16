-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 22, 2024 lúc 12:12 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `qlhoodgang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `collab`
--

CREATE TABLE `collab` (
  `MaCollab` varchar(10) NOT NULL,
  `TenCollab` varchar(50) NOT NULL,
  `TenFullCollab` varchar(100) NOT NULL,
  `HinhAnhCollab` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `collab`
--

INSERT INTO `collab` (`MaCollab`, `TenCollab`, `TenFullCollab`, `HinhAnhCollab`) VALUES
('CLB001', 'T1', 'T1 Entertainment', 'T1_Logo.png'),
('CLB002', 'GENG', 'Generation Gaming', 'GenG_Logo.png'),
('CLB003', 'GAM', 'GAM Esports', 'GAM_Esports_Logo.png'),
('CLB004', 'SE', 'SBTC Esports', 'SBTC_Esports_Logo.png'),
('CLB005', 'CR7', 'UR · Cristiano', 'CR7_Logo.png'),
('CLB008', 'MU', 'Manchester United', 'Manchester_United_FC_Logo.png'),
('CLB009', 'SGP', 'Saigon Phantom', 'Saigon_Phantom_Logo.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ctdh`
--

CREATE TABLE `ctdh` (
  `MaDH` varchar(10) NOT NULL,
  `MaMH` varchar(10) NOT NULL,
  `SLMH` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `ctdh`
--

INSERT INTO `ctdh` (`MaDH`, `MaMH`, `SLMH`) VALUES
('DH001', 'MH002', 2),
('DH001', 'MH006', 3),
('DH001', 'MH019', 3),
('DH002', 'MH002', 2),
('DH002', 'MH004', 4),
('DH002', 'MH011', 3),
('DH002', 'MH013', 4),
('DH003', 'MH001', 4),
('DH003', 'MH014', 3),
('DH004', 'MH008', 10),
('DH004', 'MH009', 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ctkt`
--

CREATE TABLE `ctkt` (
  `MaMH` varchar(10) NOT NULL,
  `MaKT` varchar(10) NOT NULL,
  `SLMH` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `ctkt`
--

INSERT INTO `ctkt` (`MaMH`, `MaKT`, `SLMH`) VALUES
('MH016', '2XL', 20),
('MH016', '3XL', 20),
('MH001', 'L', 50),
('MH002', 'L', 50),
('MH003', 'L', 50),
('MH004', 'L', 50),
('MH005', 'L', 50),
('MH006', 'L', 50),
('MH007', 'L', 50),
('MH008', 'L', 50),
('MH009', 'L', 50),
('MH010', 'L', 10),
('MH011', 'L', 50),
('MH012', 'L', 50),
('MH013', 'L', 50),
('MH014', 'L', 50),
('MH015', 'L', 50),
('MH016', 'L', 50),
('MH017', 'L', 50),
('MH019', 'L', 50),
('MH020', 'L', 43),
('MH021', 'L', 34),
('MH022', 'L', 34),
('MH023', 'L', 30),
('MH001', 'M', 50),
('MH002', 'M', 50),
('MH003', 'M', 50),
('MH004', 'M', 0),
('MH005', 'M', 50),
('MH006', 'M', 50),
('MH007', 'M', 50),
('MH008', 'M', 50),
('MH009', 'M', 50),
('MH010', 'M', 39),
('MH011', 'M', 50),
('MH012', 'M', 50),
('MH013', 'M', 50),
('MH014', 'M', 50),
('MH015', 'M', 50),
('MH016', 'M', 30),
('MH017', 'M', 50),
('MH019', 'M', 50),
('MH020', 'M', 24),
('MH021', 'M', 45),
('MH022', 'M', 44),
('MH023', 'M', 20),
('MH018', 'PK', 50),
('MH001', 'S', 50),
('MH002', 'S', 50),
('MH003', 'S', 50),
('MH004', 'S', 50),
('MH005', 'S', 50),
('MH006', 'S', 50),
('MH007', 'S', 50),
('MH008', 'S', 50),
('MH009', 'S', 50),
('MH010', 'S', 20),
('MH011', 'S', 50),
('MH012', 'S', 50),
('MH013', 'S', 50),
('MH014', 'S', 50),
('MH015', 'S', 50),
('MH016', 'S', 50),
('MH017', 'S', 50),
('MH019', 'S', 50),
('MH020', 'S', 22),
('MH022', 'S', 50),
('MH023', 'S', 23),
('MH001', 'XL', 0),
('MH002', 'XL', 50),
('MH003', 'XL', 50),
('MH004', 'XL', 50),
('MH005', 'XL', 50),
('MH006', 'XL', 50),
('MH007', 'XL', 50),
('MH008', 'XL', 50),
('MH009', 'XL', 50),
('MH010', 'XL', 0),
('MH011', 'XL', 50),
('MH012', 'XL', 50),
('MH013', 'XL', 50),
('MH014', 'XL', 50),
('MH015', 'XL', 50),
('MH016', 'XL', 30),
('MH017', 'XL', 50),
('MH019', 'XL', 50),
('MH020', 'XL', 32),
('MH021', 'XL', 43),
('MH022', 'XL', 43),
('MH023', 'XL', 43),
('MH022', 'XS', 50);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhgia`
--

CREATE TABLE `danhgia` (
  `MaDanhGia` varchar(10) NOT NULL,
  `MaMH` varchar(10) NOT NULL,
  `MaKH` varchar(20) NOT NULL,
  `DiemDanhGia` int(11) NOT NULL,
  `BinhLuan` varchar(255) DEFAULT NULL,
  `NgayDG` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dondathang`
--

CREATE TABLE `dondathang` (
  `MaDH` varchar(10) NOT NULL,
  `NgayLapHD` datetime NOT NULL,
  `TongTien` decimal(18,2) NOT NULL,
  `TrangThai` varchar(50) NOT NULL,
  `MaKH` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `dondathang`
--

INSERT INTO `dondathang` (`MaDH`, `NgayLapHD`, `TongTien`, `TrangThai`, `MaKH`) VALUES
('DH001', '2024-10-21 08:40:17', 999.00, 'Hoàn thành', 'KH001'),
('DH002', '2024-10-21 08:43:00', 999.00, 'Hoàn thành', 'KH001'),
('DH003', '2024-10-21 08:48:08', 999.00, 'Hoàn thành', 'KH001'),
('DH004', '2024-10-21 08:48:22', 999.00, 'Hoàn thành', 'KH001'),
('Dh005', '2024-10-21 08:48:43', 999.00, 'Chưa giao', 'KH001');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giaohang`
--

CREATE TABLE `giaohang` (
  `MaGH` varchar(10) NOT NULL,
  `MaDH` varchar(10) NOT NULL,
  `TrangThaiGH` varchar(50) NOT NULL,
  `GioGui` datetime NOT NULL,
  `GioHT` datetime NOT NULL,
  `MaVanDon` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `MaKH` varchar(20) NOT NULL,
  `HoTen` varchar(50) NOT NULL,
  `MatKhau` varchar(50) NOT NULL,
  `Quyen` int(11) NOT NULL DEFAULT 1,
  `Email` varchar(50) NOT NULL,
  `DiaChi` varchar(200) DEFAULT NULL,
  `GT` bit(2) DEFAULT NULL,
  `NS` date DEFAULT NULL,
  `CCCD` varchar(20) DEFAULT NULL,
  `SDT` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`MaKH`, `HoTen`, `MatKhau`, `Quyen`, `Email`, `DiaChi`, `GT`, `NS`, `CCCD`, `SDT`) VALUES
('1283719634', 'asd', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 1, 'asdasd@gmail.com', NULL, NULL, NULL, NULL, NULL),
('KH001', 'van', '123456789', 1, 'ggg@gmail.com', '123123123', NULL, NULL, NULL, '093333333');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `kichthuoc`
--

CREATE TABLE `kichthuoc` (
  `MaKT` varchar(10) NOT NULL,
  `TTKT` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `kichthuoc`
--

INSERT INTO `kichthuoc` (`MaKT`, `TTKT`) VALUES
('PK', 0),
('XS', 1),
('S', 2),
('M', 3),
('L', 4),
('XL', 5),
('2XL', 6),
('3XL', 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaimh`
--

CREATE TABLE `loaimh` (
  `MaLoai` varchar(10) NOT NULL,
  `TenLoai` varchar(50) NOT NULL,
  `HinhAnhLMH` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `loaimh`
--

INSERT INTO `loaimh` (`MaLoai`, `TenLoai`, `HinhAnhLMH`) VALUES
('AO001', 'Áo thun', 'Shirt Icon.png'),
('AO002', 'Áo khoác', 'Jacket Icon.png'),
('PK001', 'Mũ', 'Hat Icon.png'),
('QUAN001', 'Quần dài', 'Pants Icon.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mathang`
--

CREATE TABLE `mathang` (
  `MaMH` varchar(10) NOT NULL,
  `TenMH` varchar(50) NOT NULL,
  `MoTa` varchar(1000) NOT NULL,
  `HinhAnh` varchar(255) NOT NULL,
  `Gia` bigint(2) NOT NULL,
  `MauSac` varchar(20) NOT NULL,
  `MaLoai` varchar(10) NOT NULL,
  `MaCollab` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `mathang`
--

INSERT INTO `mathang` (`MaMH`, `TenMH`, `MoTa`, `HinhAnh`, `Gia`, `MauSac`, `MaLoai`, `MaCollab`) VALUES
('MH001', 'T1 LCK 2024 Uniform Jersey', '• Kích thước: S - M - L - XL\r\n• Chất liệu: (Mặt Ngoài) Polyester 100% (Mặt Bên, Cổ Áo) Polyester 95%, Spandex 5%\r\n• HG x T1 Collab phân phối sản phẩm\r\n• Set đồ chính thức của đội tuyển T1\r\n• Ngày sản xuất: Tháng 3 2024\r\n• Thời gian đảm bảo chất lượng: 1 năm kể từ NSX\r\n• Kích thước mẫu: Zeus: XL, Oner: XL, Faker: L, Gumayusi: XL, Keria: M', 'T1 Jersey.png', 3000000, 'Black', 'AO001', 'CLB001'),
('MH002', 'T1 LCK 2024 Uniform Jacket', '• Kích thước: S - M - L - XL\r\n• Chất liệu: (Mặt Ngoài) Polyester 100% (Đường Viền) Polyester 100% (Mặt In) Polyester 100%\r\n• HG x T1 Collab phân phối sản phẩm\r\n• Set đồ chính thức của đội tuyển T1\r\n• Ngày sản xuất: Tháng 3 2024\r\n• Thời gian đảm bảo chất lượng: 1 năm kể từ NSX\r\n• Kích thước mẫu: Zeus: XL, Oner: XL, Faker: L, Gumayusi: XL, Keria: M', 'T1 Jacket.png', 3500000, 'Black', 'AO002', 'CLB001'),
('MH003', 'LADY KILLER Shirt', '• Kích thước: S - M - L - XL\r\n• Chất liệu: Cotton 100%.\r\n• Relaxed Fit.\r\n• Nhãn thương hiệu trang trí ở sườn áo.\r\n• Artwork mặt trước được áp dụng kỹ thuật in lụa.\r\n• Nhãn quote may ở thân sau.', 'LK Shirt.png', 300000, 'Black', 'AO001', NULL),
('MH004', 'SGP AOV 2024 Uniform Jacket', '• Kích thước: S - M - L - XL\r\n• Chất liệu: Polyester 100%\r\n• HG x SGP Collab phân phối sản phẩm\r\n• Set đồ chính thức của đội tuyển SGP\r\n• Ngày sản xuất: Tháng 2 2024', 'SGP 24 Jacket.png', 700000, 'Black', 'AO002', 'CLB009'),
('MH005', 'HG - ALIEN | Gangster Alien Shirt', '• Kích thước: S - M - L - XL\r\n• Chất liệu: Cotton 100%.\r\n• Bộ sưu tập HG - ALIEN.\r\n• Relaxed Fit.\r\n• Nhãn thương hiệu trang trí ở sườn áo.\r\n• Artwork mặt trước được áp dụng kỹ thuật in lụa.\r\n • Nhãn quote may ở thân sau.', 'Alien Shirt 1.png', 500000, 'Black', 'AO001', NULL),
('MH006', 'HG - ALIEN | Phantom Killer Alien Shirt', '• Kích thước: S - M - L - XL\r\n• Chất liệu: Cotton 100%.\r\n• Bộ sưu tập HG - ALIEN.\r\n• Relaxed Fit.\r\n• Nhãn thương hiệu trang trí ở sườn áo.\r\n• Artwork mặt trước được áp dụng kỹ thuật in lụa.\r\n• Nhãn quote may ở thân sau.', 'Alien Shirt 2.png', 500000, 'Black', 'AO001', NULL),
('MH007', 'HG - ALIEN | GYBSY Alien Shirt', '• Kích thước: S - M - L - XL\r\n• Chất liệu: Cotton 100%.\r\n• Bộ sưu tập HG - ALIEN.\r\n• Relaxed Fit.\r\n• Nhãn thương hiệu trang trí ở sườn áo.\r\n• Artwork mặt trước được áp dụng kỹ thuật in lụa.\r\n• Nhãn quote may ở thân sau.', 'Alien Shirt 3.png', 500000, 'Black', 'AO001', NULL),
('MH008', 'T1 Worlds 2024 Uniform Jersey', '• Kích thước: S - M - L - XL\r\n• Chất liệu: (Mặt Ngoài) Polyester 100% (Đường Viền) Polyester 100% (Mặt In) Polyester 100%\r\n• HG x T1 Collab phân phối sản phẩm\r\n• Set đồ chính thức của đội tuyển T1 tại Chung Kết Thế Giới 2024 LMHT\r\n• Ngày sản xuất: Tháng 8 2024\r\n• Thời gian đảm bảo chất lượng: 1 năm kể từ NSX\r\n• Kích thước mẫu: Zeus: XL, Oner: XL, Faker: L, Gumayusi: XL, Keria: M', 'T1 W24 Jersey.png', 3000000, 'White', 'AO001', 'CLB001'),
('MH009', 'T1 Worlds 2024 Uniform Jacket', '• Kích thước: S - M - L - XL\r\n• Chất liệu: (Mặt Ngoài) Polyester 100% (Đường Viền) Polyester 100% (Mặt In) Polyester 100%\r\n• HG x T1 Collab phân phối sản phẩm\r\n• Set đồ chính thức của đội tuyển T1 tại Chung Kết Thế Giới 2024 LMHT\r\n• Ngày sản xuất: Tháng 8 2024\r\n• Thời gian đảm bảo chất lượng: 1 năm kể từ NSX\r\n• Kích thước mẫu: Zeus: XL, Oner: XL, Faker: L, Gumayusi: XL, Keria: M', 'T1 W24 Jacket.png', 3500000, 'White', 'AO002', 'CLB001'),
('MH010', 'HG x MU Manchester Is Heaven Shirt', '• Kích thước: S - M - L - XL\r\n• Chất liệu: Cotton 100% \r\n• HG x MU Collab\r\n• Artwork mặt trước được áp dụng kỹ thuật in lụa.\r\n• Ngày sản xuất: Tháng 1 2024\r\n• Thời gian đảm bảo chất lượng: 1 năm kể từ NSX', 'MU Shirt.png', 600000, 'White', 'AO001', 'CLB008'),
('MH011', 'HG x CR7 SIUUU Shirt', '• Kích thước: S - M - L - XL\r\n• Chất liệu: Cotton 100% \r\n• HG x CR7 Collab\r\n• Artwork mặt trước được áp dụng kỹ thuật in lụa.\r\n• Ngày sản xuất: Tháng 1 2024\r\n• Thời gian đảm bảo chất lượng: 1 năm kể từ NSX', 'CR7 shirt 1.png', 600000, 'Black', 'AO001', 'CLB005'),
('MH012', 'GAM Worlds 2024 Uniform Jersey', '• Kích thước: S - M - L - XL\r\n• Chất liệu: Polyester 100% \r\n• HG x GAM Collab phân phối sản phẩm\r\n• Set đồ chính thức của đội tuyển GAM tại Chung Kết Thế Giới 2024 LMHT\r\n• Các logo tài trợ có hiệu ứng được sử dụng kĩ thuật in decal', 'GAM W24 Jersey.png', 550000, 'Cream', 'AO001', 'CLB003'),
('MH013', 'GenG Worlds 2024 Uniform Jersey', '• Kích thước: S - M - L - XL\r\n• Chất liệu: Polyester 100%\r\n• HG x GenG Collab phân phối sản phẩm\r\n• Set đồ chính thức của đội tuyển GenG tại Chung Kết Thế Giới 2024 LMHT\r\n• Ngày sản xuất: Tháng 8 2024\r\n• Thời gian đảm bảo chất lượng: 1 năm kể từ NSX', 'GenG W24 Jersey.png', 3000000, 'White', 'AO001', 'CLB002'),
('MH014', 'GenG Worlds 2024 Uniform Jacket', '• Kích thước: S - M - L - XL\r\n• Chất liệu: Polyester 100%\r\n• HG x GenG Collab phân phối sản phẩm\r\n• Set đồ chính thức của đội tuyển GenG tại Chung Kết Thế Giới 2024 LMHT\r\n• Ngày sản xuất: Tháng 8 2024\r\n• Thời gian đảm bảo chất lượng: 1 năm kể từ NSX', 'GenG W24 Jacket.png', 3500000, 'White', 'AO002', 'CLB002'),
('MH015', 'HG x SE Global Banned Shirt', '• Kích thước: S - M - L - XL\r\n• Chất liệu: Cotton 100% \r\n• HG x SE Collab\r\n• Artwork mặt trước được áp dụng kỹ thuật in lụa.\r\n• Ngày sản xuất: Tháng 10 2024\r\n• Thời gian đảm bảo chất lượng: 1 năm kể từ NSX', 'SE Shirt.png', 550000, 'Black', 'AO001', 'CLB004'),
('MH016', 'T1 2022 Official Pants', '• Kích thước: S - M - L - XL - 2XL - 3XL\r\n• Chất liệu: Polyester 100%\r\n• HG x T1 Collab phân phối sản phẩm\r\n• Ngày sản xuất: Tháng 3 2024\r\n• Thời gian đảm bảo chất lượng: 1 năm kể từ NSX', 'T1 Pants.png', 850000, 'Black', 'QUAN001', 'CLB001'),
('MH017', 'T1 Worlds 2024 Uniform Pants', '• Kích thước: S - M - L - XL\r\n• Chất liệu: Polyester 100%\r\n• HG x T1 Collab phân phối sản phẩm\r\n• Set đồ chính thức của đội tuyển T1 tại Chung Kết Thế Giới 2024 LMHT\r\n• Ngày sản xuất: Tháng 8 2024\r\n• Thời gian đảm bảo chất lượng: 1 năm kể từ NSX', 'T1 W24 Pants.png', 2100000, 'Black', 'QUAN001', 'CLB001'),
('MH018', 'Y Logo Cap', '• Chất liệu ngoài: Cotton Khaki; Lót trong: Polyester\r\n• Form Dad Cap\r\n• Dây viền bên trong nón được in logo HOODGANG \r\n• Logo HOODGANG được thêu nổi 3D trên mặt trước nón\r\n• Các chi tiết đánh rách trên mặt nón và vành nón\r\n• Logo được dập nổi trên mặt khoá', 'Y Cap.png', 320000, 'Black', 'PK001', NULL),
('MH019', '\'Nothing Changes\' T-Shirt', '• Kích thước: S - M - L - XL\r\n• Chất liệu: Cotton.\r\n• Relaxed Fit.\r\n• Hình in mặt trước áo áp dụng công nghệ in kéo lụa.', 'Changes Shirt.png', 320000, 'Yellow', 'AO001', NULL),
('MH020', 'HG | DBZ Dragon Team T-Shirt', '• Kích thước: S - M - L - XL\r\n• Chất liệu: Cotton\r\n• Relaxed Fit\r\n• Nhãn thương hiệu trang trí ở sườn áo\r\n• Artwork mặt trước được áp dụng kỹ thuật in lụa\r\n• Nhãn trang trí BST HG | DBZ may ở thân sau', 'DBZ 1 Shirt.png', 420000, 'Cream', 'AO001', NULL),
('MH021', 'HG | DBZ Goku Football Jersey', '• Kích thước: M - L - XL\r\n• Chất liệu: Polyester\r\n• Relaxed Fit\r\n• Artwork mặt trước và sau 2 bên cánh tay được in kéo lụa\r\n• Nhãn trang trí BST HG | DBZ may ở thân trước', 'DBZ 2 Shirt.png', 490000, 'Cream', 'AO001', NULL),
('MH022', 'HG | DBZ Goku and Shenron', '• Kích thước: XS - S - M - L - XL\r\n• Chất liệu: Cotton\r\n• Relaxed Fit\r\n• Nhãn thương hiệu trang trí ở sườn áo\r\n• Artwork mặt trước và sau được áp dụng kỹ\r\nthuật in lụa\r\n• Nhãn trang trí BST HG | DBZ may ở thân trước', 'DBZ 3 Shirt.png', 499000, 'Cream', 'AO001', NULL),
('MH023', 'Manchester United 2024 Football Jersey', '• Kích thước: S - M - L - XL\r\n• Chất liệu: 100% Polyester\r\n• Regular fit\r\n• Áo đấu chính thức của Manchester United\r\n• Nhãn thương hiệu trang trí ở sườn áo\r\n• Ngày sản xuất: Tháng 2 2024', 'MU Jersey.png', 1899000, 'Red', 'AO001', 'CLB008');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `collab`
--
ALTER TABLE `collab`
  ADD PRIMARY KEY (`MaCollab`),
  ADD KEY `MaCollab` (`MaCollab`);

--
-- Chỉ mục cho bảng `ctdh`
--
ALTER TABLE `ctdh`
  ADD PRIMARY KEY (`MaDH`,`MaMH`),
  ADD KEY `MaMH` (`MaMH`),
  ADD KEY `MaMH_2` (`MaMH`),
  ADD KEY `MaDH` (`MaDH`),
  ADD KEY `MaMH_3` (`MaMH`);

--
-- Chỉ mục cho bảng `ctkt`
--
ALTER TABLE `ctkt`
  ADD PRIMARY KEY (`MaKT`,`MaMH`),
  ADD KEY `MaMH` (`MaMH`);

--
-- Chỉ mục cho bảng `danhgia`
--
ALTER TABLE `danhgia`
  ADD PRIMARY KEY (`MaDanhGia`),
  ADD KEY `MaMH` (`MaMH`),
  ADD KEY `MaKH` (`MaKH`),
  ADD KEY `MaMH_2` (`MaMH`),
  ADD KEY `MaMH_3` (`MaMH`);

--
-- Chỉ mục cho bảng `dondathang`
--
ALTER TABLE `dondathang`
  ADD PRIMARY KEY (`MaDH`),
  ADD KEY `MaDH` (`MaDH`),
  ADD KEY `MaDH_2` (`MaDH`),
  ADD KEY `MaDH_3` (`MaDH`),
  ADD KEY `MaKH` (`MaKH`);

--
-- Chỉ mục cho bảng `giaohang`
--
ALTER TABLE `giaohang`
  ADD PRIMARY KEY (`MaGH`),
  ADD KEY `MaDH` (`MaDH`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`MaKH`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD KEY `MaKH` (`MaKH`),
  ADD KEY `MaKH_2` (`MaKH`),
  ADD KEY `MaKH_3` (`MaKH`);

--
-- Chỉ mục cho bảng `kichthuoc`
--
ALTER TABLE `kichthuoc`
  ADD PRIMARY KEY (`MaKT`),
  ADD UNIQUE KEY `TTKT` (`TTKT`),
  ADD KEY `MaKT` (`MaKT`);

--
-- Chỉ mục cho bảng `loaimh`
--
ALTER TABLE `loaimh`
  ADD PRIMARY KEY (`MaLoai`),
  ADD KEY `MaLoai` (`MaLoai`);

--
-- Chỉ mục cho bảng `mathang`
--
ALTER TABLE `mathang`
  ADD PRIMARY KEY (`MaMH`),
  ADD KEY `MaMH` (`MaMH`),
  ADD KEY `MaMH_2` (`MaMH`),
  ADD KEY `MaLoai` (`MaLoai`),
  ADD KEY `MaMH_3` (`MaMH`),
  ADD KEY `MaMH_4` (`MaMH`),
  ADD KEY `MaMH_5` (`MaMH`),
  ADD KEY `MaMH_6` (`MaMH`),
  ADD KEY `MaMH_7` (`MaMH`),
  ADD KEY `MaMH_8` (`MaMH`),
  ADD KEY `MaCollab` (`MaCollab`),
  ADD KEY `MaMH_9` (`MaMH`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `ctdh`
--
ALTER TABLE `ctdh`
  ADD CONSTRAINT `ctdh_ibfk_3` FOREIGN KEY (`MaMH`) REFERENCES `mathang` (`MaMH`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `ctdh_ibfk_4` FOREIGN KEY (`MaDH`) REFERENCES `dondathang` (`MaDH`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `ctkt`
--
ALTER TABLE `ctkt`
  ADD CONSTRAINT `ctkt_ibfk_3` FOREIGN KEY (`MaMH`) REFERENCES `mathang` (`MaMH`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ctkt_ibfk_4` FOREIGN KEY (`MaKT`) REFERENCES `kichthuoc` (`MaKT`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `danhgia`
--
ALTER TABLE `danhgia`
  ADD CONSTRAINT `danhgia_ibfk_2` FOREIGN KEY (`MaKH`) REFERENCES `khachhang` (`MaKH`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `danhgia_ibfk_3` FOREIGN KEY (`MaMH`) REFERENCES `mathang` (`MaMH`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `dondathang`
--
ALTER TABLE `dondathang`
  ADD CONSTRAINT `dondathang_ibfk_2` FOREIGN KEY (`MaKH`) REFERENCES `khachhang` (`MaKH`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `giaohang`
--
ALTER TABLE `giaohang`
  ADD CONSTRAINT `giaohang_ibfk_1` FOREIGN KEY (`MaDH`) REFERENCES `dondathang` (`MaDH`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `mathang`
--
ALTER TABLE `mathang`
  ADD CONSTRAINT `mathang_ibfk_3` FOREIGN KEY (`MaLoai`) REFERENCES `loaimh` (`MaLoai`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `mathang_ibfk_4` FOREIGN KEY (`MaCollab`) REFERENCES `collab` (`MaCollab`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
