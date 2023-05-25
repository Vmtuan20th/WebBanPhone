-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 24, 2022 lúc 02:38 PM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shopsmart`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `username`, `password`) VALUES
(1, 'admin', 'c4ca4238a0b923820dcc509a6f75849b');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart_detail`
--

CREATE TABLE `tbl_cart_detail` (
  `id_cart_detail` int(11) NOT NULL,
  `code_cart` varchar(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `soluongmua` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart_detail`
--

INSERT INTO `tbl_cart_detail` (`id_cart_detail`, `code_cart`, `id_sanpham`, `soluongmua`) VALUES
(28, '4095', 8, 2),
(29, '4095', 7, 1),
(36, '6875', 12, 1),
(37, '6875', 13, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_dangky`
--

CREATE TABLE `tbl_dangky` (
  `id_khachhang` int(11) NOT NULL,
  `hovaten` varchar(250) NOT NULL,
  `taikhoan` varchar(100) NOT NULL,
  `matkhau` varchar(100) NOT NULL,
  `sodienthoai` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `diachi` text NOT NULL,
  `chucvu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_dangky`
--

INSERT INTO `tbl_dangky` (`id_khachhang`, `hovaten`, `taikhoan`, `matkhau`, `sodienthoai`, `email`, `diachi`, `chucvu`) VALUES
(1, 'Tinh Gia Nghị', 'neymar', '202cb962ac59075b964b07152d234b70', 869029353, 'neymarhandsome@gmail.com', '																																																																																																																																										13/C																																																																																																																			', 1),
(3, 'Nhập Gia Môn', 'baku', 'c4ca4238a0b923820dcc509a6f75849b', 562325, 'lanhchanh145@gmail.com', 'sdasdad', 0),
(4, 'Võ Minh Tuấn', 'tati', 'caf1a3dfb505ffed0d024130f58c5cfa', 2564889, 'tati@gmail.com', 'nhà số 4', 2),
(5, 'saitama', 'saitama', '202cb962ac59075b964b07152d234b70', 12345346, 'saitama@gmail.com', '123', 0),
(6, 'saitama kura', 'saitama1', '202cb962ac59075b964b07152d234b70', 235698, 'saitama1@gmail.com', '1234', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhmuc`
--

CREATE TABLE `tbl_danhmuc` (
  `id_danhmuc` int(11) NOT NULL,
  `tendanhmuc` varchar(100) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_danhmuc`
--

INSERT INTO `tbl_danhmuc` (`id_danhmuc`, `tendanhmuc`, `thutu`) VALUES
(5, 'IPHONE', 1),
(6, 'SAMSUNG', 2),
(7, 'XIAOMI', 3),
(8, 'OPPO', 4),
(9, 'VIVO', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_giohang`
--

CREATE TABLE `tbl_giohang` (
  `id_cart` int(11) NOT NULL,
  `id_khachhang` int(11) NOT NULL,
  `code_cart` varchar(11) NOT NULL,
  `cart_status` int(11) NOT NULL,
  `cart_payment` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_giohang`
--

INSERT INTO `tbl_giohang` (`id_cart`, `id_khachhang`, `code_cart`, `cart_status`, `cart_payment`) VALUES
(28, 1, '4095', 0, '0'),
(31, 1, '1378', 0, '0'),
(32, 3, '6909', 0, '0'),
(34, 3, '3504', 0, '0'),
(36, 3, '6875', 0, 'tienmat');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `id_sanpham` int(11) NOT NULL,
  `tensanpham` varchar(100) NOT NULL,
  `masanpham` varchar(100) NOT NULL,
  `giasanpham` float NOT NULL,
  `soluong` int(11) NOT NULL,
  `hinhanh` varchar(100) NOT NULL,
  `tomtat` tinytext NOT NULL,
  `noidung` text NOT NULL,
  `id_danhmuc` int(11) NOT NULL,
  `trangthai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`id_sanpham`, `tensanpham`, `masanpham`, `giasanpham`, `soluong`, `hinhanh`, `tomtat`, `noidung`, `id_danhmuc`, `trangthai`) VALUES
(5, 'Iphone 11', '11p1', 6000000, 2, 'Iphone 11.jpg', '', '', 5, 0),
(6, 'Iphone 12 Pro Max', '12pxc', 12000000, 2, 'iphone-12-pro-max.png', '', '', 5, 0),
(10, 'Xiaomi 12 pro', 'x12', 13000000, 3, 'Xiaomi 12 pro.png', '', '', 7, 1),
(11, 'Xiaomi Redmin Note 10 Pro', '10p', 9000000, 3, 'Xiaomi Redmin Note 10 Pro.jpg', '', '', 7, 1),
(12, 'Xiaomi 12T', '12t', 15000000, 6, 'Xiaomi 12T.png', '', '', 7, 1),
(13, 'samsung galaxy zflip4 5g', 'zlip', 34000000, 12, 'samsung-galaxy-z-flip4-5g.jpg', '', '', 6, 1),
(14, 'Iphone 12 mini', '12mn', 17000000, 2, 'iphone-12-pro-max.png', '', '', 5, 1),
(16, 'VIvo Y17', 'Y17', 4300000, 2, 'ViVo Y16.png', 'thiết kế tinh tế với vẻ ngoài sang trong', '', 9, 1),
(17, 'Vivo Y16', 'Y16', 3600000, 3, 'VIvo Y16.jpg', 'Hình ảnh sống động đến bất ngờ - Màn hình IPS LCD 6.51 inch, chế độ bảo vệ mắt thông minh\r\nHiệu suất ấn tượng với chip MediaTek Helio P35, RAM 4GB + Mở rộng 1GB cho đa nhiệm mượt mà\r\n', '', 9, 1),
(18, 'Vivo Y30', 'Y30', 5100000, 1, 'ViVo Y30.jpg', '', '', 9, 1),
(19, 'Vivo Y55', 'Y55', 6700000, 2, 'ViVo Y55.png', '', '', 9, 1),
(20, 'Iphone 13 Pro Max', '13px', 28000000, 3, 'Apple_iPhone-13-Pro.jpg', '', '', 5, 1),
(21, 'Iphone 14 Pro Max', '14px', 38000000, 5, 'apple-iphone-14-pro-max.jpg', '', '', 5, 1),
(23, 'Iphone 12 Pro Max', '12px', 23000000, 7, 'iphone-12-pro-max.png', '', '', 5, 1),
(24, 'Iphone 13', '13p', 18000000, 3, 'iPhone-13-2.jpg', '', '', 5, 1),
(25, 'Samsung Galaxy S9', 'ss9', 8500000, 3, 'samsung-galaxy-s9-plus.jpg', '', '', 6, 0),
(28, 'Oppo Find X3 Pro', 'x3', 38000000, 4, 'Oppo Find X3 Pro.png', '', '', 8, 1),
(30, 'Samsung s22 Ultra', 's22u', 28700000, 4, 'Samsung s22 Ultra.jpg', '', '', 6, 1),
(31, 'Oppo Find X4', 'x4', 38900000, 4, 'Oppo Find X4 Neo Price.jpg', '', '', 8, 1),
(32, 'Oppo reno 7Z', '7Z', 16400000, 2, 'Oppo Reno 7Z 5G.jpg', '', '', 8, 1),
(33, 'Xiaomi Mi 9SE', '9SE', 12300000, 5, 'Xiaomi Mi 9 SE.jpg', '', '', 7, 1),
(34, 'Oppo reno 6', 'r6', 8700000, 4, 'Oppo Reno 6.jpg', '', '', 8, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_shipping`
--

CREATE TABLE `tbl_shipping` (
  `id_shipping` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `adress` varchar(250) NOT NULL,
  `note` varchar(250) NOT NULL,
  `id_dangky` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_shipping`
--

INSERT INTO `tbl_shipping` (`id_shipping`, `name`, `phone`, `adress`, `note`, `id_dangky`) VALUES
(3, 'Võ Minh Tuấn', '05658421', '23/C', '', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Chỉ mục cho bảng `tbl_cart_detail`
--
ALTER TABLE `tbl_cart_detail`
  ADD PRIMARY KEY (`id_cart_detail`);

--
-- Chỉ mục cho bảng `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  ADD PRIMARY KEY (`id_khachhang`);

--
-- Chỉ mục cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  ADD PRIMARY KEY (`id_danhmuc`);

--
-- Chỉ mục cho bảng `tbl_giohang`
--
ALTER TABLE `tbl_giohang`
  ADD PRIMARY KEY (`id_cart`);

--
-- Chỉ mục cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`id_sanpham`);

--
-- Chỉ mục cho bảng `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  ADD PRIMARY KEY (`id_shipping`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_cart_detail`
--
ALTER TABLE `tbl_cart_detail`
  MODIFY `id_cart_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT cho bảng `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  MODIFY `id_khachhang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  MODIFY `id_danhmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tbl_giohang`
--
ALTER TABLE `tbl_giohang`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `id_sanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  MODIFY `id_shipping` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
