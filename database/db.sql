-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 22, 2022 at 08:31 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fpt_telecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `birthday` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` tinyint(4) NOT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `email`, `avatar`, `name`, `birthday`, `gender`, `phone_number`, `address`, `password`, `level`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', '157202302220191026000342g6LFGCz0rHPe8DIkAnwD4QBmgw1UFu4LQn1JAPoK.jpeg', 'FPT Moderator', '2022-10-16 12:44:53', 1, '19008198', 'Ha Noi', '$2y$10$4edleQ7FIcS8PthADtoE.uiy3SBXgEcRg0cNNLMbJKRudJkVsRMC2', 1, 1, 'FnKK1hERGEOh8lzEA6mZrri5ZOsxVapnBzp2LbTQRHz4KUQEjGV2ndKX6VMY', '2022-10-16 05:44:53', '2022-10-16 05:44:53');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sort_id` tinyint(4) NOT NULL DEFAULT 0,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `sort_id`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Internet', 1, 'internet', 'Internet', '2019-05-25 09:50:50', '2022-10-15 03:01:00'),
(6, 'Dịch vụ truyền hình', 2, 'dich-vu-truyen-hinh', 'Dịch vụ truyền hình', '2019-06-23 02:55:02', '2022-10-15 03:05:00'),
(7, 'Dịch vụ Camera', 3, 'dich-vu-camera', 'Dịch vụ Camera', '2019-06-23 02:55:59', '2022-10-15 03:05:29'),
(8, 'Lắp cáp quang', 10, 'lap-cap-quang', 'Lắp cáp quang', '2019-12-30 02:54:08', '2022-10-16 02:46:12'),
(13, 'Kênh truyền hình FPT', 0, 'kenh-truyen-hinh-fpt', 'Kênh truyền hình FPT', '2022-10-16 05:42:01', '2022-10-16 05:42:01');

-- --------------------------------------------------------

--
-- Table structure for table `introductions`
--

CREATE TABLE `introductions` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `introductions`
--

