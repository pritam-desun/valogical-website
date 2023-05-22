-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 22, 2023 at 03:10 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `valogical_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `created_by` varchar(155) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `title`, `description`, `created_at`, `updated_at`, `created_by`) VALUES
(1, 'We provide best design solution in town\r\n', 'Lorem ipsum dolor sit amet, consectetur notted adipisicing elit sed do eiusmod tempor incididunt ut labore et simply free text dolore magna aliqua lonm andhn.', '2023-05-17 17:03:05', '0000-00-00 00:00:00', '2023-05-17 13:30:42');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `banner_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `btn_1_text` varchar(100) NOT NULL,
  `btn_1_url` text DEFAULT NULL,
  `btn_2_text` varchar(100) NOT NULL,
  `btn_2_url` text DEFAULT NULL,
  `create_at` datetime NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`banner_id`, `title`, `image`, `btn_1_text`, `btn_1_url`, `btn_2_text`, `btn_2_url`, `create_at`, `update_at`) VALUES
(5, 'Secure Solutions for a more <br>secure environment', 'upload/3.jpg', 'Explore now1', 'https://www.desuntechnology.in/ ', 'Contact now1', 'https://www.desuntechnology.in/', '2023-05-08 11:25:36', '2023-05-15 08:01:21'),
(6, 'Secure Solutions for a more <br>secure environment', 'upload/4.jpg', 'Explore now2', 'https://www.desuntechnology.in/ ', 'Contact now2', 'https://www.desuntechnology.in/', '2023-05-12 15:47:39', '2023-05-15 08:01:17');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `blog_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `slug` text NOT NULL,
  `author` int(11) NOT NULL,
  `feature_img` varchar(255) DEFAULT NULL,
  `short_desc` longtext DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `blog_meta` longtext DEFAULT NULL,
  `published_on` datetime NOT NULL DEFAULT current_timestamp(),
  `published_status` enum('Published','Draft') NOT NULL DEFAULT 'Draft'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`blog_id`, `title`, `slug`, `author`, `feature_img`, `short_desc`, `content`, `blog_meta`, `published_on`, `published_status`) VALUES
(9, 'image of abstract sky background at sunrise.Trying and searching and wanting', 'image-of-abstract-sky-background-at-sunrise-trying-and-searching-and-wanting', 1, 'upload/M4L-Image-birds-600x400.jpeg', '', '', 'sadasdsads', '2023-05-08 12:22:32', 'Published'),
(12, 'A Lesson in Reading the “Commands” of Scripture', 'hghgv-hgfhg-gffvhgcf', 2, 'upload/images.jpg', '', '', NULL, '2023-05-09 12:58:54', 'Draft'),
(13, 'Bible Verses to Ground Your Day in Gratitude', '', 1, 'upload/photo-1575936123452-b67c3203c357.jpg', '', '', NULL, '2023-05-10 14:44:40', 'Published');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `craete_at` datetime NOT NULL DEFAULT current_timestamp(),
  `update_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contact_id`, `name`, `email`, `subject`, `phone`, `message`, `craete_at`, `update_at`) VALUES
(5, 'Shoaib', 'shoaib.desuntech@gmail.com', 'Maths', '7044747678', 'I love maths numerica;\r\ns', '2023-05-08 11:14:04', '2023-05-08 11:14:04'),
(6, 'pallabi', 'pallabi.desuntech@gmail.com', 'fhnjgc', '0', '', '2023-05-16 13:18:08', '2023-05-16 13:18:08'),
(7, 'ytsds', 'pallabi.desuntech@gmail.com', 'fhnjgc', '0', '', '2023-05-16 13:21:38', '2023-05-16 13:21:38'),
(12, 'dav', 'dipa00@gmail.com', 'fg', '4756865700', '', '2023-05-17 11:00:07', '2023-05-17 11:00:07'),
(13, 'dav', 'dipa00@gmail.com', 'fg', '4756865700', '', '2023-05-17 11:00:25', '2023-05-17 11:00:25'),
(14, 'test', 'admin45@gmail.com', 'dfd', '7250634942', 'gfdgfdg', '2023-05-17 15:04:49', '2023-05-17 15:04:49'),
(15, 'test', 'admin45@gmail.com', 'dfd', '7250634942', 'gfdgfdg', '2023-05-17 15:06:56', '2023-05-17 15:06:56'),
(16, 'test', 'admin45@gmail.com', 'dfd', '7250634942', 'gfdgfdg', '2023-05-17 15:07:02', '2023-05-17 15:07:02'),
(17, 'test', 'admin45@gmail.com', 'dfd', '7250634942', 'gfdgfdg', '2023-05-17 15:08:14', '2023-05-17 15:08:14'),
(18, 'test', 'admin45@gmail.com', 'dfd', '7250634942', 'gfdgfdg', '2023-05-17 15:09:50', '2023-05-17 15:09:50'),
(19, 'dsfdsf', 'rohit.desuntechnology@gmail.com', 'dfd', '7250634942', 'dsfdsf', '2023-05-17 15:10:02', '2023-05-17 15:10:02'),
(20, 'test', 'admin45@gmail.com', 'dfd', '7250634942', 'dfdsf', '2023-05-17 15:12:19', '2023-05-17 15:12:19'),
(21, 'test', 'rohit.desuntechnology@gmail.com', 'dfd', '7250634942', 'test', '2023-05-17 15:13:01', '2023-05-17 15:13:01'),
(22, 'test', 'rohit.desuntechnology@gmail.com', 'dfd', '7250634942', 'test', '2023-05-17 15:13:32', '2023-05-17 15:13:32'),
(23, 'dsfdsf', 'admin45@gmail.com', 'dfd', '7250634942', 'dsfdsf', '2023-05-17 15:42:26', '2023-05-17 15:42:26'),
(24, 'dsfdsf', 'admin45@gmail.com', 'dfd', '7250634942', 'dsfdsf', '2023-05-17 15:45:02', '2023-05-17 15:45:02'),
(25, 'test', 'admin45@gmail.com', 'dfd', '7250634942', 'test', '2023-05-17 15:45:44', '2023-05-17 15:45:44'),
(26, 'test', 'admin45@gmail.com', 'dfd', '7250634942', 'gfdgfdg', '2023-05-17 15:47:54', '2023-05-17 15:47:54'),
(27, 'test', 'admin45@gmail.com', 'dfd', '7250634942', 'dsfdsf', '2023-05-17 15:48:34', '2023-05-17 15:48:34'),
(28, 'dsfdsf', 'admin45@gmail.com', 'dfd', '7250634942', 'dfdf', '2023-05-17 15:48:51', '2023-05-17 15:48:51'),
(29, 'dsfdsf', 'admin45@gmail.com', 'dfd', '7250634942', 'fdfdsfdsf', '2023-05-17 15:50:02', '2023-05-17 15:50:02'),
(30, 'test', 'admin45@gmail.com', 'dfd', '7250634942', 'dsfdf', '2023-05-18 11:01:15', '2023-05-18 11:01:15'),
(31, 'Arun', 'shoaib@gmail.com', 'History ', '9874563245', '', '2023-05-18 11:39:50', '2023-05-18 11:39:50');

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `faq_id` int(10) NOT NULL,
  `question` varchar(500) NOT NULL,
  `answer` longtext NOT NULL,
  `create_at` datetime NOT NULL DEFAULT current_timestamp(),
  `update_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`faq_id`, `question`, `answer`, `create_at`, `update_at`) VALUES
