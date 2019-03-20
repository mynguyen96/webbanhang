-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 20, 2019 lúc 11:03 PM
-- Phiên bản máy phục vụ: 10.1.37-MariaDB
-- Phiên bản PHP: 5.6.39

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webbanhang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietsp`
--

CREATE TABLE `chitietsp` (
  `id_sp` int(11) NOT NULL,
  `tensp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinhanh` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gia` int(100) NOT NULL,
  `mota` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_loaisp` int(100) NOT NULL,
  `thutu` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietsp`
--

INSERT INTO `chitietsp` (`id_sp`, `tensp`, `hinhanh`, `gia`, `mota`, `id_loaisp`, `thutu`) VALUES
(5, '', 'SP3.jpg', 60000, '<p>Trang Ä‘iá»ƒm nha</p>\r\n<p>\"</p>', 21, 17),
(8, 'NuocThan', 'SP2.jpg', 50000, '<p>dzfhxfhxf</p>', 18, 10),
(9, 'qq', 'SP1.jpg', 50000, '<p>aaSDASDA</p>', 19, 10),
(10, '', 'SP1.jpg', 50000, '<p>gszgzsgz</p>\r\n<p>\"</p>', 20, 19),
(12, 'Kem ná»n', 'TD1.jpg', 180000, '', 12, 7),
(13, 'Rá»­a máº·t', 'SP2.jpg', 100000, '<p>fnf fghfh</p>', 12, 23);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisp`
--

CREATE TABLE `loaisp` (
  `id_loaisp` int(11) NOT NULL,
  `tenloaisp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thutu` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loaisp`
--

INSERT INTO `loaisp` (`id_loaisp`, `tenloaisp`, `thutu`) VALUES
(12, 'Trang Ä‘iá»ƒm', 1),
(22, 'ChÄƒm sÃ³c da', 2),
(23, 'ChÄƒm sÃ³c toÃ n thÃ¢n', 3),
(24, 'ChÄƒm sÃ³c tÃ³c', 4),
(27, 'NÆ°á»›c Hoa', 5);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitietsp`
--
ALTER TABLE `chitietsp`
  ADD PRIMARY KEY (`id_sp`);

--
-- Chỉ mục cho bảng `loaisp`
--
ALTER TABLE `loaisp`
  ADD PRIMARY KEY (`id_loaisp`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chitietsp`
--
ALTER TABLE `chitietsp`
  MODIFY `id_sp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `loaisp`
--
ALTER TABLE `loaisp`
  MODIFY `id_loaisp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