INSERT INTO `introductions` (`id`, `content`, `created_at`, `updated_at`) VALUES
(1, '<p><strong>VỀ CH&Uacute;NG T&Ocirc;I</strong></p>\r\n\r\n<p><strong><a href=\"https://mangfpt.vn/\">Mạng FPT</a></strong>&nbsp;&ndash; C&ocirc;ng ty Cổ phần Viễn th&ocirc;ng FPT hiện l&agrave; một nh&agrave; cung cấp dịch vụ Viễn th&ocirc;ng h&agrave;ng đầu tại Việt Nam chuy&ecirc;n cung cấp c&aacute;c sản phẩm dịch vụ internet c&aacute;p quang, truyền h&igrave;nh c&aacute;p, camera, Smart Home, hotline tổng đ&agrave;i, điện thoại cố định, &hellip; cho c&aacute; nh&acirc;n v&agrave; doanh nghiệp.</p>\r\n\r\n<p>Được th&agrave;nh lập v&agrave;o ng&agrave;y 31/01/1997 khởi nguồn từ Trung t&acirc;m Dịch vụ Trực tuyến do 4 th&agrave;nh vi&ecirc;n s&aacute;ng lập c&ugrave;ng sản phẩm mạng Intrernet đầu ti&ecirc;n của Việt Nam mang t&ecirc;n &ldquo;Tr&iacute; tuệ Việt Nam &ndash; TTVN&rdquo;, sản phẩm được coi l&agrave; đặt nền m&oacute;ng cho sự ph&aacute;t triển của Internet tại Việt Nam.</p>\r\n\r\n<p>Với sứ mệnh ti&ecirc;n phong về ng&agrave;nh dịch vụ viễn th&ocirc;ng, FPT mong muốn mang Internet kết nối với mọi người d&acirc;n Việt Nam mỗi gia đ&igrave;nh đều sử dụng &iacute;t nhất một dịch vụ của FPT. Với t&acirc;m thế đ&oacute; FPT Telecom kh&ocirc;ng ngừng nỗ lực phấn đấu từng bước thực thi c&aacute;c mục ti&ecirc;u cao nhất &ldquo;Mang đến trải nghiệm tuyệt vời cho kh&aacute;ch h&agrave;ng&rdquo; tr&ecirc;n cơ sở ph&aacute;t huy gi&aacute; trị văn h&oacute;a cốt l&otilde;i &ldquo;Lấy kh&aacute;ch h&agrave;ng l&agrave;m trọng t&acirc;m&rdquo; Đồng thời, FPT đang kh&ocirc;ng ngừng nghi&ecirc;n cứu v&agrave; ti&ecirc;n phong trong c&aacute;c xu hướng c&ocirc;ng nghệ mới, hội nhập c&ugrave;ng xu thế c&ocirc;ng nghệ chung của to&agrave;n cầu, g&oacute;p phần khẳng định v&agrave; n&acirc;ng cao vị thế của FPT.&nbsp;</p>\r\n\r\n<div class=\"ddict_btn\" style=\"left:1623px; top:105px\"><img src=\"chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png\" /></div>\r\n\r\n<div class=\"ddict_btn\" style=\"left:1623px; top:51px\"><img src=\"chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png\" /></div>', '2019-09-09 13:15:18', '2022-10-16 03:01:21');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `view_count` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `thumbnail`, `description`, `content`, `slug`, `author`, `category_id`, `view_count`, `created_at`, `updated_at`) VALUES
(1, 'BẢNG GIÁ CƯỚC INTERNET FPT KHUYẾN MÃI MỚI THÁNG 10/2022 – MẠNG FPT', '166580898120221015114301IrMUs4c9IIV9D2fNvv3Mvkp7NBUUiSWEx1fBDLrF.jpg', 'Nhu cầu dùng mạng internet của mọi người hàng ngày luôn tăng trưởng mạnh, đò hỏi đơn vị viễn thông nhà Mạng FPT không ngừng cố gắng liên tục và phát triển đổi mới. Để đáp trả lại sự tin tưởng và yên tâm của người tiêu dùng trong thời gian qua tập đoàn FPT đã đầu tư phát triển hạ tầng phủ khắp 59/63 tỉnh thành tại Việt Nam với hệ thống cửa hàng FPT Shop lắp mạng FPT phủ dầy đặc từ thành thị tới nông thôn.', '<p><strong>FPT Telecom</strong>&nbsp;đang cung cấp c&aacute;c g&oacute;i cước<em>&nbsp;Internet C&aacute;p Quang&nbsp;</em>tốc độ cao gi&aacute; rẻ với nhiều ưu đ&atilde;i cực hấp dẫn trong năm 2022. B&ecirc;n cạnh đ&oacute; &aacute;p dụng nhiều chương tr&igrave;nh khuyến m&atilde;i qu&agrave; tặng rất đặc biệt khi đăng k&yacute; g&oacute;i&nbsp;<em>mạng c&aacute;p quang wifi</em>&nbsp;v&agrave;&nbsp;<em>Truyền h&igrave;nh FPT</em>&nbsp;đi k&egrave;m lu&ocirc;n được cập nhật th&ocirc;ng tin mới nhất tại địa chỉ website:&nbsp;<a href=\"https://mangfpt.vn/\">MangFPT.VN</a>&nbsp;&aacute;p dụng to&agrave;n quốc.</p>\r\n\r\n<p><a href=\"https://mangfpt.vn/\"><strong>Internet FPT</strong></a>&nbsp;&ndash; Dịch vụ mạng c&aacute;p quang FPT được nhiều c&aacute; nh&acirc;n, tổ chức đ&aacute;nh gi&aacute; l&agrave; nh&agrave; cung cấp dịch vụ Internet c&oacute; chất lượng đường truyền dữ liệu c&aacute;p quang si&ecirc;u tốc, ổn định gần như kh&ocirc;ng xảy ra hiện tượng mất mạng trong qu&aacute; tr&igrave;nh sử dụng.&nbsp;C&aacute;p quang FPT&nbsp;sử dụng nền tảng c&ocirc;ng nghệ mới tốc độ nhanh gấp 200 lần so với c&ocirc;ng nghệ ADSL, bảo mật tuyệt đối th&ocirc;ng tin người d&ugrave;ng, kh&ocirc;ng bị ảnh hưởng bởi thời tiết, gi&aacute; th&agrave;nh si&ecirc;u rẻ.</p>\r\n\r\n<p>Hiện nay, chỉ với&nbsp;<em><a href=\"https://mangfpt.vn/bang-gia-cuoc-internet-fpt/\">g&oacute;i Internet FPT c&aacute;p quang</a></em>&nbsp;190k/ th&aacute;ng kh&aacute;ch h&agrave;ng c&oacute; thể&nbsp;<a href=\"https://mangfpt.vn/lap-mang-fpt/\"><strong><em>lắp mạng FPT</em></strong></a>&nbsp;khi sử dụng g&oacute;i cước c&aacute;p quang d&agrave;nh ri&ecirc;ng cho gia đ&igrave;nh m&igrave;nh. Ngo&agrave;i ra, chỉ từ 320k/ th&aacute;ng FPT c&oacute; đa dạng c&aacute;c g&oacute;i cước, cũng như gi&aacute; mạng FPT cước ph&ugrave; hợp với c&ocirc;ng ty doanh nghiệp, qu&aacute;n game, qu&aacute;n cafe, qu&aacute;n tr&agrave; chanh m&agrave; kh&aacute;ch h&agrave;ng c&oacute; thể lựa chọn t&ugrave;y theo nhu cầu sử dụng của m&igrave;nh.</p>\r\n\r\n<blockquote>\r\n<p><em>Gọi&nbsp;</em><em>Tư vấn</em><em><strong>&nbsp;Lắp Mạng FPT:&nbsp;</strong><strong><a href=\"tel:0961343688\">0961.343.688</a></strong>&nbsp; hoặc gửi SMS theo c&uacute; ph&aacute;p ĐK LM gửi&nbsp;<strong><a href=\"tel:0961343688\">0961.343.688</a></strong>&nbsp;nh&acirc;n v&ecirc;n gọi lại tư vấn miễn ph&iacute;</em></p>\r\n</blockquote>\r\n\r\n<p><img alt=\"\" src=\"/storage/uploads/images/Internet-FPT-goi-cuoc-cap-quang-wifi-sieu-toc.jpg\" style=\"height:100%; width:100%\" /></p>\r\n\r\n<p>Đ&oacute;n đầu xu thế,&nbsp;<a href=\"https://mangfpt.vn/fpt-shop-lap-mang/\"><strong>FPT Shop</strong></a>&nbsp;kh&ocirc;ng ngừng đổi mới, lu&ocirc;n ti&ecirc;n phong mang lại cho kh&aacute;ch h&agrave;ng c&aacute;c giải ph&aacute;p c&ocirc;ng nghệ tối ưu nhất về c&aacute;c dịch vụ Điện thoại di động, M&aacute;y t&iacute;nh bảng, M&aacute;y t&iacute;nh x&aacute;ch tay v&agrave; phụ kiện điện tử, điểm thu hộ tiền cước mạng&hellip; Kh&ocirc;ng chỉ dừng lại ở đ&oacute; hiện nay&nbsp;<em><strong>FPT Shop lắp mạng wifi</strong></em>&nbsp;l&agrave; chuỗi cửa h&agrave;ng b&aacute;n lẻ hỗ trợ tất cả c&aacute;c kh&aacute;ch h&agrave;ng tư vấn đăng k&yacute; lắp mạng FPT, Truyền h&igrave;nh FPT Play, FPT Camera mong muốn nh&agrave; nh&agrave; đều c&oacute; thể sử dụng mạng FPT.&nbsp;</p>\r\n\r\n<p>Nhu cầu d&ugrave;ng mạng internet của mọi người h&agrave;ng ng&agrave;y lu&ocirc;n tăng trưởng mạnh, đ&ograve; hỏi đơn vị viễn th&ocirc;ng nh&agrave;&nbsp;<strong><a href=\"https://mangfpt.vn/\">Mạng FPT</a></strong>&nbsp;kh&ocirc;ng ngừng cố gắng li&ecirc;n tục v&agrave; ph&aacute;t triển đổi mới. Để đ&aacute;p trả lại sự tin tưởng v&agrave; y&ecirc;n t&acirc;m của người ti&ecirc;u d&ugrave;ng trong thời gian qua tập đo&agrave;n FPT đ&atilde; đầu tư ph&aacute;t triển hạ tầng phủ khắp 59/63 tỉnh th&agrave;nh tại Việt Nam với hệ thống cửa h&agrave;ng&nbsp;<strong>FPT Shop lắp mạng FPT</strong>&nbsp;phủ dầy đặc từ th&agrave;nh thị tới n&ocirc;ng th&ocirc;n.</p>\r\n\r\n<p><img alt=\"\" src=\"/storage/uploads/images/lap-combo-Internet-kem-truyen-hinh-FPT.jpg\" style=\"height:100%; width:100%\" /></p>\r\n\r\n<p>Đ&oacute;n đầu xu thế,&nbsp;<a href=\"https://mangfpt.vn/fpt-shop-lap-mang/\"><strong>FPT Shop</strong></a>&nbsp;kh&ocirc;ng ngừng đổi mới, lu&ocirc;n ti&ecirc;n phong mang lại cho kh&aacute;ch h&agrave;ng c&aacute;c giải ph&aacute;p c&ocirc;ng nghệ tối ưu nhất về c&aacute;c dịch vụ Điện thoại di động, M&aacute;y t&iacute;nh bảng, M&aacute;y t&iacute;nh x&aacute;ch tay v&agrave; phụ kiện điện tử, điểm thu hộ tiền cước mạng&hellip; Kh&ocirc;ng chỉ dừng lại ở đ&oacute; hiện nay&nbsp;<em><strong>FPT Shop lắp mạng wifi</strong></em>&nbsp;l&agrave; chuỗi cửa h&agrave;ng b&aacute;n lẻ hỗ trợ tất cả c&aacute;c kh&aacute;ch h&agrave;ng tư vấn đăng k&yacute; lắp mạng FPT, Truyền h&igrave;nh FPT Play, FPT Camera mong muốn nh&agrave; nh&agrave; đều c&oacute; thể sử dụng mạng FPT.&nbsp;</p>\r\n\r\n<p>Một số ưu điểm kh&aacute;c biệt của g&oacute;i cước Lux 800 FPT so với c&aacute;c g&oacute;i cước wifi kh&aacute;c.</p>\r\n\r\n<ul>\r\n	<li>Sử dụng c&ocirc;ng nghệ&nbsp;<strong><a href=\"https://mangfpt.vn/wifi-6-la-gi/\">Wi-Fi 6</a></strong>&nbsp;tốc độ vượt trội so với c&aacute;c thế hệ cũ</li>\r\n	<li>V&ugrave;ng phủ mở rộng hơn 15%~23%, Kh&ocirc;ng cần đầu tư th&ecirc;m AP, tiết kiệm chi ph&iacute; cho kh&aacute;ch h&agrave;ng</li>\r\n	<li>Cover được 30 thiết bị (so với 12 thiết bị như hiện tại )Tốc độ tăng 1.3~2.8 lần so với ONT/AP dual band đang hiện hữu</li>\r\n	<li>Độ trễ rất thấp &lt;60ms, trải nghiệm dịch vụ liền mạch</li>\r\n	<li>Tặng miễn ph&iacute; g&oacute;i&nbsp;<strong><a href=\"https://mangfpt.vn/goi-ultra-fast-fpt/\">Game Ultra Fast</a></strong></li>\r\n	<li>Ưu ti&ecirc;n giờ phục vụ</li>\r\n</ul>\r\n\r\n<h2><strong>Gi&aacute; cước g&oacute;i Lux 800 FPT</strong></h2>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>T&ecirc;n g&oacute;i</strong></td>\r\n			<td><strong>Tốc độ</strong></td>\r\n			<td><strong>Gi&aacute; b&aacute;n</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Lux 800</td>\r\n			<td>800Mbps</td>\r\n			<td>1.000.000 vnđ/ th&aacute;ng</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Khuyến m&atilde;i:</strong></p>\r\n\r\n<ul>\r\n	<li>Đ&oacute;ng 6 th&aacute;ng tặng 1 th&aacute;ng ( ph&iacute; ho&agrave; mạng 900k )</li>\r\n	<li>Đ&oacute;ng 12 th&aacute;ng tặng 2 th&aacute;ng ( ph&iacute; ho&agrave; mạng 600k )</li>\r\n</ul>\r\n\r\n<p><strong>Vật tư triển khai:</strong></p>\r\n\r\n<ul>\r\n	<li>01 Internet Hub AX1800GZ</li>\r\n	<li>01 Access Point AX1800AZ</li>\r\n</ul>\r\n\r\n<p>C&oacute; thể thấy đối với những ưu điểm tr&ecirc;n&nbsp;<strong>g&oacute;i cước LUX 800 của FPT</strong>&nbsp; c&oacute; gi&aacute;&nbsp;<strong>1.000.000 vnđ/ th&aacute;ng</strong>&nbsp;so với mặt bằng chung của thị trường c&ugrave;ng ph&acirc;n kh&uacute;c tốc độ từ 700 &ndash; 800Mbps th&igrave; g&oacute;i Lux 800 n&agrave;y gi&aacute; th&agrave;nh kh&aacute; l&agrave; OK kh&ocirc;ng hề đắt. Khi bạn lựa chọn đăng k&yacute; lắp đặt v&agrave; sử dụng g&oacute;i Lux 800 n&agrave;y sẽ kh&ocirc;ng l&agrave;m bạn thất vọng v&agrave; FPT tự tin mang đến cho người sử dụng những trải nghiệm vượt trội về tốc độ đường truyền, thiết bị, dịch vụ ưu ti&ecirc;n.<br />\r\n<strong><img alt=\"✅\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t33/1/16/2705.png\" style=\"height:16px; width:16px\" />&nbsp;Chương tr&igrave;nh khuyến m&atilde;i v&agrave; vật tư triển khai khi đăng k&yacute;(&nbsp;<a href=\"https://mangfpt.vn/bang-gia-cuoc-internet-fpt/\">G&oacute;i cước FPT</a>&nbsp;)</strong></p>\r\n\r\n<ul>\r\n	<li><em>Miễn ph&iacute; 100% chi ph&iacute; lắp đặt, đường d&acirc;y</em></li>\r\n	<li><em>Trang bị Modem FTTH wifi 4 Ports AC1000F băng tần k&eacute;p 2.4 &ndash; 5.0</em></li>\r\n</ul>\r\n\r\n<h3><strong><img alt=\"✅\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t33/1/16/2705.png\" style=\"height:16px; width:16px\" />&nbsp;Ưu đ&atilde;i cho kh&aacute;ch h&agrave;ng trả trước:</strong></h3>\r\n\r\n<ul>\r\n	<li><em>Thanh to&aacute;n trả trước 06 th&aacute;ng: Miễn ph&iacute; h&ograve;a mạng + Tặng 01 th&aacute;ng cước thứ 7</em></li>\r\n	<li><em>Thanh to&aacute;n trả trước 12 th&aacute;ng: Miễn ph&iacute; h&ograve;a mạng + Tặng 02 th&aacute;ng cước thức 13, 14, 15</em></li>\r\n</ul>\r\n\r\n<p><strong>Cần biết:&nbsp;</strong>Ri&ecirc;ng g&oacute;i Super 30Mbps đ&oacute;ng 6 th&aacute;ng tặng 0,5 th&aacute;ng v&agrave; đ&oacute;ng 12 th&aacute;ng tặng 1 th&aacute;ng.</p>\r\n\r\n<div class=\"ddict_btn\" style=\"left:1608px; top:3179px\"><img src=\"chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png\" /></div>\r\n\r\n<div class=\"ddict_div\" style=\"left:362px; max-width:1588px; top:2921.56px\"><img class=\"ddict_audio\" src=\"chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/img/audio.png\" />\r\n<p class=\"ddict_sentence\">1 / B&aacute;o gi&aacute; cước Internet FPT d&agrave;nh cho c&aacute; nh&acirc;n, gia đ&igrave;nh, sinh vi&ecirc;n</p>\r\n\r\n<p class=\"ddict_sentence\">FPT Telecom xin gửi tới qu&yacute; kh&aacute;ch h&agrave;ng đăng k&yacute; g&oacute;i lắp mạng FPT c&oacute; c&aacute;p k&eacute;o địa chỉ tại H&agrave; Nội v&agrave; TP. HCM &amp; TO&Agrave;N QUỐC</p>\r\n\r\n<p class=\"ddict_sentence\">&nbsp;</p>\r\n\r\n<p class=\"ddict_sentence\">G&oacute;i cước Super 30 Super 80 Super 100 Super 150</p>\r\n\r\n<p class=\"ddict_sentence\">Tải xuống 30 Mpbs 80 Mpbs 100 Mpbs 150 Mpbs</p>\r\n\r\n<p class=\"ddict_sentence\">Tải l&ecirc;n 30 Mpbs 80 Mpbs 100 Mpbs 150 Mpbs</p>\r\n\r\n<p class=\"ddict_sentence\">International Internet access speed</p>\r\n\r\n<p class=\"ddict_sentence\">Tải xuống 3,300 Kb / gi&acirc;y 3,360 Kb / gi&acirc;y 6,300 Kb / gi&acirc;y 6,360 Kb / gi&acirc;y</p>\r\n\r\n<p class=\"ddict_sentence\">Tải l&ecirc;n 3,300 Kb / gi&acirc;y 3,360 Kb / gi&acirc;y 6,300 Kb / gi&acirc;y 6,360 Kb / gi&acirc;y</p>\r\n\r\n<p class=\"ddict_sentence\">Internet C&aacute;p Quang FPT gi&aacute; cước</p>\r\n\r\n<p class=\"ddict_sentence\">Khu vực Huyện 191.000 200.000 235.000 300.000</p>\r\n\r\n<p class=\"ddict_sentence\">Khu vực quận 200.000 205.000 245.000 300.000</p>\r\n\r\n<p class=\"ddict_sentence\">Hotline tư vấn: 0961.343.688 hỗ trợ 24/7</p>\r\n</div>', 'fpt-lap-mang-wifi-gia-re-mien-phi-lap-dat-1665809156', 'FPT Moderator', 1, 738, '2022-01-08 04:40:05', '2022-10-17 18:24:28'),
(2, 'LẮP CAMERA FPT GIÁM SÁT CÔNG NGHỆ IQ', '1665808527202210151135273XUmpFrMUaDSqZu9zTY7diDFfwCW9wOiuloZnpNQ.jpg', 'Nhu cầu dùng mạng internet của mọi người hàng ngày luôn tăng trưởng mạnh, đò hỏi đơn vị viễn thông nhà Mạng FPT không ngừng cố gắng liên tục và phát triển đổi mới. Để đáp trả lại sự tin tưởng và yên tâm của người tiêu dùng trong thời gian qua tập đoàn FPT đã đầu tư phát triển hạ tầng phủ khắp 59/63 tỉnh thành tại Việt Nam với hệ thống cửa hàng FPT Shop lắp mạng FPT phủ dầy đặc từ thành thị tới nông thôn.', '<p>Nhu cầu d&ugrave;ng mạng internet của mọi người h&agrave;ng ng&agrave;y lu&ocirc;n tăng trưởng mạnh, đ&ograve; hỏi đơn vị viễn th&ocirc;ng nh&agrave;&nbsp;<strong><a href=\"https://mangfpt.vn/\">Mạng FPT</a></strong>&nbsp;kh&ocirc;ng ngừng cố gắng li&ecirc;n tục v&agrave; ph&aacute;t triển đổi mới. Để đ&aacute;p trả lại sự tin tưởng v&agrave; y&ecirc;n t&acirc;m của người ti&ecirc;u d&ugrave;ng trong thời gian qua tập đo&agrave;n FPT đ&atilde; đầu tư ph&aacute;t triển hạ tầng phủ khắp 59/63 tỉnh th&agrave;nh tại Việt Nam với hệ thống cửa h&agrave;ng&nbsp;<strong>FPT Shop lắp mạng FPT</strong>&nbsp;phủ dầy đặc từ th&agrave;nh thị tới n&ocirc;ng th&ocirc;n.</p>\r\n\r\n<p><img alt=\"\" src=\"/storage/uploads/images/Internet-FPT-goi-cuoc-cap-quang-wifi-sieu-toc.jpg\" style=\"height:100%; width:100%\" /></p>\r\n\r\n<p>Đ&oacute;n đầu xu thế,&nbsp;<a href=\"https://mangfpt.vn/fpt-shop-lap-mang/\"><strong>FPT Shop</strong></a>&nbsp;kh&ocirc;ng ngừng đổi mới, lu&ocirc;n ti&ecirc;n phong mang lại cho kh&aacute;ch h&agrave;ng c&aacute;c giải ph&aacute;p c&ocirc;ng nghệ tối ưu nhất về c&aacute;c dịch vụ Điện thoại di động, M&aacute;y t&iacute;nh bảng, M&aacute;y t&iacute;nh x&aacute;ch tay v&agrave; phụ kiện điện tử, điểm thu hộ tiền cước mạng&hellip; Kh&ocirc;ng chỉ dừng lại ở đ&oacute; hiện nay&nbsp;<em><strong>FPT Shop lắp mạng wifi</strong></em>&nbsp;l&agrave; chuỗi cửa h&agrave;ng b&aacute;n lẻ hỗ trợ tất cả c&aacute;c kh&aacute;ch h&agrave;ng tư vấn đăng k&yacute; lắp mạng FPT, Truyền h&igrave;nh FPT Play, FPT Camera mong muốn nh&agrave; nh&agrave; đều c&oacute; thể sử dụng mạng FPT.&nbsp;</p>\r\n\r\n<p>Nhu cầu d&ugrave;ng mạng internet của mọi người h&agrave;ng ng&agrave;y lu&ocirc;n tăng trưởng mạnh, đ&ograve; hỏi đơn vị viễn th&ocirc;ng nh&agrave;&nbsp;<strong><a href=\"https://mangfpt.vn/\">Mạng FPT</a></strong>&nbsp;kh&ocirc;ng ngừng cố gắng li&ecirc;n tục v&agrave; ph&aacute;t triển đổi mới. Để đ&aacute;p trả lại sự tin tưởng v&agrave; y&ecirc;n t&acirc;m của người ti&ecirc;u d&ugrave;ng trong thời gian qua tập đo&agrave;n FPT đ&atilde; đầu tư ph&aacute;t triển hạ tầng phủ khắp 59/63 tỉnh th&agrave;nh tại Việt Nam với hệ thống cửa h&agrave;ng&nbsp;<strong>FPT Shop lắp mạng FPT</strong>&nbsp;phủ dầy đặc từ th&agrave;nh thị tới n&ocirc;ng th&ocirc;n.</p>\r\n\r\n<p>Đ&oacute;n đầu xu thế,&nbsp;<a href=\"https://mangfpt.vn/fpt-shop-lap-mang/\"><strong>FPT Shop</strong></a>&nbsp;kh&ocirc;ng ngừng đổi mới, lu&ocirc;n ti&ecirc;n phong mang lại cho kh&aacute;ch h&agrave;ng c&aacute;c giải ph&aacute;p c&ocirc;ng nghệ tối ưu nhất về c&aacute;c dịch vụ Điện thoại di động, M&aacute;y t&iacute;nh bảng, M&aacute;y t&iacute;nh x&aacute;ch tay v&agrave; phụ kiện điện tử, điểm thu hộ tiền cước mạng&hellip; Kh&ocirc;ng chỉ dừng lại ở đ&oacute; hiện nay&nbsp;<em><strong>FPT Shop lắp mạng wifi</strong></em>&nbsp;l&agrave; chuỗi cửa h&agrave;ng b&aacute;n lẻ hỗ trợ tất cả c&aacute;c kh&aacute;ch h&agrave;ng tư vấn đăng k&yacute; lắp mạng FPT, Truyền h&igrave;nh FPT Play, FPT Camera mong muốn nh&agrave; nh&agrave; đều c&oacute; thể sử dụng mạng FPT.&nbsp;</p>', 'fpt-shop-lap-mang-wifi-gia-re-mien-phi-lap-dat-1665808522', 'FPT Moderator', 7, 732, '2022-01-08 04:40:05', '2022-10-17 18:24:40'),
(3, 'LẮP TRUYỀN HÌNH FPT KHUYẾN MÃI THÁNG 10/2022', '1665808527202210151135273XUmpFrMUaDSqZu9zTY7diDFfwCW9wOiuloZnpNQ.jpg', 'Nhu cầu dùng mạng internet của mọi người hàng ngày luôn tăng trưởng mạnh, đò hỏi đơn vị viễn thông nhà Mạng FPT không ngừng cố gắng liên tục và phát triển đổi mới. Để đáp trả lại sự tin tưởng và yên tâm của người tiêu dùng trong thời gian qua tập đoàn FPT đã đầu tư phát triển hạ tầng phủ khắp 59/63 tỉnh thành tại Việt Nam với hệ thống cửa hàng FPT Shop lắp mạng FPT phủ dầy đặc từ thành thị tới nông thôn.', '<p>Nhu cầu d&ugrave;ng mạng internet của mọi người h&agrave;ng ng&agrave;y lu&ocirc;n tăng trưởng mạnh, đ&ograve; hỏi đơn vị viễn th&ocirc;ng nh&agrave;&nbsp;<strong><a href=\"https://mangfpt.vn/\">Mạng FPT</a></strong>&nbsp;kh&ocirc;ng ngừng cố gắng li&ecirc;n tục v&agrave; ph&aacute;t triển đổi mới. Để đ&aacute;p trả lại sự tin tưởng v&agrave; y&ecirc;n t&acirc;m của người ti&ecirc;u d&ugrave;ng trong thời gian qua tập đo&agrave;n FPT đ&atilde; đầu tư ph&aacute;t triển hạ tầng phủ khắp 59/63 tỉnh th&agrave;nh tại Việt Nam với hệ thống cửa h&agrave;ng&nbsp;<strong>FPT Shop lắp mạng FPT</strong>&nbsp;phủ dầy đặc từ th&agrave;nh thị tới n&ocirc;ng th&ocirc;n.</p>\r\n\r\n<p><img alt=\"\" src=\"/storage/uploads/images/Internet-FPT-goi-cuoc-cap-quang-wifi-sieu-toc.jpg\" style=\"height:100%; width:100%\" /></p>\r\n\r\n<p>Đ&oacute;n đầu xu thế,&nbsp;<a href=\"https://mangfpt.vn/fpt-shop-lap-mang/\"><strong>FPT Shop</strong></a>&nbsp;kh&ocirc;ng ngừng đổi mới, lu&ocirc;n ti&ecirc;n phong mang lại cho kh&aacute;ch h&agrave;ng c&aacute;c giải ph&aacute;p c&ocirc;ng nghệ tối ưu nhất về c&aacute;c dịch vụ Điện thoại di động, M&aacute;y t&iacute;nh bảng, M&aacute;y t&iacute;nh x&aacute;ch tay v&agrave; phụ kiện điện tử, điểm thu hộ tiền cước mạng&hellip; Kh&ocirc;ng chỉ dừng lại ở đ&oacute; hiện nay&nbsp;<em><strong>FPT Shop lắp mạng wifi</strong></em>&nbsp;l&agrave; chuỗi cửa h&agrave;ng b&aacute;n lẻ hỗ trợ tất cả c&aacute;c kh&aacute;ch h&agrave;ng tư vấn đăng k&yacute; lắp mạng FPT, Truyền h&igrave;nh FPT Play, FPT Camera mong muốn nh&agrave; nh&agrave; đều c&oacute; thể sử dụng mạng FPT.&nbsp;</p>\r\n\r\n<p>Nhu cầu d&ugrave;ng mạng internet của mọi người h&agrave;ng ng&agrave;y lu&ocirc;n tăng trưởng mạnh, đ&ograve; hỏi đơn vị viễn th&ocirc;ng nh&agrave;&nbsp;<strong><a href=\"https://mangfpt.vn/\">Mạng FPT</a></strong>&nbsp;kh&ocirc;ng ngừng cố gắng li&ecirc;n tục v&agrave; ph&aacute;t triển đổi mới. Để đ&aacute;p trả lại sự tin tưởng v&agrave; y&ecirc;n t&acirc;m của người ti&ecirc;u d&ugrave;ng trong thời gian qua tập đo&agrave;n FPT đ&atilde; đầu tư ph&aacute;t triển hạ tầng phủ khắp 59/63 tỉnh th&agrave;nh tại Việt Nam với hệ thống cửa h&agrave;ng&nbsp;<strong>FPT Shop lắp mạng FPT</strong>&nbsp;phủ dầy đặc từ th&agrave;nh thị tới n&ocirc;ng th&ocirc;n.</p>\r\n\r\n<p>Đ&oacute;n đầu xu thế,&nbsp;<a href=\"https://mangfpt.vn/fpt-shop-lap-mang/\"><strong>FPT Shop</strong></a>&nbsp;kh&ocirc;ng ngừng đổi mới, lu&ocirc;n ti&ecirc;n phong mang lại cho kh&aacute;ch h&agrave;ng c&aacute;c giải ph&aacute;p c&ocirc;ng nghệ tối ưu nhất về c&aacute;c dịch vụ Điện thoại di động, M&aacute;y t&iacute;nh bảng, M&aacute;y t&iacute;nh x&aacute;ch tay v&agrave; phụ kiện điện tử, điểm thu hộ tiền cước mạng&hellip; Kh&ocirc;ng chỉ dừng lại ở đ&oacute; hiện nay&nbsp;<em><strong>FPT Shop lắp mạng wifi</strong></em>&nbsp;l&agrave; chuỗi cửa h&agrave;ng b&aacute;n lẻ hỗ trợ tất cả c&aacute;c kh&aacute;ch h&agrave;ng tư vấn đăng k&yacute; lắp mạng FPT, Truyền h&igrave;nh FPT Play, FPT Camera mong muốn nh&agrave; nh&agrave; đều c&oacute; thể sử dụng mạng FPT.&nbsp;</p>', 'fpt-shop-lap-mang-wifi-gia-re-mien-phi-lap-dat-1665808523', 'FPT Moderator', 6, 732, '2022-01-08 04:40:05', '2022-10-17 18:24:32'),
(4, 'FPTSHOP LẮP MẠNG WIFI GIÁ RẺ MIỄN PHÍ LẮP ĐẶT', '166580898120221015114301IrMUs4c9IIV9D2fNvv3Mvkp7NBUUiSWEx1fBDLrF.jpg', 'Nhu cầu dùng mạng internet của mọi người hàng ngày luôn tăng trưởng mạnh, đò hỏi đơn vị viễn thông nhà Mạng FPT không ngừng cố gắng liên tục và phát triển đổi mới. Để đáp trả lại sự tin tưởng và yên tâm của người tiêu dùng trong thời gian qua tập đoàn FPT đã đầu tư phát triển hạ tầng phủ khắp 59/63 tỉnh thành tại Việt Nam với hệ thống cửa hàng FPT Shop lắp mạng FPT phủ dầy đặc từ thành thị tới nông thôn.', '<p>Nhu cầu d&ugrave;ng mạng internet của mọi người h&agrave;ng ng&agrave;y lu&ocirc;n tăng trưởng mạnh, đ&ograve; hỏi đơn vị viễn th&ocirc;ng nh&agrave;&nbsp;<strong><a href=\"https://mangfpt.vn/\">Mạng FPT</a></strong>&nbsp;kh&ocirc;ng ngừng cố gắng li&ecirc;n tục v&agrave; ph&aacute;t triển đổi mới. Để đ&aacute;p trả lại sự tin tưởng v&agrave; y&ecirc;n t&acirc;m của người ti&ecirc;u d&ugrave;ng trong thời gian qua tập đo&agrave;n FPT đ&atilde; đầu tư ph&aacute;t triển hạ tầng phủ khắp 59/63 tỉnh th&agrave;nh tại Việt Nam với hệ thống cửa h&agrave;ng&nbsp;<strong>FPT Shop lắp mạng FPT</strong>&nbsp;phủ dầy đặc từ th&agrave;nh thị tới n&ocirc;ng th&ocirc;n.</p>\r\n\r\n<p><img alt=\"\" src=\"/storage/uploads/images/Internet-FPT-goi-cuoc-cap-quang-wifi-sieu-toc.jpg\" style=\"height:100%; width:100%\" /></p>\r\n\r\n<p>Đ&oacute;n đầu xu thế,&nbsp;<a href=\"https://mangfpt.vn/fpt-shop-lap-mang/\"><strong>FPT Shop</strong></a>&nbsp;kh&ocirc;ng ngừng đổi mới, lu&ocirc;n ti&ecirc;n phong mang lại cho kh&aacute;ch h&agrave;ng c&aacute;c giải ph&aacute;p c&ocirc;ng nghệ tối ưu nhất về c&aacute;c dịch vụ Điện thoại di động, M&aacute;y t&iacute;nh bảng, M&aacute;y t&iacute;nh x&aacute;ch tay v&agrave; phụ kiện điện tử, điểm thu hộ tiền cước mạng&hellip; Kh&ocirc;ng chỉ dừng lại ở đ&oacute; hiện nay&nbsp;<em><strong>FPT Shop lắp mạng wifi</strong></em>&nbsp;l&agrave; chuỗi cửa h&agrave;ng b&aacute;n lẻ hỗ trợ tất cả c&aacute;c kh&aacute;ch h&agrave;ng tư vấn đăng k&yacute; lắp mạng FPT, Truyền h&igrave;nh FPT Play, FPT Camera mong muốn nh&agrave; nh&agrave; đều c&oacute; thể sử dụng mạng FPT.&nbsp;</p>\r\n\r\n<p>Nhu cầu d&ugrave;ng mạng internet của mọi người h&agrave;ng ng&agrave;y lu&ocirc;n tăng trưởng mạnh, đ&ograve; hỏi đơn vị viễn th&ocirc;ng nh&agrave;&nbsp;<strong><a href=\"https://mangfpt.vn/\">Mạng FPT</a></strong>&nbsp;kh&ocirc;ng ngừng cố gắng li&ecirc;n tục v&agrave; ph&aacute;t triển đổi mới. Để đ&aacute;p trả lại sự tin tưởng v&agrave; y&ecirc;n t&acirc;m của người ti&ecirc;u d&ugrave;ng trong thời gian qua tập đo&agrave;n FPT đ&atilde; đầu tư ph&aacute;t triển hạ tầng phủ khắp 59/63 tỉnh th&agrave;nh tại Việt Nam với hệ thống cửa h&agrave;ng&nbsp;<strong>FPT Shop lắp mạng FPT</strong>&nbsp;phủ dầy đặc từ th&agrave;nh thị tới n&ocirc;ng th&ocirc;n.</p>\r\n\r\n<p>Đ&oacute;n đầu xu thế,&nbsp;<a href=\"https://mangfpt.vn/fpt-shop-lap-mang/\"><strong>FPT Shop</strong></a>&nbsp;kh&ocirc;ng ngừng đổi mới, lu&ocirc;n ti&ecirc;n phong mang lại cho kh&aacute;ch h&agrave;ng c&aacute;c giải ph&aacute;p c&ocirc;ng nghệ tối ưu nhất về c&aacute;c dịch vụ Điện thoại di động, M&aacute;y t&iacute;nh bảng, M&aacute;y t&iacute;nh x&aacute;ch tay v&agrave; phụ kiện điện tử, điểm thu hộ tiền cước mạng&hellip; Kh&ocirc;ng chỉ dừng lại ở đ&oacute; hiện nay&nbsp;<em><strong>FPT Shop lắp mạng wifi</strong></em>&nbsp;l&agrave; chuỗi cửa h&agrave;ng b&aacute;n lẻ hỗ trợ tất cả c&aacute;c kh&aacute;ch h&agrave;ng tư vấn đăng k&yacute; lắp mạng FPT, Truyền h&igrave;nh FPT Play, FPT Camera mong muốn nh&agrave; nh&agrave; đều c&oacute; thể sử dụng mạng FPT.&nbsp;</p>', 'fptshop-lap-mang-wifi-gia-re-mien-phi-lap-dat-1665898237', 'FPT Moderator', 8, 729, '2022-01-08 04:40:05', '2022-10-17 14:17:45'),
(5, 'FPTSHOP LẮP MẠNG WIFI GIÁ RẺ MIỄN PHÍ LẮP ĐẶT', '166580898120221015114301IrMUs4c9IIV9D2fNvv3Mvkp7NBUUiSWEx1fBDLrF.jpg', 'Nhu cầu dùng mạng internet của mọi người hàng ngày luôn tăng trưởng mạnh, đò hỏi đơn vị viễn thông nhà Mạng FPT không ngừng cố gắng liên tục và phát triển đổi mới. Để đáp trả lại sự tin tưởng và yên tâm của người tiêu dùng trong thời gian qua tập đoàn FPT đã đầu tư phát triển hạ tầng phủ khắp 59/63 tỉnh thành tại Việt Nam với hệ thống cửa hàng FPT Shop lắp mạng FPT phủ dầy đặc từ thành thị tới nông thôn.', '<p>Nhu cầu d&ugrave;ng mạng internet của mọi người h&agrave;ng ng&agrave;y lu&ocirc;n tăng trưởng mạnh, đ&ograve; hỏi đơn vị viễn th&ocirc;ng nh&agrave;&nbsp;<strong><a href=\"https://mangfpt.vn/\">Mạng FPT</a></strong>&nbsp;kh&ocirc;ng ngừng cố gắng li&ecirc;n tục v&agrave; ph&aacute;t triển đổi mới. Để đ&aacute;p trả lại sự tin tưởng v&agrave; y&ecirc;n t&acirc;m của người ti&ecirc;u d&ugrave;ng trong thời gian qua tập đo&agrave;n FPT đ&atilde; đầu tư ph&aacute;t triển hạ tầng phủ khắp 59/63 tỉnh th&agrave;nh tại Việt Nam với hệ thống cửa h&agrave;ng&nbsp;<strong>FPT Shop lắp mạng FPT</strong>&nbsp;phủ dầy đặc từ th&agrave;nh thị tới n&ocirc;ng th&ocirc;n.</p>\r\n\r\n<p><img alt=\"\" src=\"/storage/uploads/images/Internet-FPT-goi-cuoc-cap-quang-wifi-sieu-toc.jpg\" style=\"height:100%; width:100%\" /></p>\r\n\r\n<p>Đ&oacute;n đầu xu thế,&nbsp;<a href=\"https://mangfpt.vn/fpt-shop-lap-mang/\"><strong>FPT Shop</strong></a>&nbsp;kh&ocirc;ng ngừng đổi mới, lu&ocirc;n ti&ecirc;n phong mang lại cho kh&aacute;ch h&agrave;ng c&aacute;c giải ph&aacute;p c&ocirc;ng nghệ tối ưu nhất về c&aacute;c dịch vụ Điện thoại di động, M&aacute;y t&iacute;nh bảng, M&aacute;y t&iacute;nh x&aacute;ch tay v&agrave; phụ kiện điện tử, điểm thu hộ tiền cước mạng&hellip; Kh&ocirc;ng chỉ dừng lại ở đ&oacute; hiện nay&nbsp;<em><strong>FPT Shop lắp mạng wifi</strong></em>&nbsp;l&agrave; chuỗi cửa h&agrave;ng b&aacute;n lẻ hỗ trợ tất cả c&aacute;c kh&aacute;ch h&agrave;ng tư vấn đăng k&yacute; lắp mạng FPT, Truyền h&igrave;nh FPT Play, FPT Camera mong muốn nh&agrave; nh&agrave; đều c&oacute; thể sử dụng mạng FPT.&nbsp;</p>\r\n\r\n<p>Nhu cầu d&ugrave;ng mạng internet của mọi người h&agrave;ng ng&agrave;y lu&ocirc;n tăng trưởng mạnh, đ&ograve; hỏi đơn vị viễn th&ocirc;ng nh&agrave;&nbsp;<strong><a href=\"https://mangfpt.vn/\">Mạng FPT</a></strong>&nbsp;kh&ocirc;ng ngừng cố gắng li&ecirc;n tục v&agrave; ph&aacute;t triển đổi mới. Để đ&aacute;p trả lại sự tin tưởng v&agrave; y&ecirc;n t&acirc;m của người ti&ecirc;u d&ugrave;ng trong thời gian qua tập đo&agrave;n FPT đ&atilde; đầu tư ph&aacute;t triển hạ tầng phủ khắp 59/63 tỉnh th&agrave;nh tại Việt Nam với hệ thống cửa h&agrave;ng&nbsp;<strong>FPT Shop lắp mạng FPT</strong>&nbsp;phủ dầy đặc từ th&agrave;nh thị tới n&ocirc;ng th&ocirc;n.</p>\r\n\r\n<p>Đ&oacute;n đầu xu thế,&nbsp;<a href=\"https://mangfpt.vn/fpt-shop-lap-mang/\"><strong>FPT Shop</strong></a>&nbsp;kh&ocirc;ng ngừng đổi mới, lu&ocirc;n ti&ecirc;n phong mang lại cho kh&aacute;ch h&agrave;ng c&aacute;c giải ph&aacute;p c&ocirc;ng nghệ tối ưu nhất về c&aacute;c dịch vụ Điện thoại di động, M&aacute;y t&iacute;nh bảng, M&aacute;y t&iacute;nh x&aacute;ch tay v&agrave; phụ kiện điện tử, điểm thu hộ tiền cước mạng&hellip; Kh&ocirc;ng chỉ dừng lại ở đ&oacute; hiện nay&nbsp;<em><strong>FPT Shop lắp mạng wifi</strong></em>&nbsp;l&agrave; chuỗi cửa h&agrave;ng b&aacute;n lẻ hỗ trợ tất cả c&aacute;c kh&aacute;ch h&agrave;ng tư vấn đăng k&yacute; lắp mạng FPT, Truyền h&igrave;nh FPT Play, FPT Camera mong muốn nh&agrave; nh&agrave; đều c&oacute; thể sử dụng mạng FPT.&nbsp;</p>', 'fptshop-lap-mang-wifi-gia-re-mien-phi-lap-dat-1665898263', 'FPT Moderator', 8, 728, '2022-01-08 04:40:05', '2022-10-16 05:31:03'),
(6, 'FPT SHOP LẮP MẠNG WIFI GIÁ RẺ MIỄN PHÍ LẮP ĐẶT', '166580898120221015114301IrMUs4c9IIV9D2fNvv3Mvkp7NBUUiSWEx1fBDLrF.jpg', 'Nhu cầu dùng mạng internet của mọi người hàng ngày luôn tăng trưởng mạnh, đò hỏi đơn vị viễn thông nhà Mạng FPT không ngừng cố gắng liên tục và phát triển đổi mới. Để đáp trả lại sự tin tưởng và yên tâm của người tiêu dùng trong thời gian qua tập đoàn FPT đã đầu tư phát triển hạ tầng phủ khắp 59/63 tỉnh thành tại Việt Nam với hệ thống cửa hàng FPT Shop lắp mạng FPT phủ dầy đặc từ thành thị tới nông thôn.', '<p>Nhu cầu d&ugrave;ng mạng internet của mọi người h&agrave;ng ng&agrave;y lu&ocirc;n tăng trưởng mạnh, đ&ograve; hỏi đơn vị viễn th&ocirc;ng nh&agrave;&nbsp;<strong><a href=\"https://mangfpt.vn/\">Mạng FPT</a></strong>&nbsp;kh&ocirc;ng ngừng cố gắng li&ecirc;n tục v&agrave; ph&aacute;t triển đổi mới. Để đ&aacute;p trả lại sự tin tưởng v&agrave; y&ecirc;n t&acirc;m của người ti&ecirc;u d&ugrave;ng trong thời gian qua tập đo&agrave;n FPT đ&atilde; đầu tư ph&aacute;t triển hạ tầng phủ khắp 59/63 tỉnh th&agrave;nh tại Việt Nam với hệ thống cửa h&agrave;ng&nbsp;<strong>FPT Shop lắp mạng FPT</strong>&nbsp;phủ dầy đặc từ th&agrave;nh thị tới n&ocirc;ng th&ocirc;n.</p>\r\n\r\n<p><img alt=\"\" src=\"/storage/uploads/images/Internet-FPT-goi-cuoc-cap-quang-wifi-sieu-toc.jpg\" style=\"height:100%; width:100%\" /></p>\r\n\r\n<p>Đ&oacute;n đầu xu thế,&nbsp;<a href=\"https://mangfpt.vn/fpt-shop-lap-mang/\"><strong>FPT Shop</strong></a>&nbsp;kh&ocirc;ng ngừng đổi mới, lu&ocirc;n ti&ecirc;n phong mang lại cho kh&aacute;ch h&agrave;ng c&aacute;c giải ph&aacute;p c&ocirc;ng nghệ tối ưu nhất về c&aacute;c dịch vụ Điện thoại di động, M&aacute;y t&iacute;nh bảng, M&aacute;y t&iacute;nh x&aacute;ch tay v&agrave; phụ kiện điện tử, điểm thu hộ tiền cước mạng&hellip; Kh&ocirc;ng chỉ dừng lại ở đ&oacute; hiện nay&nbsp;<em><strong>FPT Shop lắp mạng wifi</strong></em>&nbsp;l&agrave; chuỗi cửa h&agrave;ng b&aacute;n lẻ hỗ trợ tất cả c&aacute;c kh&aacute;ch h&agrave;ng tư vấn đăng k&yacute; lắp mạng FPT, Truyền h&igrave;nh FPT Play, FPT Camera mong muốn nh&agrave; nh&agrave; đều c&oacute; thể sử dụng mạng FPT.&nbsp;</p>\r\n\r\n<p>Nhu cầu d&ugrave;ng mạng internet của mọi người h&agrave;ng ng&agrave;y lu&ocirc;n tăng trưởng mạnh, đ&ograve; hỏi đơn vị viễn th&ocirc;ng nh&agrave;&nbsp;<strong><a href=\"https://mangfpt.vn/\">Mạng FPT</a></strong>&nbsp;kh&ocirc;ng ngừng cố gắng li&ecirc;n tục v&agrave; ph&aacute;t triển đổi mới. Để đ&aacute;p trả lại sự tin tưởng v&agrave; y&ecirc;n t&acirc;m của người ti&ecirc;u d&ugrave;ng trong thời gian qua tập đo&agrave;n FPT đ&atilde; đầu tư ph&aacute;t triển hạ tầng phủ khắp 59/63 tỉnh th&agrave;nh tại Việt Nam với hệ thống cửa h&agrave;ng&nbsp;<strong>FPT Shop lắp mạng FPT</strong>&nbsp;phủ dầy đặc từ th&agrave;nh thị tới n&ocirc;ng th&ocirc;n.</p>\r\n\r\n<p>Đ&oacute;n đầu xu thế,&nbsp;<a href=\"https://mangfpt.vn/fpt-shop-lap-mang/\"><strong>FPT Shop</strong></a>&nbsp;kh&ocirc;ng ngừng đổi mới, lu&ocirc;n ti&ecirc;n phong mang lại cho kh&aacute;ch h&agrave;ng c&aacute;c giải ph&aacute;p c&ocirc;ng nghệ tối ưu nhất về c&aacute;c dịch vụ Điện thoại di động, M&aacute;y t&iacute;nh bảng, M&aacute;y t&iacute;nh x&aacute;ch tay v&agrave; phụ kiện điện tử, điểm thu hộ tiền cước mạng&hellip; Kh&ocirc;ng chỉ dừng lại ở đ&oacute; hiện nay&nbsp;<em><strong>FPT Shop lắp mạng wifi</strong></em>&nbsp;l&agrave; chuỗi cửa h&agrave;ng b&aacute;n lẻ hỗ trợ tất cả c&aacute;c kh&aacute;ch h&agrave;ng tư vấn đăng k&yacute; lắp mạng FPT, Truyền h&igrave;nh FPT Play, FPT Camera mong muốn nh&agrave; nh&agrave; đều c&oacute; thể sử dụng mạng FPT.&nbsp;</p>', 'fpt-shop-lap-mang-wifi-gia-re-mien-phi-lap-dat-166555808521', 'FPT Moderator', 8, 729, '2022-01-08 04:40:05', '2022-10-15 04:43:29'),
(7, 'FPT SHOP LẮP MẠNG WIFI GIÁ RẺ MIỄN PHÍ LẮP ĐẶT', '1665808527202210151135273XUmpFrMUaDSqZu9zTY7diDFfwCW9wOiuloZnpNQ.jpg', 'Nhu cầu dùng mạng internet của mọi người hàng ngày luôn tăng trưởng mạnh, đò hỏi đơn vị viễn thông nhà Mạng FPT không ngừng cố gắng liên tục và phát triển đổi mới. Để đáp trả lại sự tin tưởng và yên tâm của người tiêu dùng trong thời gian qua tập đoàn FPT đã đầu tư phát triển hạ tầng phủ khắp 59/63 tỉnh thành tại Việt Nam với hệ thống cửa hàng FPT Shop lắp mạng FPT phủ dầy đặc từ thành thị tới nông thôn.', '<p>Nhu cầu d&ugrave;ng mạng internet của mọi người h&agrave;ng ng&agrave;y lu&ocirc;n tăng trưởng mạnh, đ&ograve; hỏi đơn vị viễn th&ocirc;ng nh&agrave;&nbsp;<strong><a href=\"https://mangfpt.vn/\">Mạng FPT</a></strong>&nbsp;kh&ocirc;ng ngừng cố gắng li&ecirc;n tục v&agrave; ph&aacute;t triển đổi mới. Để đ&aacute;p trả lại sự tin tưởng v&agrave; y&ecirc;n t&acirc;m của người ti&ecirc;u d&ugrave;ng trong thời gian qua tập đo&agrave;n FPT đ&atilde; đầu tư ph&aacute;t triển hạ tầng phủ khắp 59/63 tỉnh th&agrave;nh tại Việt Nam với hệ thống cửa h&agrave;ng&nbsp;<strong>FPT Shop lắp mạng FPT</strong>&nbsp;phủ dầy đặc từ th&agrave;nh thị tới n&ocirc;ng th&ocirc;n.</p>\r\n\r\n<p><img alt=\"\" src=\"/storage/uploads/images/Internet-FPT-goi-cuoc-cap-quang-wifi-sieu-toc.jpg\" style=\"height:100%; width:100%\" /></p>\r\n\r\n<p>Đ&oacute;n đầu xu thế,&nbsp;<a href=\"https://mangfpt.vn/fpt-shop-lap-mang/\"><strong>FPT Shop</strong></a>&nbsp;kh&ocirc;ng ngừng đổi mới, lu&ocirc;n ti&ecirc;n phong mang lại cho kh&aacute;ch h&agrave;ng c&aacute;c giải ph&aacute;p c&ocirc;ng nghệ tối ưu nhất về c&aacute;c dịch vụ Điện thoại di động, M&aacute;y t&iacute;nh bảng, M&aacute;y t&iacute;nh x&aacute;ch tay v&agrave; phụ kiện điện tử, điểm thu hộ tiền cước mạng&hellip; Kh&ocirc;ng chỉ dừng lại ở đ&oacute; hiện nay&nbsp;<em><strong>FPT Shop lắp mạng wifi</strong></em>&nbsp;l&agrave; chuỗi cửa h&agrave;ng b&aacute;n lẻ hỗ trợ tất cả c&aacute;c kh&aacute;ch h&agrave;ng tư vấn đăng k&yacute; lắp mạng FPT, Truyền h&igrave;nh FPT Play, FPT Camera mong muốn nh&agrave; nh&agrave; đều c&oacute; thể sử dụng mạng FPT.&nbsp;</p>\r\n\r\n<p>Nhu cầu d&ugrave;ng mạng internet của mọi người h&agrave;ng ng&agrave;y lu&ocirc;n tăng trưởng mạnh, đ&ograve; hỏi đơn vị viễn th&ocirc;ng nh&agrave;&nbsp;<strong><a href=\"https://mangfpt.vn/\">Mạng FPT</a></strong>&nbsp;kh&ocirc;ng ngừng cố gắng li&ecirc;n tục v&agrave; ph&aacute;t triển đổi mới. Để đ&aacute;p trả lại sự tin tưởng v&agrave; y&ecirc;n t&acirc;m của người ti&ecirc;u d&ugrave;ng trong thời gian qua tập đo&agrave;n FPT đ&atilde; đầu tư ph&aacute;t triển hạ tầng phủ khắp 59/63 tỉnh th&agrave;nh tại Việt Nam với hệ thống cửa h&agrave;ng&nbsp;<strong>FPT Shop lắp mạng FPT</strong>&nbsp;phủ dầy đặc từ th&agrave;nh thị tới n&ocirc;ng th&ocirc;n.</p>\r\n\r\n<p>Đ&oacute;n đầu xu thế,&nbsp;<a href=\"https://mangfpt.vn/fpt-shop-lap-mang/\"><strong>FPT Shop</strong></a>&nbsp;kh&ocirc;ng ngừng đổi mới, lu&ocirc;n ti&ecirc;n phong mang lại cho kh&aacute;ch h&agrave;ng c&aacute;c giải ph&aacute;p c&ocirc;ng nghệ tối ưu nhất về c&aacute;c dịch vụ Điện thoại di động, M&aacute;y t&iacute;nh bảng, M&aacute;y t&iacute;nh x&aacute;ch tay v&agrave; phụ kiện điện tử, điểm thu hộ tiền cước mạng&hellip; Kh&ocirc;ng chỉ dừng lại ở đ&oacute; hiện nay&nbsp;<em><strong>FPT Shop lắp mạng wifi</strong></em>&nbsp;l&agrave; chuỗi cửa h&agrave;ng b&aacute;n lẻ hỗ trợ tất cả c&aacute;c kh&aacute;ch h&agrave;ng tư vấn đăng k&yacute; lắp mạng FPT, Truyền h&igrave;nh FPT Play, FPT Camera mong muốn nh&agrave; nh&agrave; đều c&oacute; thể sử dụng mạng FPT.&nbsp;</p>', 'fpt-shop-lap-mang-wifi-gia-re-mien-phi-lap-dat-166523808522', 'FPT Moderator', 8, 728, '2022-01-08 04:40:05', '2022-10-15 04:35:40'),
(8, 'FPT SHOP LẮP MẠNG WIFI GIÁ RẺ MIỄN PHÍ LẮP ĐẶT', '166580898120221015114301IrMUs4c9IIV9D2fNvv3Mvkp7NBUUiSWEx1fBDLrF.jpg', 'Nhu cầu dùng mạng internet của mọi người hàng ngày luôn tăng trưởng mạnh, đò hỏi đơn vị viễn thông nhà Mạng FPT không ngừng cố gắng liên tục và phát triển đổi mới. Để đáp trả lại sự tin tưởng và yên tâm của người tiêu dùng trong thời gian qua tập đoàn FPT đã đầu tư phát triển hạ tầng phủ khắp 59/63 tỉnh thành tại Việt Nam với hệ thống cửa hàng FPT Shop lắp mạng FPT phủ dầy đặc từ thành thị tới nông thôn.', '<p>Nhu cầu d&ugrave;ng mạng internet của mọi người h&agrave;ng ng&agrave;y lu&ocirc;n tăng trưởng mạnh, đ&ograve; hỏi đơn vị viễn th&ocirc;ng nh&agrave;&nbsp;<strong><a href=\"https://mangfpt.vn/\">Mạng FPT</a></strong>&nbsp;kh&ocirc;ng ngừng cố gắng li&ecirc;n tục v&agrave; ph&aacute;t triển đổi mới. Để đ&aacute;p trả lại sự tin tưởng v&agrave; y&ecirc;n t&acirc;m của người ti&ecirc;u d&ugrave;ng trong thời gian qua tập đo&agrave;n FPT đ&atilde; đầu tư ph&aacute;t triển hạ tầng phủ khắp 59/63 tỉnh th&agrave;nh tại Việt Nam với hệ thống cửa h&agrave;ng&nbsp;<strong>FPT Shop lắp mạng FPT</strong>&nbsp;phủ dầy đặc từ th&agrave;nh thị tới n&ocirc;ng th&ocirc;n.</p>\r\n\r\n<p><img alt=\"\" src=\"/storage/uploads/images/Internet-FPT-goi-cuoc-cap-quang-wifi-sieu-toc.jpg\" style=\"height:100%; width:100%\" /></p>\r\n\r\n<p>Đ&oacute;n đầu xu thế,&nbsp;<a href=\"https://mangfpt.vn/fpt-shop-lap-mang/\"><strong>FPT Shop</strong></a>&nbsp;kh&ocirc;ng ngừng đổi mới, lu&ocirc;n ti&ecirc;n phong mang lại cho kh&aacute;ch h&agrave;ng c&aacute;c giải ph&aacute;p c&ocirc;ng nghệ tối ưu nhất về c&aacute;c dịch vụ Điện thoại di động, M&aacute;y t&iacute;nh bảng, M&aacute;y t&iacute;nh x&aacute;ch tay v&agrave; phụ kiện điện tử, điểm thu hộ tiền cước mạng&hellip; Kh&ocirc;ng chỉ dừng lại ở đ&oacute; hiện nay&nbsp;<em><strong>FPT Shop lắp mạng wifi</strong></em>&nbsp;l&agrave; chuỗi cửa h&agrave;ng b&aacute;n lẻ hỗ trợ tất cả c&aacute;c kh&aacute;ch h&agrave;ng tư vấn đăng k&yacute; lắp mạng FPT, Truyền h&igrave;nh FPT Play, FPT Camera mong muốn nh&agrave; nh&agrave; đều c&oacute; thể sử dụng mạng FPT.&nbsp;</p>\r\n\r\n<p>Nhu cầu d&ugrave;ng mạng internet của mọi người h&agrave;ng ng&agrave;y lu&ocirc;n tăng trưởng mạnh, đ&ograve; hỏi đơn vị viễn th&ocirc;ng nh&agrave;&nbsp;<strong><a href=\"https://mangfpt.vn/\">Mạng FPT</a></strong>&nbsp;kh&ocirc;ng ngừng cố gắng li&ecirc;n tục v&agrave; ph&aacute;t triển đổi mới. Để đ&aacute;p trả lại sự tin tưởng v&agrave; y&ecirc;n t&acirc;m của người ti&ecirc;u d&ugrave;ng trong thời gian qua tập đo&agrave;n FPT đ&atilde; đầu tư ph&aacute;t triển hạ tầng phủ khắp 59/63 tỉnh th&agrave;nh tại Việt Nam với hệ thống cửa h&agrave;ng&nbsp;<strong>FPT Shop lắp mạng FPT</strong>&nbsp;phủ dầy đặc từ th&agrave;nh thị tới n&ocirc;ng th&ocirc;n.</p>\r\n\r\n<p>Đ&oacute;n đầu xu thế,&nbsp;<a href=\"https://mangfpt.vn/fpt-shop-lap-mang/\"><strong>FPT Shop</strong></a>&nbsp;kh&ocirc;ng ngừng đổi mới, lu&ocirc;n ti&ecirc;n phong mang lại cho kh&aacute;ch h&agrave;ng c&aacute;c giải ph&aacute;p c&ocirc;ng nghệ tối ưu nhất về c&aacute;c dịch vụ Điện thoại di động, M&aacute;y t&iacute;nh bảng, M&aacute;y t&iacute;nh x&aacute;ch tay v&agrave; phụ kiện điện tử, điểm thu hộ tiền cước mạng&hellip; Kh&ocirc;ng chỉ dừng lại ở đ&oacute; hiện nay&nbsp;<em><strong>FPT Shop lắp mạng wifi</strong></em>&nbsp;l&agrave; chuỗi cửa h&agrave;ng b&aacute;n lẻ hỗ trợ tất cả c&aacute;c kh&aacute;ch h&agrave;ng tư vấn đăng k&yacute; lắp mạng FPT, Truyền h&igrave;nh FPT Play, FPT Camera mong muốn nh&agrave; nh&agrave; đều c&oacute; thể sử dụng mạng FPT.&nbsp;</p>', 'fpt-shop-lap-mang-wifi-gia-re-mien-phi-lap-dat-1665675808523', 'FPT Moderator', 8, 728, '2022-01-08 04:40:05', '2022-10-15 04:35:40'),
(9, 'FPT SHOP LẮP MẠNG WIFI GIÁ RẺ MIỄN PHÍ LẮP ĐẶT', '166580898120221015114301IrMUs4c9IIV9D2fNvv3Mvkp7NBUUiSWEx1fBDLrF.jpg', 'Nhu cầu dùng mạng internet của mọi người hàng ngày luôn tăng trưởng mạnh, đò hỏi đơn vị viễn thông nhà Mạng FPT không ngừng cố gắng liên tục và phát triển đổi mới. Để đáp trả lại sự tin tưởng và yên tâm của người tiêu dùng trong thời gian qua tập đoàn FPT đã đầu tư phát triển hạ tầng phủ khắp 59/63 tỉnh thành tại Việt Nam với hệ thống cửa hàng FPT Shop lắp mạng FPT phủ dầy đặc từ thành thị tới nông thôn.', '<p>Nhu cầu d&ugrave;ng mạng internet của mọi người h&agrave;ng ng&agrave;y lu&ocirc;n tăng trưởng mạnh, đ&ograve; hỏi đơn vị viễn th&ocirc;ng nh&agrave;&nbsp;<strong><a href=\"https://mangfpt.vn/\">Mạng FPT</a></strong>&nbsp;kh&ocirc;ng ngừng cố gắng li&ecirc;n tục v&agrave; ph&aacute;t triển đổi mới. Để đ&aacute;p trả lại sự tin tưởng v&agrave; y&ecirc;n t&acirc;m của người ti&ecirc;u d&ugrave;ng trong thời gian qua tập đo&agrave;n FPT đ&atilde; đầu tư ph&aacute;t triển hạ tầng phủ khắp 59/63 tỉnh th&agrave;nh tại Việt Nam với hệ thống cửa h&agrave;ng&nbsp;<strong>FPT Shop lắp mạng FPT</strong>&nbsp;phủ dầy đặc từ th&agrave;nh thị tới n&ocirc;ng th&ocirc;n.</p>\r\n\r\n<p><img alt=\"\" src=\"/storage/uploads/images/Internet-FPT-goi-cuoc-cap-quang-wifi-sieu-toc.jpg\" style=\"height:100%; width:100%\" /></p>\r\n\r\n<p>Đ&oacute;n đầu xu thế,&nbsp;<a href=\"https://mangfpt.vn/fpt-shop-lap-mang/\"><strong>FPT Shop</strong></a>&nbsp;kh&ocirc;ng ngừng đổi mới, lu&ocirc;n ti&ecirc;n phong mang lại cho kh&aacute;ch h&agrave;ng c&aacute;c giải ph&aacute;p c&ocirc;ng nghệ tối ưu nhất về c&aacute;c dịch vụ Điện thoại di động, M&aacute;y t&iacute;nh bảng, M&aacute;y t&iacute;nh x&aacute;ch tay v&agrave; phụ kiện điện tử, điểm thu hộ tiền cước mạng&hellip; Kh&ocirc;ng chỉ dừng lại ở đ&oacute; hiện nay&nbsp;<em><strong>FPT Shop lắp mạng wifi</strong></em>&nbsp;l&agrave; chuỗi cửa h&agrave;ng b&aacute;n lẻ hỗ trợ tất cả c&aacute;c kh&aacute;ch h&agrave;ng tư vấn đăng k&yacute; lắp mạng FPT, Truyền h&igrave;nh FPT Play, FPT Camera mong muốn nh&agrave; nh&agrave; đều c&oacute; thể sử dụng mạng FPT.&nbsp;</p>\r\n\r\n<p>Nhu cầu d&ugrave;ng mạng internet của mọi người h&agrave;ng ng&agrave;y lu&ocirc;n tăng trưởng mạnh, đ&ograve; hỏi đơn vị viễn th&ocirc;ng nh&agrave;&nbsp;<strong><a href=\"https://mangfpt.vn/\">Mạng FPT</a></strong>&nbsp;kh&ocirc;ng ngừng cố gắng li&ecirc;n tục v&agrave; ph&aacute;t triển đổi mới. Để đ&aacute;p trả lại sự tin tưởng v&agrave; y&ecirc;n t&acirc;m của người ti&ecirc;u d&ugrave;ng trong thời gian qua tập đo&agrave;n FPT đ&atilde; đầu tư ph&aacute;t triển hạ tầng phủ khắp 59/63 tỉnh th&agrave;nh tại Việt Nam với hệ thống cửa h&agrave;ng&nbsp;<strong>FPT Shop lắp mạng FPT</strong>&nbsp;phủ dầy đặc từ th&agrave;nh thị tới n&ocirc;ng th&ocirc;n.</p>\r\n\r\n<p>Đ&oacute;n đầu xu thế,&nbsp;<a href=\"https://mangfpt.vn/fpt-shop-lap-mang/\"><strong>FPT Shop</strong></a>&nbsp;kh&ocirc;ng ngừng đổi mới, lu&ocirc;n ti&ecirc;n phong mang lại cho kh&aacute;ch h&agrave;ng c&aacute;c giải ph&aacute;p c&ocirc;ng nghệ tối ưu nhất về c&aacute;c dịch vụ Điện thoại di động, M&aacute;y t&iacute;nh bảng, M&aacute;y t&iacute;nh x&aacute;ch tay v&agrave; phụ kiện điện tử, điểm thu hộ tiền cước mạng&hellip; Kh&ocirc;ng chỉ dừng lại ở đ&oacute; hiện nay&nbsp;<em><strong>FPT Shop lắp mạng wifi</strong></em>&nbsp;l&agrave; chuỗi cửa h&agrave;ng b&aacute;n lẻ hỗ trợ tất cả c&aacute;c kh&aacute;ch h&agrave;ng tư vấn đăng k&yacute; lắp mạng FPT, Truyền h&igrave;nh FPT Play, FPT Camera mong muốn nh&agrave; nh&agrave; đều c&oacute; thể sử dụng mạng FPT.&nbsp;</p>', 'fpt-shop-lap-mang-wifi-gia-re-mien-phi-lap-dat-166598808524', 'FPT Moderator', 13, 730, '2022-01-08 04:40:05', '2022-10-16 06:31:59'),
(10, 'FPT SHOP LẮP MẠNG WIFI GIÁ RẺ MIỄN PHÍ LẮP ĐẶT', '166580898120221015114301IrMUs4c9IIV9D2fNvv3Mvkp7NBUUiSWEx1fBDLrF.jpg', 'Nhu cầu dùng mạng internet của mọi người hàng ngày luôn tăng trưởng mạnh, đò hỏi đơn vị viễn thông nhà Mạng FPT không ngừng cố gắng liên tục và phát triển đổi mới. Để đáp trả lại sự tin tưởng và yên tâm của người tiêu dùng trong thời gian qua tập đoàn FPT đã đầu tư phát triển hạ tầng phủ khắp 59/63 tỉnh thành tại Việt Nam với hệ thống cửa hàng FPT Shop lắp mạng FPT phủ dầy đặc từ thành thị tới nông thôn.', '<p>Nhu cầu d&ugrave;ng mạng internet của mọi người h&agrave;ng ng&agrave;y lu&ocirc;n tăng trưởng mạnh, đ&ograve; hỏi đơn vị viễn th&ocirc;ng nh&agrave;&nbsp;<strong><a href=\"https://mangfpt.vn/\">Mạng FPT</a></strong>&nbsp;kh&ocirc;ng ngừng cố gắng li&ecirc;n tục v&agrave; ph&aacute;t triển đổi mới. Để đ&aacute;p trả lại sự tin tưởng v&agrave; y&ecirc;n t&acirc;m của người ti&ecirc;u d&ugrave;ng trong thời gian qua tập đo&agrave;n FPT đ&atilde; đầu tư ph&aacute;t triển hạ tầng phủ khắp 59/63 tỉnh th&agrave;nh tại Việt Nam với hệ thống cửa h&agrave;ng&nbsp;<strong>FPT Shop lắp mạng FPT</strong>&nbsp;phủ dầy đặc từ th&agrave;nh thị tới n&ocirc;ng th&ocirc;n.</p>\r\n\r\n<p><img alt=\"\" src=\"/storage/uploads/images/Internet-FPT-goi-cuoc-cap-quang-wifi-sieu-toc.jpg\" style=\"height:100%; width:100%\" /></p>\r\n\r\n<p>Đ&oacute;n đầu xu thế,&nbsp;<a href=\"https://mangfpt.vn/fpt-shop-lap-mang/\"><strong>FPT Shop</strong></a>&nbsp;kh&ocirc;ng ngừng đổi mới, lu&ocirc;n ti&ecirc;n phong mang lại cho kh&aacute;ch h&agrave;ng c&aacute;c giải ph&aacute;p c&ocirc;ng nghệ tối ưu nhất về c&aacute;c dịch vụ Điện thoại di động, M&aacute;y t&iacute;nh bảng, M&aacute;y t&iacute;nh x&aacute;ch tay v&agrave; phụ kiện điện tử, điểm thu hộ tiền cước mạng&hellip; Kh&ocirc;ng chỉ dừng lại ở đ&oacute; hiện nay&nbsp;<em><strong>FPT Shop lắp mạng wifi</strong></em>&nbsp;l&agrave; chuỗi cửa h&agrave;ng b&aacute;n lẻ hỗ trợ tất cả c&aacute;c kh&aacute;ch h&agrave;ng tư vấn đăng k&yacute; lắp mạng FPT, Truyền h&igrave;nh FPT Play, FPT Camera mong muốn nh&agrave; nh&agrave; đều c&oacute; thể sử dụng mạng FPT.&nbsp;</p>\r\n\r\n<p>Nhu cầu d&ugrave;ng mạng internet của mọi người h&agrave;ng ng&agrave;y lu&ocirc;n tăng trưởng mạnh, đ&ograve; hỏi đơn vị viễn th&ocirc;ng nh&agrave;&nbsp;<strong><a href=\"https://mangfpt.vn/\">Mạng FPT</a></strong>&nbsp;kh&ocirc;ng ngừng cố gắng li&ecirc;n tục v&agrave; ph&aacute;t triển đổi mới. Để đ&aacute;p trả lại sự tin tưởng v&agrave; y&ecirc;n t&acirc;m của người ti&ecirc;u d&ugrave;ng trong thời gian qua tập đo&agrave;n FPT đ&atilde; đầu tư ph&aacute;t triển hạ tầng phủ khắp 59/63 tỉnh th&agrave;nh tại Việt Nam với hệ thống cửa h&agrave;ng&nbsp;<strong>FPT Shop lắp mạng FPT</strong>&nbsp;phủ dầy đặc từ th&agrave;nh thị tới n&ocirc;ng th&ocirc;n.</p>\r\n\r\n<p>Đ&oacute;n đầu xu thế,&nbsp;<a href=\"https://mangfpt.vn/fpt-shop-lap-mang/\"><strong>FPT Shop</strong></a>&nbsp;kh&ocirc;ng ngừng đổi mới, lu&ocirc;n ti&ecirc;n phong mang lại cho kh&aacute;ch h&agrave;ng c&aacute;c giải ph&aacute;p c&ocirc;ng nghệ tối ưu nhất về c&aacute;c dịch vụ Điện thoại di động, M&aacute;y t&iacute;nh bảng, M&aacute;y t&iacute;nh x&aacute;ch tay v&agrave; phụ kiện điện tử, điểm thu hộ tiền cước mạng&hellip; Kh&ocirc;ng chỉ dừng lại ở đ&oacute; hiện nay&nbsp;<em><strong>FPT Shop lắp mạng wifi</strong></em>&nbsp;l&agrave; chuỗi cửa h&agrave;ng b&aacute;n lẻ hỗ trợ tất cả c&aacute;c kh&aacute;ch h&agrave;ng tư vấn đăng k&yacute; lắp mạng FPT, Truyền h&igrave;nh FPT Play, FPT Camera mong muốn nh&agrave; nh&agrave; đều c&oacute; thể sử dụng mạng FPT.&nbsp;</p>', 'fpt-shop-lap-mang-wifi-gia-re-mien-phi-lap-dat-166565808525', 'FPT Moderator', 13, 728, '2022-01-08 04:40:05', '2022-10-15 04:35:40'),
(11, 'FPT SHOP LẮP MẠNG WIFI GIÁ RẺ MIỄN PHÍ LẮP ĐẶT', '166580898120221015114301IrMUs4c9IIV9D2fNvv3Mvkp7NBUUiSWEx1fBDLrF.jpg', 'Nhu cầu dùng mạng internet của mọi người hàng ngày luôn tăng trưởng mạnh, đò hỏi đơn vị viễn thông nhà Mạng FPT không ngừng cố gắng liên tục và phát triển đổi mới. Để đáp trả lại sự tin tưởng và yên tâm của người tiêu dùng trong thời gian qua tập đoàn FPT đã đầu tư phát triển hạ tầng phủ khắp 59/63 tỉnh thành tại Việt Nam với hệ thống cửa hàng FPT Shop lắp mạng FPT phủ dầy đặc từ thành thị tới nông thôn.', '<p>Nhu cầu d&ugrave;ng mạng internet của mọi người h&agrave;ng ng&agrave;y lu&ocirc;n tăng trưởng mạnh, đ&ograve; hỏi đơn vị viễn th&ocirc;ng nh&agrave;&nbsp;<strong><a href=\"https://mangfpt.vn/\">Mạng FPT</a></strong>&nbsp;kh&ocirc;ng ngừng cố gắng li&ecirc;n tục v&agrave; ph&aacute;t triển đổi mới. Để đ&aacute;p trả lại sự tin tưởng v&agrave; y&ecirc;n t&acirc;m của người ti&ecirc;u d&ugrave;ng trong thời gian qua tập đo&agrave;n FPT đ&atilde; đầu tư ph&aacute;t triển hạ tầng phủ khắp 59/63 tỉnh th&agrave;nh tại Việt Nam với hệ thống cửa h&agrave;ng&nbsp;<strong>FPT Shop lắp mạng FPT</strong>&nbsp;phủ dầy đặc từ th&agrave;nh thị tới n&ocirc;ng th&ocirc;n.</p>\r\n\r\n<p><img alt=\"\" src=\"/storage/uploads/images/Internet-FPT-goi-cuoc-cap-quang-wifi-sieu-toc.jpg\" style=\"height:100%; width:100%\" /></p>\r\n\r\n<p>Đ&oacute;n đầu xu thế,&nbsp;<a href=\"https://mangfpt.vn/fpt-shop-lap-mang/\"><strong>FPT Shop</strong></a>&nbsp;kh&ocirc;ng ngừng đổi mới, lu&ocirc;n ti&ecirc;n phong mang lại cho kh&aacute;ch h&agrave;ng c&aacute;c giải ph&aacute;p c&ocirc;ng nghệ tối ưu nhất về c&aacute;c dịch vụ Điện thoại di động, M&aacute;y t&iacute;nh bảng, M&aacute;y t&iacute;nh x&aacute;ch tay v&agrave; phụ kiện điện tử, điểm thu hộ tiền cước mạng&hellip; Kh&ocirc;ng chỉ dừng lại ở đ&oacute; hiện nay&nbsp;<em><strong>FPT Shop lắp mạng wifi</strong></em>&nbsp;l&agrave; chuỗi cửa h&agrave;ng b&aacute;n lẻ hỗ trợ tất cả c&aacute;c kh&aacute;ch h&agrave;ng tư vấn đăng k&yacute; lắp mạng FPT, Truyền h&igrave;nh FPT Play, FPT Camera mong muốn nh&agrave; nh&agrave; đều c&oacute; thể sử dụng mạng FPT.&nbsp;</p>\r\n\r\n<p>Nhu cầu d&ugrave;ng mạng internet của mọi người h&agrave;ng ng&agrave;y lu&ocirc;n tăng trưởng mạnh, đ&ograve; hỏi đơn vị viễn th&ocirc;ng nh&agrave;&nbsp;<strong><a href=\"https://mangfpt.vn/\">Mạng FPT</a></strong>&nbsp;kh&ocirc;ng ngừng cố gắng li&ecirc;n tục v&agrave; ph&aacute;t triển đổi mới. Để đ&aacute;p trả lại sự tin tưởng v&agrave; y&ecirc;n t&acirc;m của người ti&ecirc;u d&ugrave;ng trong thời gian qua tập đo&agrave;n FPT đ&atilde; đầu tư ph&aacute;t triển hạ tầng phủ khắp 59/63 tỉnh th&agrave;nh tại Việt Nam với hệ thống cửa h&agrave;ng&nbsp;<strong>FPT Shop lắp mạng FPT</strong>&nbsp;phủ dầy đặc từ th&agrave;nh thị tới n&ocirc;ng th&ocirc;n.</p>\r\n\r\n<p>Đ&oacute;n đầu xu thế,&nbsp;<a href=\"https://mangfpt.vn/fpt-shop-lap-mang/\"><strong>FPT Shop</strong></a>&nbsp;kh&ocirc;ng ngừng đổi mới, lu&ocirc;n ti&ecirc;n phong mang lại cho kh&aacute;ch h&agrave;ng c&aacute;c giải ph&aacute;p c&ocirc;ng nghệ tối ưu nhất về c&aacute;c dịch vụ Điện thoại di động, M&aacute;y t&iacute;nh bảng, M&aacute;y t&iacute;nh x&aacute;ch tay v&agrave; phụ kiện điện tử, điểm thu hộ tiền cước mạng&hellip; Kh&ocirc;ng chỉ dừng lại ở đ&oacute; hiện nay&nbsp;<em><strong>FPT Shop lắp mạng wifi</strong></em>&nbsp;l&agrave; chuỗi cửa h&agrave;ng b&aacute;n lẻ hỗ trợ tất cả c&aacute;c kh&aacute;ch h&agrave;ng tư vấn đăng k&yacute; lắp mạng FPT, Truyền h&igrave;nh FPT Play, FPT Camera mong muốn nh&agrave; nh&agrave; đều c&oacute; thể sử dụng mạng FPT.&nbsp;</p>', 'fpt-shop-lap-mang-wifi-gia-re-mien-phi-lap-dat-1065808527', 'FPT Moderator', 13, 728, '2022-01-08 04:40:05', '2022-10-15 04:35:40');
INSERT INTO `posts` (`id`, `title`, `thumbnail`, `description`, `content`, `slug`, `author`, `category_id`, `view_count`, `created_at`, `updated_at`) VALUES
(12, 'FPT SHOP LẮP MẠNG WIFI GIÁ RẺ MIỄN PHÍ LẮP ĐẶT', '166580898120221015114301IrMUs4c9IIV9D2fNvv3Mvkp7NBUUiSWEx1fBDLrF.jpg', 'Nhu cầu dùng mạng internet của mọi người hàng ngày luôn tăng trưởng mạnh, đò hỏi đơn vị viễn thông nhà Mạng FPT không ngừng cố gắng liên tục và phát triển đổi mới. Để đáp trả lại sự tin tưởng và yên tâm của người tiêu dùng trong thời gian qua tập đoàn FPT đã đầu tư phát triển hạ tầng phủ khắp 59/63 tỉnh thành tại Việt Nam với hệ thống cửa hàng FPT Shop lắp mạng FPT phủ dầy đặc từ thành thị tới nông thôn.', '<p>Nhu cầu d&ugrave;ng mạng internet của mọi người h&agrave;ng ng&agrave;y lu&ocirc;n tăng trưởng mạnh, đ&ograve; hỏi đơn vị viễn th&ocirc;ng nh&agrave;&nbsp;<strong><a href=\"https://mangfpt.vn/\">Mạng FPT</a></strong>&nbsp;kh&ocirc;ng ngừng cố gắng li&ecirc;n tục v&agrave; ph&aacute;t triển đổi mới. Để đ&aacute;p trả lại sự tin tưởng v&agrave; y&ecirc;n t&acirc;m của người ti&ecirc;u d&ugrave;ng trong thời gian qua tập đo&agrave;n FPT đ&atilde; đầu tư ph&aacute;t triển hạ tầng phủ khắp 59/63 tỉnh th&agrave;nh tại Việt Nam với hệ thống cửa h&agrave;ng&nbsp;<strong>FPT Shop lắp mạng FPT</strong>&nbsp;phủ dầy đặc từ th&agrave;nh thị tới n&ocirc;ng th&ocirc;n.</p>\r\n\r\n<p><img alt=\"\" src=\"/storage/uploads/images/Internet-FPT-goi-cuoc-cap-quang-wifi-sieu-toc.jpg\" style=\"height:100%; width:100%\" /></p>\r\n\r\n<p>Đ&oacute;n đầu xu thế,&nbsp;<a href=\"https://mangfpt.vn/fpt-shop-lap-mang/\"><strong>FPT Shop</strong></a>&nbsp;kh&ocirc;ng ngừng đổi mới, lu&ocirc;n ti&ecirc;n phong mang lại cho kh&aacute;ch h&agrave;ng c&aacute;c giải ph&aacute;p c&ocirc;ng nghệ tối ưu nhất về c&aacute;c dịch vụ Điện thoại di động, M&aacute;y t&iacute;nh bảng, M&aacute;y t&iacute;nh x&aacute;ch tay v&agrave; phụ kiện điện tử, điểm thu hộ tiền cước mạng&hellip; Kh&ocirc;ng chỉ dừng lại ở đ&oacute; hiện nay&nbsp;<em><strong>FPT Shop lắp mạng wifi</strong></em>&nbsp;l&agrave; chuỗi cửa h&agrave;ng b&aacute;n lẻ hỗ trợ tất cả c&aacute;c kh&aacute;ch h&agrave;ng tư vấn đăng k&yacute; lắp mạng FPT, Truyền h&igrave;nh FPT Play, FPT Camera mong muốn nh&agrave; nh&agrave; đều c&oacute; thể sử dụng mạng FPT.&nbsp;</p>\r\n\r\n<p>Nhu cầu d&ugrave;ng mạng internet của mọi người h&agrave;ng ng&agrave;y lu&ocirc;n tăng trưởng mạnh, đ&ograve; hỏi đơn vị viễn th&ocirc;ng nh&agrave;&nbsp;<strong><a href=\"https://mangfpt.vn/\">Mạng FPT</a></strong>&nbsp;kh&ocirc;ng ngừng cố gắng li&ecirc;n tục v&agrave; ph&aacute;t triển đổi mới. Để đ&aacute;p trả lại sự tin tưởng v&agrave; y&ecirc;n t&acirc;m của người ti&ecirc;u d&ugrave;ng trong thời gian qua tập đo&agrave;n FPT đ&atilde; đầu tư ph&aacute;t triển hạ tầng phủ khắp 59/63 tỉnh th&agrave;nh tại Việt Nam với hệ thống cửa h&agrave;ng&nbsp;<strong>FPT Shop lắp mạng FPT</strong>&nbsp;phủ dầy đặc từ th&agrave;nh thị tới n&ocirc;ng th&ocirc;n.</p>\r\n\r\n<p>Đ&oacute;n đầu xu thế,&nbsp;<a href=\"https://mangfpt.vn/fpt-shop-lap-mang/\"><strong>FPT Shop</strong></a>&nbsp;kh&ocirc;ng ngừng đổi mới, lu&ocirc;n ti&ecirc;n phong mang lại cho kh&aacute;ch h&agrave;ng c&aacute;c giải ph&aacute;p c&ocirc;ng nghệ tối ưu nhất về c&aacute;c dịch vụ Điện thoại di động, M&aacute;y t&iacute;nh bảng, M&aacute;y t&iacute;nh x&aacute;ch tay v&agrave; phụ kiện điện tử, điểm thu hộ tiền cước mạng&hellip; Kh&ocirc;ng chỉ dừng lại ở đ&oacute; hiện nay&nbsp;<em><strong>FPT Shop lắp mạng wifi</strong></em>&nbsp;l&agrave; chuỗi cửa h&agrave;ng b&aacute;n lẻ hỗ trợ tất cả c&aacute;c kh&aacute;ch h&agrave;ng tư vấn đăng k&yacute; lắp mạng FPT, Truyền h&igrave;nh FPT Play, FPT Camera mong muốn nh&agrave; nh&agrave; đều c&oacute; thể sử dụng mạng FPT.&nbsp;</p>', 'fpt-shop-lap-mang-wifi-gia-re-mien-phi-lap-dat-1665808521', 'FPT Moderator', 13, 729, '2022-01-08 04:40:05', '2022-10-15 04:43:12');

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `post_tags`
--