(2, 'what\'s your name?', 'Pallabi', '2023-05-09 16:59:38', '2023-05-09 16:59:38'),
(6, 'How are you?', 'asdsadasds', '2023-05-08 11:15:19', '2023-05-08 11:15:19');

-- --------------------------------------------------------

--
-- Table structure for table `master`
--

CREATE TABLE `master` (
  `master_id` int(11) NOT NULL,
  `country` varchar(255) NOT NULL,
  `currency_code` varchar(50) NOT NULL,
  `currency_symbol` varchar(50) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `master`
--

INSERT INTO `master` (`master_id`, `country`, `currency_code`, `currency_symbol`, `create_at`, `update_at`) VALUES
(1, 'United States of America', 'USD', '$', '2023-05-09 08:03:25', '2023-05-19 18:52:20'),
(10, 'United Kingdom', 'UK', '£', '2023-05-19 07:25:34', '2023-05-19 12:55:34'),
(11, 'Singapore', 'SGD', 'S$', '2023-05-19 07:27:05', '2023-05-19 12:57:05'),
(12, 'United Arab Emirates', 'UAE', 'د.إ', '2023-05-19 07:28:17', '2023-05-19 12:58:17'),
(13, 'Canada', 'CAD', 'C$', '2023-05-19 07:29:51', '2023-05-19 18:51:44'),
(14, 'Australia', 'AUD', 'A$', '2023-05-19 07:29:51', '2023-05-19 12:59:51');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio`
--

CREATE TABLE `portfolio` (
  `portfolio_id` int(11) NOT NULL,
  `image` longblob NOT NULL,
  `url_text` varchar(100) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `portfolio`
--

INSERT INTO `portfolio` (`portfolio_id`, `image`, `url_text`, `name`, `create_at`, `update_at`) VALUES
(3, 0x75706c6f61642f696d616765732e6a7067, 'Nwew portfolio', 'Arhaan', '2023-05-05 05:56:08', '2023-05-05 20:00:59'),
(5, 0x75706c6f61642f696d61676573202831292e6a7067, 'sgsdgfrsdgvsd', 'cat', '2023-05-10 12:15:36', '2023-05-10 17:45:36');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `service_id` int(11) NOT NULL,
  `short_desp` varchar(500) NOT NULL,
  `long_desp` longtext DEFAULT NULL,
  `icon` varchar(155) NOT NULL,
  `status` enum('active','inactive') DEFAULT 'active',
  `create_at` datetime NOT NULL DEFAULT current_timestamp(),
  `update_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`service_id`, `short_desp`, `long_desp`, `icon`, `status`, `create_at`, `update_at`) VALUES
