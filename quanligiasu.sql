-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 30, 2021 lúc 05:44 AM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quanligiasu`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung`
--

CREATE TABLE `nguoidung` (
  `MaNgDung` int(10) NOT NULL,
  `Ho` varchar(225) NOT NULL,
  `Ten` varchar(225) NOT NULL,
  `GioiTinh` varchar(10) NOT NULL,
  `SĐT` int(10) NOT NULL,
  `Email` varchar(225) NOT NULL,
  `DiaChi` varchar(225) NOT NULL,
  `TaiKhoan` varchar(225) NOT NULL,
  `MatKhau` varchar(225) NOT NULL,
  `MaQuyen` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `nguoidung`
--

INSERT INTO `nguoidung` (`MaNgDung`, `Ho`, `Ten`, `GioiTinh`, `SĐT`, `Email`, `DiaChi`, `TaiKhoan`, `MatKhau`, `MaQuyen`) VALUES
(1, 'Đinh', 'Huy', 'Nam', 837222831, 'huyhunghang1994@gmail.com', 'Núi Thành', 'admin', 'admin', 1),
(2, 'Trần', 'Hiếu', 'Nam', 888888888, 'tvhieu.20it8@vku.udn.vn', 'Nghệ An', 'tranhieu', '123', 2),
(1, 'Nguyễn', 'Trúc', 'Nữ', 333333333, 'ntttruc.20it5@vku.udn.vn', 'Quảng Bình', 'nguyentruc', '123', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phanquyen`
--

CREATE TABLE `phanquyen` (
  `MaQuyen` int(1) NOT NULL,
  `TenQuyen` varchar(225) NOT NULL,
  `ChiTiet` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `phanquyen`
--

INSERT INTO `phanquyen` (`MaQuyen`, `TenQuyen`, `ChiTiet`) VALUES
(1, 'Admin', 'Quản Trị Viên'),
(2, 'Customer', 'Khách Hàng'),
(3, 'Tutor', 'Gia Sư');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `Id` int(10) NOT NULL,
  `HoTen` varchar(225) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`MaQuyen`),
  ADD KEY `MaQuyen` (`MaQuyen`);

--
-- Chỉ mục cho bảng `phanquyen`
--
ALTER TABLE `phanquyen`
  ADD PRIMARY KEY (`MaQuyen`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