INSERT INTO `post_tags` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(8, 15, 7, '2019-12-30 03:18:03', '2019-12-30 03:18:03'),
(9, 17, 7, '2019-12-30 04:19:17', '2019-12-30 04:19:17'),
(11, 20, 7, '2020-01-21 03:31:10', '2020-01-21 03:31:10'),
(18, 47, 1, '2021-01-30 03:02:46', '2021-01-30 03:02:46'),
(19, 47, 7, '2021-01-30 03:02:46', '2021-01-30 03:02:46'),
(22, 50, 9, '2021-02-08 08:12:32', '2021-02-08 08:12:32'),
(23, 50, 10, '2021-02-08 08:12:32', '2021-02-08 08:12:32'),
(29, 53, 7, '2021-04-15 07:28:40', '2021-04-15 07:28:40'),
(30, 52, 7, '2021-04-16 01:32:12', '2021-04-16 01:32:12'),
(31, 54, 7, '2021-04-26 08:24:07', '2021-04-26 08:24:07'),
(33, 56, 7, '2021-07-19 09:28:43', '2021-07-19 09:28:43'),
(34, 57, 7, '2021-07-28 09:27:34', '2021-07-28 09:27:34'),
(35, 58, 7, '2021-09-14 04:12:47', '2021-09-14 04:12:47'),
(36, 61, 11, '2022-01-11 04:20:12', '2022-01-11 04:20:12'),
(37, 4, 2, '2022-10-16 05:30:37', '2022-10-16 05:30:37'),
(38, 4, 6, '2022-10-16 05:30:37', '2022-10-16 05:30:37');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_order` int(11) NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sponsor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createby` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `name`, `image`, `display_order`, `link`, `description`, `sponsor`, `createby`, `status`, `created_at`, `updated_at`) VALUES
(12, 'BANNER 01', '166588860720221016095007jxjufTgn7ODrzIszEO4eN4HNacKKvKlMf1jK1Nc8.jpg', 1, 'https://mangfpt.vn/lap-truyen-hinh-fpt/', 'Banner giới thiệu', 'LẮP TRUYỀN HÌNH FPT KHUYẾN MÃI THÁNG 10/2022', 'Hung Lee', 1, '2020-01-28 12:12:19', '2022-10-16 02:50:07'),
(13, 'Banner 02', '166588856120221016094921UGeHO3wd0aLd0Ar8EqtPt14lXuONXIuYGbHaqSlU.jpg', 3, 'https://mangfpt.vn/lap-truyen-hinh-fpt/', 'Banner pr', 'Khuyến mãi đăng ký dịch vụ Truyền Hình FPT Play Untral 4k', 'Hung Lee', 1, '2020-01-29 00:54:56', '2022-10-16 02:49:21');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Tư vấn lắp đặt', 'tu-van-lap-dat', '2019-06-23 01:29:36', '2022-10-15 04:31:09'),
(2, 'Khuyến mãi ngập tràn', 'khuyen-mai-ngap-tran', '2019-08-17 10:48:15', '2022-10-15 04:31:23'),
(3, 'Mạng tốc độ cao', 'mang-toc-do-cao', '2019-08-17 10:48:26', '2022-10-15 04:31:39'),
(4, 'Truyền hình cáp', 'truyen-hinh-cap', '2019-08-17 10:48:34', '2022-10-15 04:32:06'),
(5, 'FPT Shop', 'fpt-shop', '2019-08-17 10:48:54', '2022-10-15 04:32:20'),
(6, 'Tin tức', 'tin-tuc', '2019-08-17 10:49:11', '2020-11-13 04:15:06'),
(7, 'FPT Camera', 'fpt-camera', '2019-12-30 02:54:30', '2022-10-15 04:32:40'),
(9, 'Giá cước Internet', 'gia-cuoc-internet', '2021-02-08 07:52:40', '2022-10-15 04:33:03'),
(10, 'Modem Wifi', 'modem-wifi', '2021-02-08 07:54:48', '2022-10-15 04:33:16'),
(11, 'Combo Internet', 'combo-internet', '2022-01-11 04:12:37', '2022-10-15 04:33:31');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `service_package` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_method` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone_number`, `address`, `status`, `service_package`, `payment_method`, `created_at`, `updated_at`) VALUES
(2, 'Trần Thị Hằng', '0385540516', 'Tây Mỗ Nam Từ Liêm Hà Nội', 1, 'Combo Internet và truyền hình', 'Ký hợp đồng và trực tiếp thanh toán', '2020-03-12 19:17:30', '2020-03-12 19:31:53'),
(3, 'Chiến Phạm', '0962972807', 'Tầng 5-6 Keangnam Hanoi Landmark Tower, Phạm Hùng, Cầu Giấy', 1, 'Combo Internet và truyền hình', 'Ký hợp đồng và trực tiếp thanh toán', '2020-03-13 00:35:18', '2020-03-13 00:35:18'),
(4, 'Hoàng Nguyễn Minh Anh', '0978478178', 'Mộ Lao', 1, 'Combo Internet và truyền hình', 'Ký hợp đồng và trực tiếp thanh toán', '2020-04-28 09:55:53', '2022-09-06 09:56:02'),
(5, 'Võ Ngọc Thanh', '0969114334', '11. tân Tiến f8 quận tân bình tphcm', 1, 'Combo Internet và truyền hình', 'Ký hợp đồng và trực tiếp thanh toán', '2020-05-04 21:03:15', '2020-05-04 21:03:15'),
(6, 'Hứa Minh Quyên', '0983445500', 'Số nhà 43- tổ 11- phường Sông Hiến- tp. Cao Bằng- tỉnh Cao Bằng', 1, 'Combo Internet và truyền hình', 'Ký hợp đồng và trực tiếp thanh toán', '2020-08-23 23:06:25', '2020-08-23 23:06:25'),
(7, 'Diễm Trần', '0962002755', 'Lotte - Liễu Giai - Ba Đình - Hà Nội', 1, 'Combo Internet và truyền hình', 'Ký hợp đồng và trực tiếp thanh toán', '2020-09-03 19:14:00', '2021-08-04 08:44:08'),
(8, 'Nguyễn thanh tuấn', '0976141906', 'đơn sa, phường Quảng Phúc, thị xã Ba Đồn, Quảng Bình', 1, 'Combo Internet và truyền hình', 'Ký hợp đồng và trực tiếp thanh toán', '2021-01-25 01:30:26', '2021-01-25 01:30:26'),
(9, 'Nguyễn Thi Duyên', '0977588698', 'thôn Đông Khê xã Nguyên Xá huyện Đông Hưng tỉnh Thái Bình', 1, 'Combo Internet và truyền hình', 'Ký hợp đồng và trực tiếp thanh toán', '2021-02-02 19:54:33', '2021-02-27 23:30:26'),
(11, 'Vũ Đình Nam', '0982091634', 'Kon Sơ Lăng - Hà Tây - Chư Păh - Gia Lai', 1, 'Combo Internet và truyền hình', 'Ký hợp đồng và trực tiếp thanh toán', '2021-02-07 02:50:08', '2021-02-07 02:50:08'),
(15, 'Đặng việt', '0338401256', 'Xóm 2 mỹ hưng mỹ lộc nam định', 1, 'Combo Internet và truyền hình', 'Ký hợp đồng và trực tiếp thanh toán', '2021-03-08 06:06:19', '2021-03-08 06:06:19'),
(18, 'Hải', '0987656904', '11 thái hà', 1, 'Combo Internet và truyền hình', 'Ký hợp đồng và trực tiếp thanh toán', '2021-03-08 20:23:24', '2021-03-08 20:48:07'),
(20, 'Chị Hoa', '0917760819', '114 nguyễn văn cừ long biên hà nội', 1, 'Combo Internet và truyền hình', 'Ký hợp đồng và trực tiếp thanh toán', '2021-03-10 02:31:14', '2021-03-10 02:31:14'),
(21, 'Chu Xuân Hải', '0914791878', 'nhật tân tây hồ', 1, 'Combo Internet và truyền hình', 'Ký hợp đồng và trực tiếp thanh toán', '2021-03-11 20:33:40', '2021-03-11 21:04:26'),
(22, 'Em Vân', '0936080903', 'hà nội', 1, 'Combo Internet và truyền hình', 'Ký hợp đồng và trực tiếp thanh toán', '2021-03-12 19:46:07', '2021-03-12 19:47:11'),
(23, 'Nguyễn Chỉnh', '0375993116', 'khu phố phú hiệp 2 hoa hiệp trung đông hoa phú yên', 1, 'Combo Internet và truyền hình', 'Ký hợp đồng và trực tiếp thanh toán', '2021-03-16 19:20:20', '2021-11-07 20:28:42'),
(24, 'Trang', '0375413250', 'Hà Nội', 1, 'Combo Internet và truyền hình', 'Ký hợp đồng và trực tiếp thanh toán', '2021-03-17 20:48:13', '2021-03-18 00:11:21'),
(25, 'Nguyễn Thị hiền', '0985454883', 'Hà Nội', 1, 'Combo Internet và truyền hình', 'Ký hợp đồng và trực tiếp thanh toán', '2021-03-22 20:56:32', '2021-03-22 20:58:31'),
(26, 'Loan', '0948381691', '58b ngõ 406  u Cơ tây Hồ', 1, 'Combo Internet và truyền hình', 'Ký hợp đồng và trực tiếp thanh toán', '2021-03-22 21:27:08', '2021-03-22 21:30:06'),
(27, 'Mrs.Hương', '0366543637', 'khu CN Bá Thiện 2 -Thiện Kế-Bình Xuyên-Vĩnh Phúc', 1, 'Combo Internet và truyền hình', 'Ký hợp đồng và trực tiếp thanh toán', '2021-03-31 03:07:40', '2021-04-02 00:03:14'),
(28, 'Minh', '0989903773', 'Đến lấy tại quầy', 1, 'Combo Internet và truyền hình', 'Ký hợp đồng và trực tiếp thanh toán', '2021-04-04 23:57:28', '2021-04-04 23:58:29'),
(29, 'Nguyễn thị Thu Huyền', '0944866162', '39 vạn ứng ngõ chợ khâm thiên phường trung phụng đống đa hà nội', 1, 'Combo Internet và truyền hình', 'Ký hợp đồng và trực tiếp thanh toán', '2021-04-08 21:38:47', '2021-04-08 21:40:07'),
(30, 'Hường', '0942497800', 'Khu sân vận động - phố cháy - thị trấn lâm - ý yên - nam định', 1, 'Combo Internet và truyền hình', 'Ký hợp đồng và trực tiếp thanh toán', '2021-04-09 18:20:48', '2021-04-14 21:50:02'),
(31, 'Nguyễn Huyền', '0984016297', 'Xóm 16, xã hưng nghĩa, huyện hưng nguyên, tĩnh nghệ an', 1, 'Combo Internet và truyền hình', 'Ký hợp đồng và trực tiếp thanh toán', '2021-04-19 21:37:47', '2021-11-07 20:28:49'),
(32, 'Nguyễn thị hồng trang', '0374837080', '56a, đường 59, ấp láng cát,  xã tân phú trung củ chi TPHCM', 1, 'Combo Internet và truyền hình', 'Ký hợp đồng và trực tiếp thanh toán', '2021-07-19 05:02:30', '2021-07-19 05:02:30'),
(33, 'Lê Văn Mạnh', '0336634577', 'Đối diện nhà xe Quang Bính, thôn Trung Đồng, xã Nam Trung, tiền hải, Thái Bình', 1, 'Combo Internet và truyền hình', 'Ký hợp đồng và trực tiếp thanh toán', '2021-11-07 02:23:27', '2021-11-07 02:23:27'),
(34, 'Trịnh quỳnh anh', '0962109119', '8/89 vọng hà, chương dương, hoàn kiếm, hà nội', 1, 'Combo Internet và truyền hình', 'Ký hợp đồng và trực tiếp thanh toán', '2022-02-19 07:35:44', '2022-02-19 07:35:44'),
(35, 'Nguyễn Thuý Trinh', '0389241998', 'Cty TNHH Youngone Nam Định- KCN Hoà Xá- P. Mỹ Xá- TP Nam Định- Nam Định', 1, 'Combo Internet và truyền hình', 'Ký hợp đồng và trực tiếp thanh toán', '2022-05-12 08:43:55', '2022-08-01 21:12:13'),
(36, 'Phan ngọc giàu', '0813233344', 'Ap công sự.  Xa an minh bắc.  U minh thuong. Kien giang', 1, 'Combo Internet và truyền hình', 'Ký hợp đồng và trực tiếp thanh toán', '2022-05-28 06:05:07', '2022-05-28 06:05:07'),
(37, 'Nguyễn Thị Hằng', '0971008324', 'Xóm 1 - Chợ Lạc sơn- Xã Lạc Sơn - Huyện Đô Lương - Tỉnh Nghệ An', 0, 'Combo Internet và truyền hình', 'Ký hợp đồng và trực tiếp thanh toán', '2022-06-20 23:47:41', '2022-10-17 19:23:54'),
(46, 'ACD', '0356668888', 'HN', 0, 'FPT Play box', 'Ký hợp đồng và trực tiếp thanh toán', '2022-10-15 23:31:21', '2022-10-17 18:32:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `introductions`
--
ALTER TABLE `introductions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `introductions`
--
ALTER TABLE `introductions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;