(21, 'Content Writing', '<p>Our content writing services include business writing, technical writing, creative writing, SEO copywriting, academic content, resume writing, speech writing, ghost writing, social media writing, content editing, and content development services such as blogs, articles, press releases, product reviews, eBooks, case studies, white papers, and newsletters etc. across diverse domains and industries.</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://ehostingguru.com/stage/valogical/client/\">Blog Writing</a></li>\r\n	<li><a href=\"#\">Business Plans</a></li>\r\n	<li><a href=\"#\">Web Content Writing</a></li>\r\n	<li><a href=\"#\">Copywriting</a></li>\r\n	<li><a href=\"#\">Academic and Technical Writing</a></li>\r\n	<li><a href=\"#\">Keyword Rich Content</a></li>\r\n	<li><a href=\"#\">Proofreading</a></li>\r\n	<li><a href=\"#\">Video transcription</a></li>\r\n	<li><a href=\"#\">Article Writing</a></li>\r\n	<li><a href=\"#\">Ghostwriting</a></li>\r\n</ul>', 'upload/5068509.png', 'active', '2023-05-15 14:54:32', '2023-05-22 17:46:32'),
(22, 'Administrative Services', '<p>Within this broad term of administrative assistance, we provide almost every admin service thinkable, some of which are &ndash; data entry, PowerPoint presentations, word processing, preparing spreadsheets, and transcription. Once you visit the services we are providing, you will be getting the best service ever.</p>\r\n\r\n<ul>\r\n	<li><a href=\"#\">ECommerce Management</a></li>\r\n	<li><a href=\"#\">Transcription Services</a></li>\r\n	<li><a href=\"#\">Customer Information Management</a></li>\r\n	<li><a href=\"#\">Research, Documentation &amp; Presentation</a></li>\r\n	<li><a href=\"#\">Itinerary Planning</a></li>\r\n	<li><a href=\"#\">Data Management</a></li>\r\n	<li><a href=\"#\">Call screening and management</a></li>\r\n	<li><a href=\"#\">Appointment scheduling and calendar management</a></li>\r\n	<li><a href=\"#\">Spreadsheet creation and maintenance</a></li>\r\n	<li><a href=\"#\">PDF conversion, splitting and merging</a></li>\r\n	<li><a href=\"#\">Technical troubleshooting</a></li>\r\n	<li><a href=\"#\">Planning meetings and event verification</a></li>\r\n</ul>', 'upload/4133326.png', 'active', '2023-05-15 14:55:13', '2023-05-22 17:46:42'),
(23, 'Email Organization', '<p>Quick and effective management of your email inbox so that each and every email is answered with promptness and no crucial business email is ever missed. Let us compose, filter and manage your email inbox for you so that you can have a de-cluttered experience with your email inboxes.</p>\r\n\r\n<ul>\r\n	<li><a href=\"#\">Email Migration Support</a></li>\r\n	<li><a href=\"#\">Mail Client Setup and Troubleshooting (Outlook, Thunderbird, Opera)</a></li>\r\n	<li><a href=\"#\">Backup Email</a></li>\r\n	<li><a href=\"#\">Plugin Support</a></li>\r\n	<li><a href=\"#\">Creating Rules in Outlook, Gmail</a></li>\r\n	<li><a href=\"#\">Calendar Management</a></li>\r\n	<li><a href=\"#\">Mail Merge</a></li>\r\n</ul>', 'upload/emai.png', 'active', '2023-05-15 14:55:51', '2023-05-22 17:46:52'),
(24, 'Tech Support for PC', '<p>We are ensuring the proper maintenance of the IT systems in the era of gadgets and gizmos and we are the immediate line of support. We provide remote IT support services to fix any IT related problems and minimize the disruption of the users.</p>\r\n\r\n<ul>\r\n	<li><a href=\"#\">Software Misbehaviour and Problem</a></li>\r\n	<li><a href=\"#\">Browser Issues</a></li>\r\n	<li><a href=\"#\">Virus / Malware / Spyware Issues</a></li>\r\n	<li><a href=\"#\">Cloud Backup</a></li>\r\n	<li><a href=\"#\">Speed Optimization (Defragmentation, Disk Health Check)</a></li>\r\n	<li><a href=\"#\">Fix Windows Update Problems</a></li>\r\n	<li><a href=\"#\">File Management</a></li>\r\n	<li><a href=\"#\">Miscellaneous Problems</a></li>\r\n	<li><a href=\"#\">Registry Issue</a></li>\r\n	<li><a href=\"#\">Mac backup app to network server</a></li>\r\n	<li><a href=\"#\">CCTV Monitoring</a></li>\r\n	<li><a href=\"#\">Drop-box and Google Drive organization</a></li>\r\n</ul>', 'upload/pngwing.com.png', 'active', '2023-05-15 14:56:26', '2023-05-22 17:47:07'),
(25, 'Book Keeping and Financial Management', '<p>We provide you a team of bookkeepers with expertise in your industry. Work with your existing accounting software &amp; tools, or help you make the move to newer technologies. Manage your data entry &amp; provide timely bank account &amp; credit card reconciliation. Accurately track your revenue &amp; expenses, and provide valuable insights into your business. Produce up-to-date Balance Sheet &amp; Income Statements every month. Help you easily manage your bill pay, payroll &amp; more give you time back to focus on your business.</p>\r\n\r\n<ul>\r\n	<li><a href=\"#\">Account Management</a></li>\r\n	<li><a href=\"#\">Business Plan Assistance</a></li>\r\n	<li><a href=\"#\">Manage your data entry.</a></li>\r\n	<li><a href=\"#\">Timely bank account and credit card reconciliation</a></li>\r\n	<li><a href=\"#\">Track your revenue and expenses.</a></li>\r\n	<li><a href=\"#\">Maintain balance sheet and income statement.</a></li>\r\n	<li><a href=\"#\">Maintaining billpay and payroll.</a></li>\r\n	<li><a href=\"#\">Video transcription</a></li>\r\n	<li><a href=\"#\">Bookkeeping</a></li>\r\n</ul>', 'upload/bookkeeping.png', 'active', '2023-05-15 14:57:13', '2023-05-22 17:47:17'),
(26, 'Web Design and Development', '<p>We offer blog updates, page additions, content update, form additions and a lot more. We can re-innovate your digital business strategy and transform the way your customers view your products/services through our efficient graphic design and multimedia services. Through our excellent blend of business purpose and game-changing technology, we create refined values for your customers, and ensure that your company views are put across.</p>\r\n\r\n<ul>\r\n	<li><a href=\"#\">Logos</a></li>\r\n	<li><a href=\"#\">Brochures</a></li>\r\n	<li><a href=\"#\">Advertisements</a></li>\r\n	<li><a href=\"#\">Website Mock-Upst</a></li>\r\n	<li><a href=\"#\">Banners</a></li>\r\n	<li><a href=\"#\">Web Graphics</a></li>\r\n	<li><a href=\"#\">Business Cards</a></li>\r\n	<li><a href=\"#\">Postcards/Mailers</a></li>\r\n	<li><a href=\"#\">Poster Design</a></li>\r\n	<li><a href=\"#\">Infographics</a></li>\r\n	<li><a href=\"#\">PowerPoint Design</a></li>\r\n	<li><a href=\"#\">Layout Design</a></li>\r\n	<li><a href=\"#\">Letterhead Design</a></li>\r\n</ul>', 'upload/website-maintence.png', 'active', '2023-05-15 14:57:41', '2023-05-22 17:47:29'),
(27, 'SEO and Digital Marketing', '<p>A great product needs great marketing. We start by knowing your business, and continue our knowledge of the market trends of your specific needs. As such, any company, big or small, established business or a start-up venture need to look for a reputable digital marketing agency to propagate their brand name onto the global platform. The skill and experience to back up our commitment to ensure the most effective digital marketing services for your organization.</p>\r\n\r\n<ul>\r\n	<li><a href=\"#\">Social media marketing &amp; management</a></li>\r\n	<li><a href=\"#\">SEO</a></li>\r\n	<li><a href=\"#\">SEO audit report</a></li>\r\n	<li><a href=\"#\">On page SEO</a></li>\r\n	<li><a href=\"#\">Off page SEO</a></li>\r\n	<li><a href=\"#\">Google adwords management</a></li>\r\n	<li><a href=\"#\">Content marketing</a></li>\r\n	<li><a href=\"#\">Google Adwards&quot; ppc</a></li>\r\n	<li><a href=\"#\">Infografic marketing</a></li>\r\n</ul>', 'upload/kisspng-digital-marketing-search-engine-optimization-googl-seo-5ac2e58ddd0095.9167031915227221899052.png', 'active', '2023-05-15 14:58:12', '2023-05-22 17:54:44');

