-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 24, 2023 lúc 10:43 AM
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
-- Cơ sở dữ liệu: `quanlydongho`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cthoadon`
--

CREATE TABLE `cthoadon` (
  `MaHD` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonGia` int(11) NOT NULL,
  `ThanhTien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `cthoadon`
--

INSERT INTO `cthoadon` (`MaHD`, `MaSP`, `SoLuong`, `DonGia`, `ThanhTien`) VALUES
(1, 1, 1, 1607000, 1607000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ctphieunhap`
--

CREATE TABLE `ctphieunhap` (
  `MaPN` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonGia` int(11) NOT NULL,
  `ThanhTien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `ctphieunhap`
--

INSERT INTO `ctphieunhap` (`MaPN`, `MaSP`, `SoLuong`, `DonGia`, `ThanhTien`) VALUES
(1, 1, 3, 1607000, 4821000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giamgia`
--

CREATE TABLE `giamgia` (
  `MaGG` int(11) NOT NULL,
  `TenGG` text NOT NULL,
  `PhanTramGiam` int(11) NOT NULL,
  `DieuKien` int(11) NOT NULL,
  `NgayBD` date NOT NULL,
  `NgayKT` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `giamgia`
--

INSERT INTO `giamgia` (`MaGG`, `TenGG`, `PhanTramGiam`, `DieuKien`, `NgayBD`, `NgayKT`) VALUES
(1, 'Không giảm giá', 0, 0, '2023-02-26', '2028-12-31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `MaHD` int(11) NOT NULL,
  `MaNV` int(11) NOT NULL,
  `MaKH` int(11) NOT NULL,
  `NgayLap` date NOT NULL,
  `TongTien` int(11) NOT NULL,
  `GhiChu` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`MaHD`, `MaNV`, `MaKH`, `NgayLap`, `TongTien`, `GhiChu`) VALUES
(1, 1, 1, '2023-02-28', 1607000, 'Đã thanh toán');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `MaKH` int(11) NOT NULL,
  `Ho` varchar(255) NOT NULL,
  `Ten` varchar(255) NOT NULL,
  `GioiTinh` varchar(3) NOT NULL,
  `SoDienThoai` varchar(10) NOT NULL,
  `TongChiTieu` int(11) NOT NULL DEFAULT 0,
  `TinhTrang` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`MaKH`, `Ho`, `Ten`, `GioiTinh`, `SoDienThoai`, `TongChiTieu`, `TinhTrang`) VALUES
(1, 'Tôn Thành', 'Tâm', 'Nam', '0396265413', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai`
--

CREATE TABLE `loai` (
  `MaLoai` int(11) NOT NULL,
  `TenLoai` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `loai`
--

INSERT INTO `loai` (`MaLoai`, `TenLoai`) VALUES
(1, 'Đồng hồ Nam'),
(2, 'Đồng hồ nữ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `MaNCC` int(11) NOT NULL,
  `TenNCC` varchar(255) NOT NULL,
  `DiaChi` varchar(255) NOT NULL,
  `SoDienThoai` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `nhacungcap`
--

INSERT INTO `nhacungcap` (`MaNCC`, `TenNCC`, `DiaChi`, `SoDienThoai`) VALUES
(1, 'CASIO', 'Nhật Bản', '0396265413'),
(2, 'G-SHOCK', '', ''),
(3, 'TOMMY', '', ''),
(4, 'CITIZEN', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `MaNV` int(11) NOT NULL,
  `Ho` varchar(255) DEFAULT NULL,
  `Ten` varchar(255) DEFAULT NULL,
  `GioiTinh` varchar(3) DEFAULT NULL,
  `ChucVu` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`MaNV`, `Ho`, `Ten`, `GioiTinh`, `ChucVu`) VALUES
(1, 'Admin', NULL, NULL, 'Admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phanquyen`
--

CREATE TABLE `phanquyen` (
  `Quyen` varchar(255) NOT NULL DEFAULT 'Default' COMMENT 'Tên quyền',
  `NhapHang` int(1) NOT NULL DEFAULT 0,
  `QLSanPham` int(1) NOT NULL DEFAULT 0,
  `QLNhanVien` int(1) NOT NULL DEFAULT 0,
  `QLKhachHang` int(1) NOT NULL DEFAULT 0,
  `ThongKe` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `phanquyen`
--

INSERT INTO `phanquyen` (`Quyen`, `NhapHang`, `QLSanPham`, `QLNhanVien`, `QLKhachHang`, `ThongKe`) VALUES
('Default', 0, 0, 0, 0, 0),
('Nhân viên', 0, 0, 0, 1, 0),
('Quản lý', 1, 0, 1, 1, 1),
('Quản trị', 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieunhap`
--

CREATE TABLE `phieunhap` (
  `MaPN` int(11) NOT NULL,
  `MaNV` int(11) NOT NULL,
  `MaNCC` int(11) NOT NULL,
  `NgayLap` date NOT NULL,
  `TongTien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `phieunhap`
--

INSERT INTO `phieunhap` (`MaPN`, `MaNV`, `MaNCC`, `NgayLap`, `TongTien`) VALUES
(1, 1, 1, '2023-02-28', 4821000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSP` int(11) NOT NULL,
  `TenSP` varchar(255) NOT NULL,
  `MaLoai` int(11) NOT NULL,
  `MaNCC` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `HinhAnh` varchar(255) NOT NULL,
  `DonGia` int(11) NOT NULL,
  `MoTa` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`MaSP`, `TenSP`, `MaLoai`, `MaNCC`, `SoLuong`, `HinhAnh`, `DonGia`, `MoTa`) VALUES
(1, 'CASIO NAM – QUARTZ (PIN) – DÂY KIM LOẠI (MTP-1370D-7A2VDF)', 1, 1, 22, 'casio0.png', 1607000, 'Đồng hồ nam Casio MTP-1370D-7A2VDF thanh lịch với kiểu dáng nam tính mặt đồng hồ nền trắng cùng chữ số vạch mạ vàng, chất liệu được làm từ thép không gỉ, 3 kim vàng, còn có 1 lịch ngày và 1 lịch thứ'),
(3, 'casio-ltp-v006d-7b2udf-nu', 2, 1, 10, 'casio-ltp-v006d-7b2udf-nu.jpg', 2999000, 'Mẫu phiên bản mặt kính chất liệu kính Sapphire với kích thước nam tính 40mm, kết hợp cùng mẫu dây đeo kim loại dây vàng demi phong cách thời trang sang trọng.'),
(4, 'casio-ltp-v007l-1budf-nu', 2, 1, 10, 'casio-ltp-v007l-1budf-nu.ipg', 2999000, 'Mẫu phiên bản mặt kính chất liệu kính Sapphire với kích thước nam tính 40mm, kết hợp cùng mẫu dây đeo kim loại dây vàng demi phong cách thời trang sang trọng.'),
(5, 'casio-ltp-vt01gl-4budf-nu', 2, 1, 10, 'casio-ltp-vt01gl-4budf-nu.jpg', 999900, 'Mẫu phiên bản mặt kính chất liệu kính Sapphire với kích thước nam tính 40mm, kết hợp cùng mẫu dây đeo kim loại dây vàng demi phong cách thời trang sang trọng.'),
(6, 'casio-ltp-vt01l-5budf-nu', 2, 1, 10, 'casio-ltp-vt01l-5budf-nu', 999900, 'Mẫu phiên bản mặt kính chất liệu kính Sapphire với kích thước nam tính 40mm, kết hợp cùng mẫu dây đeo kim loại dây vàng demi phong cách thời trang sang trọng.'),
(7, 'casio-mtp-e715l-1avdf-nam', 1, 1, 10, 'casio-mtp-e715l-1avdf-nam.ipg', 1900000, 'Mẫu phiên bản mặt kính chất liệu kính Sapphire với kích thước nam tính 40mm, kết hợp cùng mẫu dây đeo kim loại dây vàng demi phong cách thời trang sang trọng.'),
(8, 'casio-mtp-m300d-7avdf-nam', 1, 1, 10, 'casio-mtp-m300d-7avdf-nam.jbg', 1900000, 'Mẫu phiên bản mặt kính chất liệu kính Sapphire với kích thước nam tính 40mm, kết hợp cùng mẫu dây đeo kim loại dây vàng demi phong cách thời trang sang trọng.'),
(9, 'casio-mtp-m300l-7avdf-nam', 1, 1, 10, 'casio-mtp-m300l-7avdf-nam.jpg', 1900000, 'Mẫu phiên bản mặt kính chất liệu kính Sapphire với kích thước nam tính 40mm, kết hợp cùng mẫu dây đeo kim loại dây vàng demi phong cách thời trang sang trọng.'),
(10, 'casio-mtp-m305l-7avdf-nam', 1, 1, 10, 'casio-mtp-m305l-7avdf-nam.jpg', 2999000, 'Mẫu phiên bản mặt kính chất liệu kính Sapphire với kích thước nam tính 40mm, kết hợp cùng mẫu dây đeo kim loại dây vàng demi phong cách thời trang sang trọng.'),
(11, 'casio-mtp-m305l-7avdf-nam', 1, 1, 10, 'casio-mtp-m305l-7avdf-nam.jpg', 2999000, 'Mẫu phiên bản mặt kính chất liệu kính Sapphire với kích thước nam tính 40mm, kết hợp cùng mẫu dây đeo kim loại dây vàng demi phong cách thời trang sang trọng.'),
(12, 'casio-mtp-vd03d-2audf-nam', 1, 1, 10, 'casio-mtp-vd03d-2audf-nam.jpg', 1900000, 'Mẫu phiên bản mặt kính chất liệu kính Sapphire với kích thước nam tính 40mm, kết hợp cùng mẫu dây đeo kim loại dây vàng demi phong cách thời trang sang trọng.'),
(13, 'casio-mtp-vd03d-2audf-nam', 1, 1, 10, 'casio-mtp-vd03d-2audf-nam.jpg', 1900000, 'Mẫu phiên bản mặt kính chất liệu kính Sapphire với kích thước nam tính 40mm, kết hợp cùng mẫu dây đeo kim loại dây vàng demi phong cách thời trang sang trọng.'),
(14, 'citizen-em0993-82x-nu', 2, 4, 10, 'citizen-em0993-82x-nu.jpg', 999900, 'Mẫu phiên bản mạ vàng với mẫu kim chỉ nổi bật trên mặt số size 41.7mm đi kèm thiết kế 2 núm vặn điều chỉnh, vỏ máy kim loại mạ bạc kiểu dáng dày dặn của bô máy cơ.'),
(15, 'citizen-eq0614-52e-nu', 2, 4, 10, 'citizen-eq0614-52e-nu.jpg', 999900, 'Mẫu phiên bản mạ vàng với mẫu kim chỉ nổi bật trên mặt số size 41.7mm đi kèm thiết kế 2 núm vặn điều chỉnh, vỏ máy kim loại mạ bạc kiểu dáng dày dặn của bô máy cơ.'),
(16, 'citizen-ew2449-83a-nu', 2, 4, 10, 'citizen-ew2449-83a-nu.jpg', 1900000, 'Mẫu phiên bản mạ vàng với mẫu kim chỉ nổi bật trên mặt số size 41.7mm đi kèm thiết kế 2 núm vặn điều chỉnh, vỏ máy kim loại mạ bạc kiểu dáng dày dặn của bô máy cơ.'),
(17, 'citizen-ew2590-85d-nu.jpg', 2, 4, 10, 'citizen-ew2590-85d-nu.jpg', 1900000, 'Mẫu phiên bản mạ vàng với mẫu kim chỉ nổi bật trên mặt số size 41.7mm đi kèm thiết kế 2 núm vặn điều chỉnh, vỏ máy kim loại mạ bạc kiểu dáng dày dặn của bô máy cơ.'),
(18, 'citizen-ew2590-85n-nu', 2, 4, 10, 'citizen-ew2590-85n-nu.jpg', 999900, 'Mẫu phiên bản mạ vàng với mẫu kim chỉ nổi bật trên mặt số size 41.7mm đi kèm thiết kế 2 núm vặn điều chỉnh, vỏ máy kim loại mạ bạc kiểu dáng dày dặn của bô máy cơ.'),
(19, 'citizen-ew2591-82d-nu', 2, 4, 10, 'citizen-ew2591-82d-nu.jpg', 999900, 'Mẫu phiên bản mạ vàng với mẫu kim chỉ nổi bật trên mặt số size 41.7mm đi kèm thiết kế 2 núm vặn điều chỉnh, vỏ máy kim loại mạ bạc kiểu dáng dày dặn của bô máy cơ.'),
(20, 'citizen-nh8390-11x-nam', 1, 4, 10, 'citizen-nh8390-11x-nam.jpg', 999900, 'Mẫu phiên bản mạ vàng với mẫu kim chỉ nổi bật trên mặt số size 41.7mm đi kèm thiết kế 2 núm vặn điều chỉnh, vỏ máy kim loại mạ bạc kiểu dáng dày dặn của bô máy cơ.'),
(21, 'citizen-nj0155-87e-nam', 1, 4, 10, 'citizen-nj0155-87e-nam.jpg', 2999000, 'Mẫu phiên bản mạ vàng với mẫu kim chỉ nổi bật trên mặt số size 41.7mm đi kèm thiết kế 2 núm vặn điều chỉnh, vỏ máy kim loại mạ bạc kiểu dáng dày dặn của bô máy cơ.'),
(22, 'citizen-nj0150-81l-nam', 1, 4, 10, 'citizen-nj0150-81l-nam.jpg', 2999000, 'Mẫu phiên bản mạ vàng với mẫu kim chỉ nổi bật trên mặt số size 41.7mm đi kèm thiết kế 2 núm vặn điều chỉnh, vỏ máy kim loại mạ bạc kiểu dáng dày dặn của bô máy cơ.'),
(23, 'citizen-nh8394-70h-nam', 1, 4, 10, 'citizen-nh8394-70h-nam.jpg', 1900000, 'Mẫu phiên bản mạ vàng với mẫu kim chỉ nổi bật trên mặt số size 41.7mm đi kèm thiết kế 2 núm vặn điều chỉnh, vỏ máy kim loại mạ bạc kiểu dáng dày dặn của bô máy cơ.'),
(24, 'tommy-1710420-nam', 1, 3, 10, 'tommy-1710420-nam.jpg', 2999000, 'Mẫu phiên bản mạ vàng với mẫu kim chỉ nổi bật trên mặt số size 41.7mm đi kèm thiết kế 2 núm vặn điều chỉnh, vỏ máy kim loại mạ bạc kiểu dáng dày dặn của bô máy cơ.'),
(25, 'tommy-1782110-nu', 2, 3, 10, 'tommy-1782110-nu.jpg', 2999000, 'Mẫu phiên bản mạ vàng với mẫu kim chỉ nổi bật trên mặt số size 41.7mm đi kèm thiết kế 2 núm vặn điều chỉnh, vỏ máy kim loại mạ bạc kiểu dáng dày dặn của bô máy cơ.'),
(26, 'tommy-1782336-nu', 2, 3, 10, 'tommy-1782336-nu.jpg', 999900, 'Mẫu phiên bản mạ vàng với mẫu kim chỉ nổi bật trên mặt số size 41.7mm đi kèm thiết kế 2 núm vặn điều chỉnh, vỏ máy kim loại mạ bạc kiểu dáng dày dặn của bô máy cơ.'),
(27, 'tommy-1782337-nu', 2, 3, 10, 'tommy-1782337-nu.jpg', 999900, 'Mẫu phiên bản mạ vàng với mẫu kim chỉ nổi bật trên mặt số size 41.7mm đi kèm thiết kế 2 núm vặn điều chỉnh, vỏ máy kim loại mạ bạc kiểu dáng dày dặn của bô máy cơ.'),
(28, 'tommy-1791807-nam', 1, 3, 10, 'tommy-1791807-nam.jpg', 1900000, 'Mẫu phiên bản mạ vàng với mẫu kim chỉ nổi bật trên mặt số size 41.7mm đi kèm thiết kế 2 núm vặn điều chỉnh, vỏ máy kim loại mạ bạc kiểu dáng dày dặn của bô máy cơ.'),
(29, 'tommy-hilfiger-1782511-nu', 2, 3, 10, 'tommy-hilfiger-1782511-nu.jpg', 999900, 'Mẫu phiên bản mạ vàng với mẫu kim chỉ nổi bật trên mặt số size 41.7mm đi kèm thiết kế 2 núm vặn điều chỉnh, vỏ máy kim loại mạ bạc kiểu dáng dày dặn của bô máy cơ.'),
(30, 'tommy-hilfiger-1792009-nam', 1, 3, 10, 'tommy-hilfiger-1792009-nam.jpg', 2999000, 'Mẫu phiên bản mạ vàng với mẫu kim chỉ nổi bật trên mặt số size 41.7mm đi kèm thiết kế 2 núm vặn điều chỉnh, vỏ máy kim loại mạ bạc kiểu dáng dày dặn của bô máy cơ.'),
(31, 'tommy-hilfiger-1792015-nam', 1, 3, 10, 'tommy-hilfiger-1792015-nam.jpg', 2999000, 'Mẫu phiên bản mạ vàng với mẫu kim chỉ nổi bật trên mặt số size 41.7mm đi kèm thiết kế 2 núm vặn điều chỉnh, vỏ máy kim loại mạ bạc kiểu dáng dày dặn của bô máy cơ.'),
(32, 'tommy-1782337-nu', 2, 3, 10, 'tommy-1782337-nu.jpg', 999900, 'Mẫu đôi thiết kế mỏng thời trang với phần vỏ máy pin chỉ 8mm, mặt số trắng kiểu dáng đơn giản 3 kim 1 lịch.'),
(33, 'tommy-1791807-nam', 1, 3, 10, 'tommy-1791807-nam.jpg', 1900000, 'Mẫu đôi thiết kế mỏng thời trang với phần vỏ máy pin chỉ 8mm, mặt số trắng kiểu dáng đơn giản 3 kim 1 lịch.'),
(34, 'tommy-hilfiger-1782511-nu', 2, 3, 10, 'tommy-hilfiger-1782511-nu.jpg', 999900, 'Mẫu đôi thiết kế mỏng thời trang với phần vỏ máy pin chỉ 8mm, mặt số trắng kiểu dáng đơn giản 3 kim 1 lịch.'),
(35, 'tommy-hilfiger-1792009-nam', 1, 3, 10, 'tommy-hilfiger-1792009-nam.jpg', 999900, 'Mẫu đôi thiết kế mỏng thời trang với phần vỏ máy pin chỉ 8mm, mặt số trắng kiểu dáng đơn giản 3 kim 1 lịch.'),
(36, 'tommy-hilfiger-1792015-nam', 1, 3, 10, 'tommy-hilfiger-1792015-nam.jpg', 1900000, 'Mẫu đôi thiết kế mỏng thời trang với phần vỏ máy pin chỉ 8mm, mặt số trắng kiểu dáng đơn giản 3 kim 1 lịch.'),
(37, 'g-shock-ga-2100-1a3dr-nam', 1, 2, 10, 'g-shock-ga-2100-1a3dr-nam.jpg', 1900000, 'Mẫu đôi thiết kế mỏng thời trang với phần vỏ máy pin chỉ 8mm, mặt số trắng kiểu dáng đơn giản 3 kim 1 lịch.'),
(38, 'g-shock-ga-2100-1a4dr-nam', 1, 2, 10, 'g-shock-ga-2100-1a4dr-nam.jpg', 999900, 'Mẫu đôi thiết kế mỏng thời trang với phần vỏ máy pin chỉ 8mm, mặt số trắng kiểu dáng đơn giản 3 kim 1 lịch.'),
(39, 'g-shock-gm-5600-1dr-nam', 1, 2, 10, 'g-shock-gm-5600-1dr-nam.jpg', 999900, 'Mẫu đôi thiết kế mỏng thời trang với phần vỏ máy pin chỉ 8mm, mặt số trắng kiểu dáng đơn giản 3 kim 1 lịch.'),
(40, 'g-shock-gm-5600g-9dr-nam', 1, 2, 10, 'g-shock-gm-5600g-9dr-nam.jpg', 999900, 'Mẫu đôi thiết kế mỏng thời trang với phần vỏ máy pin chỉ 8mm, mặt số trắng kiểu dáng đơn giản 3 kim 1 lịch.'),
(41, 'g-shock-gm-5600sg-9dr-nam', 1, 2, 10, 'g-shock-gm-5600sg-9dr-nam.jpg', 2999000, 'Mẫu Casio đôi thiết kế mỏng thời trang với phần vỏ máy pin chỉ 8mm, mặt số trắng kiểu dáng đơn giản 3 kim 1 lịch.'),
(42, 'g-shock-gma-s2100ba-4adr-nu', 2, 2, 10, 'g-shock-gma-s2100ba-4adr-nu.jpg', 999900, 'Mẫu đôi thiết kế mỏng thời trang với phần vỏ máy pin chỉ 8mm, mặt số trắng kiểu dáng đơn giản 3 kim 1 lịch.'),
(43, 'g-shock-gm-s2100-3adr-nu', 2, 2, 10, 'g-shock-gm-s2100-3adr-nu.jpg', 999900, 'Mẫu đôi thiết kế mỏng thời trang với phần vỏ máy pin chỉ 8mm, mặt số trắng kiểu dáng đơn giản 3 kim 1 lịch.'),
(44, 'g-shock-gm-s2100pg-1a4dr-nu', 2, 2, 10, 'g-shock-gm-s2100pg-1a4dr-nu.jpg', 1900000, 'Mẫu đôi thiết kế mỏng thời trang với phần vỏ máy pin chỉ 8mm, mặt số trắng kiểu dáng đơn giản 3 kim 1 lịch.'),
(45, 'g-shock-mtg-b1000tj-1adr-nam', 1, 2, 10, 'g-shock-mtg-b1000tj-1adr-nam.jpg', 1900000, 'Mẫu đôi thiết kế mỏng thời trang với phần vỏ máy pin chỉ 8mm, mặt số trắng kiểu dáng đơn giản 3 kim 1 lịch.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `MaNV` int(11) NOT NULL,
  `TaiKhoan` varchar(255) NOT NULL,
  `MatKhau` varchar(255) NOT NULL,
  `Quyen` varchar(100) NOT NULL,
  `TrangThai` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`MaNV`, `TaiKhoan`, `MatKhau`, `Quyen`, `TrangThai`) VALUES
(1, 'admin', 'admin', 'Quản trị', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cthoadon`
--
ALTER TABLE `cthoadon`
  ADD PRIMARY KEY (`MaHD`,`MaSP`),
  ADD KEY `cthoadon_ibfk_2` (`MaSP`);

--
-- Chỉ mục cho bảng `ctphieunhap`
--
ALTER TABLE `ctphieunhap`
  ADD PRIMARY KEY (`MaPN`,`MaSP`),
  ADD KEY `ctphieunhap_ibfk_2` (`MaSP`);

--
-- Chỉ mục cho bảng `giamgia`
--
ALTER TABLE `giamgia`
  ADD PRIMARY KEY (`MaGG`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MaHD`),
  ADD KEY `hoadon_ibfk_1` (`MaKH`),
  ADD KEY `hoadon_ibfk_2` (`MaNV`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`MaKH`);

--
-- Chỉ mục cho bảng `loai`
--
ALTER TABLE `loai`
  ADD PRIMARY KEY (`MaLoai`);

--
-- Chỉ mục cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`MaNCC`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`MaNV`);

--
-- Chỉ mục cho bảng `phanquyen`
--
ALTER TABLE `phanquyen`
  ADD PRIMARY KEY (`Quyen`);

--
-- Chỉ mục cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD PRIMARY KEY (`MaPN`),
  ADD KEY `phieunhap_ibfk_1` (`MaNCC`),
  ADD KEY `phieunhap_ibfk_2` (`MaNV`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSP`),
  ADD KEY `sp_ibfk_1` (`MaLoai`),
  ADD KEY `sp_ibfk_2` (`MaNCC`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`MaNV`),
  ADD KEY `taikhoan_ibfk_2` (`Quyen`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `giamgia`
--
ALTER TABLE `giamgia`
  MODIFY `MaGG` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `MaHD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `MaKH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `loai`
--
ALTER TABLE `loai`
  MODIFY `MaLoai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  MODIFY `MaNCC` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `MaNV` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  MODIFY `MaPN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MaSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cthoadon`
--
ALTER TABLE `cthoadon`
  ADD CONSTRAINT `cthoadon_ibfk_1` FOREIGN KEY (`MaHD`) REFERENCES `hoadon` (`MaHD`),
  ADD CONSTRAINT `cthoadon_ibfk_2` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`);

--
-- Các ràng buộc cho bảng `ctphieunhap`
--
ALTER TABLE `ctphieunhap`
  ADD CONSTRAINT `ctphieunhap_ibfk_1` FOREIGN KEY (`MaPN`) REFERENCES `phieunhap` (`MaPN`),
  ADD CONSTRAINT `ctphieunhap_ibfk_2` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`);

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`MaKH`) REFERENCES `khachhang` (`MaKH`),
  ADD CONSTRAINT `hoadon_ibfk_2` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`);

--
-- Các ràng buộc cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD CONSTRAINT `nhanvien_ibfk_2` FOREIGN KEY (`MaNV`) REFERENCES `taikhoan` (`MaNV`);

--
-- Các ràng buộc cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD CONSTRAINT `phieunhap_ibfk_1` FOREIGN KEY (`MaNCC`) REFERENCES `nhacungcap` (`MaNCC`),
  ADD CONSTRAINT `phieunhap_ibfk_2` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sp_ibfk_1` FOREIGN KEY (`MaLoai`) REFERENCES `loai` (`MaLoai`),
  ADD CONSTRAINT `sp_ibfk_2` FOREIGN KEY (`MaNCC`) REFERENCES `nhacungcap` (`MaNCC`);

--
-- Các ràng buộc cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD CONSTRAINT `taikhoan_ibfk_1` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`),
  ADD CONSTRAINT `taikhoan_ibfk_2` FOREIGN KEY (`Quyen`) REFERENCES `phanquyen` (`Quyen`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
