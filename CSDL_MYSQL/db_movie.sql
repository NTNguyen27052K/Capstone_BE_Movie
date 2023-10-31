/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

CREATE TABLE `banner` (
  `ma_banner` int NOT NULL AUTO_INCREMENT,
  `ma_phim` int DEFAULT NULL,
  `hinh_anh` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ma_banner`),
  KEY `ma_phim` (`ma_phim`),
  CONSTRAINT `banner_ibfk_1` FOREIGN KEY (`ma_phim`) REFERENCES `phim` (`ma_phim`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `cum_rap` (
  `ma_cum_rap` varchar(255) NOT NULL,
  `ten_cum_rap` varchar(255) DEFAULT NULL,
  `dia_chi` varchar(255) DEFAULT NULL,
  `ma_he_thong_rap` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ma_cum_rap`),
  KEY `ma_he_thong_rap` (`ma_he_thong_rap`),
  CONSTRAINT `cum_rap_ibfk_1` FOREIGN KEY (`ma_he_thong_rap`) REFERENCES `he_thong_rap` (`ma_he_thong_rap`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `dat_ve` (
  `tai_khoan` varchar(255) NOT NULL,
  `ma_lich_chieu` int NOT NULL,
  `ma_ghe` int DEFAULT NULL,
  PRIMARY KEY (`tai_khoan`,`ma_lich_chieu`),
  KEY `ma_lich_chieu` (`ma_lich_chieu`),
  CONSTRAINT `dat_ve_ibfk_1` FOREIGN KEY (`tai_khoan`) REFERENCES `nguoi_dung` (`tai_khoan`),
  CONSTRAINT `dat_ve_ibfk_2` FOREIGN KEY (`ma_lich_chieu`) REFERENCES `lich_chieu` (`ma_lich_chieu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `ghe` (
  `ma_ghe` int NOT NULL AUTO_INCREMENT,
  `ten_ghe` varchar(255) DEFAULT NULL,
  `loai_ghe` varchar(255) DEFAULT NULL,
  `ma_rap` int DEFAULT NULL,
  PRIMARY KEY (`ma_ghe`),
  KEY `ma_rap` (`ma_rap`),
  CONSTRAINT `ghe_ibfk_1` FOREIGN KEY (`ma_rap`) REFERENCES `rap_phim` (`ma_rap`)
) ENGINE=InnoDB AUTO_INCREMENT=97971 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `he_thong_rap` (
  `ma_he_thong_rap` varchar(255) NOT NULL,
  `ten_he_thong_rap` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ma_he_thong_rap`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `lich_chieu` (
  `ma_lich_chieu` int NOT NULL AUTO_INCREMENT,
  `ma_rap` int DEFAULT NULL,
  `ma_phim` int DEFAULT NULL,
  `ngay_gio_chieu` datetime DEFAULT NULL,
  `gia_ve` int DEFAULT NULL,
  PRIMARY KEY (`ma_lich_chieu`),
  KEY `ma_rap` (`ma_rap`),
  KEY `ma_phim` (`ma_phim`),
  CONSTRAINT `lich_chieu_ibfk_1` FOREIGN KEY (`ma_rap`) REFERENCES `rap_phim` (`ma_rap`),
  CONSTRAINT `lich_chieu_ibfk_2` FOREIGN KEY (`ma_phim`) REFERENCES `phim` (`ma_phim`)
) ENGINE=InnoDB AUTO_INCREMENT=47106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `nguoi_dung` (
  `tai_khoan` varchar(255) NOT NULL,
  `ho_ten` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `so_dt` varchar(255) DEFAULT NULL,
  `mat_khau` varchar(255) DEFAULT NULL,
  `loai_nguoi_dung` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tai_khoan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `phim` (
  `ma_phim` int NOT NULL AUTO_INCREMENT,
  `ten_phim` varchar(255) DEFAULT NULL,
  `trailer` varchar(255) DEFAULT NULL,
  `hinh_anh` varchar(255) DEFAULT NULL,
  `mo_ta` varchar(500) DEFAULT NULL,
  `ngay_khoi_chieu` datetime DEFAULT NULL,
  `danh_gia` int DEFAULT NULL,
  `hot` tinyint(1) DEFAULT NULL,
  `dang_chieu` tinyint(1) DEFAULT NULL,
  `sap_chieu` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ma_phim`)
) ENGINE=InnoDB AUTO_INCREMENT=12654 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `rap_phim` (
  `ma_rap` int NOT NULL AUTO_INCREMENT,
  `ten_rap` varchar(255) DEFAULT NULL,
  `ma_cum_rap` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ma_rap`),
  KEY `ma_cum_rap` (`ma_cum_rap`),
  CONSTRAINT `rap_phim_ibfk_1` FOREIGN KEY (`ma_cum_rap`) REFERENCES `cum_rap` (`ma_cum_rap`)
) ENGINE=InnoDB AUTO_INCREMENT=951 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `banner` (`ma_banner`, `ma_phim`, `hinh_anh`) VALUES
(1, 12640, 'https://movienew.cybersoft.edu.vn/hinhanh/ban-tay-diet-quy.png');
INSERT INTO `banner` (`ma_banner`, `ma_phim`, `hinh_anh`) VALUES
(2, 12641, 'https://movienew.cybersoft.edu.vn/hinhanh/lat-mat-48h.png');
INSERT INTO `banner` (`ma_banner`, `ma_phim`, `hinh_anh`) VALUES
(3, 12642, 'https://movienew.cybersoft.edu.vn/hinhanh/cuoc-chien-sinh-tu.png');

INSERT INTO `cum_rap` (`ma_cum_rap`, `ten_cum_rap`, `dia_chi`, `ma_he_thong_rap`) VALUES
('bhd-star-cineplex-3-2', 'BHD Star Cineplex - 3/2', 'L5-Vincom 3/2, 3C Đường 3/2, Q.10', 'BHDStar');
INSERT INTO `cum_rap` (`ma_cum_rap`, `ten_cum_rap`, `dia_chi`, `ma_he_thong_rap`) VALUES
('bhd-star-cineplex-bitexco', 'BHD Star Cineplex - Bitexco', 'L3-Bitexco Icon 68, 2 Hải Triều, Q.1', 'BHDStar');
INSERT INTO `cum_rap` (`ma_cum_rap`, `ten_cum_rap`, `dia_chi`, `ma_he_thong_rap`) VALUES
('bhd-star-cineplex-pham-hung', 'BHD Star Cineplex - Phạm Hùng', 'L4-Satra Phạm Hùng, C6/27 Phạm Hùng, Bình Chánh', 'BHDStar');
INSERT INTO `cum_rap` (`ma_cum_rap`, `ten_cum_rap`, `dia_chi`, `ma_he_thong_rap`) VALUES
('bhd-star-cineplex-vincom-le-van-viet', 'BHD Star Cineplex - Vincom Lê Văn Việt', 'L4-Vincom Plaza, 50 Lê Văn Việt, Q.9', 'BHDStar'),
('bhd-star-cineplex-vincom-quang-trung', 'BHD Star Cineplex - Vincom Quang Trung', 'B1-Vincom QT, 190 Quang Trung, Gò Vấp', 'BHDStar'),
('bhd-star-cineplex-vincom-thao-dien', 'BHD Star Cineplex - Vincom Thảo Điền', 'L5-Megamall, 159 XL Hà Nội, Q.2', 'BHDStar'),
('cgv-aeon-binh-tan', 'CGV - Aeon Bình Tân', 'Tầng 3, TTTM Aeon Mall Bình Tân, Số 1 đường số 17A, khu phố 11, Bình Trị Đông B, Bình Tân', 'CGV'),
('cgv-aeon-tan-phu', 'CGV - Aeon Tân Phú', '30 Bờ Bao Tân Thắng, Sơn Kỳ, Tân Phú', 'CGV'),
('cgv-cgv-saigonres-nguyen-xi', 'CGV - CGV Saigonres Nguyễn Xí', 'Tầng 4-5, Saigonres Plaza, 79/81 Nguyễn Xí, P. 26, Bình Thạnh', 'CGV'),
('cgv-crescent-mall', 'CGV - Crescent Mall', 'Lầu 5, Crescent Mall, Đại lộ Nguyễn Văn Linh, Phú Mỹ Hưng, Q. 7', 'CGV'),
('cns-hai-ba-trung', 'CNS - Hai Bà Trưng', '135 Hai Bà Trưng, Bến Nghé, Q.1[Bản đồ]', 'CineStar'),
('cns-quoc-thanh', 'CNS - Quốc Thanh', '271 Nguyễn Trãi, Q.1', 'CineStar'),
('glx-huynh-tan-phat', 'GLX - Huỳnh Tấn Phát', '1362 Huỳnh Tấn Phát, KP1, Phú Mỹ, Q. 7', 'Galaxy'),
('glx-kinh-duong-vuong', 'GLX - Kinh Dương Vương', '718bis Kinh Dương Vương, Q.6', 'Galaxy'),
('glx-nguyen-du', 'GLX - Nguyễn Du', '116 Nguyễn Du, Q.1', 'Galaxy'),
('lotte-cantavil', 'Lotte - Cantavil', 'L7-Cantavil Premier, Xa Lộ Hà Nội, Q.2', 'LotteCinima'),
('lotte-cong-hoa', 'Lotte - Cộng Hòa', 'L4-Pico Plaza, 20 Cộng Hòa, Tân Bình', 'LotteCinima'),
('lotte-diamond', 'Lotte - Diamond', 'L13-Diamond Plaza, 34 Lê Duẩn, Q.1', 'LotteCinima'),
('lotte-go-vap', 'Lotte - Gò Vấp', 'L3-Lotte Mart, 242 Nguyễn Văn Lượng, Gò Vấp', 'LotteCinima'),
('megags-cao-thang', 'MegaGS - Cao Thắng', '19 Cao Thắng, Q.3', 'MegaGS');

INSERT INTO `dat_ve` (`tai_khoan`, `ma_lich_chieu`, `ma_ghe`) VALUES
('13123', 47056, 60681);
INSERT INTO `dat_ve` (`tai_khoan`, `ma_lich_chieu`, `ma_ghe`) VALUES
('nguyentest', 47054, 92522);
INSERT INTO `dat_ve` (`tai_khoan`, `ma_lich_chieu`, `ma_ghe`) VALUES
('NtNguyen', 47055, 111401);

INSERT INTO `ghe` (`ma_ghe`, `ten_ghe`, `loai_ghe`, `ma_rap`) VALUES
(60521, '01', 'Thuong', 533);
INSERT INTO `ghe` (`ma_ghe`, `ten_ghe`, `loai_ghe`, `ma_rap`) VALUES
(60522, '02', 'Thuong', 533);
INSERT INTO `ghe` (`ma_ghe`, `ten_ghe`, `loai_ghe`, `ma_rap`) VALUES
(60523, '03', 'Thuong', 533);
INSERT INTO `ghe` (`ma_ghe`, `ten_ghe`, `loai_ghe`, `ma_rap`) VALUES
(60524, '04', 'Thuong', 533),
(60525, '05', 'Thuong', 533),
(60526, '06', 'Thuong', 533),
(60527, '07', 'Thuong', 533),
(60528, '08', 'Thuong', 533),
(60529, '09', 'Thuong', 533),
(60530, '10', 'Thuong', 533),
(60681, '01', 'Thuong', 534),
(60682, '02', 'Thuong', 534),
(60683, '03', 'Thuong', 534),
(60684, '04', 'Thuong', 534),
(60685, '05', 'Thuong', 534),
(60686, '06', 'Thuong', 534),
(60687, '07', 'Thuong', 534),
(60688, '08', 'Thuong', 534),
(60689, '09', 'Thuong', 534),
(60690, '10', 'Thuong', 534),
(97961, '01', 'Thuong', 767),
(97962, '02', 'Thuong', 767),
(97963, '03', 'Thuong', 767),
(97964, '04', 'Thuong', 767),
(97965, '05', 'Thuong', 767),
(97966, '06', 'Thuong', 767),
(97967, '07', 'Thuong', 767),
(97968, '08', 'Thuong', 767),
(97969, '09', 'Thuong', 767),
(97970, '10', 'Thuong', 767);

INSERT INTO `he_thong_rap` (`ma_he_thong_rap`, `ten_he_thong_rap`, `logo`) VALUES
('BHDStar', 'BHD Star Cineplex', 'https://movienew.cybersoft.edu.vn/hinhanh/bhd-star-cineplex.png');
INSERT INTO `he_thong_rap` (`ma_he_thong_rap`, `ten_he_thong_rap`, `logo`) VALUES
('CGV', 'CGV', 'https://movienew.cybersoft.edu.vn/hinhanh/cgv.png');
INSERT INTO `he_thong_rap` (`ma_he_thong_rap`, `ten_he_thong_rap`, `logo`) VALUES
('CineStar', 'CineStar', 'https://movienew.cybersoft.edu.vn/hinhanh/cinestar.png');
INSERT INTO `he_thong_rap` (`ma_he_thong_rap`, `ten_he_thong_rap`, `logo`) VALUES
('Galaxy', 'Galaxy Cinema', 'https://movienew.cybersoft.edu.vn/hinhanh/galaxy-cinema.png'),
('LotteCinima', 'Lotte Cinema', 'https://movienew.cybersoft.edu.vn/hinhanh/lotte-cinema.png'),
('MegaGS', 'MegaGS', 'https://movienew.cybersoft.edu.vn/hinhanh/megags.png');

INSERT INTO `lich_chieu` (`ma_lich_chieu`, `ma_rap`, `ma_phim`, `ngay_gio_chieu`, `gia_ve`) VALUES
(47054, 733, 12640, '2023-07-08 02:06:39', 75000);
INSERT INTO `lich_chieu` (`ma_lich_chieu`, `ma_rap`, `ma_phim`, `ngay_gio_chieu`, `gia_ve`) VALUES
(47055, 851, 12642, '2023-07-06 16:06:57', 75000);
INSERT INTO `lich_chieu` (`ma_lich_chieu`, `ma_rap`, `ma_phim`, `ngay_gio_chieu`, `gia_ve`) VALUES
(47056, 534, 12649, '2023-07-08 20:07:29', 75000);
INSERT INTO `lich_chieu` (`ma_lich_chieu`, `ma_rap`, `ma_phim`, `ngay_gio_chieu`, `gia_ve`) VALUES
(47057, 767, 12649, '2023-07-05 02:07:55', 75000),
(47061, 533, 12653, '2023-07-14 19:09:05', 75000),
(47085, 475, 12641, '2023-08-11 23:10:35', 75000),
(47105, 740, 12649, '2023-08-15 16:37:00', 75000);

INSERT INTO `nguoi_dung` (`tai_khoan`, `ho_ten`, `email`, `so_dt`, `mat_khau`, `loai_nguoi_dung`) VALUES
('13123', 'vcedited', '1232bnn@gmail.com', '0933991939', '131231288A@2910a', 'QuanTri');
INSERT INTO `nguoi_dung` (`tai_khoan`, `ho_ten`, `email`, `so_dt`, `mat_khau`, `loai_nguoi_dung`) VALUES
('nguyentest', 'ntntestUpdate2', 'testntnguyen275@gmailcom', '0386992381', '123456', 'KhachHang');
INSERT INTO `nguoi_dung` (`tai_khoan`, `ho_ten`, `email`, `so_dt`, `mat_khau`, `loai_nguoi_dung`) VALUES
('NtNguyen', 'Nguyễn Trung Nguyên', 'ntnguyen275@gmailcom', '0386992381', '123456', 'KhachHang');

INSERT INTO `phim` (`ma_phim`, `ten_phim`, `trailer`, `hinh_anh`, `mo_ta`, `ngay_khoi_chieu`, `danh_gia`, `hot`, `dang_chieu`, `sap_chieu`) VALUES
(12640, 'Mùa Hè Đen', 'https://www.youtube.com/watch?v=tQA1omPJN24', 'https://movienew.cybersoft.edu.vn/hinhanh/mua-he-den_gp09.jpg', 'Black Summer là một loạt phim truyền hình trực tuyến của Mỹ do Karl Schaefer và John Hyams tạo ra. Nó là một phụ bản của Z Nation. Phần đầu tiên, bao gồm tám tập, được phát hành trên Netflix vào ngày 11 tháng 4 năm 2019.', '2019-04-11 00:00:00', 5, 1, 1, 0);
INSERT INTO `phim` (`ma_phim`, `ten_phim`, `trailer`, `hinh_anh`, `mo_ta`, `ngay_khoi_chieu`, `danh_gia`, `hot`, `dang_chieu`, `sap_chieu`) VALUES
(12641, 'Resident Evil 4', 'https://www.youtube.com/watch?v=Tx6onHvOqwA', 'https://movienew.cybersoft.edu.vn/hinhanh/resident-evil-4_gp09.jpg', 'Resident Evil là một bộ phim truyền hình hành động kinh dị của Mỹ được phát triển bởi Andrew Dabb cho Netflix.', '2023-10-12 00:00:00', 8, 1, 1, 0);
INSERT INTO `phim` (`ma_phim`, `ten_phim`, `trailer`, `hinh_anh`, `mo_ta`, `ngay_khoi_chieu`, `danh_gia`, `hot`, `dang_chieu`, `sap_chieu`) VALUES
(12642, 'Cuộc Chiến Zombile', 'https://www.youtube.com/watch?v=YpVwLkfpeow', 'https://movienew.cybersoft.edu.vn/hinhanh/cuoc-chien-zombile_gp09.png', 'Khi một loại virus tàn phá một cộng đồng miền núi, những người sống sót phải chạy trốn khỏi những con quái vật mà nó tạo ra vào vùng hoang dã cằn cỗi. Nhặt rác, chết cóng và chết, một gia đình sẽ chiến đấu để giành lấy mạng sống của họ trước những kẻ cướp bóc đang âm mưu trả thù.\r\nKhi nhân loại bám vào hy vọng, cơ hội sống sót duy nhất của họ là thành lập một liên minh với những con quái vật đang kêu gọi.', '2023-08-25 17:11:59', 5, 1, 1, 0);
INSERT INTO `phim` (`ma_phim`, `ten_phim`, `trailer`, `hinh_anh`, `mo_ta`, `ngay_khoi_chieu`, `danh_gia`, `hot`, `dang_chieu`, `sap_chieu`) VALUES
(12649, 'Cơn Mưa Chết Chóc', 'https://www.youtube.com/watch?v=bdqTyvvSmqo', 'https://movienew.cybersoft.edu.vn/hinhanh/con-mua-chet-choc_gp09.jpg', 'The Rain là một loạt phim truyền hình trực tuyến về hậu khải huyền của Đan Mạch được tạo ra bởi Jannik Tai Mosholt, Esben Toft Jacobsen và Christian Potalivo. Công chiếu trên Netflix vào ngày 4 tháng 5 năm 2018', '2023-07-05 00:00:00', 5, 0, 1, 0),
(12653, 'Linh Hồn Đổi Xác', 'https://www.youtube.com/watch?v=M8PsZki6NGU', 'https://movienew.cybersoft.edu.vn/hinhanh/linh-hon-doi-xac_gp09.jpg', 'Linh hồn đổi xác là một phim truyền hình khoa học viễn tưởng cyberpunk của Mỹ do Laeta Kalogridis chuyển thể dựa trên tiểu thuyết cùng tên năm 2002 của tác giả người Anh Richard K. Morgan. Mùa đầu tiên bao gồm 10 tập và bắt đầu trên Netflix vào ngày 2 tháng 2 năm 2018.', '2023-07-11 00:00:00', 5, 1, 0, 1);

INSERT INTO `rap_phim` (`ma_rap`, `ten_rap`, `ma_cum_rap`) VALUES
(451, 'Rạp 1', 'bhd-star-cineplex-3-2');
INSERT INTO `rap_phim` (`ma_rap`, `ten_rap`, `ma_cum_rap`) VALUES
(452, 'Rạp 2', 'bhd-star-cineplex-3-2');
INSERT INTO `rap_phim` (`ma_rap`, `ten_rap`, `ma_cum_rap`) VALUES
(453, 'Rạp 3', 'bhd-star-cineplex-3-2');
INSERT INTO `rap_phim` (`ma_rap`, `ten_rap`, `ma_cum_rap`) VALUES
(454, 'Rạp 4', 'bhd-star-cineplex-3-2'),
(455, 'Rạp 5', 'bhd-star-cineplex-3-2'),
(456, 'Rạp 6', 'bhd-star-cineplex-3-2'),
(457, 'Rạp 7', 'bhd-star-cineplex-3-2'),
(458, 'Rạp 8', 'bhd-star-cineplex-3-2'),
(459, 'Rạp 9', 'bhd-star-cineplex-3-2'),
(460, 'Rạp 10', 'bhd-star-cineplex-3-2'),
(461, 'Rạp 1', 'bhd-star-cineplex-bitexco'),
(462, 'Rạp 2', 'bhd-star-cineplex-bitexco'),
(463, 'Rạp 3', 'bhd-star-cineplex-bitexco'),
(464, 'Rạp 4', 'bhd-star-cineplex-bitexco'),
(465, 'Rạp 5', 'bhd-star-cineplex-bitexco'),
(466, 'Rạp 6', 'bhd-star-cineplex-bitexco'),
(467, 'Rạp 7', 'bhd-star-cineplex-bitexco'),
(468, 'Rạp 8', 'bhd-star-cineplex-bitexco'),
(469, 'Rạp 9', 'bhd-star-cineplex-bitexco'),
(470, 'Rạp 10', 'bhd-star-cineplex-bitexco'),
(471, 'Rạp 1', 'bhd-star-cineplex-pham-hung'),
(472, 'Rạp 2', 'bhd-star-cineplex-pham-hung'),
(473, 'Rạp 3', 'bhd-star-cineplex-pham-hung'),
(474, 'Rạp 4', 'bhd-star-cineplex-pham-hung'),
(475, 'Rạp 5', 'bhd-star-cineplex-pham-hung'),
(476, 'Rạp 6', 'bhd-star-cineplex-pham-hung'),
(477, 'Rạp 7', 'bhd-star-cineplex-pham-hung'),
(478, 'Rạp 8', 'bhd-star-cineplex-pham-hung'),
(479, 'Rạp 9', 'bhd-star-cineplex-pham-hung'),
(480, 'Rạp 10', 'bhd-star-cineplex-pham-hung'),
(511, 'Rạp 1', 'cgv-aeon-binh-tan'),
(512, 'Rạp 2', 'cgv-aeon-binh-tan'),
(513, 'Rạp 3', 'cgv-aeon-binh-tan'),
(514, 'Rạp 4', 'cgv-aeon-binh-tan'),
(515, 'Rạp 5', 'cgv-aeon-binh-tan'),
(516, 'Rạp 6', 'cgv-aeon-binh-tan'),
(517, 'Rạp 7', 'cgv-aeon-binh-tan'),
(518, 'Rạp 8', 'cgv-aeon-binh-tan'),
(519, 'Rạp 9', 'cgv-aeon-binh-tan'),
(520, 'Rạp 10', 'cgv-aeon-binh-tan'),
(521, 'Rạp 1', 'cgv-aeon-tan-phu'),
(522, 'Rạp 2', 'cgv-aeon-tan-phu'),
(523, 'Rạp 3', 'cgv-aeon-tan-phu'),
(524, 'Rạp 4', 'cgv-aeon-tan-phu'),
(525, 'Rạp 5', 'cgv-aeon-tan-phu'),
(526, 'Rạp 6', 'cgv-aeon-tan-phu'),
(527, 'Rạp 7', 'cgv-aeon-tan-phu'),
(528, 'Rạp 8', 'cgv-aeon-tan-phu'),
(529, 'Rạp 9', 'cgv-aeon-tan-phu'),
(530, 'Rạp 10', 'cgv-aeon-tan-phu'),
(531, 'Rạp 1', 'cgv-cgv-saigonres-nguyen-xi'),
(532, 'Rạp 2', 'cgv-cgv-saigonres-nguyen-xi'),
(533, 'Rạp 3', 'cgv-cgv-saigonres-nguyen-xi'),
(534, 'Rạp 4', 'cgv-cgv-saigonres-nguyen-xi'),
(535, 'Rạp 5', 'cgv-cgv-saigonres-nguyen-xi'),
(536, 'Rạp 6', 'cgv-cgv-saigonres-nguyen-xi'),
(537, 'Rạp 7', 'cgv-cgv-saigonres-nguyen-xi'),
(538, 'Rạp 8', 'cgv-cgv-saigonres-nguyen-xi'),
(539, 'Rạp 9', 'cgv-cgv-saigonres-nguyen-xi'),
(540, 'Rạp 10', 'cgv-cgv-saigonres-nguyen-xi'),
(721, 'Rạp 1', 'cns-hai-ba-trung'),
(722, 'Rạp 2', 'cns-hai-ba-trung'),
(723, 'Rạp 3', 'cns-hai-ba-trung'),
(724, 'Rạp 4', 'cns-hai-ba-trung'),
(725, 'Rạp 5', 'cns-hai-ba-trung'),
(726, 'Rạp 6', 'cns-hai-ba-trung'),
(727, 'Rạp 7', 'cns-hai-ba-trung'),
(728, 'Rạp 8', 'cns-hai-ba-trung'),
(729, 'Rạp 9', 'cns-hai-ba-trung'),
(730, 'Rạp 10', 'cns-hai-ba-trung'),
(731, 'Rạp 1', 'cns-quoc-thanh'),
(732, 'Rạp 2', 'cns-quoc-thanh'),
(733, 'Rạp 3', 'cns-quoc-thanh'),
(734, 'Rạp 4', 'cns-quoc-thanh'),
(735, 'Rạp 5', 'cns-quoc-thanh'),
(736, 'Rạp 6', 'cns-quoc-thanh'),
(737, 'Rạp 7', 'cns-quoc-thanh'),
(738, 'Rạp 8', 'cns-quoc-thanh'),
(739, 'Rạp 9', 'cns-quoc-thanh'),
(740, 'Rạp 10', 'cns-quoc-thanh'),
(741, 'Rạp 1', 'glx-huynh-tan-phat'),
(742, 'Rạp 2', 'glx-huynh-tan-phat'),
(743, 'Rạp 3', 'glx-huynh-tan-phat'),
(744, 'Rạp 4', 'glx-huynh-tan-phat'),
(745, 'Rạp 5', 'glx-huynh-tan-phat'),
(746, 'Rạp 6', 'glx-huynh-tan-phat'),
(747, 'Rạp 7', 'glx-huynh-tan-phat'),
(748, 'Rạp 8', 'glx-huynh-tan-phat'),
(749, 'Rạp 9', 'glx-huynh-tan-phat'),
(750, 'Rạp 10', 'glx-huynh-tan-phat'),
(751, 'Rạp 1', 'glx-kinh-duong-vuong'),
(752, 'Rạp 2', 'glx-kinh-duong-vuong'),
(753, 'Rạp 3', 'glx-kinh-duong-vuong'),
(754, 'Rạp 4', 'glx-kinh-duong-vuong'),
(755, 'Rạp 5', 'glx-kinh-duong-vuong'),
(756, 'Rạp 6', 'glx-kinh-duong-vuong'),
(757, 'Rạp 7', 'glx-kinh-duong-vuong'),
(758, 'Rạp 8', 'glx-kinh-duong-vuong'),
(759, 'Rạp 9', 'glx-kinh-duong-vuong'),
(760, 'Rạp 10', 'glx-kinh-duong-vuong'),
(761, 'Rạp 1', 'glx-nguyen-du'),
(762, 'Rạp 2', 'glx-nguyen-du'),
(763, 'Rạp 3', 'glx-nguyen-du'),
(764, 'Rạp 4', 'glx-nguyen-du'),
(765, 'Rạp 5', 'glx-nguyen-du'),
(766, 'Rạp 6', 'glx-nguyen-du'),
(767, 'Rạp 7', 'glx-nguyen-du'),
(768, 'Rạp 8', 'glx-nguyen-du'),
(769, 'Rạp 9', 'glx-nguyen-du'),
(770, 'Rạp 10', 'glx-nguyen-du'),
(821, 'Rạp 1', 'lotte-cantavil'),
(831, 'Rạp 1', 'lotte-cong-hoa'),
(841, 'Rạp 1', 'lotte-diamond'),
(851, 'Rạp 1', 'lotte-go-vap'),
(901, 'Rạp 1', 'megags-cao-thang'),
(902, 'Rạp 2', 'megags-cao-thang'),
(903, 'Rạp 3', 'megags-cao-thang'),
(904, 'Rạp 4', 'megags-cao-thang'),
(905, 'Rạp 5', 'megags-cao-thang'),
(906, 'Rạp 6', 'megags-cao-thang'),
(907, 'Rạp 7', 'megags-cao-thang'),
(908, 'Rạp 8', 'megags-cao-thang'),
(909, 'Rạp 9', 'megags-cao-thang'),
(910, 'Rạp 10', 'megags-cao-thang'),
(922, 'Rạp 2', 'lotte-cantavil'),
(923, 'Rạp 3', 'lotte-cantavil'),
(924, 'Rạp 4', 'lotte-cantavil'),
(925, 'Rạp 5', 'lotte-cantavil'),
(926, 'Rạp 6', 'lotte-cantavil'),
(927, 'Rạp 7', 'lotte-cantavil'),
(928, 'Rạp 8', 'lotte-cantavil'),
(929, 'Rạp 9', 'lotte-cantavil'),
(930, 'Rạp 10', 'lotte-cantavil'),
(932, 'Rạp 2', 'lotte-cong-hoa'),
(933, 'Rạp 3', 'lotte-cong-hoa'),
(934, 'Rạp 4', 'lotte-cong-hoa'),
(935, 'Rạp 5', 'lotte-cong-hoa'),
(936, 'Rạp 6', 'lotte-cong-hoa'),
(937, 'Rạp 7', 'lotte-cong-hoa'),
(938, 'Rạp 8', 'lotte-cong-hoa'),
(939, 'Rạp 9', 'lotte-cong-hoa'),
(940, 'Rạp 10', 'lotte-cong-hoa'),
(942, 'Rạp 2', 'lotte-diamond'),
(943, 'Rạp 3', 'lotte-diamond'),
(944, 'Rạp 4', 'lotte-diamond'),
(945, 'Rạp 5', 'lotte-diamond'),
(946, 'Rạp 6', 'lotte-diamond'),
(947, 'Rạp 7', 'lotte-diamond'),
(948, 'Rạp 8', 'lotte-diamond'),
(949, 'Rạp 9', 'lotte-diamond'),
(950, 'Rạp 10', 'lotte-diamond');


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;