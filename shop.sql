-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 20, 2022 lúc 08:15 AM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` text NOT NULL,
  `admin_email` text NOT NULL,
  `admin_password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_email`, `admin_password`) VALUES
(1, 'Nguyễn Bội Hưng', 'nbhungbarca@gmail.com', '1f06e9c40e7f0e5b5cb73c5e5dd70c88');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill`
--

CREATE TABLE `bill` (
  `bill_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` text NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_image` text NOT NULL,
  `bill_date` text NOT NULL,
  `bill_quanlity` text NOT NULL,
  `bill_status` text NOT NULL,
  `bill_payment` text NOT NULL,
  `bill_total` int(11) NOT NULL,
  `bill_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `bill`
--

INSERT INTO `bill` (`bill_id`, `customer_id`, `product_id`, `product_name`, `product_price`, `product_image`, `bill_date`, `bill_quanlity`, `bill_status`, `bill_payment`, `bill_total`, `bill_address`) VALUES
(60, 1, 7, 'AirPods Max Apple MGYH3', 11891000, './image/appromax.jpg', 'December 16, 2021', '1', '', '', 0, ''),
(65, 1, 5, 'Earpods Apple MNHF2 ', 771000, './image/earpods.jpg', 'December 18, 2021', '1', '', '', 0, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill1`
--

CREATE TABLE `bill1` (
  `bill_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_name` text NOT NULL,
  `customer_phonenumber` text NOT NULL,
  `bill_total` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `bill_date` date NOT NULL,
  `bill_status` text NOT NULL,
  `bill_adress` text NOT NULL,
  `bill_note` text NOT NULL,
  `status` text NOT NULL,
  `day` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `bill1`
--

INSERT INTO `bill1` (`bill_id`, `customer_id`, `customer_name`, `customer_phonenumber`, `bill_total`, `quantity`, `bill_date`, `bill_status`, `bill_adress`, `bill_note`, `status`, `day`) VALUES
(8, 2, 'Phan Tấn Trung', '0398881017', 5490000, 0, '0000-00-00', '', 'Sa Đéc, Đồng Tháp', '123', 'Đã hủy', 0),
(9, 2, 'Phan Tấn Trung', '0398881017', 771000, 0, '0000-00-00', '', 'Sa Đéc, Đồng Tháp', '', 'Đã hủy', 0),
(10, 2, 'Phan Tấn Trung', '0398881017', 16470000, 0, '0000-00-00', '', 'Sa Đéc, Đồng Tháp', 'ttttt', 'Đã hủy', 0),
(11, 1, 'Nguyễn Bội Hưng', '0344109778', 22871000, 0, '2021-12-23', '', 'ấp Kinh Giữa 1, xã Kế Thành', 'giao tận nơi nha', 'Đã hủy', 0),
(12, 1, 'Nguyễn Bội Hưng', '0344109778', 5490000, 0, '2021-12-26', '', 'ấp Kinh Giữa 1, xã Kế Thành', '', 'Đã hủy', 91557000),
(13, 2, 'Phan Tấn Trung', '0398881017', 1290000, 0, '2021-12-27', '', 'Sóc Trăng', 'ahihi', 'Đã giao hàng', 0),
(14, 2, 'Phan Tấn Trung', '0398881017', 6780000, 0, '2021-12-27', '', 'Sa Đéc, Đồng Tháp', '222', 'Đã giao hàng', 0),
(15, 1, 'Nguyễn Bội Hưng', '0344109778', 29272000, 0, '2021-12-31', '', 'ấp Kinh Giữa 1, xã Kế Thành', '123123', 'Đã hủy', 0),
(16, 1, 'Nguyễn Bội Hưng', '0344109778', 5490000, 0, '0000-00-00', '', 'ấp Kinh Giữa 1, xã Kế Thành', '11', '', 0),
(17, 1, 'Nguyễn Bội Hưng', '0344109778', 10980000, 0, '2022-01-04', '', 'ấp Kinh Giữa 1, xã Kế Thành', '', '', 0),
(18, 1, 'Nguyễn Bội Hưng', '0344109778', 6261000, 0, '2022-01-05', '', 'ấp Kinh Giữa 1, xã Kế Thành', '1231', '', 0),
(19, 1, 'Nguyễn Bội Hưng', '0344109778', 11891000, 0, '2022-01-05', '', 'ấp Kinh Giữa 1, xã Kế Thành', '12', 'Đã giao hàng', 0),
(20, 1, 'Nguyễn Bội Hưng', '0344109778', 6780000, 0, '2022-01-05', '', 'ấp Kinh Giữa 1, xã Kế Thành', '123123', '', 0),
(21, 1, 'Nguyễn Bội Hưng', '0344109778', 1542000, 0, '2022-01-05', '', 'ấp Kinh Giữa 1, xã Kế Thành', '12313', '', 0),
(22, 1, 'Nguyễn Bội Hưng', '0344109778', 14204000, 0, '2022-01-16', '', 'ấp Kinh Giữa 1, xã Kế Thành', 'ưerwrwrewr', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill_detail`
--

CREATE TABLE `bill_detail` (
  `bill_detail_id` int(11) NOT NULL,
  `bill_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` text NOT NULL,
  `product_image` text NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `bill_total` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `bill_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `bill_detail`
--

INSERT INTO `bill_detail` (`bill_detail_id`, `bill_id`, `customer_id`, `product_id`, `product_name`, `product_image`, `product_price`, `product_quantity`, `bill_total`, `total`, `bill_status`) VALUES
(13, 0, 1, 9, 'True Wireless Galaxy Buds Pro', './image/buds.png', 3390000, 1, 3390000, 27032000, 'Đã xác nhận'),
(14, 0, 1, 5, 'Earpods Apple MNHF2 ', './image/earpods.jpg', 771000, 1, 771000, 27032000, 'Đã xác nhận'),
(15, 0, 2, 4, 'AirPods Pro MagSafe Charge', './image/airpodsPro.jpg', 5490000, 1, 5490000, 6261000, 'Đã xác nhận'),
(16, 0, 2, 5, 'Earpods Apple MNHF2 ', './image/earpods.jpg', 771000, 1, 771000, 6261000, 'Đã xác nhận'),
(18, 0, 2, 7, 'AirPods Max Apple MGYH3', './image/appromax.jpg', 11891000, 1, 11891000, 11891000, 'Đã xác nhận'),
(19, 7, 2, 4, 'AirPods Pro MagSafe Charge', './image/airpodsPro.jpg', 5490000, 1, 5490000, 18152000, 'Đã xác nhận'),
(20, 7, 2, 5, 'Earpods Apple MNHF2 ', './image/earpods.jpg', 771000, 1, 771000, 18152000, 'Đã xác nhận'),
(21, 7, 2, 7, 'AirPods Max Apple MGYH3', './image/appromax.jpg', 11891000, 1, 11891000, 18152000, 'Đã xác nhận'),
(24, 8, 2, 4, 'AirPods Pro MagSafe Charge', './image/airpodsPro.jpg', 5490000, 1, 5490000, 5490000, 'Đã hủy'),
(25, 9, 2, 5, 'Earpods Apple MNHF2 ', './image/earpods.jpg', 771000, 1, 771000, 771000, 'Đã hủy'),
(26, 10, 2, 4, 'AirPods Pro MagSafe Charge', './image/airpodsPro.jpg', 5490000, 3, 16470000, 16470000, 'Đã hủy'),
(33, 11, 1, 4, 'AirPods Pro MagSafe Charge', './image/airpodsPro.jpg', 5490000, 2, 10980000, 22871000, 'Đã hủy'),
(34, 11, 1, 7, 'AirPods Max Apple MGYH3', './image/appromax.jpg', 11891000, 1, 11891000, 22871000, 'Đã hủy'),
(35, 12, 1, 4, 'AirPods Pro MagSafe Charge', './image/airpodsPro.jpg', 5490000, 1, 5490000, 5490000, 'Đã hủy'),
(36, 13, 2, 8, 'Tone Free HBS-FN6', './image/fn6.jpg', 1290000, 1, 1290000, 1290000, 'Đã giao hàng'),
(37, 14, 2, 9, 'True Wireless Galaxy Buds Pro', './image/buds.png', 3390000, 2, 6780000, 6780000, 'Đã giao hàng'),
(38, 15, 1, 4, 'AirPods Pro MagSafe Charge', './image/airpodsPro.jpg', 5490000, 1, 5490000, 29272000, 'Đã hủy'),
(39, 15, 1, 7, 'AirPods Max Apple MGYH3', './image/appromax.jpg', 11891000, 2, 23782000, 29272000, 'Đã hủy'),
(40, 16, 1, 4, 'AirPods Pro MagSafe Charge', './image/airpodsPro.jpg', 5490000, 1, 5490000, 5490000, 'Đã xác nhận'),
(41, 17, 1, 4, 'AirPods Pro MagSafe Charge', './image/airpodsPro.jpg', 5490000, 2, 10980000, 10980000, 'Đã xác nhận'),
(48, 18, 1, 5, 'Earpods Apple MNHF2 ', './image/earpods.jpg', 771000, 1, 771000, 6261000, 'Đã xác nhận'),
(49, 19, 1, 7, 'AirPods Max Apple MGYH3', './image/appromax.jpg', 11891000, 1, 11891000, 11891000, 'Đã giao hàng'),
(50, 20, 1, 9, 'True Wireless Galaxy Buds Pro', './image/buds.png', 3390000, 2, 6780000, 6780000, 'Đã xác nhận'),
(51, 21, 1, 5, 'Earpods Apple MNHF2 ', './image/earpods.jpg', 771000, 2, 1542000, 1542000, 'Đã xác nhận'),
(53, 22, 1, 7, 'AirPods Max Apple MGYH3', './image/appromax.jpg', 11891000, 1, 11891000, 14204000, 'Đã xác nhận'),
(55, 22, 1, 5, 'Earpods Apple MNHF2 ', './image/earpods.jpg', 771000, 3, 2313000, 14204000, 'Đã xác nhận'),
(58, 0, 1, 5, 'Earpods Apple MNHF2 ', './image/earpods.jpg', 771000, 1, 771000, 12662000, ''),
(60, 0, 1, 7, 'AirPods Max Apple MGYH3', './image/appromax.jpg', 11891000, 1, 11891000, 12662000, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brabd`
--

CREATE TABLE `brabd` (
  `brand_id` int(11) NOT NULL,
  `brand_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_password` text NOT NULL,
  `customer_name` text NOT NULL,
  `customer_phonenumber` text NOT NULL,
  `customer_email` text NOT NULL,
  `customer_address` text NOT NULL,
  `customer_image` text NOT NULL,
  `customer_status` text NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_password`, `customer_name`, `customer_phonenumber`, `customer_email`, `customer_address`, `customer_image`, `customer_status`, `total`) VALUES
(1, '202cb962ac59075b964b07152d234b70', 'Nguyễn Bội Hưng', '0344109778', 'nbhungbarca@gmail.com', 'ấp Kinh Giữa 1, xã Kế Thành', '', '', 11891000),
(2, '202cb962ac59075b964b07152d234b70', 'Phan Tấn Trung', '0398881017', 'hfhung01@gmail.com', 'Sa Đéc, Đồng Tháp', '', '', 8070000),
(3, '52489fd19ab020580f1dd21c363134ae', 'Phạm Thị Bảo Nhiên', '0123456789', 'nhienb1800115@student.ctu.edu.vn', 'đồng Tháp', '', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `favorite`
--

CREATE TABLE `favorite` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ggg`
--

CREATE TABLE `ggg` (
  `img1` text NOT NULL,
  `img2` text NOT NULL,
  `img3` text NOT NULL,
  `img4` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `ggg`
--

INSERT INTO `ggg` (`img1`, `img2`, `img3`, `img4`) VALUES
('', '', '', ''),
('', '', '', ''),
('', '', '', ''),
('', '', '', ''),
('./image/airpods.jpg', './image/airpodsPro.jpg', './image/anker.png', './image/anker.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` text NOT NULL,
  `product_brand` text NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_type` text NOT NULL,
  `product_option` text NOT NULL,
  `product_image` text NOT NULL,
  `product_image1` text NOT NULL,
  `product_image2` text NOT NULL,
  `product_image3` text NOT NULL,
  `product_sold` int(11) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `chitiet` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_brand`, `product_price`, `product_type`, `product_option`, `product_image`, `product_image1`, `product_image2`, `product_image3`, `product_sold`, `product_quantity`, `chitiet`) VALUES
(5, 'Earpods Apple MNHF2 ', 'Apple', 771000, 'Có dây', 'Earbud', './image/earpods.jpg', '', '', '', 9, 4, ''),
(7, 'AirPods Max Apple MGYH3', 'Apple', 11891000, 'Không dây', 'Chụp tai', './image/appromax.jpg', '', '', '', 4, 9, ''),
(8, 'Tone Free HBS-FN6', 'LG', 1290000, 'Không dây', 'In Ear', './image/fn6.jpg', '', '', '', 4, 10, ''),
(9, 'True Wireless Galaxy Buds Pro', 'Samsung', 3390000, 'Không dây', 'In Ear', './image/buds.png', '', '', '', 4, 8, ''),
(11, 'AirPods Pro MagSafe Charge Apple', 'Apple', 5490000, 'Không dây', 'In Ear', './image/airpods.jpg', './image/bluetooth-airpods-pro-magsafe-charge-apple-mlwk3-2.jpg', './image/bluetooth-airpods-pro-magsafe-charge-apple-mlwk3-3.jpg', './image/bluetooth-airpods-pro-magsafe-charge-apple-mlwk3-4.jpg', 8, 10, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_detail`
--

CREATE TABLE `product_detail` (
  `product_id` int(11) NOT NULL,
  `product_name` text NOT NULL,
  `product_image2` text NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_description` text NOT NULL,
  `product_sold` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `product_detail`
--

INSERT INTO `product_detail` (`product_id`, `product_name`, `product_image2`, `product_quantity`, `product_description`, `product_sold`) VALUES
(5, 'Earpods Apple MNHF2 ', './image/tai-nghe-earpods-apple-md827fe-org-a3.jpg', 5, 'Thiết kế hiện đại, sang trọng và thoải mái.\r\nCó phím điều chỉnh âm lượng, nghe/nhận cuộc gọi.\r\nCổng 3.5mm phù hợp nhiều loại điện thoại, máy tính bảng, laptop.\r\nSản phẩm chính hãng Apple, nguyên seal 100%.', 1),
(4, 'AirPods Pro MagSafe Charge', './image/bluetooth-airpods-pro-magsafe-charge-apple-mlwk3-2.jpg', 5, 'Vẻ ngoài thời trang, kiểu dáng nhỏ gọn, đeo chắc chắn với 3 size nút tai. \r\nTái tạo âm thanh sống động, phù hợp với ống tai bạn nhờ chip H1, công nghệ Adaptive EQ.\r\nKiểm soát âm thanh tai nghe hiệu quả với công nghệ chống ồn chủ động (Active Noise Cancellation) cùng xuyên âm (Transparency mode).\r\nSử dụng tai nghe liên tục trong 4.5 giờ, kết hợp hộp sạc thêm 24 giờ. \r\nHỗ trợ sạc nhanh trong 5 phút có 1 giờ sử dụng. \r\nSạc không dây tiện lợi với bộ sạc Magsafe, chuẩn không dây Qi. ', 5),
(7, 'AirPods Max Apple MGYH3', './image/bluetooth-airpods-max-apple-2-org.jpg', 0, 'Thiết kế sang trọng với chất liệu kim loại sáng bóng, bền bỉ.\r\nSử dụng chip H1 Apple cho kết nối nhanh chóng, kết nối không dây qua Bluetooth 5.0.\r\nTích hợp công nghệ chống ồn ANC, âm thanh xuyên âm (Transperency Mode).\r\nHỗ trợ Spatial Audio giúp tạo hiệu ứng âm thanh vòm khi xem phim và trải nghiệm nội dung Dolby Atmos được tốt hơn.\r\nDigital Crown điều chỉnh linh hoạt, nhạy bén.\r\nTích hợp trợ lý ảo Siri điều khiển thêm tiện lợi.\r\nNghe nhận cuộc gọi trực tiếp từ tai nghe.\r\nThời gian sử dụng 20 giờ khi sử dụng chống ồn ANC và Transparency Mode.\r\nSạc nhanh 5 phút có thể sử dụng được 1.5 giờ.', 3),
(8, 'Tone Free HBS-FN6', './image/tai-nghe-bluetooth-true-wireless-lg-hbs-fn6-note.jpg', 4, 'Hộp sạc UVnano mới kháng khuẩn đến 99.9%, hỗ trợ sạc không dây.\r\nÂm thanh độ phân giải cao, chân thực với công nghệ của Meridian từ Anh Quốc.\r\nThiết kế vừa vặn, đệm silicone chống ồn, tích hợp micro kép để cuộc gọi rõ ràng hơn.\r\nChuẩn Bluetooth 5.0 với khoảng cách kết nối đến 10 m.\r\nKhả năng chống nước chuẩn IPX4 bảo vệ tai nghe.\r\nSạc qua cổng Type-C hoặc có thể sạc không dây.\r\nThời lượng pin lên đến 18 giờ khi kết hợp với hộp sạc, sạc nhanh 5 phút dùng thêm đến 1 giờ.\r\nDễ dàng tùy chỉnh và tìm kiếm tai nghe với ứng dụng TONE Free.', 1),
(9, 'True Wireless Galaxy Buds Pro', './image/hop-sac-1.jpg', 5, 'Nâng tầm trải nghiệm âm và chất lượng cuộc gọi với chống ồn chủ động (ANC).\r\nKết nối không dây Bluetooth 5.0 dễ dàng với các thiết bị ngoài, đường truyền ổn định.\r\nChuẩn âm thanh studio với loa 2 chiều AKG mạnh mẽ.\r\nTận hưởng âm thanh vòm lôi cuốn, chuẩn điện ảnh từ 360 Audio.\r\nĐàm thoại rõ ràng với hệ thống 3 mic và bộ phận thu nhận giọng nói (Voice Pickup Unit).\r\nLoa 2 chiều (loa trầm 11mm, loa bổng 6.5mm).\r\nKhả năng kháng nước hiệu quả cùng xếp hạng kháng nước IPX7.\r\nThời gian sử dụng 5 giờ và 13 giờ cùng hộp sạc (bật chống ồn), sử dụng 8 giờ và 20 giờ cùng hộp sạc (tắt chống ồn).', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `turnover`
--

CREATE TABLE `turnover` (
  `ngay` text NOT NULL,
  `DTngay` int(11) NOT NULL,
  `thang` text NOT NULL,
  `DTthang` int(11) NOT NULL,
  `nam` text NOT NULL,
  `DTnam` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `turnover`
--

INSERT INTO `turnover` (`ngay`, `DTngay`, `thang`, `DTthang`, `nam`, `DTnam`, `total`) VALUES
('2022-1-5', 6780000, '1', 35912000, '2022', 35912000, 117361000),
('2022-1-5', 1542000, 'Tháng 1', 37454000, 'Năm 2022', 37454000, 117361000),
('2022-1-16', 14204000, 'Tháng 1', 51658000, 'Năm 2022', 51658000, 117361000);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Chỉ mục cho bảng `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`bill_id`);

--
-- Chỉ mục cho bảng `bill1`
--
ALTER TABLE `bill1`
  ADD PRIMARY KEY (`bill_id`);

--
-- Chỉ mục cho bảng `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD PRIMARY KEY (`bill_detail_id`);

--
-- Chỉ mục cho bảng `brabd`
--
ALTER TABLE `brabd`
  ADD PRIMARY KEY (`brand_id`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `bill`
--
ALTER TABLE `bill`
  MODIFY `bill_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT cho bảng `bill1`
--
ALTER TABLE `bill1`
  MODIFY `bill_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `bill_detail`
--
ALTER TABLE `bill_detail`
  MODIFY `bill_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT cho bảng `brabd`
--
ALTER TABLE `brabd`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