-- --------------------------------------------------------

--
-- Table structure for table `site_info`
--

CREATE TABLE `site_info` (
  `id` int(11) NOT NULL,
  `footer_description` text DEFAULT NULL,
  `email` varchar(155) DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `skype` varchar(155) DEFAULT NULL,
  `whatsapp` varchar(12) DEFAULT NULL,
  `youtube_link` varchar(155) DEFAULT NULL,
  `twitter_link` varchar(155) DEFAULT NULL,
  `instagram_link` varchar(155) DEFAULT NULL,
  `facebook_link` varchar(155) DEFAULT NULL,
  `number_of_happy_customer` int(11) NOT NULL,
  `number_of_client` int(11) NOT NULL,
  `number_of_jobs` int(11) NOT NULL,
  `number_of_workers` int(11) NOT NULL,
  `number_of_contrubutors` int(11) NOT NULL,
  `others1` varchar(155) DEFAULT NULL,
  `others2` varchar(155) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(155) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `site_info`
--

INSERT INTO `site_info` (`id`, `footer_description`, `email`, `phone`, `skype`, `whatsapp`, `youtube_link`, `twitter_link`, `instagram_link`, `facebook_link`, `number_of_happy_customer`, `number_of_client`, `number_of_jobs`, `number_of_workers`, `number_of_contrubutors`, `others1`, `others2`, `updated_at`, `updated_by`) VALUES
(1, 'test', 'test@desuntech.com\r\n', '7250634942', 'none', '7250634942', 'none', 'none', 'none', 'none', 100, 100, 100, 100, 100, 'test', 'test', NULL, 'test');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `testimonial_id` int(11) NOT NULL,
  `people_name` varchar(500) NOT NULL,
  `people_designation` varchar(500) NOT NULL,
  `content` longtext NOT NULL,
  `status` enum('active','inactive') DEFAULT 'active',
  `rating` int(11) DEFAULT 0,
  `craete_at` datetime DEFAULT current_timestamp(),
  `update_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`testimonial_id`, `people_name`, `people_designation`, `content`, `status`, `rating`, `craete_at`, `update_at`) VALUES
(2, 'Pallabi Dassdfdsfdsf', 'developer', 'I am pallabi.', 'active', 5, '2023-05-09 18:33:56', '2023-05-17 16:39:39'),
(22, 'Shoaib', 'developer', 'developer', 'inactive', 3, '2023-05-08 11:31:38', '2023-05-16 16:58:06'),
(29, 'dasad', 'asdas', '<p>sdsas</p>', 'active', 4, '2023-05-16 16:50:26', '2023-05-16 16:57:56'),
(30, 'sds', 'dsas', '<p>sds</p>', 'inactive', 2, '2023-05-16 16:50:45', '2023-05-16 16:57:47'),
(31, 'fdssd', 'dssf', '<p>esvf</p>', 'active', 5, '2023-05-16 16:51:46', '2023-05-16 16:58:26'),
(32, 'thurthu', 'jxfrhjfrj', '<p>ppppp</p>', 'active', 4, '2023-05-16 16:59:24', '2023-05-16 18:01:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(200) NOT NULL,
  `status` enum('active','inactive') DEFAULT 'active',
  `create_at` datetime NOT NULL DEFAULT current_timestamp(),
  `update_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `email`, `password`, `status`, `create_at`, `update_at`) VALUES
