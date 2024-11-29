-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2024 at 10:52 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doan_thuchanhweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `id` int(12) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `tel` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `total` int(12) NOT NULL,
  `pttt` tinyint(1) NOT NULL,
  `trangthai` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`id`, `name`, `address`, `tel`, `email`, `total`, `pttt`, `trangthai`) VALUES
(36, 'phùng thanh tùng', 'hn', '0876312241', 'phephehoan@gmail.com', 54, 0, 'Đã Duyệt'),
(37, 'dfghdfgh', 'fghdfh', '098454654', 'sfdhdfhg', 29, 0, 'Đã Duyệt'),
(38, 'minhhoanpp', 'fghdfh', '234234234', 'sfdhdfhg', 38, 0, 'Đã Duyệt'),
(39, 'minhhoanpp', 'hn', '124234124', 'sfdhdfhg', 31, 0, ''),
(42, 'nguyenminhhoaneq  ', 'sdc', '123234234', 'phehoan@gmail.com   ', 54, 0, 'Đã Duyệt'),
(43, 'nguyenminhhoaneq  ', 'sdf', '142431243', 'phehoan@gmail.com   ', 29, 0, 'Đang Giao'),
(44, 'nguyenminhhoaneq  ', '2343', '1243124', 'phehoan@gmail.com   ', 41, 0, 'Đã Giao');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(12) NOT NULL,
  `tensp` varchar(100) NOT NULL,
  `img` varchar(100) NOT NULL,
  `dongia` int(12) NOT NULL DEFAULT 0,
  `soluong` int(3) NOT NULL DEFAULT 0,
  `thanhtien` int(12) NOT NULL DEFAULT 0,
  `idbill` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `tensp`, `img`, `dongia`, `soluong`, `thanhtien`, `idbill`) VALUES
(3, 'Hoa Lan Hồ Điệp', 'anh27.jpg', 390, 1, 390000, 2),
(4, 'Hoa Hồng Kinh Đô   ', 'anh8x.jpg', 330, 1, 330000, 2),
(6, 'Thiên Xuân Hồi Lạc', 'u.jpg', 300, 2, 600000, 4),
(7, 'Chậu Thủy Cảnh', 'c.jpg', 300, 1, 300000, 4),
(8, 'Thiên Xuân Hồi Lạc', 'u.jpg', 300, 1, 300000, 5),
(9, 'Chậu Cảnh Vĩnh Hà ', 'q2.jpg', 200, 2, 400000, 5),
(12, 'bánh dâu', 'b3.jpg', 40, 2, 80000, 7),
(13, 'bánh mattcha', 'a4.jpg', 29, 1, 29000, 7),
(14, 'bánh hoa quả', 'a6.jpg', 54, 1, 54000, 8),
(15, 'bánh mattcha', 'a4.jpg', 29, 1, 29000, 8),
(20, 'bánh socola', 'b1.jpg', 29, 1, 29000, 11),
(21, 'bánh mátcha', 'a3.jpg', 38, 1, 38000, 11),
(24, 'bánh tét', 't2.png', 38, 1, 38000, 13),
(25, 'bánh da lợn', 't7.png', 321, 1, 321000, 13),
(26, 'bánh tiêu', 't5.png', 29, 1, 29000, 13),
(31, 'trà xoài', 'v4.png', 222, 1, 222000, 15),
(32, 'trà sữa khoai môn', 'a2.png', 38, 1, 38000, 15),
(33, 'trà sữa kem socola', 'a4.png', 31, 2, 62000, 16),
(34, 'trà sữa full topping', 'a10.png', 33, 1, 33000, 16),
(35, 'hồng trà sữa', 'a7.png', 232, 1, 232000, 18),
(36, 'trà sữa kem socola', 'a4.png', 31, 1, 31000, 18),
(37, 'Mì cay thập cẩm', 'd7.jpg', 232, 1, 232000, 19),
(38, 'Xúc xích heo  ', 'a9.jfif', 321, 1, 321000, 19),
(39, 'Hamberger phô mai', 'a1.jpg', 41, 1, 41000, 20),
(40, 'Hamberger bò', 'a3.jpg', 38, 1, 38000, 20),
(59, 'Áo Thun Xám Loang', 'r3.jpg', 54, 2, 108000, 32),
(60, 'Áo Phông Nâu Đen', 'r8.jpg', 222, 1, 222000, 32),
(61, 'Áo Nâu báo', 'r1.jpg', 41, 1, 41000, 33),
(63, 'Áo Phông Nâu Đen', 'r8.jpg', 222, 1, 222000, 35),
(64, 'Áo Thun Xám Loang', 'r3.jpg', 54, 1, 54000, 36),
(65, 'Áo Thun Xanh 3158', 'r5.jpg', 29, 1, 29000, 37),
(66, 'Áo Xanh Blue Loang', 'r2.jpg', 38, 1, 38000, 38),
(67, 'Áo Xám Vải Cotton', 'r4.jpg', 31, 1, 31000, 39),
(68, 'Áo Xám Vải Cotton', 'r4.jpg', 31, 1, 31000, 40),
(70, 'Áo Thun Xám Loang', 'r3.jpg', 54, 1, 54000, 42),
(71, 'Áo Thun Xanh 3158', 'r5.jpg', 29, 1, 29000, 43),
(72, 'Áo Nâu báo', 'r1.jpg', 41, 1, 41000, 44),
(75, 'Áo Phông Nâu Đen', 'r8.jpg', 222, 1, 222000, 48);

