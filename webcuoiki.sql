-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 18, 2022 lúc 05:35 PM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webcuoiki`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chapnhan`
--

CREATE TABLE `chapnhan` (
  `id` int(11) NOT NULL,
  `ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `emai` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sdt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `trinhdo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `monhoc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gioitinh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gioithieu` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gs`
--

CREATE TABLE `gs` (
  `id` int(11) NOT NULL,
  `ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sdt` int(255) NOT NULL,
  `trinhdo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `monhoc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `anh` text COLLATE utf8_unicode_ci NOT NULL,
  `gioitinh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gioithieu` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tenphuhuynh` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `gs`
--

INSERT INTO `gs` (`id`, `ten`, `email`, `sdt`, `trinhdo`, `monhoc`, `anh`, `gioitinh`, `gioithieu`, `tenphuhuynh`) VALUES
(247, 'hi', 'hi', 0, 'ih', 'i', 'coo.png', 'hi', 'hi', ''),
(263, 'Việt Nga', 'vietnga@gmail.com', 256985, 'Đại học', 'Sinh học', 'VietNgaaa.png', 'Nữ', 'Nhiệt tình', ''),
(264, 'Quốc Chí', 'quochi@gmail.com', 123456, 'Đại học', 'Toán ', 'thayChi.png', 'Nam', 'Nhiệt tình', ''),
(273, 'Vũ Hải Nam', 'hainam@gmail.com', 123312, 'Đại học', 'Địa lý', 'hainam.png', 'Nam', 'Vui vẻ', ''),
(281, '', '', 0, '', '', '', '', '', ''),
(283, 'gfr', 'fef', 0, 'ef', 'feferf', 'cute-koala-with-cub-cartoon-icon-illustration_138676-2839.jpg', '', 'refe', ''),
(286, 'nnnnn', 'nn', 0, 'n', 'nn', 'cute-koala-with-cub-cartoon-icon-illustration_138676-2839.jpg', '', 'nn', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidungg`
--

CREATE TABLE `nguoidungg` (
  `id` int(11) NOT NULL,
  `ho` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gioitinh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sdt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `taikhoan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `matkhau` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nguoidungg`
--

INSERT INTO `nguoidungg` (`id`, `ho`, `ten`, `gioitinh`, `sdt`, `email`, `diachi`, `taikhoan`, `matkhau`) VALUES
(1, '1', '1', '1', '1', '1', '1', 'admin', 'admin'),
(2, '1', 'Thanh Trúc', '1', '1', '1', '1', '11', '1'),
(3, 'Thanh ', 'Trúc', '1', '1', '1', '11', '1', '1'),
(4, '1', '1', '21', '2', '112', '12', '1', '21'),
(5, 'Thanh ', 'Trúcc', '1', '1', '1', '1', 'ThanhTruc', '123'),
(11, '1', '2', '12', '12', '12', '12', '1', '1'),
(13, '5', '5', '55', '5', '5', '5', '5', '5'),
(14, '45', '4', '54', '54', '54', '5', '45', '4'),
(19, 'Thanh ', 'Trúc', 'Nữ', '12345', '12345', '12345', 'thanhhtrucc', '123'),
(20, 'Thanh ', 'Trúc', 'Nữ', '0123', 'kdsdnk@gmail.com', 'Quảng Bình', 'thanhtruc123', '123'),
(21, 'Thanh ', 'Trúc', 'Nữ', '0123', 'meoudoremon2002@gmail.com', 'Quảng Bình', 'thanhtruc1234', '123'),
(22, 'Thanh ', 'Trúc', 'Nữ', '0123', 'ntttruc.20it5@vku.udn.vn', '123', 'thanhtrucc123', '123'),
(23, 'Thanh', 'Trúc', 'Nữ', '0123', 'meoudoremon2002@gmail.com', '123', 'nguyenthithanhtruc', '123'),
(24, 'Thanh ', 'Trúc', 'Nữ', '0123', 'meoudoremon2002@gmail.com', 'Hồng Thủy', 'nguyenthanhtruc', '123'),
(25, '', '', '', 'huyhunghang1994@gmail.com', 'huyhunghang1994@gmail.com', '', 'GiaHuy', '123'),
(26, '', '', '', 'huyhunghang1994@gmail.com', 'huyhunghang1994@gmail.com', '', 'Huy', 'huy');

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
-- Cấu trúc bảng cho bảng `phuhuynh`
--

CREATE TABLE `phuhuynh` (
  `idphuhuynh` int(11) NOT NULL,
  `tenphuhuynh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sdtphuhuynh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lophoc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lichhoc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `trinhdo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `monhoc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gioitinh` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phuhuynh`
--

INSERT INTO `phuhuynh` (`idphuhuynh`, `tenphuhuynh`, `diachi`, `sdtphuhuynh`, `lophoc`, `lichhoc`, `id`, `ten`, `trinhdo`, `monhoc`, `gioitinh`) VALUES
(18, 'Nguyễn Thị Thanh Trúc', '1', '0123', '12', 'Thứ 2', '30', '', '', '', ''),
(20, 'Nguyễn Thanh Trúc', 'Hồng Thủy-Lệ Thủy-Quảng Bình', '0826018138', '12', 'Tối thứ 2', '30', '', '', '', ''),
(25, 'Nguyễn Thị Thanh Trúccc', '45', '5', '45', '4', '74', '', '', '', ''),
(30, 'Nguyễn Văn A', 'Quảng Bình ', '123456', '12', 'Tối thứ 2,4,6 ', '76', '', '', '', ''),
(33, 'Nguyễn Thị Thanh Trà', '0123', '0123', '9', 'Tối thứ 2, 3, 5, 6', '82', '', '', '', ''),
(39, 'huy', 'tam quang', '0816313464', '12', '12', '76', '', '', '', ''),
(40, 'Nguyen Van B', '1', '1', '1', '1', '111', '', '', '', ''),
(41, 'Thanh Truccccc', '1', '1', '1', '1', '112', '', '', '', ''),
(42, 'Gia Huy', '1', '1', '1', '1', '112', '', '', '', ''),
(43, 'THANH TRUC', 'QUANG BINH', '0336517626', '10', 'SANG T2 T4 T6', '113', '', '', '', ''),
(44, 'Vo Thanh Dat', 'quang tri', '112', '12', 'sang t2', '114', '', '', '', ''),
(45, 'Thanh Truc', '1', '1', '1', '1', '115', '', '', '', ''),
(46, 'Nguyen Van A', 'QB', '0809090', '3', 'Thu 2 Thu 3', '116', '', '', '', ''),
(47, 'Nguyen Van B', 'QB', '010101010', '3', 'Toi thu 3', '117', '', '', '', ''),
(48, 'Nguyen Van A', 'Hong Thuy', '010101010', '3', 'Thu 3', '118', '', '', '', '');

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

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `yeucau`
--

CREATE TABLE `yeucau` (
  `id` int(255) NOT NULL,
  `ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sdt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `trinhdo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `monhoc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `anh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gioitinh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gioithieu` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `yeucau`
--

INSERT INTO `yeucau` (`id`, `ten`, `email`, `sdt`, `trinhdo`, `monhoc`, `anh`, `gioitinh`, `gioithieu`) VALUES
(76, 'Nguyễn T Thanh Trúc', 'ntttruc.20it5@vku.udn.vn', '1111111111', '12', 'Toán', 'CoVatLy.png', 'Nữ', 'Năng nổ, hòa đồng'),
(85, 'Gia Huy', 'giahuy@gmail.com', '12345', '12', 'Vật Lý', 'Huyy.png', 'Nam', 'Nhiệt tình, siêng năng'),
(86, 'Thanh Trúc', 'thanhtruc@gmail.com', '147852', '12', 'Toán học', 'Trucc.png', 'Nữ', 'Nhiệt tình'),
(87, 'Trần Văn Hiếu', 'hieu@gmail.com', '232323', '8', 'Tiếng Anh', 'Hieu.png', 'Nam', 'Chăm chỉ'),
(88, 'Hoàng Xuân', 'hoangxuan@gmail.com', '123963', '9', 'Tiếng Anh', 'TiengAnh.png', 'Nữ', 'Hard work and learn form failure'),
(90, 'Kim Long', 'kimlong@gmail.com', '2147483647', '12', 'Địa lý', 'kimlong.png', 'Nam', 'Nhiệt tình'),
(91, '1223111', '111111111', '1', '1', '1', 'CoEL.png', '1', '1'),
(92, 'Diệu Linh', 'dieulinh@gmail.com', '123456', 'Đại học ', 'Ngữ Văn', 'dieulinh.png', 'Nữ', 'Nhiệt tình'),
(93, 'Vũ Hải Nam', 'hainam@gmail.com', '123312', 'Đại học', 'Địa lý', 'hainam.png', 'Nam', 'Vui vẻ'),
(94, 'Nguyễn Công Chính', 'congchinh@gmail.com', '123456', '12', 'Lịch sử', 'thaychinh.png', 'Nam', 'Hòa đồng'),
(95, 'Vũ Hải Nam', 'hainam@gmail.com', '123312', 'Đại học', 'Địa lý', 'hainam.png', 'Nam', 'Vui vẻ'),
(96, 'Vũ Thị Hà', 'vuthiha@gmail.com', '565645', '12', 'Tin học', 'Ha.png', 'Nữ', 'Nhiệt tình'),
(97, 'Đặng Xuân Chất', 'xuanchat', '466544', 'Đại học', 'Hóa học', 'xuanchat.png', 'Nam', 'Nhiệt tình'),
(98, 'Đức Hải', 'duchai@gmail.com', '12345', 'Đại học', 'Sinh học', 'SinhHoc.png', 'Nam', 'Chăm chỉ'),
(99, '1', '2', '3', '4', '5', 'coo.png', '6', '7'),
(100, 'Vũ Hải Nam', 'hainam@gmail.com', '123312', 'Đại học', 'Địa lý', 'hainam.png', 'Nam', 'Vui vẻ'),
(101, '7', '7', '7', '7', '7', 'CoEL.png', '77', '7'),
(107, 'huy', 'huy', '0', 'huy', 'huy', 'cute-koala-with-cub-cartoon-icon-illustration_138676-2839.jpg', 'Nu', 'huy'),
(108, 'ff', 'dssd', '0', 'sdss', 'dwdw', 'cute-koala-with-cub-cartoon-icon-illustration_138676-2839.jpg', 'nam', 'dwqd'),
(109, 'dsad', 'dsa', '0', 'sdas', 'sdas', 'cute-kangaroo-kid-cartoon-vector-icon-illustration-animal-nature-icon-concept-isolated-premium-vector-flat-cartoon-style_138676-3903.jpg', 'Nu', 'sdas'),
(111, 'nnnnn', 'nn', '0', 'n', 'nn', 'cute-koala-with-cub-cartoon-icon-illustration_138676-2839.jpg', 'Nu', 'nn'),
(113, 'Gia Huy', 'huyhunghang1994@gmail.com', '0', 'DAI HOC', 'Li', 'cute-koala-with-cub-cartoon-icon-illustration_138676-2839.jpg', 'nam', 'Nhiet tinh, Nang no'),
(115, 'Khueeeee', '4', '0', '4', '4', 'cute-koala-with-cub-cartoon-icon-illustration_138676-2839.jpg', 'Nu', '4'),
(116, 'Thanh Trucc', 'ThanhTruc@gmail.com', '0', 'DDH', 'TOan', 'cute-koala-with-cub-cartoon-icon-illustration_138676-2839.jpg', 'Nu', '1'),
(117, 'Nguyen Thi Thanh Truccc', 'ThanhTruc@gmail.com', '0', 'DH', 'Toan', 'cute-koala-with-cub-cartoon-icon-illustration_138676-2839.jpg', 'Nu', 'Vui ve'),
(118, 'Nguyen Thi Thanh Truc_20IT241', 'ThanhTruc@gmail.com', '0', 'Dai Hoc', 'Toan', 'cute-koala-with-cub-cartoon-icon-illustration_138676-2839.jpg', 'Nu', 'Hoa dong');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chapnhan`
--
ALTER TABLE `chapnhan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `gs`
--
ALTER TABLE `gs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nguoidungg`
--
ALTER TABLE `nguoidungg`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `phanquyen`
--
ALTER TABLE `phanquyen`
  ADD PRIMARY KEY (`MaQuyen`);

--
-- Chỉ mục cho bảng `phuhuynh`
--
ALTER TABLE `phuhuynh`
  ADD PRIMARY KEY (`idphuhuynh`);

--
-- Chỉ mục cho bảng `yeucau`
--
ALTER TABLE `yeucau`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chapnhan`
--
ALTER TABLE `chapnhan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `gs`
--
ALTER TABLE `gs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=296;

--
-- AUTO_INCREMENT cho bảng `nguoidungg`
--
ALTER TABLE `nguoidungg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `phuhuynh`
--
ALTER TABLE `phuhuynh`
  MODIFY `idphuhuynh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT cho bảng `yeucau`
--
ALTER TABLE `yeucau`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