(1, 'Shoiab', 'Shoaib@gmail.com', '5eac43aceba42c8757b54003a58277b5', 'active', '2023-05-05 17:50:55', '2023-05-15 13:10:01'),
(2, 'email', 'email@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e', 'active', '2023-05-05 17:50:55', '2023-05-15 17:50:07'),
(3, '', 'milk_software@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e', 'active', '2023-05-05 17:50:55', '2023-05-05 17:50:55'),
(4, '', 'aarhan@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e', 'active', '2023-05-05 17:50:55', '2023-05-05 17:50:55'),
(5, 'pallabi', 'Men1@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e', 'active', '2023-05-05 17:50:55', '2023-05-15 17:49:45'),
(6, 'Admas', 'Admas@gmail.com', '526e34d04735124f05a090181f3e6e8a', 'active', '2023-05-05 17:50:55', '2023-05-17 16:33:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`blog_id`),
  ADD KEY `FK_userid` (`author`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`faq_id`);

--
-- Indexes for table `master`
--
ALTER TABLE `master`
  ADD PRIMARY KEY (`master_id`);

--
-- Indexes for table `portfolio`
--
ALTER TABLE `portfolio`
  ADD PRIMARY KEY (`portfolio_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `site_info`
--
ALTER TABLE `site_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`testimonial_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `uniq_email_users` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `blog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `faq_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `master`
--
ALTER TABLE `master`
  MODIFY `master_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `portfolio`
--
ALTER TABLE `portfolio`
  MODIFY `portfolio_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `site_info`
--
ALTER TABLE `site_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `testimonial_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blog`
--
ALTER TABLE `blog`
  ADD CONSTRAINT `FK_userid` FOREIGN KEY (`author`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
