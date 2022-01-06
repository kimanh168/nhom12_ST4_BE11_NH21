-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th1 06, 2022 lúc 11:44 AM
-- Phiên bản máy phục vụ: 5.7.31
-- Phiên bản PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `nhom12`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethd`
--

DROP TABLE IF EXISTS `chitiethd`;
CREATE TABLE IF NOT EXISTS `chitiethd` (
  `id_chitiet` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tensp` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `soluongsp` int(11) NOT NULL,
  `giasp` int(11) NOT NULL,
  `hinhsp` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ThoiDiemDatHang` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tongtien` int(11) NOT NULL,
  PRIMARY KEY (`id_chitiet`)
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitiethd`
--

INSERT INTO `chitiethd` (`id_chitiet`, `user_name`, `tensp`, `soluongsp`, `giasp`, `hinhsp`, `ThoiDiemDatHang`, `tongtien`) VALUES
(75, 'nhom12', 'OPPO Reno5 Marvel', 1, 9190000, 'oppo-reno5-marvel-thumb-600x600-600x600.jpg', '22/12/2021 00:06', 9190000),
(74, 'nhom12', 'OPPO A74', 4, 6690000, 'oppo-a74-blue-9-600x600.jpg', '22/12/2021 00:06', 26760000),
(73, 'huucuong123', 'Galaxy Z Fold3 5G 512GB', 1, 43990000, 'samsung-galaxy-z-fold-3-black-1-1-600x600.jpg', '19/12/2021 07:20', 43990000),
(71, 'huucuong123', 'OPPO A74', 1, 6690000, 'oppo-a74-blue-9-600x600.jpg', '19/12/2021 07:20', 6690000),
(72, 'huucuong123', 'Samsung Galaxy Z Flip3', 1, 23990000, 'samsung-galaxy-z-flip-3-black-1-600x600.jpg', '19/12/2021 07:20', 23990000),
(64, 'kimanhlagi12', 'OPPO A74', 2, 6690000, 'oppo-a74-blue-9-600x600.jpg', '16/12/2021 12:56', 13380000),
(65, 'kimanhlagi12', 'OPPO Reno5 Marvel', 1, 9190000, 'oppo-reno5-marvel-thumb-600x600-600x600.jpg', '16/12/2021 12:56', 9190000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

DROP TABLE IF EXISTS `hoadon`;
CREATE TABLE IF NOT EXISTS `hoadon` (
  `idHD` int(11) NOT NULL AUTO_INCREMENT,
  `ThoiDiemDatHang` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dienthoai` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diachi` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ghichucuakhach` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tongcong` int(11) NOT NULL,
  PRIMARY KEY (`idHD`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`idHD`, `ThoiDiemDatHang`, `user_name`, `fullname`, `email`, `dienthoai`, `diachi`, `ghichucuakhach`, `tongcong`) VALUES
(16, '19/12/2021 07:20', 'huucuong123', 'Trần Hà Hữu Cường', 'kimanhlagi14@gmail.com', '0908179750', 'Thị xã Lagi, Tỉnh Bình Thuận, Việt Nam', '', 74670000),
(17, '22/12/2021 00:06', 'nhom12', 'Huu Cuong', 'hileo52@gmail.com', '0908260051', 'Lagi, Binh Thuan', 'aa', 35950000),
(12, '16/12/2021 12:56', 'kimanhlagi12', 'Trần Hà Kim Anh', 'kimanhlagi12@gmail.com', '0908179750', 'thị xã Lagi, Bình Thuận', '', 22570000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `manufactures`
--

DROP TABLE IF EXISTS `manufactures`;
CREATE TABLE IF NOT EXISTS `manufactures` (
  `manu_id` int(11) NOT NULL AUTO_INCREMENT,
  `manu_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`manu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `manufactures`
--

INSERT INTO `manufactures` (`manu_id`, `manu_name`) VALUES
(1, 'Apple'),
(2, 'Oppo'),
(3, 'Samsung'),
(4, 'LG'),
(5, 'Sony'),
(6, 'Asus'),
(7, 'Acer'),
(14, 'Nhóm 12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `manu_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `image` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `feature` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `manu_id`, `type_id`, `price`, `image`, `description`, `feature`, `created_at`) VALUES
(1, 'iPhone 12 64GB ', 1, 1, 20490000, 'iphone-12-xanh-la-new-2-600x600.jpg', 'iPhone 12 sẽ chạy trên hệ điều hành iOS 14 với nhiều tính năng hấp dẫn như hỗ trợ Widget cũng như những nâng cấp tối ưu phần mềm đáng kể mang lại những trải nghiệm thú vị mới lạ đến người dùng.', 0, '2021-08-17 15:09:00'),
(2, 'iPhone 11 64GB', 1, 1, 16990000, 'iphone-xi-do-600x600.jpg', 'Đây là một điều được xem là bước 128GB ngoặt bởi những chiếc smartphone Android có nhiều camera hiện nay sẽ thường bị sai lệch về màu sắc khi chuyển đổi qua lại giữa các ống kính gây cảm giác khá khó chịu cho người dùng.', 1, '2021-08-27 15:09:48'),
(3, 'iPhone SE 128GB', 1, 1, 12490000, 'iphone-se-128gb-2020-do-600x600.jpg', 'Đối với những ai ưa thích sự nhỏ gọn, đặc biệt là các bạn nữ thì iPhone SE là một sự lựa chọn lý tưởng. Kích thước nhỏ gọn không quá to, giúp cho iPhone SE 2020 dễ dàng cầm nắm và sử dụng bằng 1 tay hay nhét vào túi quần dễ dàng.', 0, '2021-10-03 15:10:09'),
(4, 'Galaxy Z Fold3 5G 512GB', 3, 1, 43990000, 'samsung-galaxy-z-fold-3-black-1-1-600x600.jpg', 'Galaxy Z Fold3 5G đánh dấu bước tiến mới của Samsung trong phân khúc điện thoại gập cao cấp khi được cải tiến về độ bền cùng những nâng cấp đáng giá về cấu hình hiệu năng, hứa hẹn sẽ mang đến trải nghiệm sử dụng đột phá cho người dùng.', 0, '2021-10-07 15:10:28'),
(5, 'Galaxy S20 FE', 3, 1, 12990000, 'samsung-galaxy-s20-fan-edition-090320-040338-600x600.jpg', 'Samsung đã giới thiệu đến người dùng thành viên mới của dòng điện thoại thông minh S20 Series đó chính là Samsung Galaxy S20 FE. Đây là mẫu flagship cao cấp quy tụ nhiều tính năng mà Samfan yêu thích, hứa hẹn sẽ mang lại trải nghiệm cao cấp của dòng Galaxy S với mức giá dễ tiếp cận hơn.', 1, '2021-07-23 15:10:39'),
(6, 'Reno6 Z 5G ', 2, 1, 9490000, 'oppo-reno6-z-5g-aurora-1-600x600.jpg', 'Reno6 Z 5G đến từ nhà OPPO với hàng loạt sự nâng cấp và cải tiến không chỉ ngoại hình bên ngoài mà còn sức mạnh bên trong. Đặc biệt, chiếc điện thoại được hãng đánh giá “chuyên gia chân dung bắt trọn mọi cảm xúc chân thật nhất”, đây chắc chắn sẽ là một “siêu phẩm\" mà bạn không thể bỏ qua', 0, '2021-07-22 15:10:57'),
(7, 'OPPO A74', 2, 1, 6690000, 'oppo-a74-blue-9-600x600.jpg', '<p>Chiếc điện thoại OPPO A74 vẫn sở hữu cụm camera nằm trong mô-đun hình chữ nhật góc trái thân thuộc của hãng, máy được gia công tỉ mỉ, tối ưu kích thước giúp smartphone mỏng nhẹ, thiết kế thân máy cong 3D mảnh mai, dễ cầm nắm sử dụng.</p><ul class=\"parameter__list 235653 active\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; list-style: none; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 14px;\"><li data-index=\"0\" data-prop=\"0\" style=\"margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);\"><p class=\"lileft\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;\">Màn hình:</p><div class=\"liright\" style=\"margin: 0px; padding-right: 15px; padding-left: 50px; width: calc(100% - 140px); padding-top: 0px !important; padding-bottom: 0px !important;\"><span class=\"comma\" style=\"margin: 0px; padding: 0px;\">AMOLED</span><span class=\"comma\" style=\"margin: 0px; padding: 0px;\">6.43\"</span><span class=\"\" style=\"margin: 0px; padding: 0px;\">Full HD+</span></div></li><li data-index=\"0\" data-prop=\"0\" style=\"margin: 0px; padding: 10px; align-items: flex-start; display: flex;\"><p class=\"lileft\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;\">Hệ điều hành:</p><div class=\"liright\" style=\"margin: 0px; padding-right: 15px; padding-left: 50px; width: calc(100% - 140px); padding-top: 0px !important; padding-bottom: 0px !important;\"><span class=\"\" style=\"margin: 0px; padding: 0px;\">Android 11</span></div></li><li data-index=\"0\" data-prop=\"0\" style=\"margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);\"><p class=\"lileft\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;\">Camera sau:</p><div class=\"liright\" style=\"margin: 0px; padding-right: 15px; padding-left: 50px; width: calc(100% - 140px); padding-top: 0px !important; padding-bottom: 0px !important;\"><span class=\"\" style=\"margin: 0px; padding: 0px;\">Chính 48 MP &amp; Phụ 2 MP, 2 MP</span></div></li><li data-index=\"0\" data-prop=\"0\" style=\"margin: 0px; padding: 10px; align-items: flex-start; display: flex;\"><p class=\"lileft\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;\">Camera trước:</p><div class=\"liright\" style=\"margin: 0px; padding-right: 15px; padding-left: 50px; width: calc(100% - 140px); padding-top: 0px !important; padding-bottom: 0px !important;\"><span class=\"\" style=\"margin: 0px; padding: 0px;\">16 MP</span></div></li><li data-index=\"0\" data-prop=\"0\" style=\"margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);\"><p class=\"lileft\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;\">Chip:</p><div class=\"liright\" style=\"margin: 0px; padding-right: 15px; padding-left: 50px; width: calc(100% - 140px); padding-top: 0px !important; padding-bottom: 0px !important;\"><span class=\"\" style=\"margin: 0px; padding: 0px;\">Snapdragon 662</span></div></li><li data-index=\"0\" data-prop=\"0\" style=\"margin: 0px; padding: 10px; align-items: flex-start; display: flex;\"><p class=\"lileft\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;\">RAM:</p><div class=\"liright\" style=\"margin: 0px; padding-right: 15px; padding-left: 50px; width: calc(100% - 140px); padding-top: 0px !important; padding-bottom: 0px !important;\"><span class=\"\" style=\"margin: 0px; padding: 0px;\">8 GB</span></div></li><li data-index=\"0\" data-prop=\"0\" style=\"margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);\"><p class=\"lileft\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;\">Bộ nhớ trong:</p><div class=\"liright\" style=\"margin: 0px; padding-right: 15px; padding-left: 50px; width: calc(100% - 140px); padding-top: 0px !important; padding-bottom: 0px !important;\"><span class=\"\" style=\"margin: 0px; padding: 0px;\">128 GB</span></div></li><li data-index=\"0\" data-prop=\"0\" style=\"margin: 0px; padding: 10px; align-items: flex-start; display: flex;\"><p class=\"lileft\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;\">SIM:</p><div class=\"liright\" style=\"margin: 0px; padding-right: 15px; padding-left: 50px; width: calc(100% - 140px); padding-top: 0px !important; padding-bottom: 0px !important;\"><span class=\"comma\" style=\"margin: 0px; padding: 0px;\">2 Nano SIM,</span><span class=\"\" style=\"margin: 0px; padding: 0px;\">Hỗ trợ 4G</span></div></li><li data-index=\"0\" data-prop=\"0\" style=\"margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);\"><p class=\"lileft\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;\">Pin, Sạc:</p><div class=\"liright\" style=\"margin: 0px; padding-right: 15px; padding-left: 50px; width: calc(100% - 140px); padding-top: 0px !important; padding-bottom: 0px !important;\"><span class=\"comma\" style=\"margin: 0px; padding: 0px;\">5000 mAh</span><span class=\"\" style=\"margin: 0px; padding: 0px;\">33 W</span></div></li></ul>', 0, '2021-10-22 17:00:00'),
(8, 'OPPO Reno5 Marvel', 2, 1, 9190000, 'oppo-reno5-marvel-thumb-600x600-600x600.jpg', 'Thoạt nhìn, OPPO Reno5 Marvel trông như một chiếc điện thoại chơi game với chủ đạo là màu đen, xen lẫn là các màu đỏ và bạc, sự kết hợp này tạo nên điểm nhấn nổi bật về một chiếc điện thoại mang phong cách thể thao nhưng vẫn toát lên vẻ đẹp thanh lịch.', 0, '2021-10-17 17:00:00'),
(9, 'Apple MacBook Air M1 2020', 1, 2, 34990000, 'macbook-air-m1-2020-gold-600x600.jpg', 'Tôn lên vẻ cá tính, sang trọng, laptop được bọc bởi một lớp kim loại nguyên khối cùng với những đường nét trang nhã, tinh tế. Hơn thế nữa, với trọng lượng khá nhẹ chỉ 1.29 kg và độ mỏng từ 4.1 mm đến 16.1 mm có thể dễ dàng mang theo, chiếc laptop này sẽ là người bạn đồng hành cùng bạn mọi lúc mọi nơi như đi công tác, đi học, đi họp,...', 1, '2021-10-10 13:51:15'),
(11, 'Cu', 7, 2, 11900000, 'acer-aspire-a315-56-308n-i3-nxhs5sv00c-15-223654-600x600.jpg', 'Laptop Acer Aspire A315 56 308N i3 (NX.HS5SV.00C) là mẫu laptop học tập văn phòng thuộc phân khúc giá thấp. Máy trang bị vi xử lý thế hệ mới của Intel, cho hiệu năng đủ dùng đối với các nhu cầu cơ bản, phù hợp với học sinh và sinh viên.', 1, '2021-10-19 13:58:44'),
(12, 'Asus VivoBook A515EA', 6, 2, 16490000, 'asus-vivobook-a515ea-i3-1115g4-8gb-512gb-win10-600x600.jpg', 'Laptop Asus mang một thiết kế tuy đơn giản, thanh lịch nhưng kết hợp với nắp lưng bằng kim loại tôn lên được sự sang trọng cho máy và vỏ nhựa làm giảm được sức nặng của laptop. Với trọng lượng 1.8 kg và độ dày là 17.9 mm, máy cũng sẽ thuận tiện đồng hành cùng bạn đi khắp mọi nơi để học tập, làm việc cũng như giải trí.', 0, '2021-10-06 14:01:59'),
(13, 'LG Gram 14 2021', 4, 2, 47890000, 'lg-gram-14-i7-14z90pgah75a5-0-600x600.jpg', 'Laptop LG Gram mang kiểu dáng thanh lịch và đậm tính di động chỉ mỏng 16.8 mm và nhẹ 999 gram được làm từ hợp kim Nano Carbon - Magie, dễ dàng di chuyển hội họp hay siêu tiện lợi khi mang đi công tác xa.', 0, '2021-10-07 14:06:50'),
(14, 'Bluetooth Sony SRS-XB13', 5, 3, 1290000, 'bluetooth-sony-srs-xb13-avatar-600x600.jpg', 'Thiết kế loa Bluetooth Sony đơn giản, gọn nhẹ chỉ 0.4 kg, đi kèm dây treo cho bạn dễ dàng đeo vào cổ tay của mình hoặc treo móc vào balo mang theo khi đi chơi, du lịch, đi học,... Chất liệu vỏ nhựa có thêm lớp UV coating cho độ bền cao, chống trầy xước, làm sạch nhẹ nhàng. ', 0, '2021-10-17 14:12:39'),
(15, 'Bluetooth Sony Extra Bass SRS-XB23', 5, 3, 2365000, 'loa-bluetooth-sony-extra-bass-srs-xb23-den-av-600x600.jpg', 'Loa Sony kiểu dáng tinh tế, năng động, dễ mang theo. Hình trụ tròn tinh xảo, loa có kích thước dễ cầm nắm, di chuyển. Sở hữu các màu sắc sang trọng là xanh dương, đen, xanh rêu giúp tôn vinh nét đẹp của mọi không gian sử dụng, cho người dùng thêm cá tính, sành điệu.', 0, '2021-10-02 14:16:34'),
(16, 'Loa Bluetooth Sony Extra Bass SRS-XB01', 5, 3, 759000, 'loa-bluetooth-sony-srs-xb01-600x600.jpg', 'Thiết kế Loa Bluetooth Sony SRS-XB01 nhỏ gọn, tiện lợi mang theo trong buổi dã ngoại hoặc đi du lịch', 0, '2021-09-15 14:18:27'),
(17, 'Loa Bluetooth Sony Extra Bass SRS-XB12', 5, 3, 1090000, 'loa-bluetooth-sony-srs-xb12-1-600x600.jpg', 'Loa Bluetooth Sony SRS-XB12 có thiết kế nhỏ gọn, 4 màu sắc thời trang và năng động, phù hợp mang theo trong những chuyến đi chơi ngoài trời', 0, '2021-09-20 14:20:29'),
(18, 'Loa Bluetooth Sony Extra Bass SRS-XB33', 5, 3, 3505000, 'loa-bluetooth-sony-srs-xb33-av-600x600.jpg', 'Thiết kế cầm vừa tay, có thể trực tiếp cầm loa nghe nhạc hoặc cho vào túi xách, balo khi đi chơi, du lịch, đi làm,... Với 3 gam màu nổi bật là đen, đỏ và xanh dương, bạn nam và nữ có thể tiện chọn mua theo sở thích của mình.', 0, '2021-09-13 14:21:57'),
(19, 'Tai nghe Bluetooth AirPods Pro Wireless Charge Apple MWP22', 1, 5, 4990000, 'airpods-pro-wireless-charge-apple-mwp22-ava-1-org.jpg', 'Thiết kế nhỏ gọn, dễ dàng đem theo bất cứ đâu. AirPods Pro với thiết kế gọn gàng, đẹp và tinh tế, tai nghe được thiết kế theo dạng In-ear thay vì Earbuds như AirPods 2, cho phép chống ồn tốt hơn, khó rớt khi đeo và đặc biệt là êm tai hơn.', 0, '2021-09-13 14:26:29'),
(20, 'True Wireless Sony WF-1000XM4', 5, 5, 6490000, 'bluetooth-true-wireless-sony-wf-1000xm4-ava-600x600.jpg', 'Tai nghe Bluetooth True Wireless Sony WF-1000XM4 được phủ gam màu đen nhám sang trọng, thiết kế nhỏ gọn dễ dàng bỏ túi mang đi khắp nơi. Hộp sạc được thiết kế có nam châm đóng mở nhẹ nhàng. ', 0, '2021-10-17 15:46:36'),
(21, 'Oppo Watch 46mm dây silicone đen', 2, 4, 5752000, 'oppo-watch-46mm-day-silicone-thumb-1-1-600x600.jpg', 'Đồng hồ thông minh Oppo Watch màu đen phiên bản 46mm sử dụng mặt đồng hồ vuông, bo cong nhẹ ở 4 cạnh, cùng với mặt kính bo cong 2D sang hai bên có chiều sâu tạo cảm giác như mặt kính cong 3D, màn hình AMOLED 1.91 inch độ phân giải 402 x 476 pixels, mật độ điểm ảnh 326 ppi và dải màu rộng chuẩn DCI-P3 cho chất lượng hiển thị sắc nét, sống động. Dây đeo silicone cho cảm giác mang được dễ chịu và thoải mái.', 1, '2021-08-26 15:54:27'),
(22, 'Oppo Watch 41mm dây silicone hồng', 2, 4, 4312000, 'oppo-watch-41mm-day-silicone-thumb-1-1-600x600.jpg', '<p>Đồng hồ thông minh Oppo Watch màu hồng phiên bản 41mm trang bị màn hình AMOLED 1.6 inch cùng độ phân giải là 320 x 360 pixels, mật độ điểm ảnh 326ppi cho chất lượng hiển thị cực kì sắc nét. Dây đeo làm từ silicone với thiết kế mang lại cảm giác vô cùng mềm mại, không bị đau khi đeo lâu.</p><p> </p>', 0, '2021-08-16 15:56:45'),
(23, 'Laptop LG Gram 17 2021', 4, 2, 54890000, 'lg-gram-17-i7-17z90pgah78a5-3-600x600.jpg', '<span id=\"docs-internal-guid-5fee860f-7fff-e746-c625-978182d9f0bf\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(51, 51, 51); font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">LG GAM trang bị màn hình kích thước đến </span><span style=\"font-size: 11pt; font-family: Arial; color: rgb(51, 51, 51); font-weight: 700; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">17 inch</span><span style=\"font-size: 11pt; font-family: Arial; color: rgb(51, 51, 51); font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\"> nhưng lại sở hữu độ mỏng ấn tượng </span><span style=\"font-size: 11pt; font-family: Arial; color: rgb(51, 51, 51); font-weight: 700; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">17.8 mm</span><span style=\"font-size: 11pt; font-family: Arial; color: rgb(51, 51, 51); font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\"> và trọng lượng chỉ </span><span style=\"font-size: 11pt; font-family: Arial; color: rgb(51, 51, 51); font-weight: 700; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">1.35 kg</span><span style=\"font-size: 11pt; font-family: Arial; color: rgb(51, 51, 51); font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">, dễ dàng để bạn đặt gọn trong balo và mang theo đến mọi nơi, mọi lúc.</span></span>', 0, '2021-10-17 15:59:44'),
(24, 'Loa Bluetooth LG Xboom Go PL7 Xanh Đen ', 4, 3, 1890000, 'loa-bluetooth-lg-xboom-go-pl7-xanh-den-600x600.jpg', '<p>Loa Bluetooth LG Xboom Go PL7 sở hữu màu xanh đen đẹp mắt, vỏ ngoài phủ chất liệu cao su cầm khá êm tay. Loa được thiết kế theo dạng bầu dục, nhỏ gọn mà không kém phần sang trọng</p><ul class=\"parameter__list 227187 active\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; list-style: none; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 14px;\"><li data-index=\"0\" data-prop=\"0\" style=\"margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);\"><p class=\"lileft\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;\">Tổng công suất:</p><div class=\"liright\" style=\"margin: 0px; padding-right: 15px; padding-left: 50px; width: calc(100% - 140px); padding-top: 0px !important; padding-bottom: 0px !important;\"><span class=\"\" style=\"margin: 0px; padding: 0px;\">30 W</span></div></li><li data-index=\"0\" data-prop=\"0\" style=\"margin: 0px; padding: 10px; align-items: flex-start; display: flex;\"><p class=\"lileft\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;\">Nguồn:</p><div class=\"liright\" style=\"margin: 0px; padding-right: 15px; padding-left: 50px; width: calc(100% - 140px); padding-top: 0px !important; padding-bottom: 0px !important;\"><span class=\"\" style=\"margin: 0px; padding: 0px;\">Pin</span></div></li><li data-index=\"0\" data-prop=\"0\" style=\"margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);\"><p class=\"lileft\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;\">Thời gian sử dụng:</p><div class=\"liright\" style=\"margin: 0px; padding-right: 15px; padding-left: 50px; width: calc(100% - 140px); padding-top: 0px !important; padding-bottom: 0px !important;\"><span class=\"comma\" style=\"margin: 0px; padding: 0px;\">Dùng khoảng 24 tiếng</span><span class=\"\" style=\"margin: 0px; padding: 0px;\">Sạc khoảng 5 tiếng</span></div></li><li data-index=\"0\" data-prop=\"0\" style=\"margin: 0px; padding: 10px; align-items: flex-start; display: flex;\"><p class=\"lileft\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;\">Kết nối không dây:</p><div class=\"liright\" style=\"margin: 0px; padding-right: 15px; padding-left: 50px; width: calc(100% - 140px); padding-top: 0px !important; padding-bottom: 0px !important;\"><span class=\"\" style=\"margin: 0px; padding: 0px;\">Bluetooth</span></div></li><li data-index=\"0\" data-prop=\"0\" style=\"margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);\"><p class=\"lileft\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;\">Kết nối khác:</p><div class=\"liright\" style=\"margin: 0px; padding-right: 15px; padding-left: 50px; width: calc(100% - 140px); padding-top: 0px !important; padding-bottom: 0px !important;\"><span class=\"comma\" style=\"margin: 0px; padding: 0px;\">AUX in</span><span class=\"\" style=\"margin: 0px; padding: 0px;\">USB</span></div></li><li data-index=\"0\" data-prop=\"0\" style=\"margin: 0px; padding: 10px; align-items: flex-start; display: flex;\"><p class=\"lileft\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;\">Thương hiệu của:</p><div class=\"liright\" style=\"margin: 0px; padding-right: 15px; padding-left: 50px; width: calc(100% - 140px); padding-top: 0px !important; padding-bottom: 0px !important;\"><span class=\"\" style=\"margin: 0px; padding: 0px;\">Hàn Quốc</span></div></li><li data-index=\"99999\" data-prop=\"0\" style=\"margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);\"><p class=\"lileft\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;\">Hãng</p><div class=\"liright\" style=\"margin: 0px; padding-right: 15px; padding-left: 50px; width: calc(100% - 140px); padding-top: 0px !important; padding-bottom: 0px !important;\"><span class=\"\" style=\"margin: 0px; padding: 0px;\">LG.</span></div></li></ul>', 1, '2021-10-18 16:01:22'),
(25, 'Samsung Galaxy Z Flip3', 3, 1, 23990000, 'samsung-galaxy-z-flip-3-black-1-600x600.jpg', '<p><span style=\"color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif;\">Samsung Galaxy Z Flip3 5G dễ dàng lấy lòng phái nữ khi thiết kế của nó được lấy cảm hứng từ hộp đựng phấn trang điểm. Kết hợp với 7 màu sắc khác nhau, giúp bạn thoải mái thể hiện cá tính, từ mạnh mẽ sang trọng đến hiện đại trẻ trung</span></p><ul class=\"parameter__list 248283 active\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; list-style: none; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 14px;\"><li data-index=\"0\" data-prop=\"0\" style=\"margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);\"><p class=\"lileft\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;\">Màn hình:</p><div class=\"liright\" style=\"margin: 0px; padding-right: 15px; padding-left: 50px; width: calc(100% - 140px); padding-top: 0px !important; padding-bottom: 0px !important;\"><span class=\"comma\" style=\"margin: 0px; padding: 0px;\">Dynamic AMOLED 2X</span><span class=\"comma\" style=\"margin: 0px; padding: 0px;\">Chính 6.7\" &amp; Phụ 1.9\"</span><span class=\"\" style=\"margin: 0px; padding: 0px;\">Full HD+</span></div></li><li data-index=\"0\" data-prop=\"0\" style=\"margin: 0px; padding: 10px; align-items: flex-start; display: flex;\"><p class=\"lileft\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;\">Hệ điều hành:</p><div class=\"liright\" style=\"margin: 0px; padding-right: 15px; padding-left: 50px; width: calc(100% - 140px); padding-top: 0px !important; padding-bottom: 0px !important;\"><span class=\"\" style=\"margin: 0px; padding: 0px;\">Android 11</span></div></li><li data-index=\"0\" data-prop=\"0\" style=\"margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);\"><p class=\"lileft\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;\">Camera sau:</p><div class=\"liright\" style=\"margin: 0px; padding-right: 15px; padding-left: 50px; width: calc(100% - 140px); padding-top: 0px !important; padding-bottom: 0px !important;\"><span class=\"\" style=\"margin: 0px; padding: 0px;\">2 camera 12 MP</span></div></li><li data-index=\"0\" data-prop=\"0\" style=\"margin: 0px; padding: 10px; align-items: flex-start; display: flex;\"><p class=\"lileft\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;\">Camera trước:</p><div class=\"liright\" style=\"margin: 0px; padding-right: 15px; padding-left: 50px; width: calc(100% - 140px); padding-top: 0px !important; padding-bottom: 0px !important;\"><span class=\"\" style=\"margin: 0px; padding: 0px;\">10 MP</span></div></li><li data-index=\"0\" data-prop=\"0\" style=\"margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);\"><p class=\"lileft\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;\">Chip:</p><div class=\"liright\" style=\"margin: 0px; padding-right: 15px; padding-left: 50px; width: calc(100% - 140px); padding-top: 0px !important; padding-bottom: 0px !important;\"><span class=\"\" style=\"margin: 0px; padding: 0px;\">Snapdragon 888</span></div></li><li data-index=\"0\" data-prop=\"0\" style=\"margin: 0px; padding: 10px; align-items: flex-start; display: flex;\"><p class=\"lileft\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;\">RAM:</p><div class=\"liright\" style=\"margin: 0px; padding-right: 15px; padding-left: 50px; width: calc(100% - 140px); padding-top: 0px !important; padding-bottom: 0px !important;\"><span class=\"\" style=\"margin: 0px; padding: 0px;\">8 GB</span></div></li><li data-index=\"0\" data-prop=\"0\" style=\"margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);\"><p class=\"lileft\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;\">Bộ nhớ trong:</p><div class=\"liright\" style=\"margin: 0px; padding-right: 15px; padding-left: 50px; width: calc(100% - 140px); padding-top: 0px !important; padding-bottom: 0px !important;\"><span class=\"\" style=\"margin: 0px; padding: 0px;\">256 GB</span></div></li><li data-index=\"0\" data-prop=\"0\" style=\"margin: 0px; padding: 10px; align-items: flex-start; display: flex;\"><p class=\"lileft\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;\">SIM:</p><div class=\"liright\" style=\"margin: 0px; padding-right: 15px; padding-left: 50px; width: calc(100% - 140px); padding-top: 0px !important; padding-bottom: 0px !important;\"><span class=\"comma\" style=\"margin: 0px; padding: 0px;\">1 Nano SIM &amp; 1 eSIM</span><span class=\"\" style=\"margin: 0px; padding: 0px;\">Hỗ trợ 5G</span></div></li></ul>', 0, '2021-10-17 16:04:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `protypes`
--

DROP TABLE IF EXISTS `protypes`;
CREATE TABLE IF NOT EXISTS `protypes` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `protypes`
--

INSERT INTO `protypes` (`type_id`, `type_name`) VALUES
(1, 'Điện Thoại'),
(2, 'Laptop'),
(3, 'Loa'),
(4, 'Đồng Hồ'),
(5, 'Tai Nghe');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(11) NOT NULL,
  `fullname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `role_id`, `fullname`, `address`, `email`, `phone`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 0, '', '', '', '0908260051'),
(2, 'huucuong123', 'e10adc3949ba59abbe56e057f20f883e', 1, 'Trần Hà Hữu Cường', 'Thị xã Lagi, Tỉnh Bình Thuận, Việt Nam', 'kimanhlagi14@gmail.com', '0908179750'),
(3, 'cuong', 'e10adc3949ba59abbe56e057f20f883e', 1, 'Hữu Cường', 'Lagi', 'kimanhlagi12@gmail.com', '01212612378'),
(18, 'kimanhlagi12', '5949d9d3d6cc3c0f0c27474bf6f5d05f', 1, 'Trần Hà Kim Anh', '46 Lagi, tỉnh Bình Thuận,Việt Nam', 'hileo52@email.com', '0908260051'),
(11, 'hienho', '535649b032069346b35d260a6b086bc0', 1, 'Bé Hiền Da Đen', 'Quảng Trị', 'hienho456@gmail.com', '0908179752'),
(19, 'cuchin', 'e10adc3949ba59abbe56e057f20f883e', 1, 'Cuong Tran', 'Lagi', 'kimanhlagi14@gmail.com', '0908179750'),
(20, 'nhom12', 'e10adc3949ba59abbe56e057f20f883e', 1, 'Huu Cuong', 'Lagi, Binh Thuan', 'hileo52@gmail.com', '0908260051');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
CREATE TABLE IF NOT EXISTS `wishlist` (
  `wish_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sp_id` int(11) NOT NULL,
  PRIMARY KEY (`wish_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wishlist`
--

INSERT INTO `wishlist` (`wish_id`, `user_name`, `sp_id`) VALUES
(1, 'huucuong123', 7),
(2, 'huucuong123', 10),
(9, 'hienho', 10),
(8, 'hienho', 7),
(7, 'huucuong123', 11),
(10, 'huucuong123', 8),
(11, 'huucuong123', 4),
(12, 'kimanhlagi12', 7),
(13, 'huucuong123', 1),
(17, 'nhom12', 7),
(16, 'cuchin', 7);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