-- --------------------------------------------------------

--
-- Table structure for table `lienhe`
--

CREATE TABLE `lienhe` (
  `hoten` varchar(200) NOT NULL,
  `sdt` int(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `noidung` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lienhe`
--

INSERT INTO `lienhe` (`hoten`, `sdt`, `email`, `noidung`) VALUES
('vũ thị bắc', 367456697, 'hung1@gmail.com', 'tôi muốn mua hoa với 1 số lượng lớn'),
('BẮC VŨ', 367456697, 'admin@gmail.com', 'caf phe ngon');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `tendangnhap` varchar(100) NOT NULL,
  `matkhau` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `masp` varchar(100) NOT NULL,
  `nhom_id` int(11) NOT NULL,
  `tensp` varchar(200) NOT NULL,
  `mota` text DEFAULT NULL,
  `dongia` int(11) NOT NULL,
  `img` varchar(200) DEFAULT NULL,
  `enable` tinyint(4) NOT NULL DEFAULT 1,
  `ghichu` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`masp`, `nhom_id`, `tensp`, `mota`, `dongia`, `img`, `enable`, `ghichu`) VALUES
('1231', 2367, 'Hoa Hồng Nhung', 'siêu nhiều màu ', 123, 'hoa6.jpg', 1, 'hoa hồng '),
('2342', 1213, 'Hoa cúc', '32e', 233, 'hoa2.jpg', 1, '232'),
('45435', 2342, 'Hoa cẩm tú cầu', 'dsad', 3243, 'hoa5.jpg', 1, 'sdsa'),
('32434', 2367, '35345  ', '34534  ', 435, 'take4.jpg', 1, ' ahihi '),
('54645', 46456, '6456', '654', 65, 'anh1.jpg', 1, '565'),
('56756', 2367, '7567 ', '5675 ', 75567, 'take4.jpg', 0, 'dfd '),
('232', 2367, '32432 ', '43 ', 343, 'product.jpg', 1, '345 '),
('111', 7567, 'Hoa Cẩm Tú Cầu', 'đẹp', 343, 'hoa3.png', 1, 'hay');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham1`
--

CREATE TABLE `sanpham1` (
  `masp` varchar(100) NOT NULL,
  `nhom_id` int(11) NOT NULL,
  `tensp` varchar(200) NOT NULL,
  `mota` text DEFAULT NULL,
  `dongiacu` int(11) NOT NULL,
  `dongiamoi` int(11) NOT NULL,
  `img1` varchar(200) NOT NULL,
  `img2` varchar(200) DEFAULT NULL,
  `img3` varchar(200) DEFAULT NULL,
  `img4` varchar(200) DEFAULT NULL,
  `enable` tinyint(4) NOT NULL DEFAULT 1,
  `ghichu` text DEFAULT NULL,
  `xuatxu` varchar(255) DEFAULT NULL,
  `ngaydang` varchar(50) DEFAULT NULL,
  `kichthuoc` varchar(255) DEFAULT NULL,
  `nguoidang` varchar(50) DEFAULT NULL,
  `loaiao` varchar(200) DEFAULT NULL,
  `soluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sanpham1`
--

INSERT INTO `sanpham1` (`masp`, `nhom_id`, `tensp`, `mota`, `dongiacu`, `dongiamoi`, `img1`, `img2`, `img3`, `img4`, `enable`, `ghichu`, `xuatxu`, `ngaydang`, `kichthuoc`, `nguoidang`, `loaiao`, `soluong`) VALUES
('245', 3242, 'ÁO POLO VẢI DỆT THỦNG LỖ ', 'Áo polo vải dệt thủng lỗ, dáng relaxed fit. Cổ ve lật, có hàng khuy cài phía trước. Cộc tay.\r\n                     ', 45, 41, 'aothunnau1.jpg', 'aothunnau2.jpg', 'aothunnau3.jpg', 'aothunnau4.jpg', 1, 'SỢI POLYESTER TÁI CHẾ ĐẠT CHỨNG NHẬN RCS Ngày nay, sợi polyester tái chế được sản xuất chủ yếu từ rác thải nhựa PET. Đây là một loại nhựa được sử dụng rộng rãi trong nhiều sản phẩm, chẳng hạn như các chai nhựa. Việc sử dụng các chất liệu tái chế giúp hạn chế lượng sợi polyester nguyên chất phải sản xuất. Đạt chứng nhận Recycled Claim Standard (RCS). Tiêu chuẩn này giúp xác minh hàm lượng tái chế và theo dõi quy trình sản xuất, từ khâu nguyên liệu đầu vào cho tới sản phẩm cuối cùng.', 'Đồng Thấp                     ', '2/2/2022                     ', '10- 30 cm                      ', 'Nguyễn Minh Thiện                     ', 'Áo Polo ', 0),
('24235353', 3242, 'ÁO POLO VẢI DỆT HỌA TIẾT KẺ NGANG', 'Áo polo vải dệt thủng lỗ, dáng relaxed fit. Cổ ve lật, có hàng khuy cài phía trước. Cộc tay.\r\n\r\n\r\n\r\n                     ', 44, 38, 'zara2a.jpg', 'zara2b.jpg', 'zara2c.jpg', 'zara2d.jpg', 1, 'SỢI POLYESTER TÁI CHẾ ĐẠT CHỨNG NHẬN RCS Ngày nay, sợi polyester tái chế được sản xuất chủ yếu từ rác thải nhựa PET. Đây là một loại nhựa được sử dụng rộng rãi trong nhiều sản phẩm, chẳng hạn như các chai nhựa. Việc sử dụng các chất liệu tái chế giúp hạn chế lượng sợi polyester nguyên chất phải sản xuất. Đạt chứng nhận Recycled Claim Standard (RCS). Tiêu chuẩn này giúp xác minh hàm lượng tái chế và theo dõi quy trình sản xuất, từ khâu nguyên liệu đầu vào cho tới sản phẩm cuối cùng.', 'Hải Dương                       ', '2/11/2023                     ', '10- 30 cm                      ', 'Lê Tuấn Kiệt                ', 'Áo Polo                     ', 0),
('23435345', 3242, 'Áo Khoác No Style M137 Vol 24 Xám ', 'Áo khoác hoodie giữ ấm, co giãn tối ưu, chất liệu Mini Zurry mềm mại, thân thiện môi trường.\r\n                   ', 77, 54, 'JACKTHREADS1a.jpg', 'JACKTHREADS1b.jpg', 'JACKTHREADS1c.jpg', 'JACKTHREADS1d.jpg', 1, '1. Kiểu sản phẩm: Áo khoác hoodie 2. Ưu điểm: ● Mặc ấm ● Co giãn tối ưu ● Thấm hút, thoát ẩm tốt ● Mềm mại ● Ít nhăn ● Thân thiện với môi trường 3. Chất liệu: Vải Mini Zurry (94% cotton, 6% spandex) 4. Kỹ thuật: In dẻo - độ bền cao, mực in không chứa hóa chất độc hại, an toàn cho người sử dụng . 5. Phù hợp với ai: Phù hợp với bất kỳ ai muốn mặc đẹp và thoải mái, phong cách đa dạng. 6. Thuộc Bộ Sưu Tập nào: Bộ sưu tập No Style mang ý nghĩa thời trang đa dạng, độc đáo và theo xu hướng. Đây là tập hợp các sản phẩm thiết kế với sự tinh tế, phù hợp cho những người yêu thích sự tự do trong cách ăn mặc. 7. Các tên thường gọi hoặc tìm kiếm về sản phẩm này: Áo khoác thun, áo khoác chống nắng, áo khoác hoodie.', 'tuyên quang                   ', '2/2/2022                   ', '30cm- 70cm                   ', 'hi                   ', 'Áo hoodile', 0),
('234345', 3242, 'Áo Sơ Mi No Style M33 Vol 24 Đen ', 'Sơ mi nam vải dù phong cách streetwear, cá tính và năng động.\r\n                    ', 34, 31, 'JACKTHREADS2a.jpg', 'JACKTHREADS2b.jpg', 'JACKTHREADS2c.jpg', 'JACKTHREADS2d.jpg', 1, '• Chất liệu bền bỉ: Vải dù có độ bền cao, chống nhăn, ít phai màu. • Thiết kế hiện đại: Form rộng, túi ngực có nắp, in slogan độc đáo, phù hợp với nhiều phong cách. • Tính ứng dụng cao: Dễ dàng phối đồ với nhiều loại quần, tạo nên nhiều phong cách khác nhau. • Thoải mái: Chất liệu nhẹ, thoáng mát, mang lại cảm giác dễ chịu khi mặc. 3. Chất liệu: Parachute, thành phần 100% Polyester 4. Kỹ thuật: Hình in trên áo được thực hiện bằng kỹ thuật in dẻo, tạo hiệu ứng 3D, bền màu và không bị bong tróc, nút áo cùng màu với áo, tạo sự đồng bộ và tinh tế, nhãn hiệu được ép lên tay áo. 5. Phù hợp với ai: Trang phục này mang thiết kế trẻ trung, năng động, với họa tiết độc đáo và form rộng, hoàn hảo cho giới trẻ, tín đồ streetwear và những người muốn thể hiện cá tính riêng. 6. Thuộc Bộ Sưu Tập nào: No Style - Một bộ sưu tập thời trang phong phú, dễ dàng phù hợp với nhiều phong cách từ tối giản đến phá cách. 7. Các tên thường gọi hoặc tìm kiếm về sản phẩm này: Sơ mi nam màu đen, sơ mi vải dù, sơ mi nam, sơ mi phong cách streetwear.', 'tuyên quang                    ', '2/2/2022                    ', 'L,Xl,XXL         ', 'Duong Quang hieu ', 'Áo sơ mi', 0),
('3436547568', 456, 'Áo Sơ Mi Trơn Tay Ngắn Form Regular SM087 SM087', 'SỢI POLYESTER TÁI CHẾ ĐẠT CHỨNG NHẬN RCS\r\nNgày nay, sợi polyester tái chế được sản xuất chủ yếu từ rác thải nhựa PET. Đây là một loại nhựa được sử dụng rộng rãi trong nhiều sản phẩm, chẳng hạn như các chai nhựa. Việc sử dụng các chất liệu tái chế giúp hạn chế lượng sợi polyester nguyên chất phải sản xuất. Đạt chứng nhận Recycled Claim Standard (RCS). Tiêu chuẩn này giúp xác minh hàm lượng tái chế và theo dõi quy trình sản xuất, từ khâu nguyên liệu đầu vào cho tới sản phẩm cuối cùng.\r\n                 ', 44, 29, '4MEN1a.png', '4MEN1b.png', '4MEN1c.png', '4MEN1d.png', 1, 'SỢI POLYESTER TÁI CHẾ ĐẠT CHỨNG NHẬN RCS Ngày nay, sợi polyester tái chế được sản xuất chủ yếu từ rác thải nhựa PET. Đây là một loại nhựa được sử dụng rộng rãi trong nhiều sản phẩm, chẳng hạn như các chai nhựa. Việc sử dụng các chất liệu tái chế giúp hạn chế lượng sợi polyester nguyên chất phải sản xuất. Đạt chứng nhận Recycled Claim Standard (RCS). Tiêu chuẩn này giúp xác minh hàm lượng tái chế và theo dõi quy trình sản xuất, từ khâu nguyên liệu đầu vào cho tới sản phẩm cuối cùng.', 'Tiên Quang                 ', '2/11/2023                 ', 'L,XL,XXL                 ', 'Vũ Thị Bắc                 ', 'Áo sơ mi', 0),
('47', 456, 'Áo Overshirt Vải Caro Flannel Thêu Heritage Form Loose SM166 Caro Xanh Lá', 'SỢI POLYESTER TÁI CHẾ ĐẠT CHỨNG NHẬN RCS\r\nNgày nay, sợi polyester tái chế được sản xuất chủ yếu từ rác thải nhựa PET. Đây là một loại nhựa được sử dụng rộng rãi trong nhiều sản phẩm, chẳng hạn như các chai nhựa. Việc sử dụng các chất liệu tái chế giúp hạn chế lượng sợi polyester nguyên chất phải sản xuất. Đạt chứng nhận Recycled Claim Standard (RCS). Tiêu chuẩn này giúp xác minh hàm lượng tái chế và theo dõi quy trình sản xuất, từ khâu nguyên liệu đầu vào cho tới sản phẩm cuối cùng.', 345, 232, '4MEN2a.jpg', '4MEN2b.jpg', '4MEN2c.jpg', '4MEN2d.jpg', 1, 'SỢI POLYESTER TÁI CHẾ ĐẠT CHỨNG NHẬN RCS Ngày nay, sợi polyester tái chế được sản xuất chủ yếu từ rác thải nhựa PET. Đây là một loại nhựa được sử dụng rộng rãi trong nhiều sản phẩm, chẳng hạn như các chai nhựa. Việc sử dụng các chất liệu tái chế giúp hạn chế lượng sợi polyester nguyên chất phải sản xuất. Đạt chứng nhận Recycled Claim Standard (RCS). Tiêu chuẩn này giúp xác minh hàm lượng tái chế và theo dõi quy trình sản xuất, từ khâu nguyên liệu đầu vào cho tới sản phẩm cuối cùng.', 'tuyên quang                ', '11/2/2023                ', 'L,XL,XXL', 'Duong Quang Hieu', ' Áo Overshirt', 0),
('4543', 321, 'DoraDora', 'SỢI POLYESTER TÁI CHẾ ĐẠT CHỨNG NHẬN RCS\r\nNgày nay, sợi polyester tái chế được sản xuất chủ yếu từ rác thải nhựa PET. Đây là một loại nhựa được sử dụng rộng rãi trong nhiều sản phẩm, chẳng hạn như các chai nhựa. Việc sử dụng các chất liệu tái chế giúp hạn chế lượng sợi polyester nguyên chất phải sản xuất. Đạt chứng nhận Recycled Claim Standard (RCS). Tiêu chuẩn này giúp xác minh hàm lượng tái chế và theo dõi quy trình sản xuất, từ khâu nguyên liệu đầu vào cho tới sản phẩm cuối cùng.', 333, 321, 'aothundora1.jpg', 'aothundora2.jpg', 'aothundora3.jpg', 'aothundora4.jpg', 1, 'SỢI POLYESTER TÁI CHẾ ĐẠT CHỨNG NHẬN RCS Ngày nay, sợi polyester tái chế được sản xuất chủ yếu từ rác thải nhựa PET. Đây là một loại nhựa được sử dụng rộng rãi trong nhiều sản phẩm, chẳng hạn như các chai nhựa. Việc sử dụng các chất liệu tái chế giúp hạn chế lượng sợi polyester nguyên chất phải sản xuất. Đạt chứng nhận Recycled Claim Standard (RCS). Tiêu chuẩn này giúp xác minh hàm lượng tái chế và theo dõi quy trình sản xuất, từ khâu nguyên liệu đầu vào cho tới sản phẩm cuối cùng.', 'Tiên Quang                  ', '11/2/2023                  ', 'L,XL,XXL        ', 'Vũ Thị Bắc                  ', 'Ao thun               ', 0),
('666', 32424, 'Áo Phông Nâu Đen', 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.                 ', 321, 222, 'r8.jpg', 'r3.jpg', 'r1.jpg', 'r7.jpg', 1, 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.     ', 'Đồng Thấp                 ', '2/11/2023                 ', '30cm- 70cm                 ', 'Vũ Thị Bắc                   ', 'Hoa Hồng Nhập Khẩu                 ', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sanpham_nhom`
--

CREATE TABLE `sanpham_nhom` (
  `id` int(11) NOT NULL,
  `tennhom` varchar(100) NOT NULL,
  `ghichu` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sanpham_nhom`
--

INSERT INTO `sanpham_nhom` (`id`, `tennhom`, `ghichu`) VALUES
(3242, 'ZARA', 'Thương hiệu thời trang nam nổi tiếng thế giới đầu tiên được nhắc đến chính là ZARA. Xuất hiện tại thị trường Việt Nam từ lâu nhưng ZARA luôn khẳng định được độ hot của mình. Hãng thường xuyên cho ra n'),
(32424, 'JACKTHREADS ', 'JACKTHREADS được biết đến là thương hiệu thời trang nam cao cấp, chiếm được cảm tình của giới trẻ bởi những bộ trang phục năng động, cá tính phù hợp với mọi lứa tuổi.  Đây là thương hiệu luôn mang đến'),
(123, 'Hãng thời trang nam Hàn Quốc Owen', 'Owen là thương hiệu mang phong cách Hàn Quốc đã quá quen thuộc với những chàng trai năng động, lịch lãm, hiện đại. Dù ra nhập thị trường Việt Nam khá muộn nhưng Owen vẫn khẳng định được vị thế trong p'),
(321, 'COOLMATE', 'Thương hiệu thời trang nam Coolmate dù còn rất trẻ nhưng đã gây được tiếng vang lớn khi gọi vốn thành công trong Shark Tank Việt Nam.  Những sản phẩm quần áo của Coolmate luôn nhận được ý kiến tích cự'),
(456, '4MEN', 'Một trong các hãng thời trang nam ở Hà Nội phải nhắc đến 4MEN. Đây là lựa chọn tuyệt vời khi phái mạnh có nhu cầu tìm kiếm trang phục chất lượng với mức giá tầm trung. Đặt chân tới một cửa hàng của 4M'),
(654, 'Biluxury', 'Biluxury là thương hiệu thời trang nam bình dân được đông đảo phái mạnh yêu thích. Những sản phẩm tại Biluxury luôn cập nhật những xu hướng thiết kế mới, đơn giản nhưng vô cùng tinh tế.'),
(789, 'H&M', 'Hệ thống H&M là một trong số ít những thương hiệu thời trang nam tầm trung phổ biến nhất Việt Nam.  Dù bạn có ở độ tuổi nào cũng có thể lựa chọn những sản phẩm tại H&M. Thương hiệu này thường xuyên có');

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

CREATE TABLE `taikhoan` (
  `tendangnhap` varchar(50) NOT NULL,
  `matkhau` varchar(50) NOT NULL,
  `hoten` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT 1,
  `quyen` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `taikhoan`
--

INSERT INTO `taikhoan` (`tendangnhap`, `matkhau`, `hoten`, `email`, `enable`, `quyen`) VALUES
('bac11', '111  ', 'Vũ Thị Bắc  ', 'Vurio410@gmail.com  ', 1, 0),
('vuthibac', '111', 'Vũ Thị Bắc', 'vuthibac20030611@gmail.com', 1, 0),
('hpanpp', 'hp1', 'minhhoan', 'phephehoan@gmail.com', 1, 0),
('minhhoanpp', 'hp1   ', 'nguyenminhhoaneq  ', 'phehoan@gmail.com   ', 1, 0),
('nguyenminhhoan', 'hp1   ', 'mh03   ', 'nguyenminhhoan@gmail.com   ', 1, 1),
('yasuo', 'hp1', 'ys', 'ys@gmail.com', 1, 1),
('ádfas', 'ádf ', 'ádfasdf ', 'dfads@gmail.com ', 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
