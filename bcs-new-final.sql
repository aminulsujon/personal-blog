-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2023 at 08:48 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bcs-new-final`
--

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(512) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `member_id` bigint(20) UNSIGNED NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `openHours` varchar(256) NOT NULL,
  `address` varchar(512) NOT NULL,
  `mapLink` varchar(512) NOT NULL,
  `contacts` varchar(512) NOT NULL,
  `status` smallint(5) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `name`, `user_id`, `member_id`, `created_by`, `openHours`, `address`, `mapLink`, `contacts`, `status`, `created_at`, `updated_at`) VALUES
(1, 'IDB branch', 2, 1, 1, 'Mon-Sat (10am-8pm)', '123/B, Dhaka 1216', 'https://goo.gl/maps/b6GpF9BwLEBCFK7VA', '[{\"name\":\"Sujon\",\"phone\":\"01716330532\"},{\"name\":\"Aminul\",\"phone\":\"01617440880\"},{\"name\":null,\"phone\":null}]', 1, '2023-04-03 05:04:28', '2023-04-03 05:04:28'),
(2, 'Mymensingh ICT Park', 4, 3, 1, 'Sat-Wed ( 08:00 - 10:00 )', '22, CK Gosh Road, Mymensingh-2255', 'https://goo.gl/maps/z2oc8d7rnJRkUjew9', '[{\"name\":\"Sales\",\"phone\":\"01716552321\"},{\"name\":\"Service\",\"phone\":\"01798541258\"},{\"name\":\"Digital Support\",\"phone\":\"01999999999\"}]', 1, '2023-04-03 06:04:24', '2023-04-03 06:07:56'),
(4, 'demosdsaff', 26, 18, 26, '9xc', 'xfdaf', 'fadfar', '[{\"name\":null,\"phone\":null},{\"name\":null,\"phone\":null},{\"name\":null,\"phone\":null}]', 1, '2023-05-11 01:27:41', '2023-05-11 01:28:36'),
(5, 'demo', 2, 1, 7, '9 to 5', 'IDB', 'Map link', '[{\"name\":\"01700000000\",\"phone\":null},{\"name\":null,\"phone\":null},{\"name\":null,\"phone\":null}]', 1, '2023-05-11 03:05:57', '2023-05-11 03:05:57');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sent_by` int(11) DEFAULT NULL,
  `sent_to` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `sent_by`, `sent_to`, `name`, `email`, `phone`, `subject`, `message`, `status`, `created_at`, `updated_at`) VALUES
(1, 8, 9, 'demo', 'shahriarshuvo714@gmail.com', '01843736673', 'testWE', 'asa', NULL, '2023-05-09 04:03:48', '2023-05-09 04:03:48'),
(2, 8, 9, 'demo', 'shahriarshuvo714@gmail.com', '01843736673', 'testWE', 'gdfdfg', NULL, '2023-05-09 04:07:37', '2023-05-09 04:07:37'),
(3, 8, 9, 'demo', NULL, '01843736673', 'test mail', 'fsdf', NULL, '2023-05-09 04:24:27', '2023-05-09 04:24:27'),
(4, 8, 9, 'demo', 'shahriarshuvo714@gmail.com', '018437366733', 'test mail', 'gbdfgd', NULL, '2023-05-09 04:24:57', '2023-05-09 04:24:57'),
(5, 8, 9, 'demo', 'shahriarshuvo714@gmail.com', '01843736673', 'test mail', 'fgsgs', NULL, '2023-05-09 04:33:49', '2023-05-09 04:33:49');

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content_type` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_canonical` varchar(128) DEFAULT NULL,
  `meta_heading` varchar(1024) DEFAULT NULL,
  `meta_image` varchar(512) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `meta_robots` varchar(32) DEFAULT NULL,
  `barcode` varchar(2048) DEFAULT NULL,
  `status` smallint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contents`
--

INSERT INTO `contents` (`id`, `content_type`, `user_id`, `member_id`, `name`, `subtitle`, `slug`, `meta_title`, `meta_keywords`, `meta_description`, `meta_canonical`, `meta_heading`, `meta_image`, `description`, `summary`, `note`, `meta_robots`, `barcode`, `status`, `created_at`, `updated_at`) VALUES
(1, 'slider', 1, NULL, 'This is slider one and its name', NULL, 'this-is-slider-one-and-its-name', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-03-27 02:28:24', '2023-04-06 00:15:43'),
(2, 'slider', 1, NULL, 'Slider A', NULL, 'this-is-slider-one-and-its-name-48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-03-27 02:32:46', '2023-04-06 00:15:45'),
(3, 'slider', 1, NULL, 'abc', NULL, 'this-is-slider-one-and-its-name-abc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-03-27 02:50:48', '2023-04-06 00:15:47'),
(4, 'slider', 1, NULL, 'This is slider 4', NULL, 'this-is-slider-one-and-its-name-4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-03-27 03:38:08', '2023-04-06 00:15:49'),
(5, 'slider', 1, NULL, 'test slider 6', NULL, 'test-slider-6-to-new47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-03-27 03:48:29', '2023-04-06 00:15:52'),
(6, 'slider', 1, NULL, 'a', NULL, 'a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-03-29 00:57:22', '2023-04-06 00:15:54'),
(7, 'slider', 1, NULL, 'aaaa', NULL, 'aaaaaaaaaaaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-03-29 01:38:54', '2023-04-06 00:15:56'),
(8, 'slider', 1, NULL, 'aaaa', NULL, 'aa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-03-29 01:45:12', '2023-04-06 00:15:58'),
(9, 'slider', 1, NULL, 'Sujon Slider', NULL, 'sujon-slider-edited-first-time', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-03-29 01:56:07', '2023-04-06 00:16:01'),
(10, 'committee', 7, NULL, 'BCS Computer City Management Committee 2022-2023', NULL, 'BCS Computer City Management Committee 2022-2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-04-03 10:28:03', '2023-05-19 23:05:28'),
(11, 'slider', 5, NULL, 'new', NULL, 'new-dmeo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-04-05 23:51:49', '2023-05-09 22:38:30'),
(12, 'slider', 5, NULL, 'test-2', NULL, 'test-2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-04-06 00:17:35', '2023-05-09 22:38:33'),
(13, 'blog', 5, NULL, 'কম্পিউটারেও ব্যবহার করা যাবে অ্যান্ড্রয়েডের নিয়ারবাই শেয়ার সুবিধা', NULL, 'কম্পিউটারেও ব্যবহার করা যাবে অ্যান্ড্রয়েডের নিয়ারবাই শেয়ার সুবিধা', NULL, NULL, NULL, NULL, NULL, NULL, '<p>নিয়ারবাই শেয়ার সুবিধা কাজে লাগিয়ে অ্যান্ড্রয়েডচালিত ফোন, ট্যাবলেট কম্পিউটারসহ বিভিন্ন যন্ত্রের মধ্যে সহজে ফাইল আদান-প্রদান করা যায়। এবার উইন্ডোজ অপারেটিং সিস্টেমে চলা কম্পিউটার থেকেও অ্যান্ড্রয়েডচালিত ফোন, ট্যাবলেট কম্পিউটারে ফাইল আদান-প্রদান করা করা যাবে। নতুন এ সুবিধা দিতে উইন্ডোজের জন্য পরীক্ষামূলকভাবে নিয়ারবাই শেয়ার অ্যাপ উন্মুক্ত করেছে গুগল।</p>\r\n\r\n<p>গুগলের তথ্যমতে, অ্যান্ড্রয়েড ডটকম ওয়েবসাইট থেকে অ্যাপটি নামিয়ে উইন্ডোজ ১০ থেকে পরবর্তী সব অপারেটিং সিস্টেমে চলা কম্পিউটারে ব্যবহার করা যাবে। অ্যাপটি ব্যবহারের জন্য অবশ্যই ফাইল আদান-প্রদানের সঙ্গে যুক্ত ফোন ও কম্পিউটারে ওয়াই&ndash;ফাই ও ব্লু-টুথ অপশন চালু রাখতে হবে। এ সুবিধা কাজে লাগিয়ে সর্বোচ্চ ১৬ ফুট দূরে থাকা ফোন বা কম্পিউটারে ফাইল আদান-প্রদান করা যাবে।</p>\r\n\r\n<p>উইন্ডোজে নিয়ারবাই শেয়ার সুবিধা কাজে লাগিয়ে ফাইলের পাশাপাশি ছবি, অডিও, ভিডিওর পাশাপাশি চাইলে পুরো ফোল্ডারও আদান-প্রদান করা যাবে। ফলে ব্যবহারকারীরা দরকারি তথ্যগুলো সহজেই এক যন্ত্র থেকে অন্য যন্ত্রে নিয়ে কাজ করতে পারবেন। প্রাথমিকভাবে যুক্তরাষ্ট্রে বসবাসকারীরা এ সুবিধা পাবেন।<br />\r\nসূত্র: নাইনটুফাইভগুগলডটকম</p>', NULL, NULL, NULL, NULL, 3, '2023-04-06 02:31:36', '2023-04-06 02:38:02'),
(14, 'blog', 5, NULL, 'রাজধানীতে তীব্র যানজট, তিন কারণ জানাল ট্রাফিক পুলিশ', NULL, 'রাজধানীতে তীব্র যানজট, তিন কারণ জানাল ট্রাফিক পুলিশ', NULL, NULL, NULL, NULL, NULL, NULL, '<p>রাজধানীর আফতাবনগর থেকে মোটরসাইকেলে কারওয়ান বাজার অফিসে আসতে আজ স্বাভাবিক সময়ের চেয়ে দ্বিগুণের বেশি সময় লেগেছে বলে জানান সাদ্দাম হোসেন। তিনি কারওয়ান বাজারে একটি বেসরকারি সংস্থায় চাকরি করেন। তিনি জানান, এ সময় রামপুরা ইউলুপ, রামপুরা থেকে বিমানবন্দরমুখী সড়ক, এফডিসি থেকে সোনারগাঁও মোড় পর্যন্ত সড়ক এবং কারওয়ান বাজার রেলগেট এলাকায় তীব্র যানজট দেখা গেছে।</p>\r\n\r\n<p>সাদ্দাম তাঁর অভিজ্ঞতার বর্ণনা দিয়ে বলেন, সকাল পৌনে ১০টায় আফতাবনগর জি ব্লক থেকে রামপুরা ইউলুপ পর্যন্ত আসতে ৭-৮ মিনিটের মতো সময় লেগেছে। এরপর ইউলুপের ওপর যানজটে আটকে থাকতে হয়েছে প্রায় ১০ মিনিট। এরপর পুরো হাতিরঝিলে যানজট নেই।</p>\r\n\r\n<p>তবে হাতিরঝিলের মহানগর প্রকল্পের সামনের সড়কে খোঁড়াখুঁড়ি করায় যানবাহনের মহানগর প্রকল্পের সামনে থেকে হাতিরঝিলের এফডিসি মোড় পর্যন্ত সড়কে যানবাহনের চাপ বেশি ছিল। এ সময় এফডিসি মোড় থেকে সোনারগাঁও মোড়ের রাস্তাটিতে যানবাহনের তীব্র চাপ দেখা গেছে। এ সড়কে যানবাহনের চাপ বেশি দেখে সাতরাস্তা দিয়ে মেয়র আনিসুল হক সড়ক ঘুরে কারওয়ান বাজার আসতে গিয়েও ব্যাপক যানজটে পড়তে হয়েছে। এ সময় মেয়র আনিসুল হক সড়কের বিসিক ভবনের সামনে থেকে কারওয়ান বাজার রেলগেট পর্যন্ত তীব্র যানজট দেখা গেছে। সেখান থেকে কারওয়ান বাজারের আম্বর শাহ মসজিদের সামনে পর্যন্ত আসতে প্রায় ৪০ মিনিট সময় লেগেছে।</p>\r\n\r\n<p>নগরীর যানজট পরিস্থিত নিয়ে কথা হয় ঢাকা মেট্রোপলিটন পুলিশের (ডিএমপি) অতিরিক্ত কমিশনার (ট্রাফিক) মো. মুনিবুর রহমানের সঙ্গে। তিনি যানজটের তিনটি কারণের কথা উল্লেখ করেন। মুনিবুর রহমান বলেন, রমজান মাসে অফিসের সময় কমে যাওয়ায় পুরো ১২ ঘণ্টার চাপ এখন ৮ ঘণ্টায় ঠেকেছে। সংগত কারণেই যানজট বেড়ে গেছে। এর পাশাপাশি রাজধানীতে বিভিন্ন স্থানে চলছে খোঁড়াখুঁড়ির কাজ। এতে যানজট পরিস্থিতির সৃষ্টি হচ্ছে। আর তৃতীয় কারণ হলো, গুলশান বা উত্তরার মতো যেসব সড়কে দ্রুতগতির যান বেশি চলাচল করে, সেখানে হঠাৎ যানজটের সৃষ্টি হলে এর প্রভাব অন্য এলাকাগুলোতেও পড়ে। এ প্রসঙ্গে মুনিবুর রহমান গতকাল অফিস ছুটির পর গুলশানের যানজটের কথা উল্লেখ করেন। তিনি বলেন, গুলশানের যানজটের প্রভাব বিজয় সরণি পর্যন্ত ঠেকেছিল গতকাল।</p>\r\n\r\n<p>রাজধানীর উত্তর থেকে আজ মঙ্গলবার সকাল নয়টায় মোটরসাইকেলে রওনা হয়েছিলেন বেসরকারি অফিসের কর্মকর্তা শাজাহান সিরাজী। গন্তব্যস্থল ফার্মগেট। প্রথমেই যানজটে আটকা পড়লেন কাওলায়। এখান থেকে খিলখেত পর্যন্ত ছিল তীব্র যানজট। এরপর দ্বিতীয় দফায় বনানী ফ্লাইওভারে যানজটে আটকে ছিলেন অন্তত ৩০ মিনিট। মোটরসাইকেলে ফার্মগেটে আসতে লাগল পুরো দেড় ঘণ্টা।</p>\r\n\r\n<p>রাজধানীতে যানজটে এমনভাবে নাকাল হচ্ছেন নগরবাসী। টানা তিন দিনের ছুটির পর রমজানের মধ্যে কর্মদিবস বলতে গেলে শুরু হয় গতকাল সোমবার। গতকালও ছিল ভয়াবহ যানজট। বিশেষ করে অফিস ছুটির পর। অফিস থেকে বাড়িতে ফিরছেন, এমন দুজনের সঙ্গে কথা হলো। তাঁদের একজন সাইফুল ইসলাম গতকালের অভিজ্ঞতা জানিয়ে বললেন, &lsquo;বিকেল সাড়ে চারটায় কারওয়ান বাজার অফিস থেকে বের হয়ে সাড়ে ছয়টায় নিকেতনে পৌঁছালাম। স্বাভাবিক সময়ে লাগে ২০ থেকে ২৫ মিনিট।&rsquo;</p>\r\n\r\n<p>গতকাল বিকেল সোয়া চারটার দিকে রওনা হয়েছিলেন শুভ রহমান। তাঁর বাসা জিগাতলায়। নিকেতন থেকে গুলশান-১ ও মহাখালী দিয়ে জিগাতলায় যেতে সাড়ে তিন ঘণ্টা সময় লেগেছিল তাঁর। গতকাল বিকেলে যানজটের এমন অভিজ্ঞতা অনেকের।</p>', NULL, NULL, NULL, NULL, 3, '2023-04-06 02:33:49', '2023-04-15 00:05:43'),
(15, 'blog', 5, NULL, 'চ্যাটজিপিটির সঙ্গে প্রতিদ্বন্দ্বিতা করতে ‘বার্ড’ হালনাগাদ করবে গুগল', NULL, 'চ্যাটজিপিটির সঙ্গে প্রতিদ্বন্দ্বিতা করতে ‘বার্ড’ হালনাগাদ করবে গুগল', NULL, NULL, NULL, NULL, NULL, NULL, '<p>যুক্তরাষ্ট্রের প্রযুক্তিপ্রতিষ্ঠান ওপেনএআইয়ে তৈরি কৃত্রিম বুদ্ধিমত্তা (এআই) চ্যাটবট চ্যাটজিপিটির বিকল্প হিসেবে মাত্র দুই সপ্তাহ আগে বার্ড (বিএআরডি) নামের নিজস্ব চ্যাটবট উন্মুক্ত করেছে গুগল। প্রাথমিকভাবে যুক্তরাষ্ট্র ও যুক্তরাজ্যে বসবাসকারীদের জন্য উন্মুক্ত হওয়া এই চ্যাটবট ইংরেজি ভাষায় যেকোনো প্রশ্নের উত্তর দিতে পারে। ফলে চ্যাটবটটি আলাদাভাবে বিভিন্ন কাজে ব্যবহার করা যায়। কিন্তু উন্মুক্তের পর ব্যবহারকারীদের কাছে খুব বেশি সাড়া ফেলতে পারেনি বার্ড। বিষয়টি অজানা নয় গুগলের কাছেও। আর তাই শিগগিরই বার্ডের হালনাগাদ সংস্করণ উন্মুক্ত করা হবে বলে জানিয়েছেন গুগলের মূল প্রতিষ্ঠান অ্যালফাবেটের প্রধান নির্বাহী কর্মকর্তা সুন্দর পিচাই।</p>\r\n\r\n<p>বার্ড নামের চ্যাটবটটি মূলত গুগলের কৃত্রিম বুদ্ধিমত্তা প্রযুক্তি এলএএমডিএ (ল্যাঙ্গুয়েজ মডেল ফর ডায়ালগ অ্যাপ্লিকেশনস) কাজে লাগিয়ে তৈরি করা হয়েছে। তবে ব্যবহারকারীদের কাছে জনপ্রিয়তা না পাওয়ায় ভবিষ্যতে চ্যাটবটটিতে পিএএলএম ল্যাঙ্গুয়েজ মডেল ব্যবহার করা হবে বলে জানিয়েছেন সুন্দর পিচাই।</p>\r\n\r\n<p>বার্ড চ্যাটবট হালনাগাদের বিষয়ে সুন্দর পিচাই জানিয়েছেন, &lsquo;আমাদের কাছে আরও বেশ কিছু ল্যাঙ্গুয়েজ মডেল রয়েছে। শিগগিরই পিএএলএম ল্যাঙ্গুয়েজ মডেল ব্যবহার করা হবে বার্ড চ্যাটবটে। ফলে কোডিং বা গাণিতিক বিভিন্ন প্রশ্নের উত্তর ভালোভাবে দিতে পারবে চ্যাটবটটি।<br />\r\nসূত্র: দ্য ভার্জ</p>', NULL, NULL, NULL, NULL, 3, '2023-04-06 02:34:48', '2023-04-15 00:05:46'),
(17, 'blog', 5, NULL, 'রাজধানীতে তীব্র যানজট, তিন কারণ জানাল ট্রাফিক পুলিশ .', NULL, 'রাজধানীতে তীব্র যানজট, তিন কারণ জানাল ট্রাফিক-পুলিশ', NULL, NULL, NULL, NULL, NULL, NULL, '<p>রাজধানীর আফতাবনগর থেকে মোটরসাইকেলে কারওয়ান বাজার অফিসে আসতে আজ স্বাভাবিক সময়ের চেয়ে দ্বিগুণের বেশি সময় লেগেছে বলে জানান সাদ্দাম হোসেন। তিনি কারওয়ান বাজারে একটি বেসরকারি সংস্থায় চাকরি করেন। তিনি জানান, এ সময় রামপুরা ইউলুপ, রামপুরা থেকে বিমানবন্দরমুখী সড়ক, এফডিসি থেকে সোনারগাঁও মোড় পর্যন্ত সড়ক এবং কারওয়ান বাজার রেলগেট এলাকায় তীব্র যানজট দেখা গেছে।</p>\r\n\r\n<p>সাদ্দাম তাঁর অভিজ্ঞতার বর্ণনা দিয়ে বলেন, সকাল পৌনে ১০টায় আফতাবনগর জি ব্লক থেকে রামপুরা ইউলুপ পর্যন্ত আসতে ৭-৮ মিনিটের মতো সময় লেগেছে। এরপর ইউলুপের ওপর যানজটে আটকে থাকতে হয়েছে প্রায় ১০ মিনিট। এরপর পুরো হাতিরঝিলে যানজট নেই।</p>\r\n\r\n<p>তবে হাতিরঝিলের মহানগর প্রকল্পের সামনের সড়কে খোঁড়াখুঁড়ি করায় যানবাহনের মহানগর প্রকল্পের সামনে থেকে হাতিরঝিলের এফডিসি মোড় পর্যন্ত সড়কে যানবাহনের চাপ বেশি ছিল। এ সময় এফডিসি মোড় থেকে সোনারগাঁও মোড়ের রাস্তাটিতে যানবাহনের তীব্র চাপ দেখা গেছে। এ সড়কে যানবাহনের চাপ বেশি দেখে সাতরাস্তা দিয়ে মেয়র আনিসুল হক সড়ক ঘুরে কারওয়ান বাজার আসতে গিয়েও ব্যাপক যানজটে পড়তে হয়েছে। এ সময় মেয়র আনিসুল হক সড়কের বিসিক ভবনের সামনে থেকে কারওয়ান বাজার রেলগেট পর্যন্ত তীব্র যানজট দেখা গেছে। সেখান থেকে কারওয়ান বাজারের আম্বর শাহ মসজিদের সামনে পর্যন্ত আসতে প্রায় ৪০ মিনিট সময় লেগেছে।</p>\r\n\r\n<p>নগরীর যানজট পরিস্থিত নিয়ে কথা হয় ঢাকা মেট্রোপলিটন পুলিশের (ডিএমপি) অতিরিক্ত কমিশনার (ট্রাফিক) মো. মুনিবুর রহমানের সঙ্গে। তিনি যানজটের তিনটি কারণের কথা উল্লেখ করেন। মুনিবুর রহমান বলেন, রমজান মাসে অফিসের সময় কমে যাওয়ায় পুরো ১২ ঘণ্টার চাপ এখন ৮ ঘণ্টায় ঠেকেছে। সংগত কারণেই যানজট বেড়ে গেছে। এর পাশাপাশি রাজধানীতে বিভিন্ন স্থানে চলছে খোঁড়াখুঁড়ির কাজ। এতে যানজট পরিস্থিতির সৃষ্টি হচ্ছে। আর তৃতীয় কারণ হলো, গুলশান বা উত্তরার মতো যেসব সড়কে দ্রুতগতির যান বেশি চলাচল করে, সেখানে হঠাৎ যানজটের সৃষ্টি হলে এর প্রভাব অন্য এলাকাগুলোতেও পড়ে। এ প্রসঙ্গে মুনিবুর রহমান গতকাল অফিস ছুটির পর গুলশানের যানজটের কথা উল্লেখ করেন। তিনি বলেন, গুলশানের যানজটের প্রভাব বিজয় সরণি পর্যন্ত ঠেকেছিল গতকাল।</p>\r\n\r\n<p>রাজধানীর উত্তর থেকে আজ মঙ্গলবার সকাল নয়টায় মোটরসাইকেলে রওনা হয়েছিলেন বেসরকারি অফিসের কর্মকর্তা শাজাহান সিরাজী। গন্তব্যস্থল ফার্মগেট। প্রথমেই যানজটে আটকা পড়লেন কাওলায়। এখান থেকে খিলখেত পর্যন্ত ছিল তীব্র যানজট। এরপর দ্বিতীয় দফায় বনানী ফ্লাইওভারে যানজটে আটকে ছিলেন অন্তত ৩০ মিনিট। মোটরসাইকেলে ফার্মগেটে আসতে লাগল পুরো দেড় ঘণ্টা।</p>\r\n\r\n<p>রাজধানীতে যানজটে এমনভাবে নাকাল হচ্ছেন নগরবাসী। টানা তিন দিনের ছুটির পর রমজানের মধ্যে কর্মদিবস বলতে গেলে শুরু হয় গতকাল সোমবার। গতকালও ছিল ভয়াবহ যানজট। বিশেষ করে অফিস ছুটির পর। অফিস থেকে বাড়িতে ফিরছেন, এমন দুজনের সঙ্গে কথা হলো। তাঁদের একজন সাইফুল ইসলাম গতকালের অভিজ্ঞতা জানিয়ে বললেন, &lsquo;বিকেল সাড়ে চারটায় কারওয়ান বাজার অফিস থেকে বের হয়ে সাড়ে ছয়টায় নিকেতনে পৌঁছালাম। স্বাভাবিক সময়ে লাগে ২০ থেকে ২৫ মিনিট।&rsquo;</p>\r\n\r\n<p>গতকাল বিকেল সোয়া চারটার দিকে রওনা হয়েছিলেন শুভ রহমান। তাঁর বাসা জিগাতলায়। নিকেতন থেকে গুলশান-১ ও মহাখালী দিয়ে জিগাতলায় যেতে সাড়ে তিন ঘণ্টা সময় লেগেছিল তাঁর। গতকাল বিকেলে যানজটের এমন অভিজ্ঞতা অনেকের।</p>', NULL, NULL, NULL, NULL, 3, '2023-04-06 02:39:15', '2023-04-15 00:05:53'),
(18, 'news', 7, NULL, 'রাজধানীতে তীব্র যানজট, তিন কারণ জানাল ট্রাফিক পুলিশ..', NULL, 'রাজধানীতে-তীব্র-যানজট-তিন-কারণ -জানাল-ট্রাফিক-পুলিশ', 'meta', 'meta.key', 'meta des', 'this is cannonical url', 'h1', 'https://i.ibb.co/86VB8tq/Untitled-2.jpg', '<p>রাজধানীর আফতাবনগর থেকে মোটরসাইকেলে কারওয়ান বাজার অফিসে আসতে আজ স্বাভাবিক সময়ের চেয়ে দ্বিগুণের বেশি সময় লেগেছে বলে জানান সাদ্দাম হোসেন। তিনি কারওয়ান বাজারে একটি বেসরকারি সংস্থায় চাকরি করেন। তিনি জানান, এ সময় রামপুরা ইউলুপ, রামপুরা থেকে বিমানবন্দরমুখী সড়ক, এফডিসি থেকে সোনারগাঁও মোড় পর্যন্ত সড়ক এবং কারওয়ান বাজার রেলগেট এলাকায় তীব্র যানজট দেখা গেছে।</p>\r\n\r\n<p>সাদ্দাম তাঁর অভিজ্ঞতার বর্ণনা দিয়ে বলেন, সকাল পৌনে ১০টায় আফতাবনগর জি ব্লক থেকে রামপুরা ইউলুপ পর্যন্ত আসতে ৭-৮ মিনিটের মতো সময় লেগেছে। এরপর ইউলুপের ওপর যানজটে আটকে থাকতে হয়েছে প্রায় ১০ মিনিট। এরপর পুরো হাতিরঝিলে যানজট নেই।</p>\r\n\r\n<p>তবে হাতিরঝিলের মহানগর প্রকল্পের সামনের সড়কে খোঁড়াখুঁড়ি করায় যানবাহনের মহানগর প্রকল্পের সামনে থেকে হাতিরঝিলের এফডিসি মোড় পর্যন্ত সড়কে যানবাহনের চাপ বেশি ছিল। এ সময় এফডিসি মোড় থেকে সোনারগাঁও মোড়ের রাস্তাটিতে যানবাহনের তীব্র চাপ দেখা গেছে। এ সড়কে যানবাহনের চাপ বেশি দেখে সাতরাস্তা দিয়ে মেয়র আনিসুল হক সড়ক ঘুরে কারওয়ান বাজার আসতে গিয়েও ব্যাপক যানজটে পড়তে হয়েছে। এ সময় মেয়র আনিসুল হক সড়কের বিসিক ভবনের সামনে থেকে কারওয়ান বাজার রেলগেট পর্যন্ত তীব্র যানজট দেখা গেছে। সেখান থেকে কারওয়ান বাজারের আম্বর শাহ মসজিদের সামনে পর্যন্ত আসতে প্রায় ৪০ মিনিট সময় লেগেছে।</p>\r\n\r\n<p>নগরীর যানজট পরিস্থিত নিয়ে কথা হয় ঢাকা মেট্রোপলিটন পুলিশের (ডিএমপি) অতিরিক্ত কমিশনার (ট্রাফিক) মো. মুনিবুর রহমানের সঙ্গে। তিনি যানজটের তিনটি কারণের কথা উল্লেখ করেন। মুনিবুর রহমান বলেন, রমজান মাসে অফিসের সময় কমে যাওয়ায় পুরো ১২ ঘণ্টার চাপ এখন ৮ ঘণ্টায় ঠেকেছে। সংগত কারণেই যানজট বেড়ে গেছে। এর পাশাপাশি রাজধানীতে বিভিন্ন স্থানে চলছে খোঁড়াখুঁড়ির কাজ। এতে যানজট পরিস্থিতির সৃষ্টি হচ্ছে। আর তৃতীয় কারণ হলো, গুলশান বা উত্তরার মতো যেসব সড়কে দ্রুতগতির যান বেশি চলাচল করে, সেখানে হঠাৎ যানজটের সৃষ্টি হলে এর প্রভাব অন্য এলাকাগুলোতেও পড়ে। এ প্রসঙ্গে মুনিবুর রহমান গতকাল অফিস ছুটির পর গুলশানের যানজটের কথা উল্লেখ করেন। তিনি বলেন, গুলশানের যানজটের প্রভাব বিজয় সরণি পর্যন্ত ঠেকেছিল গতকাল।</p>\r\n\r\n<p>রাজধানীর উত্তর থেকে আজ মঙ্গলবার সকাল নয়টায় মোটরসাইকেলে রওনা হয়েছিলেন বেসরকারি অফিসের কর্মকর্তা শাজাহান সিরাজী। গন্তব্যস্থল ফার্মগেট। প্রথমেই যানজটে আটকা পড়লেন কাওলায়। এখান থেকে খিলখেত পর্যন্ত ছিল তীব্র যানজট। এরপর দ্বিতীয় দফায় বনানী ফ্লাইওভারে যানজটে আটকে ছিলেন অন্তত ৩০ মিনিট। মোটরসাইকেলে ফার্মগেটে আসতে লাগল পুরো দেড় ঘণ্টা।</p>\r\n\r\n<p>রাজধানীতে যানজটে এমনভাবে নাকাল হচ্ছেন নগরবাসী। টানা তিন দিনের ছুটির পর রমজানের মধ্যে কর্মদিবস বলতে গেলে শুরু হয় গতকাল সোমবার। গতকালও ছিল ভয়াবহ যানজট। বিশেষ করে অফিস ছুটির পর। অফিস থেকে বাড়িতে ফিরছেন, এমন দুজনের সঙ্গে কথা হলো। তাঁদের একজন সাইফুল ইসলাম গতকালের অভিজ্ঞতা জানিয়ে বললেন, &lsquo;বিকেল সাড়ে চারটায় কারওয়ান বাজার অফিস থেকে বের হয়ে সাড়ে ছয়টায় নিকেতনে পৌঁছালাম। স্বাভাবিক সময়ে লাগে ২০ থেকে ২৫ মিনিট।&rsquo;</p>\r\n\r\n<p>গতকাল বিকেল সোয়া চারটার দিকে রওনা হয়েছিলেন শুভ রহমান। তাঁর বাসা জিগাতলায়। নিকেতন থেকে গুলশান-১ ও মহাখালী দিয়ে জিগাতলায় যেতে সাড়ে তিন ঘণ্টা সময় লেগেছিল তাঁর। গতকাল বিকেলে যানজটের এমন অভিজ্ঞতা অনেকের।</p>', NULL, NULL, 'allow,robot', NULL, 5, '2023-04-06 02:40:29', '2023-05-09 22:39:53'),
(19, 'news', 5, NULL, 'চ্যাটজিপিটির সঙ্গে প্রতিদ্বন্দ্বিতা করতে ‘বার্ড’ হালনাগাদ করবে গুগল', NULL, 'চ্যাটজিপিটির সঙ্গে প্রতিদ্বন্দ্বিতা করতে ‘বার্ড’ হালনাগাদ করবে-গুগল', NULL, NULL, NULL, NULL, NULL, NULL, '<p>যুক্তরাষ্ট্রের প্রযুক্তিপ্রতিষ্ঠান ওপেনএআইয়ে তৈরি কৃত্রিম বুদ্ধিমত্তা (এআই) চ্যাটবট চ্যাটজিপিটির বিকল্প হিসেবে মাত্র দুই সপ্তাহ আগে বার্ড (বিএআরডি) নামের নিজস্ব চ্যাটবট উন্মুক্ত করেছে গুগল। প্রাথমিকভাবে যুক্তরাষ্ট্র ও যুক্তরাজ্যে বসবাসকারীদের জন্য উন্মুক্ত হওয়া এই চ্যাটবট ইংরেজি ভাষায় যেকোনো প্রশ্নের উত্তর দিতে পারে। ফলে চ্যাটবটটি আলাদাভাবে বিভিন্ন কাজে ব্যবহার করা যায়। কিন্তু উন্মুক্তের পর ব্যবহারকারীদের কাছে খুব বেশি সাড়া ফেলতে পারেনি বার্ড। বিষয়টি অজানা নয় গুগলের কাছেও। আর তাই শিগগিরই বার্ডের হালনাগাদ সংস্করণ উন্মুক্ত করা হবে বলে জানিয়েছেন গুগলের মূল প্রতিষ্ঠান অ্যালফাবেটের প্রধান নির্বাহী কর্মকর্তা সুন্দর পিচাই।</p>\r\n\r\n<p>বার্ড নামের চ্যাটবটটি মূলত গুগলের কৃত্রিম বুদ্ধিমত্তা প্রযুক্তি এলএএমডিএ (ল্যাঙ্গুয়েজ মডেল ফর ডায়ালগ অ্যাপ্লিকেশনস) কাজে লাগিয়ে তৈরি করা হয়েছে। তবে ব্যবহারকারীদের কাছে জনপ্রিয়তা না পাওয়ায় ভবিষ্যতে চ্যাটবটটিতে পিএএলএম ল্যাঙ্গুয়েজ মডেল ব্যবহার করা হবে বলে জানিয়েছেন সুন্দর পিচাই।</p>\r\n\r\n<p>বার্ড চ্যাটবট হালনাগাদের বিষয়ে সুন্দর পিচাই জানিয়েছেন, &lsquo;আমাদের কাছে আরও বেশ কিছু ল্যাঙ্গুয়েজ মডেল রয়েছে। শিগগিরই পিএএলএম ল্যাঙ্গুয়েজ মডেল ব্যবহার করা হবে বার্ড চ্যাটবটে। ফলে কোডিং বা গাণিতিক বিভিন্ন প্রশ্নের উত্তর ভালোভাবে দিতে পারবে চ্যাটবটটি।<br />\r\nসূত্র: দ্য ভার্জ</p>', NULL, NULL, NULL, NULL, 5, '2023-04-06 02:41:13', '2023-05-09 22:39:51'),
(21, 'news', 5, NULL, 'কম্পিউটারেও ব্যবহার করা যাবে অ্যান্ড্রয়েডের নিয়ারবাই শেয়ার সুবিধা', NULL, 'কম্পিউটারেও ব্যবহার করা যাবে অ্যান্ড্রয়েডের নিয়ারবাই শেয়ার সুবিধা .', NULL, NULL, NULL, NULL, NULL, NULL, '<p>নিয়ারবাই শেয়ার সুবিধা কাজে লাগিয়ে অ্যান্ড্রয়েডচালিত ফোন, ট্যাবলেট কম্পিউটারসহ বিভিন্ন যন্ত্রের মধ্যে সহজে ফাইল আদান-প্রদান করা যায়। এবার উইন্ডোজ অপারেটিং সিস্টেমে চলা কম্পিউটার থেকেও অ্যান্ড্রয়েডচালিত ফোন, ট্যাবলেট কম্পিউটারে ফাইল আদান-প্রদান করা করা যাবে। নতুন এ সুবিধা দিতে উইন্ডোজের জন্য পরীক্ষামূলকভাবে নিয়ারবাই শেয়ার অ্যাপ উন্মুক্ত করেছে গুগল।</p>\r\n\r\n<p>গুগলের তথ্যমতে, অ্যান্ড্রয়েড ডটকম ওয়েবসাইট থেকে অ্যাপটি নামিয়ে উইন্ডোজ ১০ থেকে পরবর্তী সব অপারেটিং সিস্টেমে চলা কম্পিউটারে ব্যবহার করা যাবে। অ্যাপটি ব্যবহারের জন্য অবশ্যই ফাইল আদান-প্রদানের সঙ্গে যুক্ত ফোন ও কম্পিউটারে ওয়াই&ndash;ফাই ও ব্লু-টুথ অপশন চালু রাখতে হবে। এ সুবিধা কাজে লাগিয়ে সর্বোচ্চ ১৬ ফুট দূরে থাকা ফোন বা কম্পিউটারে ফাইল আদান-প্রদান করা যাবে।</p>\r\n\r\n<p>উইন্ডোজে নিয়ারবাই শেয়ার সুবিধা কাজে লাগিয়ে ফাইলের পাশাপাশি ছবি, অডিও, ভিডিওর পাশাপাশি চাইলে পুরো ফোল্ডারও আদান-প্রদান করা যাবে। ফলে ব্যবহারকারীরা দরকারি তথ্যগুলো সহজেই এক যন্ত্র থেকে অন্য যন্ত্রে নিয়ে কাজ করতে পারবেন। প্রাথমিকভাবে যুক্তরাষ্ট্রে বসবাসকারীরা এ সুবিধা পাবেন।<br />\r\nসূত্র: নাইনটুফাইভগুগলডটকম</p>', NULL, NULL, NULL, NULL, 5, '2023-04-06 02:42:06', '2023-05-09 22:39:48'),
(22, 'notice', 7, NULL, 'new Notice', NULL, 'new-notice', NULL, NULL, NULL, NULL, NULL, NULL, '<ul>\r\n	<li><a href=\"https://bcs.org.bd/page/notice/ICT-Cricket-Tournament-2023\" target=\"_blank\">&nbsp;বি-ট্র্যাক টেকনোলজিস আইসিটি ক্রিকেট টুর্নামেন্ট ২০২৩ :: ২৬ ফেব্রুয়ারি থেকে ০২ মার্চ</a></li>\r\n	<li><a href=\"https://bcs.org.bd/page/notice/agm-notice-2022\" target=\"_blank\">&nbsp;৩১তম বার্ষিক সাধারণ সভার বিজ্ঞপ্তি</a></li>\r\n	<li><a href=\"https://bcs.org.bd/page/notice/membership-discount\" target=\"_blank\">&nbsp;বিজয়ের মাসে নতুন সদস্যপদ অন্তর্ভূক্তিতে বিশেষ ছাড়!</a></li>\r\n	<li><a href=\"https://bcs.org.bd/page/notice/DDIExpo-2022-Invitation-for-Stall-Space-Booking\" target=\"_blank\">&nbsp;DDIExpo 2022 :: Invitation for Stall &amp; Space Booking</a></li>\r\n</ul>', NULL, NULL, NULL, NULL, 1, '2023-04-07 23:08:19', '2023-04-07 23:42:59'),
(23, 'notice', 7, NULL, 'demo', NULL, 'demo notice', NULL, NULL, NULL, NULL, NULL, NULL, '<p>zxdfsdfsdfsdf</p>', NULL, NULL, NULL, NULL, 1, '2023-04-07 23:20:49', '2023-04-07 23:43:02'),
(24, 'notice', 7, NULL, 'বিসিএস কম্পিউটার সিটি, আইডিবিতে চলছে “সিটি আইটি ঈদ উৎসব ২০২৩', NULL, 'latest news', NULL, NULL, NULL, NULL, NULL, NULL, '<p>latest newslatest newslatest newslatest newslatest newslatest newslatest news</p>', NULL, NULL, NULL, NULL, 1, '2023-04-07 23:24:10', '2023-04-12 23:46:15'),
(25, 'notice', 7, NULL, 'special notice', NULL, 'special notice', NULL, NULL, NULL, NULL, NULL, NULL, '<p>special noticespecial noticespecial noticespecial noticespecial notice</p>', NULL, NULL, NULL, NULL, 1, '2023-04-07 23:45:02', '2023-04-12 23:46:18'),
(26, 'gallery', 7, NULL, 'gallery', NULL, 'new event gallery', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-04-08 00:00:05', '2023-04-12 23:19:09'),
(27, 'gallery', 7, NULL, 'gallery', NULL, 'multi image', NULL, NULL, NULL, NULL, NULL, NULL, '<p>multi imagemulti imagemulti imagemulti imagemulti imagemulti image</p>', NULL, NULL, NULL, NULL, 3, '2023-04-08 00:08:05', '2023-04-12 23:19:12'),
(28, 'video', 7, NULL, 'new video section', NULL, 'new video section', NULL, NULL, NULL, NULL, NULL, NULL, '<h1>Laravel DB Custom Fields with EAV-Model: Worth It?</h1>\r\n\r\n<h1>Laravel DB Custom Fields with EAV-Model: Worth It?</h1>\r\n\r\n<h1>Laravel DB Custom Fields with EAV-Model: Worth It?</h1>', NULL, NULL, NULL, NULL, 3, '2023-04-08 00:28:43', '2023-04-08 00:48:31'),
(29, 'video', 7, NULL, 'new video', NULL, 'new video', NULL, NULL, NULL, NULL, NULL, NULL, '<h1>Laravel Validation: 12 Less-Known Tips in 13 Minutes</h1>', NULL, NULL, NULL, NULL, 3, '2023-04-08 00:35:23', '2023-04-08 00:48:34'),
(30, 'video', 7, NULL, 'new video', NULL, 'new video one', NULL, NULL, NULL, NULL, NULL, NULL, '<h1>Exceptions in Laravel: Why/How to Use and Create Your Own</h1>', NULL, NULL, NULL, NULL, 3, '2023-04-08 00:49:49', '2023-04-08 00:51:51'),
(31, 'video', 7, NULL, 'Exceptions in Laravel: Why/How to Use and Create Your Own', NULL, 'video url', NULL, NULL, NULL, NULL, 'h1', NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-04-08 00:55:55', '2023-05-17 02:27:03'),
(32, 'page', 7, NULL, 'new', NULL, 'new-page-demo', 'new-page-demo', 'new-page-demo', 'new-page-demo', 'this is cannonical url', 'new-page-demo', 'https://images.prothomalo.com/prothomalo-bangla%2F2023-02%2F50c31728-9652-4aa5-bd3f-83f0c86b7974%2Fprothomalo_bangla_2020_09_957b9e33_2b3b_4518_aae3_a3a699f72a5e_prothomalo_import_media_2017_11_14_58.webp?auto=format%2Ccompress&format=webp&w=640&dpr=1.0', '<p>new-page-demo</p>', 'new-page-demo', NULL, 'allow,robot', NULL, 5, '2023-04-12 01:34:57', '2023-04-12 03:33:30'),
(33, 'page', 7, NULL, 'test 1 page', NULL, 'test-1-page', 'test page summary meta title', 'test page summary keyword', 'test page summary meta Description', 'this is cannonical url', 'test page summary H1', 'https://images.prothomalo.com/prothomalo-bangla%2F2023-02%2F50c31728-9652-4aa5-bd3f-83f0c86b7974%2Fprothomalo_bangla_2020_09_957b9e33_2b3b_4518_aae3_a3a699f72a5e_prothomalo_import_media_2017_11_14_58.webp?auto=format%2Ccompress&format=webp&w=640&dpr=1.0', '<p>test page summary</p>', 'test page summary', NULL, 'allow,robot', NULL, 5, '2023-04-12 02:16:58', '2023-04-12 03:35:09'),
(34, 'page', 7, NULL, 'new page', NULL, 'new-page-create', 'meta', 'new-page-demo', 'new-page-create', 'this is cannonical url', 'h1', 'https://images.prothomalo.com/prothomalo-bangla%2F2023-02%2F50c31728-9652-4aa5-bd3f-83f0c86b7974%2Fprothomalo_bangla_2020_09_957b9e33_2b3b_4518_aae3_a3a699f72a5e_prothomalo_import_media_2017_11_14_58.webp?auto=format%2Ccompress&format=webp&w=640&dpr=1.0', '<p>BCS Computer City is the largest shopping complex in Bangladesh dedicated exclusively to computer hardware, accessories, and related products. Located in the heart of Dhaka city, BCS Computer City offers a one-stop shopping experience for both retail and wholesale customers.<br />\r\n<br />\r\nThe complex boasts multiple floors of shops, each specializing in different computer products, such as CPUs, motherboards, graphics cards, hard drives, RAM, monitors, keyboards, mice, printers, and much more. It also houses several service centers, where customers can have their computers repaired or upgraded.<br />\r\n<br />\r\nVisit our market to buy original IT products.</p>', 'new-page-create', NULL, 'allow,robot', NULL, 5, '2023-04-12 02:57:13', '2023-04-12 03:35:13'),
(35, 'page', 7, NULL, 'a232332', NULL, 'aaa', 'meta', 'key, meta', 'meta des', 'this is cannonical url', 'h1', 'https://images.prothomalo.com/prothomalo-bangla%2F2023-02%2F50c31728-9652-4aa5-bd3f-83f0c86b7974%2Fprothomalo_bangla_2020_09_957b9e33_2b3b_4518_aae3_a3a699f72a5e_prothomalo_import_media_2017_11_14_58.webp?auto=format%2Ccompress&format=webp&w=640&dpr=1.0', '<p>aboyt</p>', 'aa s', NULL, 'allow,robot', NULL, 5, '2023-04-12 03:11:17', '2023-04-17 01:06:10'),
(36, 'gallery', 7, NULL, 'gallery', NULL, 'gallery-1', 'meta', NULL, NULL, NULL, 'h1dfsds', NULL, '<p>Galery Des</p>', NULL, NULL, NULL, NULL, 3, '2023-04-12 23:23:44', '2023-05-13 01:42:22'),
(37, 'notice', 7, NULL, 'notice One', NULL, 'notice-one', NULL, NULL, NULL, NULL, NULL, NULL, '<p>notice-1</p>', NULL, NULL, NULL, NULL, 5, '2023-04-12 23:47:01', '2023-04-16 00:27:52'),
(38, 'blog', 7, NULL, 'HOW DO COMPANIES BACK UP THEIR DATA?.....', NULL, 'HOW DO COMPANIES BACK UP THEIR DATA', 'meta', 'meta,keyword', 'meta_des', 'this is cannonical url', 'h1', NULL, '<p>While bigger businesses have more data and, consequently,&nbsp;<a href=\"https://www.cshub.com/attacks/articles/the-biggest-data-breaches-and-leaks-of-2022\" target=\"_blank\">bigger breaches</a>, smaller companies are often easier targets for cybercriminals. Because of this, it is critical to have data protection in place, regardless of your business size.</p>\r\n\r\n<p>At a minimum, your organization needs backups of any sensitive information and any data that is critical to business continuity. That way, you can get things up and running, mitigate issues more quickly, and, hopefully, avoid a brand disaster in case of a breach. There are many different&nbsp;<a href=\"https://www.technology-solved.com/service/data-backup-recovery-solutions/\" target=\"_blank\">types of backups</a>, but the two main options are:</p>\r\n\r\n<ul>\r\n	<li><strong>Local</strong>: Local backups utilize physical storage devices that are on-premise. While this is generally one of the quicker and more affordable options, there are risks to having all of your data in one place.</li>\r\n	<li><strong>Cloud</strong>: Cloud backups, on the other hand, rely on copying data off-premise. This option has increased in popularity, as it often allows for automatic backups, easy-to-use data recovery, and gives the added safety of having data copies in another location in case of disaster.</li>\r\n</ul>\r\n\r\n<p>Within these two types, there are a number of varieties of ways to back up information. Additionally, some companies use a combination of Cloud and local backups for their sensitive data.</p>\r\n\r\n<h2>WAYS TO IMPLEMENT DLP IN YOUR BUSINESS</h2>\r\n\r\n<p>Once you&rsquo;ve established a backup plan, it&rsquo;s time to assess your&nbsp;<a href=\"https://www.technology-solved.com/service/data-network-security-solutions/\" target=\"_blank\">data security</a>. The correct solution for your business will depend on several factors. For example, are you expected to meet specific mandates or compliance regulations? Is your main goal to protect IP? Are stakeholders interested in understanding data in motion in your organization? With your answers in mind, you can start to dive into ways to manage and maintain DLP.</p>\r\n\r\n<h3><strong>DATA ENCRYPTION</strong></h3>\r\n\r\n<p>Encrypting personally identifiable information and company IP can help thwart cybercriminals. While this step doesn&rsquo;t mean you can skip other security practices, it can significantly reduce the risk of bad actors being able to use data &ndash; even if they can get their hands on it.</p>\r\n\r\n<h3><strong>ACCESS MANAGEMENT</strong></h3>\r\n\r\n<p>Assigning access to sensitive data based with multi-factor authentication or user-based access can significantly lessen the risks of a data breach. Classifying your information as structured and unstructured data, confidential information, intellectual property, etc., can help you set policies based on the level of sensitivity.</p>\r\n\r\n<h3><strong>EMPLOYEE TRAINING</strong></h3>\r\n\r\n<p>On that note, it&rsquo;s critical to set expectations and&nbsp;<a href=\"https://www.technology-solved.com/employee-cybersecurity-training/\" target=\"_blank\">educate your employees</a>. Insider threats and errors from staff utilizing personal or&nbsp;<a href=\"https://www.technology-solved.com/service/mobile-device-management/\" target=\"_blank\">insecure devices</a>&nbsp;or programs are major causes of data loss. Make sure your team is aware of expectations when sending or downloading different types of data, and put security measures in place to issue reminders or alert your security teams.</p>\r\n\r\n<h3><strong>DLP SOFTWARE &amp; SOLUTIONS</strong></h3>\r\n\r\n<p>Last but not least, there are DLP tools that can help manage your data security. Most modern solutions can detect and respond to risks in real-time without service interruption. Of course, the right choice will depend on your business&rsquo; systems, needs, and budget.</p>\r\n\r\n<p>Keeping up with best practices in data loss prevention and protection can be a real challenge, particularly for small to mid-size businesses. If you need help determining the right solution and keeping your cybersecurity up to date, consider reaching out to your&nbsp;<a href=\"https://www.technology-solved.com/locations/\" target=\"_blank\">local Computer Troubleshooters</a>. Our IT experts can assist you in finding the right security, support, and backup solutions to keep your business running smoothly.</p>', NULL, NULL, 'allow,robot', NULL, 3, '2023-04-14 22:48:14', '2023-05-10 00:46:54'),
(39, 'blog', 7, NULL, 'HOW TO SET A STATIC IP ADDRESS FOR A PRINTER', NULL, 'HOW TO SET A STATIC IP ADDRESS FOR A PRINTER', 'HOW TO SET A STATIC IP ADDRESS FOR A PRINTER', 'printer,address', 'meta_des', 'this is cannonical url', 'HOW TO SET A STATIC IP ADDRESS FOR A PRINTER', 'https://www.technology-solved.com/wp-content/uploads/2022/10/home-printer-457x326.jpg', '<h2>WHAT&rsquo;S A STATIC VS. DYNAMIC IP ADDRESS?</h2>\r\n\r\n<p>An IP address is a unique address that identifies a device connected to a local network, like your home or business&rsquo;s internet. There are two types, static and dynamic.</p>\r\n\r\n<p>Static IP addresses are primarily used for devices that need constant access to a network, like routers, printers, and servers. Since their identifiers are fixed, it&rsquo;s easy for other devices to initiate communication with them because they&rsquo;re the same every time.</p>\r\n\r\n<p>On the other hand, dynamic addresses are assigned to a network-connected device on a temporary basis by the network&rsquo;s router. They are typically more common than static addresses and are used on&nbsp;<a href=\"https://www.technology-solved.com/service/computer-repair/\" target=\"_blank\">home</a>, business, and consumer devices like computers, smartphones, and tablets. You can think of static addresses as permanent, while dynamic addresses are temporary.</p>\r\n\r\n<h2>HOW TO SET YOUR PRINTER&rsquo;S IP ADDRESS TO STATIC</h2>\r\n\r\n<p><img alt=\"printer on table at an office\" src=\"https://www.technology-solved.com/wp-content/uploads/2022/10/office-printer.jpg\" style=\"height:155px; width:300px\" /></p>\r\n\r\n<p>Unlike dynamic IP addresses, you need to set static IP addresses manually. Follow these steps to set your printer&rsquo;s IP address to static from a web browser.</p>\r\n\r\n<h3>1. FIND THE CURRENT IP ADDRESS OF YOUR PRINTER</h3>\r\n\r\n<p>You&rsquo;ll need to know your printer&rsquo;s&nbsp;<a href=\"https://www.techadvisor.com/article/725683/how-to-find-a-printers-ip-address.html\" target=\"_blank\">current IP address</a>&nbsp;to set a new one. Once you find it, copy and paste it or write it down for future reference.</p>\r\n\r\n<h3>2. INPUT YOUR PRINTER&rsquo;S CURRENT IP ADDRESS</h3>\r\n\r\n<p>Using a computer connected to the same network as your printer, open your preferred web browser. In the browser, enter the IP address you found in step one into the address field bar at the top of the window. Once you press &ldquo;enter,&rdquo; the Embedded Web Server homepage should open.</p>\r\n\r\n<h3>3. LOG-IN</h3>\r\n\r\n<p>Enter your system administrator password to log in.</p>\r\n\r\n<h3>4. ASSIGN A STATIC IPS</h3>\r\n\r\n<p>Go to the printer network settings page and find the IP network configuration tap. It may also be labeled TCP/IP. Click on it and change the value from &ldquo;dynamic&rdquo; or &ldquo;auto&rdquo; to &ldquo;static&rdquo; or &ldquo;manual.&rdquo;</p>\r\n\r\n<h3>5. ENTER NEW ADDRESS</h3>\r\n\r\n<p>Now you can set a new IP address for your printer. Enter the address you&rsquo;d like to use into the provided field, making sure that it&rsquo;s one available on your network to avoid issues with duplicate addresses. Now your network will assign the address to the printer each time it connects to a device.</p>\r\n\r\n<h3>6. SAVE</h3>\r\n\r\n<p>Last but not least, make sure to confirm your changes by clicking &ldquo;apply&rdquo; or &ldquo;save.&rdquo;</p>\r\n\r\n<p>Are you having device or network troubles? Whether it&rsquo;s your home computer or your business&rsquo;s security network, our team has the expertise and the resources to keep you connected and protected. Find a Computer Troubleshooters<a href=\"https://www.technology-solved.com/locations/\" target=\"_blank\">&nbsp;location near you</a>&nbsp;to learn more about our customized tech solutions and services.</p>', NULL, NULL, 'allow,robot', NULL, 3, '2023-04-15 00:13:32', '2023-05-17 22:44:10'),
(40, 'blog', 7, NULL, 'HOW DO I RESET MY KEYBOARD?', NULL, 'HOW DO I RESET MY KEYBOARD?', 'RESETTING YOUR KEYBOARD TO DEFAULT', 'reset,keyboard', 'meta_des', 'this is cannonical url', 'RESETTING YOUR KEYBOARD TO DEFAULT', 'https://www.technology-solved.com/wp-content/uploads/2022/09/office-keyboard-457x326.jpg', '<h2>RESETTING YOUR KEYBOARD TO DEFAULT</h2>\r\n\r\n<p>Are you experiencing problems with your keyboard? You can do a soft reset by reinstalling its drivers. Try following these steps to reset your keyboard to its default settings.</p>\r\n\r\n<h3>RESET A KEYBOARD ON A WINDOWS COMPUTER</h3>\r\n\r\n<p>Troubleshoot your&nbsp;<a href=\"https://www.technology-solved.com/windows-10-problems-and-solutions/\" target=\"_blank\">Windows computer</a>&nbsp;from home and reset your keyboard to default by following the steps below.</p>\r\n\r\n<p>1. Click the Windows logo key + R simultaneously, and type &ldquo;devmgmt.msc,&rdquo; or open Windows Settings and find the Device Manager in the control panel.<br />\r\n2. Click &ldquo;Keyboards&rdquo; and select the one that needs to be reset.<br />\r\n3. Uninstall the device by hitting the red X at the top.<br />\r\n4. Choose the &ldquo;Scan for hardware changes&rdquo; button.<br />\r\n5. Select your keyboard again, then hit the &ldquo;update device driver&rdquo; button.<br />\r\n6. Allow the newest drivers to install.<br />\r\n7. Restart your computer!</p>\r\n\r\n<p><img alt=\"person typing with keyboard\" src=\"https://www.technology-solved.com/wp-content/uploads/2022/09/keyboard-closeup.jpg\" style=\"height:155px; width:300px\" /></p>\r\n\r\n<h3>RESET A KEYBOARD ON A MAC COMPUTER</h3>\r\n\r\n<p>Follow these directions if you need to reset keyboard settings on a Mac.</p>\r\n\r\n<p>1. Hit the Apple icon in the upper left-hand corner of your computer.<br />\r\n2. Select &ldquo;System Preferences.&rdquo;<br />\r\n3. Click &ldquo;Keyboard&rdquo;<br />\r\n4. Hit the &ldquo;Modifier Keys&rdquo; button.<br />\r\n5. Select &ldquo;Restore Defaults&rdquo; and then hit OK.</p>\r\n\r\n<h2>RESET YOUR KEYBOARD LANGUAGE</h2>\r\n\r\n<p>Depending on your issue, all it may take to resolve your technical difficulties is resetting the language on your&nbsp;<a href=\"https://www.techadvisor.com/article/730051/how-to-change-keyboard-layout-language-in-windows-10.html\" target=\"_blank\">Windows</a>&nbsp;or&nbsp;<a href=\"https://support.apple.com/guide/mac-help/write-in-another-language-on-your-mac-mchlp1406/mac#:~:text=On%20your%20Mac%2C%20choose%20Apple,Keyboard%20%2C%20then%20click%20Input%20Sources.&amp;text=Click%20the%20Add%20button%20%2C%20then,Click%20Add.\" target=\"_blank\">Mac</a>. If you&rsquo;ve set a new preferred language, made customizations, or changed the keyboard layout, perhaps accidentally, this may do the trick.</p>\r\n\r\n<h2>TRY A HARD RESET</h2>\r\n\r\n<p>If resetting to your default keyboard or changing its language didn&rsquo;t work, try doing a hard reset. If you&rsquo;re using a wired external keyboard, unplug your device and wait about 30 seconds before plugging it back in again. Hit the ESC key until the keyboard begins to flash.</p>\r\n\r\n<p>If you&rsquo;re using a wireless keyboard, clearly, you won&rsquo;t be able to unplug it. Instead, turn it off using its power button and then follow the same steps detailed above.</p>\r\n\r\n<h2>WHAT IF I STILL CAN&rsquo;T FIX MY KEYBOARD?</h2>\r\n\r\n<p>If you&rsquo;re still having problems troubleshooting your keyboard, it may be time to turn to the experts at Computer Troubleshooters! Whether you have a laptop keyboard or an on-screen keyboard on your Apple, Android, or Windows, our team of professionals can help you fix any of your keyboard issues. You can also count on us for water damage repairs, security concerns, and more! Find a&nbsp;<a href=\"https://www.technology-solved.com/locations/\" target=\"_blank\">location near you</a>&nbsp;to get in touch with our experts today.</p>', NULL, NULL, 'allow,robot', NULL, 3, '2023-04-15 00:15:10', '2023-04-15 00:33:21'),
(41, 'blog', 7, NULL, 'DO YOU RECOMMEND COMPANIES USE ETHERNET OR WIFI?', NULL, 'DO YOU RECOMMEND COMPANIES USE ETHERNET OR WIFI', 'DO YOU RECOMMEND COMPANIES USE ETHERNET OR WIFI?', 'Ethernet,wifi', 'meta_des', 'this is cannonical url', 'H1', 'https://www.technology-solved.com/wp-content/uploads/2022/06/internet-connection-457x326.jpg', '<h2>WHAT&rsquo;S THE DIFFERENCE BETWEEN ETHERNET AND WIFI?</h2>\r\n\r\n<p>To put it simply, Ethernet is wired, and WiFi is wireless. As Lugo explains, &ldquo;the term Ethernet is generally used to describe a wired local area network. WiFi is a method of connecting to a network without cables.&rdquo; Both will connect you to the internet, but an Ethernet connection requires a physical connection using Ethernet ports and cables. A WiFi connection requires no physical cable hook-up and connects devices to the internet through a wireless router and modem.</p>\r\n\r\n<h2>IS ETHERNET MORE SECURE THAN WIFI?</h2>\r\n\r\n<p>If you&rsquo;re concerned about keeping your business data private, Lugo recommends using an Ethernet connection rather than a WiFi connection to connect your employees to the internet. &ldquo;Both options can be secured, but it is more complicated to secure a wireless network because it is more easily hacked. WiFi is susceptible to proximity hacks where an attacker is nearby but does not have to physically enter the business space.&rdquo;</p>\r\n\r\n<p>If you or your employees work remotely and use wireless connections, it&rsquo;s important to be cautious of the network you choose to connect to, especially if it&rsquo;s a public one. Public WiFi networks are more susceptible to hackers than wireless home or wired networks. So if your employees decide to work remotely from a local coffee shop, ensure they take precautions when&nbsp;<a href=\"https://www.technology-solved.com/stay-safe-using-public-wifi/\" target=\"_blank\">accessing public WiFi</a>&nbsp;to ensure your data stays secure.</p>\r\n\r\n<h2>WHAT ARE THE BENEFITS OF USING ETHERNET VS. WIFI?</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>WiFi is more popular with the world&rsquo;s&nbsp;<a href=\"https://www.statista.com/statistics/617136/digital-population-worldwide/\" target=\"_blank\">5 billion</a>&nbsp;internet users, especially on mobile devices, but that doesn&rsquo;t necessarily make it better. Bad WiFi signals can slow your connection speeds, and your connection can drop altogether if the network becomes overloaded. Ethernet network adapters typically offer more bandwidth, providing more room for data transfer. They also offer lower latency. While it&rsquo;s still possible for an Ethernet connection to become overloaded, too, it&rsquo;s not as likely.</p>\r\n\r\n<p>Overall, Ethernet offers a more stable and reliable connection. As Lugo reiterates, &ldquo;Ethernet is generally capable of faster speeds and is less prone to interference which provides greater reliability.&rdquo; While Ethernet cables limit your ability to move your devices around, it provides a more secure connection. Depending on the type of device you use, this is a small price to avoid security and connectivity issues.</p>\r\n\r\n<p>Do you need to get your businesses connected? Consider these tips to determine what type of network connection is best for your company.&nbsp;<a href=\"https://www.technology-solved.com/locations/\" target=\"_blank\">Contact</a>&nbsp;your local Computer Troubleshooters office today to protect your company with our data and network security solutions.</p>', NULL, NULL, 'allow,robot', NULL, 3, '2023-04-15 00:35:08', '2023-05-17 22:44:12'),
(42, 'notice', 7, NULL, 'বিসিএস কম্পিউটার সিটি, আইডিবিতে চলছে “সিটি আইটি ঈদ উৎসব ২০২৩', NULL, 'বিসিএস কম্পিউটার সিটি, আইডিবিতে চলছে “সিটি আইটি ঈদ উৎসব ২০২৩', 'বিসিএস কম্পিউটার সিটি, আইডিবিতে চলছে “সিটি আইটি ঈদ উৎসব ২০২৩', 'bcs, idb', 'এই সিটি আইটি ঈদ উৎসব ২০২৩ এর প্রধান সমন্বয়ক জনাব মোঃ জাহেদুল আলম বলেন, বিসিএস কম্পিউটার সিটি এদেশের সর্ববৃহৎ কম্পিউটার মার্কেট এবং ৯৫ শতাংশ ডিষ্ট্রিবিউটারের শোরুম এখানেই। তাই ক্রেতাগনের পন্যের সঠিক ও মানসম্মত সেবা প্রদানের লক্ষেই আমাদের এই আয়োজন।', 'this is cannonical url', 'বিসিএস কম্পিউটার সিটি, আইডিবিতে চলছে “সিটি আইটি ঈদ উৎসব ২০২৩', 'https://i.ibb.co/GVGSzyd/1.jpg', '<p>বিসিএস কম্পিউটার সিটি, আইডিবিতে চলছে <strong>&ldquo;সিটি আইটি ঈদ উৎসব ২০২৩&rdquo;</strong>।</p>\r\n\r\n<p>ঢাকা আগারগাঁও এ অবস্থিত বিসিএস কম্পিউটার সিটি, আইডিবিতে ম্যানেজমেন্ট কমিটির উদ্যোগে শুরু হয়েছে পবিত্র মাহে রমজান উপলক্ষে ১২ এপ্রিল হতে ২০ই এপ্রিল ২০২৩ইং পর্যন্ত &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>সিটি আইটি ঈদ উৎসব ২০২৩</strong> ।০৯ দিনের এই আয়োজনে বাংলাদেশের শীর্ষ স্থানীয় ব্র্যান্ড Acer, Tp link, Hp , Lenovo, Canon এবং Pentum অংশগ্রহন করে। ক্রেতাগণ ল্যাপটপ ও ডেস্কটপ পিসি এবং আরো অন্যান্য কম্পিউটার সামগ্রী কিনলেই পাচ্ছে আকর্ষনীয় উপহার।এই উদ্বোধনী অনুষ্ঠানে উপস্থিত ছিলেন বিসিএস কম্পিউটার সিটির ম্যানেজমেন্ট কমিটির সভাপতি জনাব এ এল মোজহার ইমাম চৌধুরী (পিনু), সহ-সভাপতি আকতার হোসেন খান, সাধারণ সম্পাদক মোঃ মাহবুবুর রহমান, সহ-সাধারণ সম্পাদক মোঃ জাহেদ আলী ভূঁইয়া, কোষাধ্যক্ষ জনাব আনোয়ারুর রহমান, কার্যকরী পরিষদের সদস্য জনাব ফজলুর বারী লিটন এবং জনাব রফিকুল ইসলাম , স্মার্ট টেকনোলজিস লিমিটেড এর পরিচালক জনাব মুজাহিদ আল বেরুনী সুজন, এক্সেল টেকনোলজিস লিমিটেড এর তুলসী কুমার সাহা, প্রবীর কুমার সাহা, গ্লোবাল ব্রান্ড প্রাঃ লিমিটেড এর মোঃ কামরুজ্জামান এবং আহ্বায়ক মোঃ জাহেদুল আলম ও ব্রান্ডের স্পন্সরবৃন্দ।উদ্বোধনী অনুষ্ঠানে আরও উপস্থিত ছিলেন বিসিএস কম্পিউটার সিটি আইডিবি এর ব্যবসায়ীগণ।</p>\r\n\r\n<p>বিসিএস কম্পিউটার সিটি এর সভাপতি জনাব এ. এল. মোজহার ইমাম চৌধুরী (পিনু) বলেন, অনেক সময় ক্রেতাগন তাদের ক্রয়কৃত পন্যের সরাসরি ব্র্যান্ড থেকে সেবা নিতে চায়। এই বিবেচনায় সকল ব্র্যান্ডকে একসাথে করে গ্রাহক সন্তুষ্টির লক্ষে আমাদের এই প্রয়াস।কমিটির সেক্রেটারী জেনারেল মোঃ মাহবুবুর রহমান বলেন মার্কেটে ক্রেতা সন্তুষ্টির লক্ষে সব সময় আমরা বিভিন্ন ধরনের আয়োজনের চেষ্টা করি ।&nbsp;</p>\r\n\r\n<p>এই <strong>সিটি আইটি ঈদ উৎসব ২০২৩</strong> এর প্রধান সমন্বয়ক জনাব মোঃ জাহেদুল আলম বলেন, বিসিএস কম্পিউটার সিটি এদেশের সর্ববৃহৎ কম্পিউটার মার্কেট এবং ৯৫ শতাংশ ডিষ্ট্রিবিউটারের শোরুম এখানেই। তাই ক্রেতাগনের পন্যের সঠিক ও মানসম্মত সেবা প্রদানের লক্ষেই আমাদের এই আয়োজন।</p>\r\n\r\n<p>উল্লেখ্য, <strong>সিটি আইটি ঈদ উৎসব ২০২৩</strong> চলাকালীন সময়ে মার্কেটে ক্রেতা সাধারণের জন্য থাকবে সব ধরনের পণ্যের উপর আকর্ষনীয় উপহার ও বিশেষ মূল্যছাড়।এই সময় মার্কেটের নিচ তলায় প্রত্যেক ব্র্যান্ডের প্রদর্শনী বুথও থাকছে ।&nbsp;&nbsp;&nbsp;</p>', NULL, NULL, 'allow,robot', NULL, 5, '2023-04-15 02:27:47', '2023-05-10 00:09:18'),
(43, 'notice', 7, NULL, 'j', NULL, 'j', NULL, NULL, NULL, NULL, NULL, NULL, '<p>j</p>', NULL, NULL, NULL, NULL, 5, '2023-04-16 00:34:43', '2023-05-10 00:09:14'),
(44, 'video', 7, NULL, 'video gallery one', NULL, 'video-gallery-1', 'meta', 'meta,keyword', NULL, 'this is cannonical url', 'H1', NULL, '<p>video gallery one</p>', NULL, NULL, 'allow,robot', NULL, 3, '2023-04-16 01:43:59', '2023-05-17 02:27:06'),
(45, 'video', 7, NULL, 'video gallery two', NULL, 'video-gallery-two', 'meta', 'meta,keyword', NULL, 'this is cannonical url', 'H1', NULL, '<p>video gallery two</p>', NULL, NULL, 'allow,robot', NULL, 3, '2023-04-16 01:59:01', '2023-05-17 02:27:09'),
(46, 'video', 7, NULL, 'gallery three', NULL, 'gallery-3', NULL, NULL, NULL, NULL, NULL, NULL, '<p>asf</p>', NULL, NULL, NULL, NULL, 3, '2023-04-16 02:02:56', '2023-05-17 02:27:12'),
(47, 'page', 7, NULL, 'About Us', NULL, 'about', NULL, NULL, NULL, NULL, 'h1', NULL, '<p>BCS Computer City is the largest shopping complex in Bangladesh dedicated exclusively to computer hardware, accessories, and related products. Located in the heart of Dhaka city, BCS Computer City offers a one-stop shopping experience for both retail and wholesale customers.<br />\r\n<br />\r\nThe complex boasts multiple floors of shops, each specializing in different computer products, such as CPUs, motherboards, graphics cards, hard drives, RAM, monitors, keyboards, mice, printers, and much more. It also houses several service centers, where customers can have their computers repaired or upgraded.<br />\r\n<br />\r\nVisit our market to buy original IT products.</p>', 'about page', NULL, NULL, NULL, 1, '2023-04-17 00:18:56', '2023-05-15 04:46:20'),
(48, 'page', 7, NULL, 'Why buy from us', NULL, 'why-buy-from-us', NULL, NULL, NULL, NULL, NULL, NULL, '<p>Located in the heart of Dhaka city, BCS Computer City offers a one-stop shopping experience for both retail and wholesale customers.<br />\r\n<br />\r\nThe complex boasts multiple floors of shops, each specializing in different computer products, such as CPUs, motherboards, graphics cards, hard drives, RAM, monitors, keyboards, mice, printers, and much more. It also houses several service centers, where customers can have their computers repaired or upgraded.<br />\r\n&nbsp;</p>', 'Why buy from us', NULL, NULL, NULL, 1, '2023-04-17 00:20:42', '2023-04-17 00:20:42'),
(50, 'member_gallery', 1, 4, 'Member Gallery of Company name', NULL, 'members-gallery-slug-1681817984', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-04-18 05:39:44', '2023-04-18 05:39:44'),
(51, 'member_offer', 1, 4, 'Offer by Company name', NULL, 'members-offer-slug-1681817984', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-04-18 05:39:44', '2023-04-18 05:39:44'),
(52, 'member_product', 1, 4, 'product by Company name', NULL, 'members-product-slug-1681817984', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-04-18 05:39:44', '2023-04-18 05:39:44'),
(53, 'member_product', 1, 4, 'service by Company name', NULL, 'members-service-slug-1681817984', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-04-18 05:39:44', '2023-04-18 05:39:44'),
(54, 'member_product', 1, 4, 'service by Company name', NULL, 'members-service-slug-1681817992', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-04-18 05:39:52', '2023-04-18 05:39:52'),
(55, 'member_product', 1, 4, 'service by Company name', NULL, 'members-service-slug-1681818095', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-04-18 05:41:35', '2023-04-18 05:41:35'),
(56, 'member_product', 1, 4, 'service by Company name', NULL, 'members-service-slug-1681818390', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-04-18 05:46:30', '2023-04-18 05:46:30'),
(57, 'member_gallery', 2, 1, 'name', NULL, 'members-gallery-slug-1681818393', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-04-18 05:46:33', '2023-05-08 00:40:36'),
(58, 'member_offer', 2, 1, 'Offer by StarTech Engineering Limited', NULL, 'members-offer-slug-1681818393', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-04-18 05:46:33', '2023-04-18 05:46:33'),
(59, 'member_product', 2, 1, 'product by StarTech Engineering Limited', NULL, 'members-product-slug-1681818393', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-04-18 05:46:33', '2023-04-18 05:46:33'),
(60, 'member_product', 2, 1, 'service by StarTech Engineering Limited', NULL, 'members-service-slug-1681818393', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-04-18 05:46:33', '2023-04-18 05:46:33'),
(61, 'member_product', 2, 1, 'service by StarTech Engineering Limited', NULL, 'members-service-slug-1681818398', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-04-18 05:46:38', '2023-04-18 05:46:38'),
(62, 'member_product', 2, 1, 'service by StarTech Engineering Limited', NULL, 'members-service-slug-1681818419', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-04-18 05:46:59', '2023-04-18 05:46:59'),
(63, 'member_product', 2, 1, 'service by StarTech Engineering Limited', NULL, 'members-service-slug-1681819084', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-04-18 05:58:04', '2023-04-18 05:58:04');
INSERT INTO `contents` (`id`, `content_type`, `user_id`, `member_id`, `name`, `subtitle`, `slug`, `meta_title`, `meta_keywords`, `meta_description`, `meta_canonical`, `meta_heading`, `meta_image`, `description`, `summary`, `note`, `meta_robots`, `barcode`, `status`, `created_at`, `updated_at`) VALUES
(65, 'notice', 7, NULL, 'Acknowledgement of Our Privacy Statement', NULL, 'acknowledgement-of-our-privacy-statement', 'meta', NULL, NULL, 'this is cannonical url', 'H1', 'http://127.0.0.1:8000/images/uploads/large/131444030-1813546558798609-4068022494702724694-n.jpg', '<p>&quot;Aggregated Data&quot; includes customer demographics, interests, and behavior based on Personal Data and other information provided to us which is compiled and analyzed on an aggregate and anonymous basis.</p>\r\n\r\n<p>&quot;Personal Data&quot; includes all information that enables an individual to be identified, including, by way of example, the individual&#39;s name and e-mail address.</p>\r\n\r\n<p>&quot;Public Information&quot; includes information posted to any public areas of the Site, such as bulletin boards, chat rooms, and comment areas. Please refer to our discussion of &quot;Public and Unsolicited Information&quot; contained in our&nbsp;<a href=\"https://www.bd.com/en-sea/terms-of-use\">Terms and Conditions</a>.</p>\r\n\r\n<p>&quot;Unsolicited Information&quot; includes any ideas for new products or modifications to existing products and other unsolicited communications. Personal Data included in Unsolicited Information will be handled in the manner set forth in this Privacy Statement and Consent; however please refer to our discussion of &quot;Public and Unsolicited Information&quot; contained in our&nbsp;<a href=\"https://www.bd.com/en-sea/terms-of-use\">Terms and Conditions</a>.</p>\r\n\r\n<p>&quot;User Data&quot; includes all information passively collected from users of the Site that does not identify a particular individual, including, by way of example, statistical information on Site usage. The terms &quot;you&quot;, &quot;your&quot; and &quot;yours&quot; when used in this Privacy Statement and Consent means any user of this Site.</p>', NULL, NULL, 'allow,robot', NULL, 5, '2023-05-02 00:05:38', '2023-05-10 00:09:10'),
(66, 'member_product', 1, 4, 'service by Company name', NULL, 'members-service-slug-1683010276', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-02 00:51:16', '2023-05-02 00:51:16'),
(67, 'member_product', 1, 4, 'service by Company name', NULL, 'members-service-slug-1683012079', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-02 01:21:19', '2023-05-02 01:21:19'),
(68, 'member_product', 1, 4, 'service by Company name', NULL, 'members-service-slug-1683012084', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-02 01:21:24', '2023-05-02 01:21:24'),
(69, 'member_product', 1, 4, 'service by Company name', NULL, 'members-service-slug-1683013477', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-02 01:44:37', '2023-05-02 01:44:37'),
(70, 'member_product', 1, 4, 'service by Company name', NULL, 'members-service-slug-1683013514', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-02 01:45:14', '2023-05-02 01:45:14'),
(71, 'member_product', 1, 4, 'service by Company name', NULL, 'members-service-slug-1683013643', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-02 01:47:23', '2023-05-02 01:47:23'),
(72, 'member_product', 1, 4, 'service by Company name', NULL, 'members-service-slug-1683016927', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-02 02:42:07', '2023-05-02 02:42:07'),
(73, 'member_product', 1, 4, 'service by Company name', NULL, 'members-service-slug-1683017149', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-02 02:45:49', '2023-05-02 02:45:49'),
(74, 'member_product', 1, 4, 'service by Company name', NULL, 'members-service-slug-1683017984', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-02 02:59:44', '2023-05-02 02:59:44'),
(75, 'member_product', 1, 4, 'service by Company name', NULL, 'members-service-slug-1683024534', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-02 04:48:54', '2023-05-02 04:48:54'),
(76, 'member_product', 1, 4, 'service by Company name', NULL, 'members-service-slug-1683024558', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-02 04:49:18', '2023-05-02 04:49:18'),
(77, 'member_product', 1, 4, 'service by Company name', NULL, 'members-service-slug-1683024566', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-02 04:49:26', '2023-05-02 04:49:26'),
(78, 'member_product', 1, 4, 'service by Company name', NULL, 'members-service-slug-1683024574', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-02 04:49:34', '2023-05-02 04:49:34'),
(79, 'member_product', 1, 4, 'service by Company name', NULL, 'members-service-slug-1683024579', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-02 04:49:39', '2023-05-02 04:49:39'),
(80, 'member_product', 1, 4, 'service by Company name', NULL, 'members-service-slug-1683024583', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-02 04:49:43', '2023-05-02 04:49:43'),
(81, 'member_product', 1, 4, 'service by Company name', NULL, 'members-service-slug-1683024609', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-02 04:50:09', '2023-05-02 04:50:09'),
(82, 'member_product', 1, 4, 'service by Company name', NULL, 'members-service-slug-1683025391', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-02 05:03:11', '2023-05-02 05:03:11'),
(83, 'member_product', 1, 4, 'service by Company name', NULL, 'members-service-slug-1683026215', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-02 05:16:55', '2023-05-02 05:16:55'),
(84, 'member_product', 1, 4, 'service by Company name', NULL, 'members-service-slug-1683026219', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-02 05:16:59', '2023-05-02 05:16:59'),
(85, 'member_product', 1, 4, 'service by Company name', NULL, 'members-service-slug-1683026226', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-02 05:17:06', '2023-05-02 05:17:06'),
(86, 'member_product', 1, 4, 'service by Company name', NULL, 'members-service-slug-1683026236', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-02 05:17:16', '2023-05-02 05:17:16'),
(87, 'member_product', 1, 4, 'service by Company name', NULL, 'members-service-slug-1683026297', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-02 05:18:17', '2023-05-02 05:18:17'),
(88, 'member_product', 1, 4, 'service by Company name', NULL, 'members-service-slug-1683026304', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-02 05:18:24', '2023-05-02 05:18:24'),
(89, 'member_product', 1, 4, 'service by Company name', NULL, 'members-service-slug-1683026684', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-02 05:24:44', '2023-05-02 05:24:44'),
(90, 'member_product', 1, 4, 'service by Company name', NULL, 'members-service-slug-1683026994', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-02 05:29:54', '2023-05-02 05:29:54'),
(91, 'member_offer', 7, 10, 'Offer by Company name', NULL, 'members-offer-slug-1683350169', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-05 23:16:09', '2023-05-05 23:16:09'),
(92, 'member_product', 7, 10, 'product by Company name', NULL, 'members-product-slug-1683350173', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-05 23:16:13', '2023-05-05 23:16:13'),
(93, 'member_product', 7, 10, 'service by Company name', NULL, 'members-service-slug-1683350175', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-05 23:16:15', '2023-05-05 23:16:15'),
(94, 'member_product', 7, 10, 'service by Company name', NULL, 'members-service-slug-1683350197', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-05 23:16:37', '2023-05-05 23:16:37'),
(95, 'member_gallery', 7, 10, 'Member Gallery of Company name', NULL, 'members-gallery-slug-1683350199', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-05 23:16:39', '2023-05-05 23:16:39'),
(96, 'member_product', 2, 1, 'service by StarTech Engineering Limited', NULL, 'members-service-slug-1683350297', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-05 23:18:17', '2023-05-05 23:18:17'),
(97, 'member_product', 2, 1, 'service by StarTech Engineering Limited', NULL, 'members-service-slug-1683350311', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-05 23:18:31', '2023-05-05 23:18:31'),
(98, 'member_gallery', 15, 11, 'Member Gallery of Company name', NULL, 'members-gallery-slug-1683442761', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-07 00:59:21', '2023-05-07 00:59:21'),
(99, 'member_offer', 15, 11, 'Offer by Company name', NULL, 'members-offer-slug-1683442762', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-07 00:59:22', '2023-05-07 00:59:22'),
(100, 'member_product', 15, 11, 'product by Company name', NULL, 'members-product-slug-1683442763', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-07 00:59:23', '2023-05-07 00:59:23'),
(101, 'member_product', 15, 11, 'service by Company name', NULL, 'members-service-slug-1683442765', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-07 00:59:25', '2023-05-07 00:59:25'),
(102, 'member_gallery', 22, 14, 'Member Gallery of Company name', NULL, 'members-gallery-slug-1683444425', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-07 01:27:05', '2023-05-07 01:27:05'),
(103, 'member_offer', 22, 14, 'Offer by Company name', NULL, 'members-offer-slug-1683444426', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-07 01:27:06', '2023-05-07 01:27:06'),
(104, 'member_product', 22, 14, 'product by Company name', NULL, 'members-product-slug-1683444427', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-07 01:27:07', '2023-05-07 01:27:07'),
(105, 'member_product', 22, 14, 'service by Company name', NULL, 'members-service-slug-1683444428', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-07 01:27:08', '2023-05-07 01:27:08'),
(106, 'blog', 7, NULL, 'New create blog 1', NULL, 'new-create-blog-1', NULL, NULL, NULL, NULL, NULL, NULL, '<p>Publish your passions your way. Whether you&#39;d like to share your knowledge, experiences or the&nbsp;<em>latest</em>&nbsp;news,&nbsp;<em>create</em>&nbsp;a unique and beautiful&nbsp;<em>blog&nbsp;Publish your passions your way. Whether you&#39;d like to share your knowledge, experiences or the latest news, create a unique and beautiful blog&nbsp;</em>Publish your passions your way. Whether you&#39;d like to share your knowledge, experiences or the&nbsp;<em>latest</em>&nbsp;news,&nbsp;<em>create</em>&nbsp;a unique and beautiful&nbsp;<em>blog</em></p>', NULL, NULL, NULL, NULL, 3, '2023-05-07 05:15:21', '2023-05-17 22:44:14'),
(107, 'blog', 7, NULL, 'a', NULL, 'a345234534', NULL, NULL, NULL, NULL, NULL, NULL, '<p>a</p>', NULL, NULL, NULL, NULL, 3, '2023-05-07 05:17:48', '2023-05-17 22:44:17'),
(108, 'blog', 7, NULL, 'Test blog two new tag and category', NULL, 'test-blog-two-new-tag-and-category', NULL, NULL, NULL, NULL, NULL, NULL, '<p>Test blog two new tag and category cat 1 tag 1</p>', NULL, NULL, NULL, NULL, 3, '2023-05-07 05:19:05', '2023-05-17 22:44:19'),
(109, 'blog', 7, NULL, 'Blog name tag 1 cat 3 Edited', NULL, 'blog-name-tag-2-cat-2-edited', NULL, NULL, NULL, NULL, NULL, NULL, '<p>Apr 8, 2023 &mdash; Deciding how to name a blog doesn&#39;t need to be difficult. Here&#39;s my simple brainstorming process (including 45+ blog name ideas &amp; examples).<br />\r\nMissing: tag- &lrm;| Must include: tag-<br />\r\n&nbsp;</p>', NULL, NULL, NULL, NULL, 3, '2023-05-07 05:42:54', '2023-05-17 22:44:21'),
(110, 'member_product', 2, 1, 'service by StarTech Engineering Limited', NULL, 'members-service-slug-1683521267', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-07 22:47:47', '2023-05-07 22:47:47'),
(111, 'slider', 7, NULL, 'new', NULL, 'new', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-05-09 01:08:02', '2023-05-09 22:39:24'),
(112, 'slider', 7, NULL, 'new test size slider', NULL, 'new-test-size-slider', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-05-09 01:11:55', '2023-05-09 22:39:30'),
(113, 'slider', 7, NULL, 'new test2', NULL, 'new-test2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-05-09 01:15:55', '2023-05-10 00:29:52'),
(114, 'slider', 7, NULL, 'new', NULL, 'newd4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-05-09 01:24:21', '2023-05-09 22:39:20'),
(115, 'slider', 7, NULL, 'new', NULL, 'newzxzgxfh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-05-09 01:25:41', '2023-05-09 22:39:17'),
(116, 'slider', 7, NULL, 'test4', NULL, 'test4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-05-09 01:37:32', '2023-05-09 22:39:14'),
(117, 'slider', 7, NULL, 'demogsxtf', NULL, 'demogsxtfdfgsd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-05-09 01:38:41', '2023-05-09 22:39:12'),
(118, 'slider', 7, NULL, 'test10', NULL, 'test10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-05-09 01:45:04', '2023-05-09 22:39:10'),
(119, 'slider', 7, NULL, 'demo', NULL, 'demo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-05-09 01:52:40', '2023-05-09 22:39:07'),
(120, 'slider', 7, NULL, 'demo', NULL, 'demo999', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-05-09 01:54:26', '2023-05-09 22:39:04'),
(121, 'slider', 7, NULL, 'demo', NULL, 'demozzx', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-05-09 02:00:48', '2023-05-09 22:39:02'),
(122, 'slider', 7, NULL, 'demo789', NULL, 'demo789', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-05-09 02:01:57', '2023-05-09 22:39:00'),
(123, 'slider', 7, NULL, 'new', NULL, 'new444', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-05-09 02:03:15', '2023-05-09 22:38:56'),
(124, 'blog', 7, NULL, 'new', NULL, 'test-244', NULL, NULL, NULL, NULL, NULL, NULL, '<p>44</p>', NULL, NULL, NULL, NULL, 3, '2023-05-09 02:03:58', '2023-05-17 22:44:03'),
(125, 'slider', 7, NULL, 'This is slider for testing', NULL, 'this-is-slider-for-testing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-05-09 02:08:09', '2023-05-09 22:38:53'),
(126, 'slider', 7, NULL, 'a', NULL, 'aa33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-05-09 02:10:02', '2023-05-09 22:38:49'),
(127, 'slider', 7, NULL, 'Slider 1', NULL, 'slider-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-05-09 02:15:59', '2023-05-09 22:38:46'),
(128, 'slider', 7, NULL, 'sdfasdfasdf', NULL, 'sdfasdfasdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-05-09 02:16:44', '2023-05-09 22:38:44'),
(129, 'slider', 7, NULL, 'd', NULL, 'dd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-05-09 02:22:01', '2023-05-09 22:38:43'),
(130, 'slider', 7, NULL, 's3', NULL, 's3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-05-09 02:22:26', '2023-05-09 22:38:40'),
(131, 'slider', 7, NULL, 'asdfasdf', NULL, 'asdfasasdfdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-05-09 02:23:12', '2023-05-09 22:38:38'),
(132, 'slider', 7, NULL, 'ss', NULL, 'sssss', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-05-09 02:30:19', '2023-05-09 22:38:36'),
(133, 'news', 7, NULL, 'রাজধানীতে তীব্র যানজট, তিন কারণ জানাল ট্রাফিক পুলিশ', NULL, 'রাজধানীতে-তীব্র যানজট তিন কারণ জানাল ট্রাফিক পুলিশ', 'রাজধানীতে তীব্র যানজট, তিন কারণ জানাল ট্রাফিক পুলিশ', 'যানজট, ট্রাফিক পুলিশ', 'রাজধানীতে তীব্র যানজট, তিন কারণ জানাল ট্রাফিক পুলিশ. রাজধানীতে তীব্র যানজট, তিন কারণ জানাল ট্রাফিক পুলিশ', 'this is cannonical url', 'H1', NULL, '<p>রাজধানীর আফতাবনগর থেকে মোটরসাইকেলে কারওয়ান বাজার অফিসে আসতে আজ স্বাভাবিক সময়ের চেয়ে দ্বিগুণের বেশি সময় লেগেছে বলে জানান সাদ্দাম হোসেন। তিনি কারওয়ান বাজারে একটি বেসরকারি সংস্থায় চাকরি করেন। তিনি জানান, এ সময় রামপুরা ইউলুপ, রামপুরা থেকে বিমানবন্দরমুখী সড়ক, এফডিসি থেকে সোনারগাঁও মোড় পর্যন্ত সড়ক এবং কারওয়ান বাজার রেলগেট এলাকায় তীব্র যানজট দেখা গেছে।</p>\r\n\r\n<p>সাদ্দাম তাঁর অভিজ্ঞতার বর্ণনা দিয়ে বলেন, সকাল পৌনে ১০টায় আফতাবনগর জি ব্লক থেকে রামপুরা ইউলুপ পর্যন্ত আসতে ৭-৮ মিনিটের মতো সময় লেগেছে। এরপর ইউলুপের ওপর যানজটে আটকে থাকতে হয়েছে প্রায় ১০ মিনিট। এরপর পুরো হাতিরঝিলে যানজট নেই।</p>\r\n\r\n<p>তবে হাতিরঝিলের মহানগর প্রকল্পের সামনের সড়কে খোঁড়াখুঁড়ি করায় যানবাহনের মহানগর প্রকল্পের সামনে থেকে হাতিরঝিলের এফডিসি মোড় পর্যন্ত সড়কে যানবাহনের চাপ বেশি ছিল। এ সময় এফডিসি মোড় থেকে সোনারগাঁও মোড়ের রাস্তাটিতে যানবাহনের তীব্র চাপ দেখা গেছে। এ সড়কে যানবাহনের চাপ বেশি দেখে সাতরাস্তা দিয়ে মেয়র আনিসুল হক সড়ক ঘুরে কারওয়ান বাজার আসতে গিয়েও ব্যাপক যানজটে পড়তে হয়েছে। এ সময় মেয়র আনিসুল হক সড়কের বিসিক ভবনের সামনে থেকে কারওয়ান বাজার রেলগেট পর্যন্ত তীব্র যানজট দেখা গেছে। সেখান থেকে কারওয়ান বাজারের আম্বর শাহ মসজিদের সামনে পর্যন্ত আসতে প্রায় ৪০ মিনিট সময় লেগেছে।</p>\r\n\r\n<p>নগরীর যানজট পরিস্থিত নিয়ে কথা হয় ঢাকা মেট্রোপলিটন পুলিশের (ডিএমপি) অতিরিক্ত কমিশনার (ট্রাফিক) মো. মুনিবুর রহমানের সঙ্গে। তিনি যানজটের তিনটি কারণের কথা উল্লেখ করেন। মুনিবুর রহমান বলেন, রমজান মাসে অফিসের সময় কমে যাওয়ায় পুরো ১২ ঘণ্টার চাপ এখন ৮ ঘণ্টায় ঠেকেছে। সংগত কারণেই যানজট বেড়ে গেছে। এর পাশাপাশি রাজধানীতে বিভিন্ন স্থানে চলছে খোঁড়াখুঁড়ির কাজ। এতে যানজট পরিস্থিতির সৃষ্টি হচ্ছে। আর তৃতীয় কারণ হলো, গুলশান বা উত্তরার মতো যেসব সড়কে দ্রুতগতির যান বেশি চলাচল করে, সেখানে হঠাৎ যানজটের সৃষ্টি হলে এর প্রভাব অন্য এলাকাগুলোতেও পড়ে। এ প্রসঙ্গে মুনিবুর রহমান গতকাল অফিস ছুটির পর গুলশানের যানজটের কথা উল্লেখ করেন। তিনি বলেন, গুলশানের যানজটের প্রভাব বিজয় সরণি পর্যন্ত ঠেকেছিল গতকাল।</p>\r\n\r\n<p>রাজধানীর উত্তর থেকে আজ মঙ্গলবার সকাল নয়টায় মোটরসাইকেলে রওনা হয়েছিলেন বেসরকারি অফিসের কর্মকর্তা শাজাহান সিরাজী। গন্তব্যস্থল ফার্মগেট। প্রথমেই যানজটে আটকা পড়লেন কাওলায়। এখান থেকে খিলখেত পর্যন্ত ছিল তীব্র যানজট। এরপর দ্বিতীয় দফায় বনানী ফ্লাইওভারে যানজটে আটকে ছিলেন অন্তত ৩০ মিনিট। মোটরসাইকেলে ফার্মগেটে আসতে লাগল পুরো দেড় ঘণ্টা।</p>\r\n\r\n<p>রাজধানীতে যানজটে এমনভাবে নাকাল হচ্ছেন নগরবাসী। টানা তিন দিনের ছুটির পর রমজানের মধ্যে কর্মদিবস বলতে গেলে শুরু হয় গতকাল সোমবার। গতকালও ছিল ভয়াবহ যানজট। বিশেষ করে অফিস ছুটির পর। অফিস থেকে বাড়িতে ফিরছেন, এমন দুজনের সঙ্গে কথা হলো। তাঁদের একজন সাইফুল ইসলাম গতকালের অভিজ্ঞতা জানিয়ে বললেন, &lsquo;বিকেল সাড়ে চারটায় কারওয়ান বাজার অফিস থেকে বের হয়ে সাড়ে ছয়টায় নিকেতনে পৌঁছালাম। স্বাভাবিক সময়ে লাগে ২০ থেকে ২৫ মিনিট।&rsquo;</p>\r\n\r\n<p>গতকাল বিকেল সোয়া চারটার দিকে রওনা হয়েছিলেন শুভ রহমান। তাঁর বাসা জিগাতলায়। নিকেতন থেকে গুলশান-১ ও মহাখালী দিয়ে জিগাতলায় যেতে সাড়ে তিন ঘণ্টা সময় লেগেছিল তাঁর। গতকাল বিকেলে যানজটের এমন অভিজ্ঞতা অনেকের।</p>', NULL, NULL, 'allow,robot', NULL, 1, '2023-05-09 22:44:17', '2023-05-09 23:19:34'),
(135, 'news', 7, NULL, 'চ্যাটজিপিটির সঙ্গে প্রতিদ্বন্দ্বিতা করতে ‘বার্ড’ হালনাগাদ করবে গুগল', NULL, 'চ্যাটজিপিটির সঙ্গে প্রতিদ্বন্দ্বিতা করতে ‘বার্ড’ হালনাগাদ করবে গুগল |', 'চ্যাটজিপিটির সঙ্গে প্রতিদ্বন্দ্বিতা করতে ‘বার্ড’ হালনাগাদ করবে গুগল', 'চ্যাটজিপিটি,গুগল', 'চ্যাটজিপিটির সঙ্গে প্রতিদ্বন্দ্বিতা করতে ‘বার্ড’ হালনাগাদ করবে গুগল . চ্যাটজিপিটির সঙ্গে প্রতিদ্বন্দ্বিতা করতে ‘বার্ড’ হালনাগাদ করবে গুগল', 'this is cannonical url', 'চ্যাটজিপিটির সঙ্গে প্রতিদ্বন্দ্বিতা করতে ‘বার্ড’ হালনাগাদ করবে গুগল', NULL, '<p>যুক্তরাষ্ট্রের প্রযুক্তিপ্রতিষ্ঠান ওপেনএআইয়ে তৈরি কৃত্রিম বুদ্ধিমত্তা (এআই) চ্যাটবট চ্যাটজিপিটির বিকল্প হিসেবে মাত্র দুই সপ্তাহ আগে বার্ড (বিএআরডি) নামের নিজস্ব চ্যাটবট উন্মুক্ত করেছে গুগল। প্রাথমিকভাবে যুক্তরাষ্ট্র ও যুক্তরাজ্যে বসবাসকারীদের জন্য উন্মুক্ত হওয়া এই চ্যাটবট ইংরেজি ভাষায় যেকোনো প্রশ্নের উত্তর দিতে পারে। ফলে চ্যাটবটটি আলাদাভাবে বিভিন্ন কাজে ব্যবহার করা যায়। কিন্তু উন্মুক্তের পর ব্যবহারকারীদের কাছে খুব বেশি সাড়া ফেলতে পারেনি বার্ড। বিষয়টি অজানা নয় গুগলের কাছেও। আর তাই শিগগিরই বার্ডের হালনাগাদ সংস্করণ উন্মুক্ত করা হবে বলে জানিয়েছেন গুগলের মূল প্রতিষ্ঠান অ্যালফাবেটের প্রধান নির্বাহী কর্মকর্তা সুন্দর পিচাই।</p>\r\n\r\n<p>বার্ড নামের চ্যাটবটটি মূলত গুগলের কৃত্রিম বুদ্ধিমত্তা প্রযুক্তি এলএএমডিএ (ল্যাঙ্গুয়েজ মডেল ফর ডায়ালগ অ্যাপ্লিকেশনস) কাজে লাগিয়ে তৈরি করা হয়েছে। তবে ব্যবহারকারীদের কাছে জনপ্রিয়তা না পাওয়ায় ভবিষ্যতে চ্যাটবটটিতে পিএএলএম ল্যাঙ্গুয়েজ মডেল ব্যবহার করা হবে বলে জানিয়েছেন সুন্দর পিচাই।</p>\r\n\r\n<p>বার্ড চ্যাটবট হালনাগাদের বিষয়ে সুন্দর পিচাই জানিয়েছেন, &lsquo;আমাদের কাছে আরও বেশ কিছু ল্যাঙ্গুয়েজ মডেল রয়েছে। শিগগিরই পিএএলএম ল্যাঙ্গুয়েজ মডেল ব্যবহার করা হবে বার্ড চ্যাটবটে। ফলে কোডিং বা গাণিতিক বিভিন্ন প্রশ্নের উত্তর ভালোভাবে দিতে পারবে চ্যাটবটটি।<br />\r\nসূত্র: দ্য ভার্জ</p>', NULL, NULL, 'allow,robot', NULL, 1, '2023-05-09 23:30:19', '2023-05-09 23:30:19'),
(136, 'news', 7, NULL, 'কম্পিউটারেও ব্যবহার করা যাবে অ্যান্ড্রয়েডের নিয়ারবাই শেয়ার সুবিধা', NULL, 'কম্পিউটারেও ব্যবহার করা যাবে অ্যান্ড্রয়েডের নিয়ারবাই শেয়ার সুবিধা ...', 'কম্পিউটারেও ব্যবহার করা যাবে অ্যান্ড্রয়েডের নিয়ারবাই শেয়ার সুবিধা', 'কম্পিউটারে, অ্যান্ড্রয়েডের', 'কম্পিউটারেও ব্যবহার করা যাবে অ্যান্ড্রয়েডের নিয়ারবাই শেয়ার সুবিধা', 'this is cannonical url', 'কম্পিউটারেও ব্যবহার করা যাবে অ্যান্ড্রয়েডের নিয়ারবাই শেয়ার সুবিধা', NULL, '<p>নিয়ারবাই শেয়ার সুবিধা কাজে লাগিয়ে অ্যান্ড্রয়েডচালিত ফোন, ট্যাবলেট কম্পিউটারসহ বিভিন্ন যন্ত্রের মধ্যে সহজে ফাইল আদান-প্রদান করা যায়। এবার উইন্ডোজ অপারেটিং সিস্টেমে চলা কম্পিউটার থেকেও অ্যান্ড্রয়েডচালিত ফোন, ট্যাবলেট কম্পিউটারে ফাইল আদান-প্রদান করা করা যাবে। নতুন এ সুবিধা দিতে উইন্ডোজের জন্য পরীক্ষামূলকভাবে নিয়ারবাই শেয়ার অ্যাপ উন্মুক্ত করেছে গুগল।</p>\r\n\r\n<p>গুগলের তথ্যমতে, অ্যান্ড্রয়েড ডটকম ওয়েবসাইট থেকে অ্যাপটি নামিয়ে উইন্ডোজ ১০ থেকে পরবর্তী সব অপারেটিং সিস্টেমে চলা কম্পিউটারে ব্যবহার করা যাবে। অ্যাপটি ব্যবহারের জন্য অবশ্যই ফাইল আদান-প্রদানের সঙ্গে যুক্ত ফোন ও কম্পিউটারে ওয়াই&ndash;ফাই ও ব্লু-টুথ অপশন চালু রাখতে হবে। এ সুবিধা কাজে লাগিয়ে সর্বোচ্চ ১৬ ফুট দূরে থাকা ফোন বা কম্পিউটারে ফাইল আদান-প্রদান করা যাবে।</p>\r\n\r\n<p>উইন্ডোজে নিয়ারবাই শেয়ার সুবিধা কাজে লাগিয়ে ফাইলের পাশাপাশি ছবি, অডিও, ভিডিওর পাশাপাশি চাইলে পুরো ফোল্ডারও আদান-প্রদান করা যাবে। ফলে ব্যবহারকারীরা দরকারি তথ্যগুলো সহজেই এক যন্ত্র থেকে অন্য যন্ত্রে নিয়ে কাজ করতে পারবেন। প্রাথমিকভাবে যুক্তরাষ্ট্রে বসবাসকারীরা এ সুবিধা পাবেন।<br />\r\nসূত্র: নাইনটুফাইভগুগলডটকম</p>', NULL, NULL, 'allow,robot', NULL, 1, '2023-05-09 23:31:50', '2023-05-09 23:31:50'),
(137, 'notice', 7, NULL, 'bcs notice testing', NULL, 'bcs-notice-testing', 'Acknowledgement of Our Privacy Statement', 'Acknowledgement,Statement', 'Acknowledgment of Our Privacy Statement.Acknowledgement of Our Privacy Statement', 'this is cannonical url', 'H1', NULL, '<p>&quot;Aggregated Data&quot; includes customer demographics, interests, and behavior based on Personal Data and other information provided to us which is compiled and analyzed on an aggregate and anonymous basis.</p>\r\n\r\n<p>&quot;Personal Data&quot; includes all information that enables an individual to be identified, including, by way of example, the individual&#39;s name and e-mail address.</p>\r\n\r\n<p>&quot;Public Information&quot; includes information posted to any public areas of the Site, such as bulletin boards, chat rooms, and comment areas. Please refer to our discussion of &quot;Public and Unsolicited Information&quot; contained in our&nbsp;<a href=\"https://www.bd.com/en-sea/terms-of-use\">Terms and Conditions</a>.</p>\r\n\r\n<p>&quot;Unsolicited Information&quot; includes any ideas for new products or modifications to existing products and other unsolicited communications. Personal Data included in Unsolicited Information will be handled in the manner set forth in this Privacy Statement and Consent; however please refer to our discussion of &quot;Public and Unsolicited Information&quot; contained in our&nbsp;<a href=\"https://www.bd.com/en-sea/terms-of-use\">Terms and Conditions</a>.</p>\r\n\r\n<p>&quot;User Data&quot; includes all information passively collected from users of the Site that does not identify a particular individual, including, by way of example, statistical information on Site usage. The terms &quot;you&quot;, &quot;your&quot; and &quot;yours&quot; when used in this Privacy Statement and Consent means any user of this Site.</p>', NULL, NULL, NULL, NULL, 1, '2023-05-10 00:08:44', '2023-05-10 00:08:44'),
(138, 'slider', 7, NULL, 'new test slider one', NULL, 'new-test-slider-one', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 00:30:45', '2023-05-10 00:30:45'),
(139, 'slider', 7, NULL, 'new test slider two', NULL, 'new-test-slider-two', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-05-10 00:32:02', '2023-05-13 04:39:35'),
(140, 'blog', 7, NULL, 'HOW DO COMPANIES BACK UP THEIR DATAAA', NULL, 'HOW DO COMPANIES BACK UP THEIR DATAAA', 'HOW DO COMPANIES BACK UP THEIR DATAAA', 'COMPANIES, DATA', 'HOW DO COMPANIES BACK UP THEIR DATAAA..HOW DO COMPANIES BACK UP THEIR DATAAA', 'this is cannonical url', 'H1', NULL, '<p>While bigger businesses have more data and, consequently,&nbsp;<a href=\"https://www.cshub.com/attacks/articles/the-biggest-data-breaches-and-leaks-of-2022\" target=\"_blank\">bigger breaches</a>, smaller companies are often easier targets for cybercriminals. Because of this, it is critical to have data protection in place, regardless of your business size.</p>\r\n\r\n<p>At a minimum, your organization needs backups of any sensitive information and any data that is critical to business continuity. That way, you can get things up and running, mitigate issues more quickly, and, hopefully, avoid a brand disaster in case of a breach. There are many different&nbsp;<a href=\"https://www.technology-solved.com/service/data-backup-recovery-solutions/\" target=\"_blank\">types of backups</a>, but the two main options are:</p>\r\n\r\n<ul>\r\n	<li><strong>Local</strong>: Local backups utilize physical storage devices that are on-premise. While this is generally one of the quicker and more affordable options, there are risks to having all of your data in one place.</li>\r\n	<li><strong>Cloud</strong>: Cloud backups, on the other hand, rely on copying data off-premise. This option has increased in popularity, as it often allows for automatic backups, easy-to-use data recovery, and gives the added safety of having data copies in another location in case of disaster.</li>\r\n</ul>\r\n\r\n<p>Within these two types, there are a number of varieties of ways to back up information. Additionally, some companies use a combination of Cloud and local backups for their sensitive data.</p>\r\n\r\n<h2>WAYS TO IMPLEMENT DLP IN YOUR BUSINESS</h2>\r\n\r\n<p>Once you&rsquo;ve established a backup plan, it&rsquo;s time to assess your&nbsp;<a href=\"https://www.technology-solved.com/service/data-network-security-solutions/\" target=\"_blank\">data security</a>. The correct solution for your business will depend on several factors. For example, are you expected to meet specific mandates or compliance regulations? Is your main goal to protect IP? Are stakeholders interested in understanding data in motion in your organization? With your answers in mind, you can start to dive into ways to manage and maintain DLP.</p>\r\n\r\n<h3><strong>DATA ENCRYPTION</strong></h3>\r\n\r\n<p>Encrypting personally identifiable information and company IP can help thwart cybercriminals. While this step doesn&rsquo;t mean you can skip other security practices, it can significantly reduce the risk of bad actors being able to use data &ndash; even if they can get their hands on it.</p>\r\n\r\n<h3><strong>ACCESS MANAGEMENT</strong></h3>\r\n\r\n<p>Assigning access to sensitive data based with multi-factor authentication or user-based access can significantly lessen the risks of a data breach. Classifying your information as structured and unstructured data, confidential information, intellectual property, etc., can help you set policies based on the level of sensitivity.</p>\r\n\r\n<h3><strong>EMPLOYEE TRAINING</strong></h3>\r\n\r\n<p>On that note, it&rsquo;s critical to set expectations and&nbsp;<a href=\"https://www.technology-solved.com/employee-cybersecurity-training/\" target=\"_blank\">educate your employees</a>. Insider threats and errors from staff utilizing personal or&nbsp;<a href=\"https://www.technology-solved.com/service/mobile-device-management/\" target=\"_blank\">insecure devices</a>&nbsp;or programs are major causes of data loss. Make sure your team is aware of expectations when sending or downloading different types of data, and put security measures in place to issue reminders or alert your security teams.</p>\r\n\r\n<h3><strong>DLP SOFTWARE &amp; SOLUTIONS</strong></h3>\r\n\r\n<p>Last but not least, there are DLP tools that can help manage your data security. Most modern solutions can detect and respond to risks in real-time without service interruption. Of course, the right choice will depend on your business&rsquo; systems, needs, and budget.</p>\r\n\r\n<p>Keeping up with best practices in data loss prevention and protection can be a real challenge, particularly for small to mid-size businesses. If you need help determining the right solution and keeping your cybersecurity up to date, consider reaching out to your&nbsp;<a href=\"https://www.technology-solved.com/locations/\" target=\"_blank\">local Computer Troubleshooters</a>. Our IT experts can assist you in finding the right security, support, and backup solutions to keep your business running smoothly.</p>', NULL, NULL, 'allow,robot', NULL, 1, '2023-05-10 00:50:59', '2023-05-10 00:50:59'),
(141, 'member_gallery', 27, 19, 'name', NULL, 'members-gallery-slug-1683702893', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 01:14:53', '2023-05-10 01:53:25'),
(142, 'member_offer', 27, 19, 'name', NULL, 'members-offer-slug-1683702893', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 01:14:53', '2023-05-10 05:07:49'),
(143, 'member_product', 27, 19, 'product by Company name', NULL, 'members-product-slug-1683702893', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 01:14:53', '2023-05-10 01:14:53'),
(144, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683702893', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 01:14:53', '2023-05-10 01:14:53'),
(145, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683702898', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 01:14:58', '2023-05-10 01:14:58'),
(146, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683702904', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 01:15:04', '2023-05-10 01:15:04'),
(147, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683702917', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 01:15:17', '2023-05-10 01:15:17'),
(148, 'member_product', 1, 4, 'service by Company name', NULL, 'members-service-slug-1683702973', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 01:16:13', '2023-05-10 01:16:13'),
(149, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683703109', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 01:18:29', '2023-05-10 01:18:29'),
(150, 'member_product', 1, 4, 'service by Company name', NULL, 'members-service-slug-1683703603', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 01:26:43', '2023-05-10 01:26:43'),
(151, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683703751', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 01:29:11', '2023-05-10 01:29:11'),
(152, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683703777', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 01:29:37', '2023-05-10 01:29:37'),
(153, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683703849', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 01:30:49', '2023-05-10 01:30:49'),
(154, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683704498', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 01:41:38', '2023-05-10 01:41:38'),
(155, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683704504', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 01:41:44', '2023-05-10 01:41:44'),
(156, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683704515', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 01:41:55', '2023-05-10 01:41:55'),
(157, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683704628', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 01:43:48', '2023-05-10 01:43:48'),
(158, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683704639', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 01:43:59', '2023-05-10 01:43:59'),
(159, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683704970', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 01:49:30', '2023-05-10 01:49:30'),
(160, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683705206', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 01:53:26', '2023-05-10 01:53:26'),
(161, 'member_gallery', 26, 18, 'name', NULL, 'members-gallery-slug-1683705256', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 01:54:16', '2023-05-10 01:54:32'),
(162, 'member_offer', 26, 18, 'Offer by Company name', NULL, 'members-offer-slug-1683705256', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 01:54:16', '2023-05-10 01:54:16'),
(163, 'member_product', 26, 18, 'product by Company name', NULL, 'members-product-slug-1683705256', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 01:54:16', '2023-05-10 01:54:16'),
(164, 'member_product', 26, 18, 'service by Company name', NULL, 'members-service-slug-1683705256', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 01:54:16', '2023-05-10 01:54:16'),
(165, 'member_product', 26, 18, 'service by Company name', NULL, 'members-service-slug-1683705261', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 01:54:21', '2023-05-10 01:54:21'),
(166, 'member_product', 26, 18, 'service by Company name', NULL, 'members-service-slug-1683705272', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 01:54:32', '2023-05-10 01:54:32'),
(167, 'member_product', 26, 18, 'service by Company name', NULL, 'members-service-slug-1683705282', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 01:54:42', '2023-05-10 01:54:42'),
(168, 'member_product', 26, 18, 'service by Company name', NULL, 'members-service-slug-1683705287', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 01:54:47', '2023-05-10 01:54:47'),
(169, 'member_product', 26, 18, 'service by Company name', NULL, 'members-service-slug-1683705295', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 01:54:55', '2023-05-10 01:54:55'),
(170, 'member_product', 26, 18, 'service by Company name', NULL, 'members-service-slug-1683705303', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 01:55:03', '2023-05-10 01:55:03'),
(171, 'member_product', 26, 18, 'service by Company name', NULL, 'members-service-slug-1683705594', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 01:59:54', '2023-05-10 01:59:54'),
(172, 'member_product', 26, 18, 'service by Company name', NULL, 'members-service-slug-1683705611', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 02:00:11', '2023-05-10 02:00:11'),
(173, 'member_product', 26, 18, 'service by Company name', NULL, 'members-service-slug-1683705635', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 02:00:35', '2023-05-10 02:00:35'),
(174, 'member_product', 26, 18, 'service by Company name', NULL, 'members-service-slug-1683706005', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 02:06:45', '2023-05-10 02:06:45'),
(175, 'member_product', 26, 18, 'service by Company name', NULL, 'members-service-slug-1683706066', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 02:07:46', '2023-05-10 02:07:46'),
(176, 'member_product', 26, 18, 'service by Company name', NULL, 'members-service-slug-1683706306', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 02:11:46', '2023-05-10 02:11:46'),
(177, 'member_product', 26, 18, 'service by Company name', NULL, 'members-service-slug-1683706602', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 02:16:42', '2023-05-10 02:16:42'),
(178, 'member_product', 26, 18, 'service by Company name', NULL, 'members-service-slug-1683706621', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 02:17:01', '2023-05-10 02:17:01'),
(179, 'member_product', 26, 18, 'service by Company name', NULL, 'members-service-slug-1683706722', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 02:18:42', '2023-05-10 02:18:42'),
(180, 'member_product', 26, 18, 'service by Company name', NULL, 'members-service-slug-1683706801', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 02:20:01', '2023-05-10 02:20:01'),
(181, 'member_product', 26, 18, 'service by Company name', NULL, 'members-service-slug-1683707358', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 02:29:18', '2023-05-10 02:29:18'),
(182, 'member_product', 26, 18, 'service by Company name', NULL, 'members-service-slug-1683707400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 02:30:00', '2023-05-10 02:30:00'),
(183, 'member_product', 26, 18, 'service by Company name', NULL, 'members-service-slug-1683707515', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 02:31:55', '2023-05-10 02:31:55'),
(184, 'member_product', 26, 18, 'service by Company name', NULL, 'members-service-slug-1683707670', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 02:34:30', '2023-05-10 02:34:30'),
(185, 'member_product', 26, 18, 'service by Company name', NULL, 'members-service-slug-1683707707', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 02:35:07', '2023-05-10 02:35:07'),
(186, 'member_product', 26, 18, 'service by Company name', NULL, 'members-service-slug-1683707724', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 02:35:24', '2023-05-10 02:35:24'),
(187, 'member_product', 26, 18, 'service by Company name', NULL, 'members-service-slug-1683707786', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 02:36:26', '2023-05-10 02:36:26'),
(188, 'member_product', 26, 18, 'service by Company name', NULL, 'members-service-slug-1683707856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 02:37:36', '2023-05-10 02:37:36'),
(189, 'member_product', 26, 18, 'service by Company name', NULL, 'members-service-slug-1683707906', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 02:38:26', '2023-05-10 02:38:26'),
(190, 'member_product', 26, 18, 'service by Company name', NULL, 'members-service-slug-1683707939', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 02:38:59', '2023-05-10 02:38:59'),
(191, 'member_product', 26, 18, 'service by Company name', NULL, 'members-service-slug-1683707989', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 02:39:49', '2023-05-10 02:39:49'),
(192, 'member_product', 26, 18, 'service by Company name', NULL, 'members-service-slug-1683708060', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 02:41:00', '2023-05-10 02:41:00'),
(193, 'member_product', 26, 18, 'service by Company name', NULL, 'members-service-slug-1683708085', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 02:41:25', '2023-05-10 02:41:25'),
(194, 'member_gallery', 25, 17, 'name', NULL, 'members-gallery-slug-1683708088', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 02:41:28', '2023-05-10 02:48:16'),
(195, 'member_offer', 25, 17, 'Offer by Company name', NULL, 'members-offer-slug-1683708088', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 02:41:28', '2023-05-10 02:41:28'),
(196, 'member_product', 25, 17, 'product by Company name', NULL, 'members-product-slug-1683708088', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 02:41:28', '2023-05-10 02:41:28'),
(197, 'member_product', 25, 17, 'service by Company name', NULL, 'members-service-slug-1683708088', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 02:41:28', '2023-05-10 02:41:28'),
(198, 'member_product', 25, 17, 'service by Company name', NULL, 'members-service-slug-1683708133', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 02:42:13', '2023-05-10 02:42:13'),
(199, 'member_product', 25, 17, 'service by Company name', NULL, 'members-service-slug-1683708141', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 02:42:21', '2023-05-10 02:42:21'),
(200, 'member_product', 25, 17, 'service by Company name', NULL, 'members-service-slug-1683708167', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 02:42:47', '2023-05-10 02:42:47'),
(201, 'member_product', 25, 17, 'service by Company name', NULL, 'members-service-slug-1683708447', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 02:47:27', '2023-05-10 02:47:27'),
(202, 'member_product', 25, 17, 'service by Company name', NULL, 'members-service-slug-1683708463', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 02:47:43', '2023-05-10 02:47:43'),
(203, 'member_product', 25, 17, 'service by Company name', NULL, 'members-service-slug-1683708496', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 02:48:16', '2023-05-10 02:48:16'),
(204, 'member_product', 25, 17, 'service by Company name', NULL, 'members-service-slug-1683708664', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 02:51:04', '2023-05-10 02:51:04'),
(205, 'member_product', 25, 17, 'service by Company name', NULL, 'members-service-slug-1683708722', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 02:52:02', '2023-05-10 02:52:02'),
(206, 'member_product', 25, 17, 'service by Company name', NULL, 'members-service-slug-1683708796', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 02:53:16', '2023-05-10 02:53:16'),
(207, 'member_product', 25, 17, 'service by Company name', NULL, 'members-service-slug-1683708856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 02:54:16', '2023-05-10 02:54:16'),
(208, 'member_product', 25, 17, 'service by Company name', NULL, 'members-service-slug-1683708857', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 02:54:17', '2023-05-10 02:54:17'),
(209, 'member_product', 25, 17, 'service by Company name', NULL, 'members-service-slug-1683708867', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 02:54:27', '2023-05-10 02:54:27'),
(210, 'member_product', 25, 17, 'service by Company name', NULL, 'members-service-slug-1683708891', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 02:54:51', '2023-05-10 02:54:51'),
(211, 'member_product', 25, 17, 'service by Company name', NULL, 'members-service-slug-1683708935', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 02:55:35', '2023-05-10 02:55:35'),
(212, 'member_product', 25, 17, 'service by Company name', NULL, 'members-service-slug-1683709335', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 03:02:15', '2023-05-10 03:02:15'),
(213, 'member_product', 25, 17, 'service by Company name', NULL, 'members-service-slug-1683709357', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 03:02:37', '2023-05-10 03:02:37'),
(214, 'member_product', 25, 17, 'service by Company name', NULL, 'members-service-slug-1683709436', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 03:03:56', '2023-05-10 03:03:56'),
(215, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683709608', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 03:06:48', '2023-05-10 03:06:48'),
(216, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683709611', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 03:06:51', '2023-05-10 03:06:51'),
(217, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683709671', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 03:07:51', '2023-05-10 03:07:51'),
(218, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683709902', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 03:11:42', '2023-05-10 03:11:42'),
(219, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683712937', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 04:02:17', '2023-05-10 04:02:17'),
(220, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683712944', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 04:02:24', '2023-05-10 04:02:24'),
(221, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683713144', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 04:05:44', '2023-05-10 04:05:44'),
(222, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683713221', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 04:07:01', '2023-05-10 04:07:01'),
(223, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683713294', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 04:08:14', '2023-05-10 04:08:14'),
(224, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683713686', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 04:14:46', '2023-05-10 04:14:46'),
(225, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683713689', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 04:14:49', '2023-05-10 04:14:49'),
(226, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683713770', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 04:16:10', '2023-05-10 04:16:10'),
(227, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683713785', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 04:16:25', '2023-05-10 04:16:25'),
(228, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683713793', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 04:16:33', '2023-05-10 04:16:33'),
(229, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683713804', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 04:16:44', '2023-05-10 04:16:44'),
(230, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683713957', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 04:19:17', '2023-05-10 04:19:17'),
(231, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683714001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 04:20:01', '2023-05-10 04:20:01'),
(232, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683714177', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 04:22:57', '2023-05-10 04:22:57'),
(233, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683714237', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 04:23:57', '2023-05-10 04:23:57');
INSERT INTO `contents` (`id`, `content_type`, `user_id`, `member_id`, `name`, `subtitle`, `slug`, `meta_title`, `meta_keywords`, `meta_description`, `meta_canonical`, `meta_heading`, `meta_image`, `description`, `summary`, `note`, `meta_robots`, `barcode`, `status`, `created_at`, `updated_at`) VALUES
(234, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683714259', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 04:24:19', '2023-05-10 04:24:19'),
(235, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683714285', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 04:24:45', '2023-05-10 04:24:45'),
(236, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683714431', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 04:27:11', '2023-05-10 04:27:11'),
(237, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683714448', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 04:27:28', '2023-05-10 04:27:28'),
(238, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683714458', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 04:27:38', '2023-05-10 04:27:38'),
(239, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683714492', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 04:28:12', '2023-05-10 04:28:12'),
(240, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683714645', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 04:30:45', '2023-05-10 04:30:45'),
(241, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683714910', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 04:35:10', '2023-05-10 04:35:10'),
(242, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683714979', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 04:36:19', '2023-05-10 04:36:19'),
(243, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683715036', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 04:37:16', '2023-05-10 04:37:16'),
(244, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683715141', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 04:39:01', '2023-05-10 04:39:01'),
(245, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683715204', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 04:40:04', '2023-05-10 04:40:04'),
(246, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683715217', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 04:40:17', '2023-05-10 04:40:17'),
(247, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683715305', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 04:41:45', '2023-05-10 04:41:45'),
(248, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683715319', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 04:41:59', '2023-05-10 04:41:59'),
(249, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683715402', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 04:43:22', '2023-05-10 04:43:22'),
(250, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683715580', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 04:46:20', '2023-05-10 04:46:20'),
(251, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683715775', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 04:49:35', '2023-05-10 04:49:35'),
(252, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683715861', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 04:51:01', '2023-05-10 04:51:01'),
(253, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683715890', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 04:51:30', '2023-05-10 04:51:30'),
(254, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683715934', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 04:52:14', '2023-05-10 04:52:14'),
(255, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683715960', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 04:52:40', '2023-05-10 04:52:40'),
(256, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683716227', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 04:57:07', '2023-05-10 04:57:07'),
(257, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683716239', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 04:57:19', '2023-05-10 04:57:19'),
(258, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683716325', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 04:58:45', '2023-05-10 04:58:45'),
(259, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683716335', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 04:58:55', '2023-05-10 04:58:55'),
(260, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683716339', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 04:58:59', '2023-05-10 04:58:59'),
(261, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683716356', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 04:59:16', '2023-05-10 04:59:16'),
(262, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683716369', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 04:59:29', '2023-05-10 04:59:29'),
(263, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683716377', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 04:59:37', '2023-05-10 04:59:37'),
(264, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683716483', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 05:01:23', '2023-05-10 05:01:23'),
(265, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683716488', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 05:01:28', '2023-05-10 05:01:28'),
(266, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683716498', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 05:01:38', '2023-05-10 05:01:38'),
(267, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683716586', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 05:03:06', '2023-05-10 05:03:06'),
(268, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683716589', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 05:03:09', '2023-05-10 05:03:09'),
(269, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683716592', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 05:03:12', '2023-05-10 05:03:12'),
(270, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683716856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 05:07:36', '2023-05-10 05:07:36'),
(271, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683716887', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 05:08:07', '2023-05-10 05:08:07'),
(272, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683717099', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 05:11:39', '2023-05-10 05:11:39'),
(273, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683717161', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 05:12:41', '2023-05-10 05:12:41'),
(274, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683717168', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 05:12:48', '2023-05-10 05:12:48'),
(275, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683717175', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 05:12:55', '2023-05-10 05:12:55'),
(276, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683717366', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 05:16:06', '2023-05-10 05:16:06'),
(277, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683717411', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 05:16:51', '2023-05-10 05:16:51'),
(278, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683717424', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 05:17:04', '2023-05-10 05:17:04'),
(279, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683717430', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 05:17:10', '2023-05-10 05:17:10'),
(280, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683717459', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 05:17:39', '2023-05-10 05:17:39'),
(281, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683717537', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 05:18:57', '2023-05-10 05:18:57'),
(282, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683717665', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 05:21:05', '2023-05-10 05:21:05'),
(283, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683717772', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 05:22:52', '2023-05-10 05:22:52'),
(284, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683717779', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 05:22:59', '2023-05-10 05:22:59'),
(285, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683717789', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 05:23:09', '2023-05-10 05:23:09'),
(286, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683717816', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 05:23:36', '2023-05-10 05:23:36'),
(287, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683717818', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 05:23:38', '2023-05-10 05:23:38'),
(288, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683717836', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 05:23:56', '2023-05-10 05:23:56'),
(289, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683718320', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 05:32:00', '2023-05-10 05:32:00'),
(290, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683718349', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 05:32:29', '2023-05-10 05:32:29'),
(291, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683718360', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 05:32:40', '2023-05-10 05:32:40'),
(292, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683718363', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 05:32:43', '2023-05-10 05:32:43'),
(293, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683718372', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 05:32:52', '2023-05-10 05:32:52'),
(294, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683718438', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 05:33:58', '2023-05-10 05:33:58'),
(295, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683718449', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 05:34:09', '2023-05-10 05:34:09'),
(296, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683718467', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 05:34:27', '2023-05-10 05:34:27'),
(297, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683718477', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 05:34:37', '2023-05-10 05:34:37'),
(298, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683718543', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 05:35:43', '2023-05-10 05:35:43'),
(299, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683778999', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 22:23:19', '2023-05-10 22:23:19'),
(300, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683779003', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 22:23:23', '2023-05-10 22:23:23'),
(301, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683780265', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 22:44:25', '2023-05-10 22:44:25'),
(302, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683782434', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 23:20:34', '2023-05-10 23:20:34'),
(303, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683782435', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-10 23:20:35', '2023-05-10 23:20:35'),
(304, 'member_product', 26, 18, 'service by Company name', NULL, 'members-service-slug-1683786466', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 00:27:46', '2023-05-11 00:27:46'),
(305, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683786662', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 00:31:02', '2023-05-11 00:31:02'),
(306, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683786664', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 00:31:04', '2023-05-11 00:31:04'),
(307, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683786697', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 00:31:37', '2023-05-11 00:31:37'),
(308, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683787372', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 00:42:52', '2023-05-11 00:42:52'),
(309, 'member_product', 26, 18, 'service by Company name', NULL, 'members-service-slug-1683787529', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 00:45:29', '2023-05-11 00:45:29'),
(310, 'member_product', 26, 18, 'service by Company name', NULL, 'members-service-slug-1683787573', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 00:46:13', '2023-05-11 00:46:13'),
(311, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683788376', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 00:59:36', '2023-05-11 00:59:36'),
(312, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683788385', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 00:59:45', '2023-05-11 00:59:45'),
(313, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683788403', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 01:00:03', '2023-05-11 01:00:03'),
(314, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683788408', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 01:00:08', '2023-05-11 01:00:08'),
(315, 'member_product', 26, 18, 'service by Company name', NULL, 'members-service-slug-1683788694', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 01:04:54', '2023-05-11 01:04:54'),
(316, 'member_product', 26, 18, 'service by Company name', NULL, 'members-service-slug-1683788697', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 01:04:57', '2023-05-11 01:04:57'),
(317, 'member_product', 26, 18, 'service by Company name', NULL, 'members-service-slug-1683788863', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 01:07:43', '2023-05-11 01:07:43'),
(318, 'member_product', 26, 18, 'service by Company name', NULL, 'members-service-slug-1683788865', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 01:07:45', '2023-05-11 01:07:45'),
(319, 'member_product', 26, 18, 'service by Company name', NULL, 'members-service-slug-1683788985', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 01:09:45', '2023-05-11 01:09:45'),
(320, 'member_product', 26, 18, 'service by Company name', NULL, 'members-service-slug-1683789776', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 01:22:56', '2023-05-11 01:22:56'),
(321, 'member_product', 26, 18, 'service by Company name', NULL, 'members-service-slug-1683789779', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 01:22:59', '2023-05-11 01:22:59'),
(322, 'member_product', 26, 18, 'service by Company name', NULL, 'members-service-slug-1683789782', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 01:23:02', '2023-05-11 01:23:02'),
(323, 'member_product', 26, 18, 'service by Company name', NULL, 'members-service-slug-1683789847', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 01:24:07', '2023-05-11 01:24:07'),
(324, 'member_product', 26, 18, 'service by Company name', NULL, 'members-service-slug-1683789865', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 01:24:25', '2023-05-11 01:24:25'),
(325, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683790384', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 01:33:04', '2023-05-11 01:33:04'),
(326, 'member_product', 26, 18, 'service by Company name', NULL, 'members-service-slug-1683791717', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 01:55:17', '2023-05-11 01:55:17'),
(327, 'member_product', 26, 18, 'service by Company name', NULL, 'members-service-slug-1683791789', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 01:56:29', '2023-05-11 01:56:29'),
(328, 'member_product', 26, 18, 'service by Company name', NULL, 'members-service-slug-1683791817', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 01:56:57', '2023-05-11 01:56:57'),
(329, 'member_product', 26, 18, 'service by Company name', NULL, 'members-service-slug-1683791819', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 01:56:59', '2023-05-11 01:56:59'),
(330, 'member_product', 26, 18, 'service by Company name', NULL, 'members-service-slug-1683791828', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 01:57:08', '2023-05-11 01:57:08'),
(331, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683791995', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 01:59:55', '2023-05-11 01:59:55'),
(332, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683791998', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 01:59:58', '2023-05-11 01:59:58'),
(333, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683792000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 02:00:00', '2023-05-11 02:00:00'),
(334, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683792005', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 02:00:05', '2023-05-11 02:00:05'),
(335, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683792008', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 02:00:08', '2023-05-11 02:00:08'),
(336, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683792012', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 02:00:12', '2023-05-11 02:00:12'),
(337, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683792023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 02:00:23', '2023-05-11 02:00:23'),
(338, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683792026', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 02:00:26', '2023-05-11 02:00:26'),
(339, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683792032', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 02:00:32', '2023-05-11 02:00:32'),
(340, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683792036', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 02:00:36', '2023-05-11 02:00:36'),
(341, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683792039', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 02:00:39', '2023-05-11 02:00:39'),
(342, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683792043', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 02:00:43', '2023-05-11 02:00:43'),
(343, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683792045', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 02:00:45', '2023-05-11 02:00:45'),
(344, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683792057', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 02:00:57', '2023-05-11 02:00:57'),
(345, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683792342', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 02:05:42', '2023-05-11 02:05:42'),
(346, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683792346', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 02:05:46', '2023-05-11 02:05:46'),
(347, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683792355', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 02:05:55', '2023-05-11 02:05:55'),
(348, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683792362', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 02:06:02', '2023-05-11 02:06:02'),
(349, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683792367', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 02:06:07', '2023-05-11 02:06:07'),
(350, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683792396', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 02:06:36', '2023-05-11 02:06:36'),
(351, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683792401', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 02:06:41', '2023-05-11 02:06:41'),
(352, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683792537', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 02:08:57', '2023-05-11 02:08:57'),
(353, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683792542', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 02:09:02', '2023-05-11 02:09:02'),
(354, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683792550', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 02:09:10', '2023-05-11 02:09:10'),
(355, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683792686', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 02:11:26', '2023-05-11 02:11:26'),
(356, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683792769', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 02:12:49', '2023-05-11 02:12:49'),
(357, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683792777', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 02:12:57', '2023-05-11 02:12:57'),
(358, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683792819', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 02:13:39', '2023-05-11 02:13:39'),
(359, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683792832', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 02:13:52', '2023-05-11 02:13:52'),
(360, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683792853', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 02:14:13', '2023-05-11 02:14:13'),
(361, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683792862', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 02:14:22', '2023-05-11 02:14:22'),
(362, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683792979', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 02:16:19', '2023-05-11 02:16:19'),
(363, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683792985', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 02:16:25', '2023-05-11 02:16:25'),
(364, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683792995', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 02:16:35', '2023-05-11 02:16:35'),
(365, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683793000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 02:16:40', '2023-05-11 02:16:40'),
(366, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683793003', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 02:16:43', '2023-05-11 02:16:43'),
(367, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683793087', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 02:18:07', '2023-05-11 02:18:07'),
(368, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683793103', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 02:18:23', '2023-05-11 02:18:23'),
(369, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683793110', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 02:18:30', '2023-05-11 02:18:30'),
(370, 'member_product', 26, 18, 'service by Company name', NULL, 'members-service-slug-1683793234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 02:20:34', '2023-05-11 02:20:34'),
(371, 'member_product', 2, 1, 'service by StarTech Engineering Limited', NULL, 'members-service-slug-1683795711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 03:01:51', '2023-05-11 03:01:51'),
(372, 'member_product', 2, 1, 'service by StarTech Engineering Limited', NULL, 'members-service-slug-1683795717', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 03:01:57', '2023-05-11 03:01:57'),
(373, 'member_product', 2, 1, 'service by StarTech Engineering Limited', NULL, 'members-service-slug-1683795722', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 03:02:02', '2023-05-11 03:02:02'),
(374, 'member_product', 2, 1, 'service by StarTech Engineering Limited', NULL, 'members-service-slug-1683795733', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 03:02:13', '2023-05-11 03:02:13'),
(375, 'member_product', 2, 1, 'service by StarTech Engineering Limited', NULL, 'members-service-slug-1683795831', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 03:03:51', '2023-05-11 03:03:51'),
(376, 'member_product', 2, 1, 'service by StarTech Engineering Limited', NULL, 'members-service-slug-1683795836', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 03:03:56', '2023-05-11 03:03:56'),
(377, 'member_product', 2, 1, 'service by StarTech Engineering Limited', NULL, 'members-service-slug-1683795842', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 03:04:02', '2023-05-11 03:04:02'),
(378, 'member_product', 2, 1, 'service by StarTech Engineering Limited', NULL, 'members-service-slug-1683795847', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 03:04:07', '2023-05-11 03:04:07'),
(379, 'member_product', 2, 1, 'service by StarTech Engineering Limited', NULL, 'members-service-slug-1683795854', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 03:04:14', '2023-05-11 03:04:14'),
(380, 'member_product', 2, 1, 'service by StarTech Engineering Limited', NULL, 'members-service-slug-1683795859', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 03:04:19', '2023-05-11 03:04:19'),
(381, 'member_product', 2, 1, 'service by StarTech Engineering Limited', NULL, 'members-service-slug-1683795925', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 03:05:25', '2023-05-11 03:05:25'),
(382, 'member_product', 2, 1, 'service by StarTech Engineering Limited', NULL, 'members-service-slug-1683795957', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-11 03:05:57', '2023-05-11 03:05:57'),
(383, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683957314', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-12 23:55:14', '2023-05-12 23:55:14'),
(384, 'member_product', 27, 19, 'service by Company name', NULL, 'members-service-slug-1683957320', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-12 23:55:20', '2023-05-12 23:55:20'),
(385, 'gallery', 7, NULL, 'gallery1212', NULL, 'test-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-13 01:06:13', '2023-05-13 02:10:02'),
(386, 'gallery', 7, NULL, 'gallery', NULL, 'test-008', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-13 01:07:50', '2023-05-13 01:07:50'),
(387, 'gallery', 7, NULL, 'gallery', NULL, 'test-009', 'meta', 'new,demo', 'test-009 test-009 des', 'this is cannonical url', 'H1', NULL, '<p>test-009</p>', NULL, NULL, 'allow,robot', NULL, 1, '2023-05-13 01:12:26', '2023-05-13 01:12:26'),
(388, 'gallery', 7, NULL, 'gallery', NULL, 'test-010', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-13 01:13:16', '2023-05-13 01:13:16'),
(389, 'gallery', 7, NULL, 'gallery', NULL, 'test-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-13 01:14:27', '2023-05-13 01:14:27'),
(390, 'gallery', 7, NULL, 'gallery', NULL, 'test-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-13 01:44:13', '2023-05-13 01:44:13'),
(391, 'gallery', 7, NULL, 'gallery', NULL, 'test-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-13 01:44:52', '2023-05-13 01:44:52'),
(392, 'gallery', 7, NULL, 'gallery', NULL, 'test-014', 'meta', NULL, NULL, NULL, 'H1', NULL, '<p>image name two&nbsp;image name two</p>', NULL, NULL, 'allow,robot', NULL, 1, '2023-05-13 02:13:51', '2023-05-13 02:13:51'),
(394, 'press', 7, NULL, 'new-press-release', NULL, 'new-press-relaease', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-14 04:23:18', '2023-05-14 04:23:18'),
(395, 'gallery', 7, NULL, 'test20', NULL, 'test-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-17 00:10:38', '2023-05-17 00:10:38'),
(396, 'video', 7, NULL, 'new video test', NULL, 'new video test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-05-17 01:53:50', '2023-05-17 02:37:41'),
(397, 'video', 7, NULL, 'video test 23', NULL, 'video-test-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-05-17 02:37:25', '2023-05-17 02:45:26'),
(398, 'video', 7, NULL, 'video test 24', NULL, 'video-test-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-05-17 02:42:03', '2023-05-17 02:45:29'),
(399, 'video', 7, NULL, 'test video 30', NULL, 'test video 30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-05-17 02:46:36', '2023-05-17 04:18:39'),
(400, 'video', 7, NULL, 'test25', NULL, 'test-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-05-17 02:50:20', '2023-05-17 04:52:55'),
(401, 'video', 7, NULL, 'test35', NULL, 'test-35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-05-17 03:08:37', '2023-05-17 04:52:57'),
(402, 'video', 7, NULL, 'text 30', NULL, 'text-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-05-17 04:37:57', '2023-05-17 04:52:59'),
(403, 'video', 7, NULL, 'test50', NULL, 'test50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-05-17 04:47:50', '2023-05-17 04:53:06'),
(404, 'video', 7, NULL, 'demozdd', NULL, 'demozdd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-05-17 04:48:59', '2023-05-17 04:53:03'),
(405, 'video', 7, NULL, 'testvideo 51', NULL, 'testvideo 51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-05-17 04:53:41', '2023-05-17 05:50:12'),
(406, 'video', 7, NULL, 'test55', NULL, 'test55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-05-17 05:49:57', '2023-05-17 06:29:14'),
(407, 'video', 7, NULL, 'demo test video 150', NULL, 'demo test video 150', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-05-17 06:30:26', '2023-05-17 22:39:36'),
(408, 'video', 7, NULL, 'test video 35', NULL, 'test video 35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-05-17 22:40:34', '2023-05-17 23:24:08'),
(409, 'video', 7, NULL, 'video test500', NULL, 'video test-500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-17 23:25:09', '2023-05-17 23:25:09'),
(410, 'video', 7, NULL, 'demo', NULL, 'vidoe32131', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-18 04:07:47', '2023-05-18 04:07:47');

-- --------------------------------------------------------

--
-- Table structure for table `content_employee`
--

CREATE TABLE `content_employee` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content_id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `post` smallint(5) UNSIGNED DEFAULT NULL,
  `sequence` smallint(2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `content_employee`
--

INSERT INTO `content_employee` (`id`, `content_id`, `employee_id`, `post`, `sequence`, `created_at`, `updated_at`) VALUES
(2, 10, 2, 1, 1, '2023-04-05 12:45:46', '2023-04-05 12:45:46'),
(7, 11, 6, 3, 12, '2023-04-16 05:14:27', '2023-04-16 05:14:27'),
(11, 10, 1, 1, 1, '2023-05-16 04:37:16', '2023-05-16 04:37:16');

-- --------------------------------------------------------

--
-- Table structure for table `content_tag`
--

CREATE TABLE `content_tag` (
  `content_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `content_tag`
--

INSERT INTO `content_tag` (`content_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(109, 22, '2023-05-07 05:43:21', '2023-05-07 05:43:21'),
(109, 25, '2023-05-07 05:43:21', '2023-05-07 05:43:21'),
(109, 22, '2023-05-10 00:47:36', '2023-05-10 00:47:36'),
(140, 22, '2023-05-10 00:50:59', '2023-05-10 00:50:59'),
(140, 25, '2023-05-10 00:50:59', '2023-05-10 00:50:59');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(512) NOT NULL,
  `slug` varchar(600) NOT NULL,
  `designation` varchar(128) DEFAULT NULL,
  `profilePhoto` varchar(512) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `member_id` bigint(20) UNSIGNED NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `contact` varchar(64) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `website` varchar(64) DEFAULT NULL,
  `bloodGroup` smallint(5) UNSIGNED DEFAULT NULL,
  `socialMedia` varchar(1024) DEFAULT NULL,
  `about` text DEFAULT NULL,
  `status` smallint(5) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `slug`, `designation`, `profilePhoto`, `user_id`, `member_id`, `created_by`, `contact`, `email`, `website`, `bloodGroup`, `socialMedia`, `about`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Shorif Hussain', 'shorif-hussain', 'Technical Manager', 'https://cdn.dal.ca/faculty/architecture-planning/school-of-planning/faculty-staff/faculty/md-jahedul-alam/_jcr_content/contentPar/profile/bgBanner.adaptive.214.high.jpg/1615980299071.jpg', 2, 1, 1, '01716330532', 'ab@ab1234567890.com', 'https://www.aminulsujon.com', 6, NULL, '<p>Employee</p>', 4, '2023-04-02 04:42:27', '2023-05-10 23:32:03'),
(3, 'MD. SOHEL MAHMUD JOY', 'SOHEL-MAHMUD-JOY', 'CEO', 'https://i.ibb.co/d51xwyZ/member1-2.jpg', 8, 6, 7, '01616000112', 'SOHELMAHMUDJOY@GMAIL.COM', NULL, 1, NULL, NULL, 1, '2023-04-16 03:56:34', '2023-04-16 04:07:53'),
(4, 'JAFAR AHAMMED', 'JAFAR-AHAMMED', 'CEO', 'http://127.0.0.1:8000/images/uploads/large/member1.jpg', 9, 7, 7, '1740920420', 'access_technologybd@yahoo.com', NULL, 1, NULL, NULL, 1, '2023-04-16 05:02:40', '2023-04-16 05:02:40'),
(5, 'MD. MIZANUR RAHMAN (MIZAN)', 'MIZANUR-RAHMAN', 'CEO', 'http://127.0.0.1:8000/images/uploads/large/member1.jpg', 10, 8, 7, '01671664777', 'advance.technology2012@gmail.com', NULL, 1, NULL, NULL, 1, '2023-04-16 05:10:04', '2023-04-16 05:10:04'),
(6, 'MOHAMMAD SALIM', 'MOHAMMAD-SALIM', 'CEO', 'http://127.0.0.1:8000/images/uploads/large/member1.jpg', 11, 9, 7, '01711202874', 'datuksalim@agdits.com', 'www.agdits.com', 1, NULL, NULL, 1, '2023-04-16 05:14:03', '2023-04-16 05:14:03'),
(7, 'representative Name of Company', 'representative-slug-1683442614', NULL, NULL, 15, 15, 15, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-07 00:56:54', '2023-05-07 00:56:54'),
(8, 'representative Name of Company', 'representative-slug-1683443657', NULL, NULL, 16, 16, 16, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-07 01:14:17', '2023-05-07 01:14:17'),
(9, 'representative Name of Company', 'representative-slug-1683443751', NULL, NULL, 17, 17, 17, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-07 01:15:51', '2023-05-07 01:15:51'),
(10, 'representative Name of Company', 'representative-slug-1683444417', NULL, NULL, 22, 22, 22, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-07 01:26:57', '2023-05-07 01:26:57'),
(11, 'representative Name of Company', 'representative-slug-1683444958', NULL, NULL, 23, 15, 23, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-07 01:35:58', '2023-05-07 01:35:58'),
(12, 'representative Name of Company', 'representative-slug-1683786461', 'CEO', NULL, 26, 18, 26, '01711202874', 'shahriarshuvo714@gmail.com', NULL, 1, NULL, NULL, 1, '2023-05-11 00:27:41', '2023-05-11 01:30:33');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `event_type` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `end_date` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `entry_fee` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_canonical` varchar(128) DEFAULT NULL,
  `meta_image` varchar(512) DEFAULT NULL,
  `meta_robots` varchar(32) DEFAULT NULL,
  `meta_heading` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `event_type`, `title`, `slug`, `user_id`, `start_date`, `end_date`, `address`, `location`, `logo`, `banner`, `description`, `entry_fee`, `meta_title`, `meta_keywords`, `meta_description`, `meta_canonical`, `meta_image`, `meta_robots`, `meta_heading`, `status`, `created_at`, `updated_at`) VALUES
(1, 'upcoming', 'Digital Device and Innovation Expo 2023', 'Digital Device and Innovation Expo 2023', 5, '2023-04-07', '2023-04-06', 'IDB Bhaban', 'IDB Bhaban', 'images/event/large/323943912_567656791487210_8363920508356977455_n.jpg', 'images/event/banner/131152793_1812675995552332_1457164936873485596_n.jpg', '<p>১০দিন ব্যাপি (২৯ ডিসেম্বর ২০২২ -০৭ জানুয়ারী ২০২৩) আইডিবিতে দেশের বৃহত্তম কম্পিউটার মেলা উপলক্ষে বিভিন্ন প্রতিযোগিতার আয়োজন করা হয়েছে , সেই আয়োজনের অংশ হিসেবে রয়েছে &quot;শিশুদের চিত্রাঙ্কন&quot; প্রতিযোগিতা।</p>\r\n\r\n<p>চিত্রাঙ্কন প্রতিযোগিতায় অংশগ্রহণ করতে সরাসরি চলে আসুন আপনাদের বাচ্চাদের নিয়ে বি সি এস কম্পিউটার সিটি (আই ডি বি ভবন)।</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-04-06 01:29:15', '2023-04-06 02:22:19'),
(2, 'upcoming', 'কম্পিউটার মেলা', 'কম্পিউটার-মেলা', 5, '2023-04-05', '2023-04-08', 'IDB Bhaban', 'location', 'images/event/large/131817726_1813545538798711_6051768209755142287_n.jpg', 'images/event/banner/131152793_1812675995552332_1457164936873485596_n.jpg', '<p>১০দিন ব্যাপি (২৯ ডিসেম্বর ২০২২ -০৭ জানুয়ারী ২০২৩) আইডিবিতে দেশের বৃহত্তম কম্পিউটার মেলা উপলক্ষে বিভিন্ন প্রতিযোগিতার আয়োজন করা হয়েছে , সেই আয়োজনের অংশ হিসেবে রয়েছে &quot;শিশুদের চিত্রাঙ্কন&quot; প্রতিযোগিতা।</p>\r\n\r\n<p>চিত্রাঙ্কন প্রতিযোগিতায় অংশগ্রহণ করতে সরাসরি চলে আসুন আপনাদের বাচ্চাদের নিয়ে বি সি এস কম্পিউটার সিটি (আই ডি বি ভবন)।</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-04-06 01:32:18', '2023-04-06 02:22:22'),
(3, 'current', 'কম্পিউটার মেলা-2', 'কম্পিউটার মেলা22', 7, '2023-04-07', '2023-04-12', 'IDB Bhaban', 'IDB Bhaban', 'images/event/large/323943912_567656791487210_8363920508356977455_n.jpg', NULL, '<p>১০দিন ব্যাপি (২৯ ডিসেম্বর ২০২২ -০৭ জানুয়ারী ২০২৩) আইডিবিতে দেশের বৃহত্তম কম্পিউটার মেলা উপলক্ষে বিভিন্ন প্রতিযোগিতার আয়োজন করা হয়েছে , সেই আয়োজনের অংশ হিসেবে রয়েছে &quot;শিশুদের চিত্রাঙ্কন&quot; প্রতিযোগিতা।</p>\r\n\r\n<p>চিত্রাঙ্কন প্রতিযোগিতায় অংশগ্রহণ করতে সরাসরি চলে আসুন আপনাদের বাচ্চাদের নিয়ে বি সি এস কম্পিউটার সিটি (আই ডি বি ভবন)।</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-04-06 01:37:58', '2023-05-14 22:24:46'),
(4, 'upcoming', 'International Telco Warfare 2022', 'International Telco Warfare', 7, '2023-04-16', '2023-04-20', 'IDB Bhaban', 'location', 'images/event/large/gallery-2.jpg', 'C:\\server2\\tmp\\phpBFA3.tmp', '<p>East West University Telecommunications Club (EWUTC) is back again with their most awaited event. International Telco Warfare is an international ICT based competition organized by East West University Telecommunications Club since 2012. This is the 10th season of this event, and for the 4th time it is organized internationally. EWUTC is organizing this event as an international event.<br />\r\n<br />\r\nThe whole competition is categorized by 10 programs. Which are:<br />\r\n<br />\r\n*Tele-War (Basic &amp; Advanced)<br />\r\n*Idea-War<br />\r\n*App War<br />\r\n*Pro War<br />\r\n*Shutter War<br />\r\n*Q War<br />\r\n*Code War<br />\r\n*G-War<br />\r\n*Robo War<br />\r\n*Pixel War<br />\r\n<br />\r\nAll the 10 categories are open for national participants. And 4 categories (Tele War, App War, Pro War, Shutter Point) are also open for international participants.<br />\r\n_____________________________________________________<br />\r\nCategories in details:<br />\r\n<br />\r\n**Tele-War (Basic):<br />\r\nIT-based quiz competition. It is focused on 1st year and 2nd year engineering students. It is open for both International and National participants. Each participant has to register individually. International Participants have to participate in an online quiz. For National Participants, they have to participate in an offline quiz. Registration link will be given below.<br />\r\n<br />\r\nType: Individual Participation.<br />\r\nDuration: 1 Day<br />\r\nRegistration fee: TBA<br />\r\nRegistration Deadline: TBA<br />\r\n&nbsp;</p>', NULL, 'meta', 'meta,keyword', 'meta_des', 'this is cannonical url', 'https://images.prothomalo.com/prothomalo-bangla%2F2023-02%2F50c31728-9652-4aa5-bd3f-83f0c86b7974%2Fprothomalo_bangla_2020_09_957b9e33_2b3b_4518_aae3_a3a699f72a5e_prothomalo_import_media_2017_11_14_58.webp?auto=format%2Ccompress&format=webp&w=640&dpr=1.0', 'allow,robot', 'H1', 3, '2023-04-15 01:01:08', '2023-05-14 22:24:48'),
(5, 'upcoming', 'demo', 'demo122342354', 7, '2023-04-18', NULL, 'IDB Bhaban', 'location', 'images/event/large/gallery-2.jpg', 'C:\\server2\\tmp\\php24C1.tmp', '<p>demo</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-04-18 07:12:51', '2023-05-14 22:24:51'),
(6, 'upcoming', 'EARTH DAY 2023: WHAT THE EVENTS INDUSTRY IS DOING TO ACHIEVE NET ZERO CARBON EVENTS BY 2050', 'EARTH DAY 2023: WHAT THE EVENTS INDUSTRY IS DOING TO ACHIEVE NET ZERO CARBON EVENTS BY 2050', 7, '2023-04-20', '2023-04-22', 'IDB Bhaban', NULL, 'images/event/large/Net-Zero-Concept.jpg', 'C:\\server2\\tmp\\php792D.tmp', '<p><strong>What are the key accomplishments so far for NZCE?</strong></p>\r\n\r\n<p>Several important milestones were achieved throughout the course of the project development:</p>\r\n\r\n<ul>\r\n	<li>In 2021,&nbsp;an organizing task force initiated by JMIC members&nbsp;began preparation work on the pledge, published and acquired signatories, and made initial contact with the United&nbsp;Nations Framework Convention on Climate Change&nbsp;(UNFCCC).</li>\r\n	<li>NZCE launched its Pledge, which was officially endorsed by UNFCCC at the U.N. COP26 in Glasgow in November. 2021.</li>\r\n	<li>In 2022, we worked on a roadmap toward the achievement of net-zero with a growing group of interested parties; called for signatories and supporters; launched a funding scheme; and organized several open online webinars to inform and invite all players from the entire ecosystem.&nbsp;</li>\r\n	<li>In November 2022, we participated in the U.N. COP27 in Sharm El Skeikh, Egypt, and released the roadmap toward net zero for the meetings and events industry. Read the full&nbsp;<a href=\"https://www.netzerocarbonevents.org/wp-content/uploads/NZCE_Roadmap2022_Full-Report-updated-26Jan2023.pdf\">Roadmap Report</a>.</li>\r\n</ul>\r\n\r\n<p><strong>How many organizations support the initiative?</strong></p>\r\n\r\n<p>As of April 2023, NZCE is supported by more than 500 organizations based in 55 countries &mdash; more if we include all subsidiaries of the large international groups. These are venues, operators, service providers, destinations, organizers, associations and many others who are involved in events. Initiative supporters represent the who&rsquo;s who of the meetings and events industry &mdash; from the largest to smallest organizations covering all event types, such as exhibitions, congresses and conferences.&nbsp;</p>\r\n\r\n<p><strong>Tell us about your role and passion for this initiative.</strong></p>\r\n\r\n<p>My main role is the coordination of the initiative and the alignment of objectives between the eight workstreams, including&nbsp;venue energy; smart production and waste management; food and food waste; travel and accommodation; logistics; measurement; offsetting; and reporting.</p>\r\n\r\n<p>I&rsquo;m excited to represent JMIC as the global umbrella association for the MICE industry, which is hosting the NZCE initiative. We see a major shift in interest toward sustainability, which has become increasingly prominent in almost every organization. At the same time, I&rsquo;m humbled to lead the discussions on sustainability with stakeholders from around the globe, understand their concerns, learn about regional differences and find solutions our industry can and should contribute to bring down the emissions.&nbsp;</p>\r\n\r\n<p><strong>Which organizations are leading the charge by example?&nbsp;</strong></p>\r\n\r\n<p>The initiative is very much a collective approach, and all stakeholders involved in the organization of events are welcome to contribute. We understand that some are more advanced than others when it comes to sustainability. There are so many best practices that already exist, from a venue using its roof spaces to install solar panels and gardens and switching to LED lights, to eliminating single-use plastic bottles from their shows or venue, to name a few.<strong>&nbsp;</strong></p>\r\n\r\n<p><strong>What&rsquo;s next?</strong></p>\r\n\r\n<p>At the moment, eight workstreams with participants from more than 50 organizations are actively developing methodologies and guidelines, as well as collecting best practices to help our industry in their decarbonization efforts. We are confident that a lot of this will be in place by the next COP in December &mdash; for the benefit of not only our industry at large and our stakeholders but also as an example and inspiration for the industries we serve via the events we organize.</p>\r\n\r\n<p><strong>What&rsquo;s one thing industry organizations can do to have more sustainable events?&nbsp;</strong></p>\r\n\r\n<p><a href=\"https://www.netzerocarbonevents.org/join-us/#pledge_form\">Signing the pledge</a>&nbsp;is a good example of how to make the first step. The roadmap focuses on what can be done, and it can very much serve as a guideline to develop a sustainability strategy for every stakeholder in the events industry. As we move along in a collective manner as an industry, we can clearly showcase our efforts not only to the customer base but also to the policy makers.</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-04-19 00:10:08', '2023-05-14 22:24:54'),
(7, 'current', 'Trial event', 'trial-event', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-04-26 23:31:46', '2023-04-26 23:32:00'),
(8, 'current', 'trial event today', 'trial-event-today', 7, '2023-04-27', '2023-04-29', 'address5', 'IDB Bhaban', 'images/event/large/px-beach-daylight-fun-1430675-image.jpg', 'C:\\server2\\tmp\\php1D5F.tmp', '<p>trial event today at 3pm</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-04-26 23:33:52', '2023-05-14 22:24:56'),
(9, 'upcoming', 'Yesterday event', 'yesterday-event', 7, '2023-04-27', '2023-04-29', 'IDB Bhaban', 'IDB Bhaban', 'images/event/large/picjumbo.com_hanv9909.jpg', 'C:\\server2\\tmp\\php422A.tmp', '<p>yesterday</p>', NULL, NULL, NULL, NULL, NULL, NULL, 'allow,robot', NULL, 3, '2023-04-26 23:35:06', '2023-05-14 22:24:58'),
(10, 'current', 'dfsdfgsgsg', 'dfsdfgsgsg', 7, NULL, NULL, NULL, NULL, 'images/event/large/picjumbo.com_hanv9909.jpg', 'images/event/banner/faded-monaco-scenery-evening-dark-picjumbo-com-image.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-04-26 23:41:08', '2023-05-14 22:25:00'),
(11, 'upcoming', 'test event 1', 'test-event-1', 7, '2023-05-15', '2023-05-17', NULL, NULL, 'BCS_Computer_City_1.jpg', 'bangla-utshob-logo (1).jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-05-14 22:28:39', '2023-05-14 22:57:13'),
(12, 'current', 'event test 2', 'event-test-2', 7, '2023-05-23', '2023-05-31', NULL, NULL, 'Untitled-2.jpg', 'bcs-google-map.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-14 22:38:22', '2023-05-14 22:45:54'),
(13, 'current', 'test event 3', 'test-event-3', 7, '2023-05-15', '2023-05-16', NULL, NULL, 'Awakenings-Music-Festival-Biggest-European-Festivals-2020.jpg', 'Untitled-1.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-14 22:55:47', '2023-05-14 22:55:47'),
(14, 'current', 'test event 4', 'test-event-4', 7, '2023-05-16', '2023-05-19', NULL, NULL, 'event.webp', 'slider-1.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-14 23:46:32', '2023-05-14 23:46:32');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `landings`
--

CREATE TABLE `landings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `linktype` varchar(16) NOT NULL,
  `pagelink` varchar(512) NOT NULL,
  `nextpagelink` varchar(512) DEFAULT NULL,
  `statuscode` varchar(3) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `landings`
--

INSERT INTO `landings` (`id`, `linktype`, `pagelink`, `nextpagelink`, `statuscode`, `created_at`, `updated_at`) VALUES
(1, 'content', 'this-is-slider-one-and-its-name', NULL, '200', '2023-03-27 02:28:24', '2023-03-27 02:28:24'),
(2, 'content', 'a', 'this-is-slider-one-and-its-name-47', '301', '2023-03-27 02:32:46', '2023-03-27 03:38:59'),
(3, 'content', 'abc', 'this-is-slider-one-and-its-name-abc', '301', '2023-03-27 02:50:48', '2023-03-28 03:47:53'),
(4, 'content', 'this-is-slider-one-and-its-name-4', NULL, '200', '2023-03-27 03:38:08', '2023-03-27 03:38:08'),
(5, 'content', 'this-is-slider-one-and-its-name-47', 'this-is-slider-one-and-its-name-48', '301', '2023-03-27 03:38:59', '2023-03-28 03:45:57'),
(6, 'content', 'test-slider-6', 'test-slider-6-to-new47', '301', '2023-03-27 03:48:29', '2023-03-27 03:50:57'),
(7, 'content', 'test-slider-6-to-new47', NULL, '200', '2023-03-27 03:50:57', '2023-03-27 03:50:57'),
(8, 'content', 'this-is-slider-one-and-its-name-48', NULL, '200', '2023-03-28 03:45:57', '2023-03-28 03:45:57'),
(9, 'content', 'this-is-slider-one-and-its-name-abc', NULL, '200', '2023-03-28 03:47:53', '2023-03-28 03:47:53'),
(10, 'content', 'aaaaaaaaaaaa', NULL, '200', '2023-03-29 01:38:54', '2023-03-29 01:38:54'),
(11, 'content', 'aa', NULL, '200', '2023-03-29 01:45:12', '2023-03-29 01:45:12'),
(12, 'content', 'sujon-slider', 'sujon-slider-edited-first-time', '301', '2023-03-29 01:56:07', '2023-03-29 01:57:28'),
(13, 'content', 'sujon-slider-edited-first-time', NULL, '200', '2023-03-29 01:57:27', '2023-03-29 01:57:27'),
(14, 'landing', 'search', NULL, '200', '2023-03-29 15:03:41', '2023-03-29 15:03:41'),
(15, 'member', 'rayans-computer-limited', NULL, '200', '2023-04-01 14:02:46', '2023-04-01 14:02:46'),
(16, 'member', 'startech-limited', 'startech-engineering-limited', '301', '2023-04-01 14:02:46', '2023-04-01 14:36:35'),
(17, 'member', 'startech-engineering-limited', NULL, '200', '2023-04-01 14:36:35', '2023-04-06 04:01:17'),
(18, 'member', 'company-slug-1680416881', NULL, '404', '2023-04-02 00:28:01', '2023-04-02 00:28:01'),
(20, 'employee', 'what-is-software', 'shorif-hussain', '301', '2023-04-02 04:42:27', '2023-04-02 07:02:25'),
(21, 'employee', 'shorif-hussain', NULL, '200', '2023-04-02 07:02:25', '2023-04-02 07:02:25'),
(22, 'employee', 'ahmed-shorif', NULL, '200', '2023-04-02 07:03:20', '2023-04-02 07:03:20'),
(23, 'member', 'rayans-computer-limited-1', 'rayans-computer-limited-1-1', '301', '2023-04-03 05:45:22', '2023-04-03 05:48:05'),
(24, 'member', 'rayans-computer-limited-1-1', NULL, '200', '2023-04-03 05:48:05', '2023-04-03 05:51:31'),
(25, 'landing', 'shop', NULL, '200', '2023-04-05 23:49:08', '2023-04-05 23:49:08'),
(26, 'content', 'new-dmeo', NULL, '200', '2023-04-05 23:51:49', '2023-04-05 23:51:49'),
(27, 'content', 'test-2', NULL, '200', '2023-04-06 00:17:35', '2023-04-06 00:17:35'),
(28, 'event', 'কম্পিউটার মেলা22', NULL, '200', '2023-04-06 01:37:58', '2023-04-06 01:37:58'),
(29, 'landing', 'events', NULL, '200', '2023-04-06 02:02:44', '2023-04-06 02:02:44'),
(30, 'news', 'রাজধানীতে তীব্র যানজট, তিন কারণ জানাল ট্রাফিক পুলিশ', NULL, '200', '2023-04-06 02:38:46', '2023-04-06 02:38:46'),
(31, 'news', 'রাজধানীতে তীব্র যানজট, তিন কারণ জানাল ট্রাফিক-পুলিশ', NULL, '200', '2023-04-06 02:39:15', '2023-04-06 02:39:15'),
(32, 'news', 'রাজধানীতে-তীব্র-যানজট-তিন-কারণ -জানাল-ট্রাফিক-পুলিশ', NULL, '200', '2023-04-06 02:40:29', '2023-04-06 02:40:29'),
(33, 'news', 'চ্যাটজিপিটির সঙ্গে প্রতিদ্বন্দ্বিতা করতে ‘বার্ড’ হালনাগাদ করবে-গুগল', NULL, '200', '2023-04-06 02:41:13', '2023-04-06 02:41:13'),
(34, 'news', 'কম্পিউটারেও ব্যবহার করা যাবে অ্যান্ড্রয়েডের নিয়ারবাই শেয়ার সুবিধা', NULL, '200', '2023-04-06 02:41:57', '2023-04-06 02:41:57'),
(35, 'news', 'কম্পিউটারেও ব্যবহার করা যাবে অ্যান্ড্রয়েডের নিয়ারবাই শেয়ার সুবিধা .', NULL, '200', '2023-04-06 02:42:06', '2023-04-06 02:42:06'),
(36, 'landing', 'news', NULL, '200', '2023-04-06 03:28:29', '2023-04-06 03:28:29'),
(37, 'member', 'company-slug-1680775976', NULL, '404', '2023-04-06 04:12:56', '2023-04-06 04:12:56'),
(38, 'landing', 'members', NULL, '200', '2023-04-06 04:18:22', '2023-04-06 04:18:22'),
(39, 'landing', 'member', NULL, '200', '2023-04-07 22:37:39', '2023-04-07 22:37:39'),
(40, 'content', 'new-notice', NULL, '200', '2023-04-07 23:08:19', '2023-04-07 23:08:19'),
(42, 'content', 'demo notice', NULL, '200', '2023-04-07 23:20:49', '2023-04-07 23:20:49'),
(43, 'notice', 'latest news', NULL, '200', '2023-04-07 23:24:10', '2023-04-07 23:24:10'),
(44, 'notice', 'special notice', NULL, '200', '2023-04-07 23:45:02', '2023-04-07 23:45:02'),
(45, 'gallery', 'new event gallery', NULL, '200', '2023-04-08 00:00:05', '2023-04-08 00:00:05'),
(46, 'gallery', 'multi image', NULL, '200', '2023-04-08 00:08:05', '2023-04-08 00:08:05'),
(47, 'landing', 'gallery', NULL, '200', '2023-04-08 00:16:41', '2023-04-08 00:16:41'),
(48, 'notice', 'new video section', NULL, '200', '2023-04-08 00:28:43', '2023-04-08 00:28:43'),
(49, 'video', 'new video', NULL, '200', '2023-04-08 00:35:23', '2023-04-08 00:35:23'),
(50, 'video', 'new video one', NULL, '200', '2023-04-08 00:49:49', '2023-04-08 00:49:49'),
(51, 'video', 'video url', NULL, '200', '2023-04-08 00:55:55', '2023-04-08 00:55:55'),
(52, 'landing', 'videos', NULL, '200', '2023-04-08 01:00:33', '2023-04-08 01:00:33'),
(53, 'page', 'new-page', NULL, '200', '2023-04-12 01:28:40', '2023-04-12 01:28:40'),
(54, 'page', 'new-page-demo', NULL, '200', '2023-04-12 01:34:57', '2023-04-12 01:34:57'),
(55, 'page', 'test-1-page', NULL, '200', '2023-04-12 02:16:58', '2023-04-12 02:16:58'),
(56, 'page', 'new-page-create', NULL, '404', '2023-04-12 02:57:13', '2023-04-12 03:32:01'),
(57, 'page', 'aaa', NULL, '200', '2023-04-12 03:11:17', '2023-04-12 03:38:03'),
(58, 'gallery', 'gallery-1', NULL, '200', '2023-04-12 23:23:44', '2023-04-12 23:23:44'),
(59, 'notice', 'notice-one', NULL, '200', '2023-04-12 23:47:01', '2023-04-12 23:47:01'),
(60, 'blog', 'HOW DO COMPANIES BACK UP THEIR DATA', NULL, '200', '2023-04-14 22:48:14', '2023-04-14 22:48:14'),
(61, 'landing', 'blog', NULL, '200', '2023-04-14 23:36:30', '2023-04-14 23:36:30'),
(62, 'landing', 'contact', NULL, '200', '2023-04-14 23:45:12', '2023-04-14 23:45:12'),
(64, 'blog', 'HOW TO SET A STATIC IP ADDRESS FOR A PRINTER', NULL, '404', '2023-04-15 00:13:32', '2023-05-10 00:47:06'),
(65, 'blog', 'HOW DO I RESET MY KEYBOARD?', NULL, '200', '2023-04-15 00:15:10', '2023-04-15 00:15:10'),
(66, 'blog', 'DO YOU RECOMMEND COMPANIES USE ETHERNET OR WIFI', NULL, '404', '2023-04-15 00:35:08', '2023-05-10 00:47:16'),
(67, 'event', 'International Telco Warfare', NULL, '200', '2023-04-15 01:01:08', '2023-04-15 01:01:08'),
(68, 'notice', 'notice-5', 'বিসিএস কম্পিউটার সিটি, আইডিবিতে চলছে “সিটি আইটি ঈদ উৎসব ২০২৩', '301', '2023-04-15 02:27:47', '2023-04-16 00:24:57'),
(69, 'notice', 'বিসিএস কম্পিউটার সিটি, আইডিবিতে চলছে “সিটি আইটি ঈদ উৎসব ২০২৩', NULL, '200', '2023-04-16 00:24:57', '2023-04-16 00:24:57'),
(70, 'notice', 'j', NULL, '200', '2023-04-16 00:34:43', '2023-04-16 00:34:43'),
(71, 'landing', 'get-a-quotation', NULL, '200', '2023-04-16 00:50:51', '2023-04-16 00:50:51'),
(72, 'video', 'video-gallery-1', NULL, '200', '2023-04-16 01:43:59', '2023-04-16 01:43:59'),
(73, 'video', 'video-gallery-two', NULL, '200', '2023-04-16 01:59:01', '2023-04-16 01:59:01'),
(74, 'video', 'gallery-3', NULL, '200', '2023-04-16 02:02:56', '2023-04-16 02:02:56'),
(75, 'member', 'company-slug-1681638433', 'ABC-COMPUTER-TECH', '301', '2023-04-16 03:47:13', '2023-04-16 03:50:24'),
(76, 'member', 'ABC-COMPUTER-TECH', NULL, '200', '2023-04-16 03:50:24', '2023-04-16 03:50:24'),
(77, 'employee', 'SOHEL-MAHMUD-JOY', NULL, '200', '2023-04-16 03:56:34', '2023-04-16 03:56:34'),
(78, 'member', 'company-slug-1681642730', 'ACCESS-TECHNOLOGY', '301', '2023-04-16 04:58:50', '2023-04-16 05:00:57'),
(79, 'member', 'ACCESS-TECHNOLOGY', NULL, '200', '2023-04-16 05:00:57', '2023-04-16 05:00:57'),
(80, 'employee', 'JAFAR-AHAMMED', NULL, '200', '2023-04-16 05:02:40', '2023-04-16 05:02:40'),
(81, 'member', 'company-slug-1681643175', 'ADVANCE-TECHNOLOGY', '301', '2023-04-16 05:06:15', '2023-04-16 05:08:37'),
(82, 'member', 'ADVANCE-TECHNOLOGY', NULL, '200', '2023-04-16 05:08:37', '2023-04-16 05:08:37'),
(83, 'employee', 'MIZANUR-RAHMAN', NULL, '200', '2023-04-16 05:10:04', '2023-04-16 05:10:04'),
(84, 'member', 'company-slug-1681643477', 'AGD-IT-SOLUTION-LTD', '301', '2023-04-16 05:11:17', '2023-04-16 05:13:16'),
(85, 'member', 'AGD-IT-SOLUTION-LTD', NULL, '200', '2023-04-16 05:13:16', '2023-04-16 05:13:16'),
(86, 'employee', 'MOHAMMAD-SALIM', NULL, '200', '2023-04-16 05:14:03', '2023-04-16 05:14:03'),
(88, 'page', 'why-buy-from-us', NULL, '200', '2023-04-17 00:20:42', '2023-04-17 00:20:42'),
(89, 'press', 'press-one', NULL, '200', '2023-04-18 05:30:49', '2023-04-18 05:30:49'),
(90, 'event', 'demo122342354', NULL, '200', '2023-04-18 07:12:51', '2023-04-18 07:12:51'),
(91, 'event', 'EARTH DAY 2023: WHAT THE EVENTS INDUSTRY IS DOING TO ACHIEVE NET ZERO CARBON EVENTS BY 2050', NULL, '200', '2023-04-19 00:10:08', '2023-04-19 00:10:08'),
(92, 'event', 'trial-event', NULL, '404', '2023-04-26 23:31:46', '2023-04-26 23:31:46'),
(93, 'event', 'trial-event-today', NULL, '200', '2023-04-26 23:33:52', '2023-04-26 23:33:52'),
(94, 'event', 'yesterday-event', NULL, '200', '2023-04-26 23:35:06', '2023-04-26 23:35:06'),
(95, 'event', 'dfsdfgsgsg', NULL, '200', '2023-04-26 23:41:08', '2023-04-26 23:41:08'),
(96, 'landing', 'press-release', NULL, '200', '2023-04-29 00:19:22', '2023-04-29 00:19:22'),
(97, 'press', 'press-2', NULL, '200', '2023-04-29 00:47:30', '2023-04-29 00:47:30'),
(98, 'notice', 'acknowledgement-of-our-privacy-statement', NULL, '200', '2023-05-02 00:05:38', '2023-05-02 00:05:38'),
(99, 'member', 'company-slug-1683350147', NULL, '404', '2023-05-05 23:15:47', '2023-05-05 23:15:47'),
(100, 'member', 'company-slug-1683442059', NULL, '404', '2023-05-07 00:47:39', '2023-05-07 00:47:39'),
(101, 'member', 'company-slug-1683443588', NULL, '404', '2023-05-07 01:13:08', '2023-05-07 01:13:08'),
(102, 'member', 'company-slug-1683443733', NULL, '404', '2023-05-07 01:15:33', '2023-05-07 01:15:33'),
(103, 'member', 'company-slug-1683444394', NULL, '404', '2023-05-07 01:26:34', '2023-05-07 01:26:34'),
(104, 'member', 'company-slug-1683444945', NULL, '404', '2023-05-07 01:35:45', '2023-05-07 01:35:45'),
(105, 'member', 'company-slug-1683451140', NULL, '404', '2023-05-07 03:19:00', '2023-05-07 03:19:00'),
(106, 'member', 'company-slug-1683451200', NULL, '404', '2023-05-07 03:20:00', '2023-05-07 03:20:00'),
(107, 'member', 'company-slug-1683451489', NULL, '404', '2023-05-07 03:24:49', '2023-05-07 03:24:49'),
(108, 'blog', 'new-create-blog-1', NULL, '404', '2023-05-07 05:15:21', '2023-05-10 00:47:21'),
(109, 'blog', 'a345234534', NULL, '404', '2023-05-07 05:17:48', '2023-05-10 00:47:26'),
(110, 'blog', 'test-blog-two-new-tag-and-category', NULL, '404', '2023-05-07 05:19:05', '2023-05-10 00:47:31'),
(111, 'tag', 'a7', NULL, '200', '2023-05-07 05:24:32', '2023-05-07 05:24:32'),
(112, 'content', 'a712', NULL, '200', '2023-05-07 05:29:02', '2023-05-07 05:29:02'),
(113, 'tag', 'test-tag-1', 'test-tag-11', '301', '2023-05-07 05:37:43', '2023-05-07 05:38:11'),
(114, 'tag', 'test-tag-11', 'tag-cat-3', '301', '2023-05-07 05:38:11', '2023-05-07 05:40:19'),
(115, 'tag', 'tag-cat-1', NULL, '200', '2023-05-07 05:39:37', '2023-05-07 05:39:37'),
(116, 'tag', 'tag-cat-2', NULL, '200', '2023-05-07 05:39:58', '2023-05-07 05:39:58'),
(117, 'tag', 'tag-cat-3', NULL, '200', '2023-05-07 05:40:19', '2023-05-07 05:40:19'),
(118, 'tag', 'tag-tag-1', NULL, '200', '2023-05-07 05:41:45', '2023-05-07 05:41:45'),
(119, 'tag', 'tag-tag-2', '/home', '301', '2023-05-07 05:41:59', '2023-05-08 22:47:55'),
(120, 'blog', 'blog-name-tag-2-cat-2', 'blog-name-tag-2-cat-2-edited', '301', '2023-05-07 05:42:54', '2023-05-07 05:43:21'),
(121, 'blog', 'blog-name-tag-2-cat-2-edited', NULL, '404', '2023-05-07 05:43:21', '2023-05-10 00:47:36'),
(122, 'tag', '/home', NULL, '200', '2023-05-08 22:47:55', '2023-05-08 22:47:55'),
(123, 'landing', 'about-us', NULL, '200', '2023-05-08 23:08:15', '2023-05-08 23:08:15'),
(124, 'tag', 'menu-members', NULL, '200', '2023-05-08 23:16:18', '2023-05-08 23:16:18'),
(126, 'content', 'new', NULL, '200', '2023-05-09 01:08:02', '2023-05-09 01:08:02'),
(127, 'content', 'new-test-size-slider', NULL, '200', '2023-05-09 01:11:55', '2023-05-09 01:11:55'),
(128, 'content', 'new-test2', NULL, '200', '2023-05-09 01:15:55', '2023-05-09 01:15:55'),
(129, 'content', 'newd4', NULL, '200', '2023-05-09 01:24:21', '2023-05-09 01:24:21'),
(130, 'content', 'newzxzgxfh', NULL, '200', '2023-05-09 01:25:41', '2023-05-09 01:25:41'),
(131, 'content', 'test4', NULL, '200', '2023-05-09 01:37:32', '2023-05-09 01:37:32'),
(132, 'content', 'demogsxtfdfgsd', NULL, '200', '2023-05-09 01:38:41', '2023-05-09 01:38:41'),
(133, 'content', 'test10', NULL, '200', '2023-05-09 01:45:04', '2023-05-09 01:45:04'),
(134, 'content', 'demo', NULL, '200', '2023-05-09 01:52:40', '2023-05-09 01:52:40'),
(135, 'content', 'demo999', NULL, '200', '2023-05-09 01:54:26', '2023-05-09 01:54:26'),
(136, 'content', 'demozzx', NULL, '200', '2023-05-09 02:00:48', '2023-05-09 02:00:48'),
(137, 'content', 'demo789', NULL, '200', '2023-05-09 02:01:57', '2023-05-09 02:01:57'),
(138, 'content', 'new444', NULL, '200', '2023-05-09 02:03:14', '2023-05-09 02:03:14'),
(139, 'blog', 'test-244', NULL, '404', '2023-05-09 02:03:58', '2023-05-10 00:47:41'),
(140, 'content', 'this-is-slider-for-testing', NULL, '200', '2023-05-09 02:08:09', '2023-05-09 02:08:09'),
(141, 'content', 'aa33', NULL, '200', '2023-05-09 02:10:02', '2023-05-09 02:10:02'),
(142, 'content', 'slider-1', NULL, '200', '2023-05-09 02:15:59', '2023-05-09 02:15:59'),
(143, 'content', 'sdfasdfasdf', NULL, '200', '2023-05-09 02:16:44', '2023-05-09 02:16:44'),
(144, 'content', 'dd', NULL, '200', '2023-05-09 02:22:01', '2023-05-09 02:22:01'),
(145, 'content', 's3', NULL, '200', '2023-05-09 02:22:26', '2023-05-09 02:22:26'),
(146, 'content', 'asdfasasdfdf', NULL, '200', '2023-05-09 02:23:12', '2023-05-09 02:23:12'),
(147, 'content', 'sssss', NULL, '200', '2023-05-09 02:30:19', '2023-05-09 02:30:19'),
(148, 'news', '-------', 'রাজধানীতে-তীব্র যানজট তিন কারণ জানাল ট্রাফিক পুলিশ', '301', '2023-05-09 22:44:17', '2023-05-09 23:19:34'),
(149, 'news', 'রাজধানীতে-তীব্র যানজট তিন কারণ জানাল ট্রাফিক পুলিশ', NULL, '200', '2023-05-09 23:19:34', '2023-05-09 23:19:34'),
(150, 'news', 'চ্যাটজিপিটির সঙ্গে প্রতিদ্বন্দ্বিতা করতে ‘বার্ড’ হালনাগাদ করবে গুগল', NULL, '200', '2023-05-09 23:29:56', '2023-05-09 23:29:56'),
(151, 'news', 'চ্যাটজিপিটির সঙ্গে প্রতিদ্বন্দ্বিতা করতে ‘বার্ড’ হালনাগাদ করবে গুগল |', NULL, '200', '2023-05-09 23:30:19', '2023-05-09 23:30:19'),
(152, 'news', 'কম্পিউটারেও ব্যবহার করা যাবে অ্যান্ড্রয়েডের নিয়ারবাই শেয়ার সুবিধা ...', NULL, '200', '2023-05-09 23:31:50', '2023-05-09 23:31:50'),
(153, 'notice', 'bcs-notice-testing', NULL, '200', '2023-05-10 00:08:44', '2023-05-10 00:08:44'),
(154, 'content', 'new-test-slider-one', NULL, '200', '2023-05-10 00:30:45', '2023-05-10 00:30:45'),
(155, 'content', 'new-test-slider-two', NULL, '200', '2023-05-10 00:32:02', '2023-05-10 00:32:02'),
(156, 'blog', 'HOW DO COMPANIES BACK UP THEIR DATAAA', NULL, '200', '2023-05-10 00:50:59', '2023-05-10 00:50:59'),
(157, 'member', 'company-slug-1683702893', NULL, '404', '2023-05-10 01:14:53', '2023-05-10 01:14:53'),
(158, 'tag', '#', NULL, '200', '2023-05-11 03:08:33', '2023-05-11 03:08:33'),
(159, 'tag', 'tag-notice', NULL, '200', '2023-05-11 03:17:21', '2023-05-11 03:17:21'),
(160, 'gallery', 'test-007', NULL, '200', '2023-05-13 01:06:13', '2023-05-13 01:06:13'),
(161, 'gallery', 'test-008', NULL, '200', '2023-05-13 01:07:50', '2023-05-13 01:07:50'),
(162, 'gallery', 'test-009', NULL, '200', '2023-05-13 01:12:26', '2023-05-13 01:12:26'),
(163, 'gallery', 'test-010', NULL, '200', '2023-05-13 01:13:15', '2023-05-13 01:13:15'),
(164, 'gallery', 'test-11', NULL, '200', '2023-05-13 01:14:27', '2023-05-13 01:14:27'),
(165, 'gallery', 'test-12', NULL, '200', '2023-05-13 01:44:13', '2023-05-13 01:44:13'),
(166, 'gallery', 'test-13', NULL, '200', '2023-05-13 01:44:52', '2023-05-13 01:44:52'),
(167, 'gallery', 'test-014', NULL, '200', '2023-05-13 02:13:51', '2023-05-13 02:13:51'),
(168, 'landing', 'notice', NULL, '200', '2023-05-14 03:57:00', '2023-05-14 03:57:00'),
(169, 'press', 'new-test-press', NULL, '200', '2023-05-14 04:21:38', '2023-05-14 04:21:38'),
(170, 'press', 'new-press-relaease', NULL, '200', '2023-05-14 04:23:18', '2023-05-14 04:23:18'),
(171, 'event', 'test-event-1', NULL, '200', '2023-05-14 22:28:39', '2023-05-14 22:28:39'),
(172, 'event', 'event-test-2', NULL, '200', '2023-05-14 22:38:22', '2023-05-14 22:38:22'),
(173, 'event', 'test-event-3', NULL, '200', '2023-05-14 22:55:47', '2023-05-14 22:55:47'),
(174, 'event', 'test-event-4', NULL, '200', '2023-05-14 23:46:32', '2023-05-14 23:46:32'),
(175, 'landing', 'about', NULL, '200', '2023-05-15 04:45:51', '2023-05-15 04:46:20'),
(176, 'landing', 'committee', NULL, '200', '2023-05-16 23:30:13', '2023-05-16 23:30:13'),
(177, 'gallery', 'test-20', NULL, '200', '2023-05-17 00:10:38', '2023-05-17 00:10:38'),
(178, 'video', 'new video test', NULL, '200', '2023-05-17 01:53:50', '2023-05-17 01:53:50'),
(179, 'video', 'video-test-23', NULL, '200', '2023-05-17 02:37:25', '2023-05-17 02:37:25'),
(180, 'video', 'video-test-24', NULL, '200', '2023-05-17 02:42:03', '2023-05-17 02:42:03'),
(181, 'video', 'test video 30', NULL, '200', '2023-05-17 02:46:36', '2023-05-17 02:46:36'),
(182, 'video', 'test-25', NULL, '200', '2023-05-17 02:50:20', '2023-05-17 02:50:20'),
(183, 'video', 'test-35', NULL, '200', '2023-05-17 03:08:37', '2023-05-17 03:08:37'),
(184, 'video', 'text-30', NULL, '200', '2023-05-17 04:37:57', '2023-05-17 04:37:57'),
(185, 'video', 'test50', NULL, '200', '2023-05-17 04:47:50', '2023-05-17 04:47:50'),
(186, 'video', 'demozdd', NULL, '200', '2023-05-17 04:48:59', '2023-05-17 04:48:59'),
(187, 'video', 'testvideo 51', NULL, '200', '2023-05-17 04:53:41', '2023-05-17 04:53:41'),
(188, 'video', 'test55', NULL, '200', '2023-05-17 05:49:57', '2023-05-17 05:49:57'),
(189, 'video', 'demo test video 150', NULL, '200', '2023-05-17 06:30:26', '2023-05-17 06:30:26'),
(190, 'video', 'test video 35', NULL, '404', '2023-05-17 22:40:34', '2023-05-17 22:42:54'),
(191, 'video', 'video test-500', NULL, '200', '2023-05-17 23:25:09', '2023-05-17 23:25:09'),
(192, 'video', 'vidoe32131', NULL, '200', '2023-05-18 04:07:47', '2023-05-18 04:07:47');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `memberId` varchar(16) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(512) NOT NULL,
  `subtitle` varchar(1024) DEFAULT NULL,
  `slug` varchar(600) NOT NULL,
  `memberSince` date DEFAULT NULL,
  `validTill` date DEFAULT NULL,
  `logo` varchar(512) DEFAULT NULL,
  `companyInfo` varchar(512) DEFAULT NULL,
  `bcsMemberId` varchar(16) DEFAULT NULL,
  `companyType` smallint(2) DEFAULT NULL,
  `businessNature` varchar(64) DEFAULT NULL,
  `businessAddress` varchar(256) DEFAULT NULL,
  `establishYear` smallint(4) DEFAULT NULL,
  `floorCentral` smallint(1) DEFAULT NULL,
  `telephone` varchar(64) DEFAULT NULL,
  `mobile` varchar(64) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `companyWebsite` varchar(64) DEFAULT NULL,
  `aboutCompany` mediumtext DEFAULT NULL,
  `shareImage` varchar(512) DEFAULT NULL,
  `googleMap` varchar(512) DEFAULT NULL,
  `socialMedia` varchar(1024) DEFAULT NULL,
  `metaTitle` varchar(512) DEFAULT NULL,
  `metaKeywords` varchar(512) DEFAULT NULL,
  `metaDescription` varchar(512) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `memberId`, `user_id`, `created_by`, `title`, `subtitle`, `slug`, `memberSince`, `validTill`, `logo`, `companyInfo`, `bcsMemberId`, `companyType`, `businessNature`, `businessAddress`, `establishYear`, `floorCentral`, `telephone`, `mobile`, `email`, `companyWebsite`, `aboutCompany`, `shareImage`, `googleMap`, `socialMedia`, `metaTitle`, `metaKeywords`, `metaDescription`, `status`, `created_at`, `updated_at`) VALUES
(1, '001', 2, 1, 'StarTech Engineering Limited', 'Your IT products supplier', 'startech-engineering-limited', '2020-01-01', '2023-12-31', 'https://www.startech.com.bd/image/catalog/logo.png', 'Star Tech is a one-stop solution for buying iPhones in Bangladesh. We provide sales & services with official warranty, EMI & home delivery service spanning the country.', '1285', 9, 'Computer and electronics', 'Head Office: 28 Kazi Nazrul Islam Ave,Navana Zohura Square, Dhaka 1000', 1990, 3, '16793', '01313717083', 'media@startech.com.bd', 'https://www.startech.com.bd', '<h1>Leading Computer, Laptop &amp; Gaming PC Retail &amp; Online Shop in Bangladesh</h1>\r\n\r\n<p>Technology has become a part of our daily lives and for a huge portion of our life, we depend on tech products daily. There is hardly a home in Bangladesh without a tech product. This is where we come in.&nbsp;<a href=\"https://www.startech.com.bd/\" target=\"\">Star Tech Ltd.</a>&nbsp;started as a Tech Product Shop way back in March 2007. We focused on giving the customers the best service possible. This is why Star Tech is one of The most trusted names in the tech industry of Bangladesh today. After a long 16-year journey; Star Tech Ltd. was certified with the renowned &quot;ISO 9001:2015 certification&quot; as a recognition for the best Quality Control Management System. As an &quot;ISO 9001:2015 certified&quot; organization; Star Tech Ltd. is now up to the international standards that specify a Quality Management System (QMS). This Certification denotes that this organization consistently maintains all sorts of regulatory requirements to provide products and services for meeting all sorts of customer requirements.</p>\r\n\r\n<h2>Best Laptop Shop in Bangladesh</h2>\r\n\r\n<p>Star Tech is the largest and most reliable Branded&nbsp;<a href=\"https://www.startech.com.bd/laptop-notebook/laptop\" target=\"\">Laptop&nbsp;</a>Shop in BD. Whether you are a freelancer, office goer, or student - Star Tech&nbsp;<a href=\"https://www.startech.com.bd/laptop-notebook/laptop\" target=\"\">Laptop&nbsp;</a>Shop has the perfect device for you. Gamers love our collection of&nbsp;<a href=\"https://www.startech.com.bd/laptop-notebook/Gaming-Laptop\" target=\"\">Gaming Laptops</a>&nbsp;because we always bring the latest configuration devices to Bangladesh. Your budget is our top concern. Get an Intel Laptop or AMD Laptop within your desired price tag from Star Tech. Also, buy genuine official Apple&nbsp;<a href=\"https://www.startech.com.bd/laptop-notebook/laptop/apple-macbook\" target=\"\">Macbook</a>&nbsp;Air or Macbook Pro laptop from our laptop shop. Star Tech sells the latest models of the most popular laptop computer brands such as&nbsp;<a href=\"https://www.startech.com.bd/laptop-notebook/laptop/razer-laptop\" target=\"\">Razer</a>,&nbsp;<a href=\"https://www.startech.com.bd/laptop-notebook/laptop/hp-laptop\" target=\"\">HP</a>, Dell,&nbsp;<a href=\"https://www.startech.com.bd/laptop-notebook/laptop/apple-macbook\" target=\"\">Apple Macbook</a>,&nbsp;<a href=\"https://www.startech.com.bd/laptop-notebook/laptop/asus-laptop\" target=\"\">Asus</a>, Acer, Lenovo, Microsoft Surface, MSI, Gigabyte, i-Life,&nbsp;<a href=\"https://www.startech.com.bd/walton-laptop\" target=\"\">Walton</a>, Xiaomi MI, Huawei, Chuwi, etc.</p>\r\n\r\n<h2>Best Desktop PC Shop In Bangladesh</h2>\r\n\r\n<p><a href=\"https://www.startech.com.bd/\" target=\"\">Star Tech</a>&nbsp;has the most comprehensive array of&nbsp;<a href=\"https://www.startech.com.bd/desktops\" target=\"\">Desktop PCs</a>. We offer top-of-the-line Custom PC,&nbsp;<a href=\"https://www.startech.com.bd/desktops/brand-pc\" target=\"\">Brand PC</a>, All-in-One PC, and&nbsp;<a href=\"https://www.startech.com.bd/desktops/portable-mini-pc\" target=\"\">Portable Mini PC</a>&nbsp;at our stores spread all over Bangladesh. Get your new iMac Desktop or&nbsp;<a href=\"https://www.startech.com.bd/desktops/apple-mini-pc\" target=\"\">Apple Mac Mini</a>&nbsp;with an international warranty and servicing plan. To build a Desktop PC with the components of your choice, you can always depend on the experts of the Star Tech PC shop. Take your gaming or professional content creation to the next level with a large collection of high-end Gaming and Rendering PC from Star Tech. You can choose and build a complete Personal computer with our&nbsp;<a href=\"https://www.startech.com.bd/tool/pc_builder\" target=\"\">PC Builder</a>&nbsp;feature anytime, anywhere. Or, build a Desktop PC to your taste right in front of you at the Star Tech PC Shop.</p>\r\n\r\n<h2>Best Gaming PC Shop In Bangladesh</h2>\r\n\r\n<p>We at Star Tech love gaming. Therefore, we aim to provide the best gaming service in Bangladesh with our&nbsp;<a href=\"https://www.startech.com.bd/desktops/gaming-pc\" target=\"\">Gaming PC</a>&nbsp;Shop, &ldquo;Star Tech Rig House&rdquo;. The Rig House is highly decorated with premium, gaming-focused computer components for customers to build their&nbsp;<a href=\"https://www.startech.com.bd/desktops/gaming-pc\" target=\"\">Gaming&nbsp;</a>or Rendering PC. Our Gaming shop offers the broadest range of Gaming PC, Gaming Laptops, and&nbsp;<a href=\"https://www.startech.com.bd/gaming-console\" target=\"\">Game Consoles</a>&nbsp;from XBOX &amp; PlayStation. Star Tech&rsquo;s Gaming PC shop consists of Gaming Motherboards, Liquid Coolers, Custom Cooling for PC, Gaming Casings, high-performance RAM Kits, Graphics Cards, etc. Our exceptional Gaming focused accessories cover Gaming Chairs, Gaming Sofas, RGB Mousepads, Gaming Headphones, Headphone Stands, RGB Light-Strips and many more. We have strategic partnerships with many world-dominating computer Gaming brands like Razer, PNY, ASRock, Asus, Zadak, GALAX, Noctua, Antec, LIAN LI, CRYORIG, EKWB, Gamdias, KWG, XFX, etc. Our gaming concern also extends to leading gaming brands including A4Tech Bloody, SteelSeries, Logitech, Corsair, Redragon, Cooler Master, Fantech, Cougar, Gigabyte &amp; Elgato products at our Gaming PC Shop.</p>\r\n\r\n<h2>Best Office Equipment Shop In Bangladesh</h2>\r\n\r\n<p>Star Tech Ltd. is Bangladesh&#39;s most trusted&nbsp;<a href=\"https://www.startech.com.bd/office-equipment\" target=\"\">Office Equipments&nbsp;</a>Shop. For more than 16 years, we have been providing the best Office Solution. Take a quick drive to the nearest Star Tech retail center and furnish your home office, Start-up business desk, or corporate space with the best&nbsp;<a href=\"https://www.startech.com.bd/office-equipment\" target=\"\">Office Equipment</a>. Find Laptops, Desktops, Antiviruses, CCTV &amp; IP Cameras, Printers, Routers, Photocopiers, Attendance Machines, Scanners, Conference Systems, Server Equipment, etc for smooth office operation.</p>\r\n\r\n<h2>Best Gadget Shop In Bangladesh</h2>\r\n\r\n<p>We bring in the most sought&nbsp;<a href=\"https://www.startech.com.bd/gadget\" target=\"\">gadgets&nbsp;</a>at Star Tech. Only genuine and leading brands of&nbsp;<a href=\"https://www.startech.com.bd/gadget/smart-watch\" target=\"\">Smart Watch</a>,&nbsp;<a href=\"https://www.startech.com.bd/earbuds\" target=\"\">Earbuds</a>,&nbsp;<a href=\"https://www.startech.com.bd/television-startech\" target=\"\">TV</a>,&nbsp;<a href=\"https://www.startech.com.bd/power-bank\" target=\"\">Power Bank</a>&nbsp;and Mobile Phone Accessories are available at our Gadget Shop. We are also concerned for creative professionals from whom we bring exciting gadgets like Drones, Studio Equipment,&nbsp;<a href=\"https://www.startech.com.bd/gimbal\" target=\"\">Gimbals&nbsp;</a>&amp; Stream Decks from DJI, Blackmagic, Corsair, Zhiyun, Gudsen, and Loupedeck. Ease up your chores with Daily Lifestyle gadgets from our gadget shop. Xiaomi, Razer, Fire-Boltt, UGREEN, OnePlus, Apple, Baseus, Orico, Havit, Samsung, and HOCO are a few of the brands we cover.</p>\r\n\r\n<h2>Mobile Shop in Bangladesh</h2>\r\n\r\n<p>Star Tech&nbsp;<a href=\"https://www.startech.com.bd/mobile-phone\" target=\"\">mobile phone</a>&nbsp;shop offers the latest smartphones and feature phones from top international brands.&nbsp;<a href=\"https://www.startech.com.bd/samsung-mobile-phone\" target=\"\">Samsung</a>, Motorola,&nbsp;<a href=\"https://www.startech.com.bd/google-pixel-phone\">Google Pixel</a>, Vivo, Huawei, Xiaomi, OPPO, Mi, Realme, and OnePlus are among the Android smartphone brands at our mobile shop. Star Tech is a one-stop solution for buying iPhones in Bangladesh. With official warranty, EMI &amp; home delivery service spanning the country, we are the largest&nbsp;<a href=\"https://www.startech.com.bd/mobile-phone\" target=\"\">mobile phone</a>&nbsp;shop in Bangladesh. Our mobile phone shop has an extensive collection of&nbsp;<a href=\"https://www.startech.com.bd/mobile-phone-accessories\" target=\"\">mobile phone accessories</a>&nbsp;including chargers, USB Type C Cables, Power Banks, Wireless Chargers, and many more to go with your smartphone.</p>\r\n\r\n<h2>Best E-commerce Shop To Order Your Desired Product</h2>\r\n\r\n<p>Star Tech believes the most in customer satisfaction. To serve our customers most efficiently, we launched our&nbsp;<a href=\"https://www.startech.com.bd/\" target=\"\">E-Commerce shop</a>. Since its inception, it has been regarded as the best E-Commerce store in Bangladesh. Our&nbsp;<a href=\"https://www.startech.com.bd/\" target=\"\">website&nbsp;</a>features a highly intelligent search engine for our valued customers to find their desired products easily. We have developed the most comprehensive PC Builder App, which is also integrated into our web store. With the PC Builder, you can build your Custom PC for gaming or productivity, save the build, and get an estimated budget, wattage, and performance report. Our E-Commerce Shop runs a variety of campaigns and exciting deals on multiple national &amp; international occasions. To name a few of our most successful events are - Flash sale, Special offer, Thursday Thunder, Anniversary Special Offer, New Year Offer, 11.11, 12.12 Campaign, and many more. We also arrange special Gaming Events and tournaments for Bangladeshi gamers with renowned&nbsp;<a href=\"https://www.startech.com.bd/gaming\" target=\"\">gaming&nbsp;</a>Brands like Razer and Asus ROG.</p>\r\n\r\n<h3>Best Price, Product, After-sales Service &amp; Fastest Delivery</h3>\r\n\r\n<p>Star Tech Ltd. has taken care of its customers since the beginning. Whether a customer is purchasing or inquiring, our customers get the highest priority in every instance. We deliver the best product for the best price with the most extended customer service in the nation. We&nbsp;<a href=\"https://www.startech.com.bd/information/offer\" target=\"\">offer&nbsp;</a>your desired product within the fastest timeframe. Covering all 64 districts of Bangladesh, our hubs are located in Dhaka, Chattogram, Khulna, Rangpur, Gazipur, and Rajshahi. The plan to expand our operations in other cities is already in motion.</p>', 'https://www.pclaptopbd.com/images/showrooms/star-tech-and-engineering-ltd-idb-branch-1653124862.jpg', 'https://goo.gl/maps/Pge5EY1L1M8nEWNo9', '[{\"name\":\"Startech Bokk\",\"link\":\"https:\\/\\/www.facebook.com\\/startech-book\"},{\"name\":\"Startech Twitter\",\"link\":\"https:\\/\\/www.twitter.com\\/startech-tweet\"},{\"name\":\"Startech Tube\",\"link\":\"https:\\/\\/www.youtube.com\\/startech-tube\"}]', 'StarTech Engineering Limited | BCS Computer City', 'StarTech, StarTech Engineering, StarTech Engineering Limited, BCS Computer City', 'Buy original Computer and IT products from authorized store StarTech. We have offers and discount on regular basis.', '1', '2023-04-01 00:41:57', '2023-04-06 04:01:17'),
(2, NULL, 3, 1, 'Rayans Computer Limited', 'Buy secure products', 'rayans-computer-limited', '2021-01-01', '2023-12-31', 'https://www.ryanscomputers.com/assets/images/ryans-logo.svg', 'Ryans Computers is Largest Chain Computer stores in BD, with best prices on Desktops, Laptops, PC Parts, Cameras, Gaming, Printers & more⚡COD⚡EMI', '5478', 13, 'Retail sell', 'Ryans Computers Limited Kusholi Bhaban, 4th Floor, 238/1 Begum Rokeya Sharani, Agargaon, Dhaka-1207', 1999, 4, '+8809604442121', '+8801755662121', 'admin@ryanscomputers.com', 'https://www.ryanscomputers.com/', '<h2>The Leading Retail and Online Shop for Computers, Laptops, Monitors &amp; Accessories in Bangladesh</h2>\r\n\r\n<p>If you are looking for the best computer shop in Bangladesh you have to consider Ryans Computers, as it is a pioneer computer shop and e-commerce platform selling computer and IT products all over Bangladesh through its branches and website. It provides a fast, secure, and convenient online shopping experience with a broad product offering in categories ranging from desktop PC, laptop to office equipment, camera, and smart daily life accessories. Ryans is always endeavoring to offer its customers the best possible facility &ndash; including multiple payment options, EMI Facility, best price, cash on delivery, delivery in 64 districts, free home delivery inside Dhaka, Chattogram and Barishal city, 24/7 online support, and extensive customer service and warranty commitments.RYANS Computers stays ahead of the game by keeping up with the latest and greatest, stocking all the big names like Intel, AMD, Asus, Gigabyte, Apple, and any other popular brands you can imagine. They cater to everyone, from students to professionals to hardcore gamers, with their massive inventory of PC components, laptops, desktops, peripherals, and gaming accessories.At RYANS Computers, the customer is always king. The company boasts a team of proficient professionals who are passionate about technology. They go above and beyond to guarantee that each customer enjoys a seamless and customized shopping experience. Regardless of whether you prefer to visit the physical store or shop online, you can rest assured that RYANS Computers will assist you in finding the appropriate product that caters to your distinctive needs.<br />\r\nBest After-Sales &amp; Warranty Support<br />\r\nOur aim is to ensure the best quality after-sales service and warranty support for our customers. We are providing warranty and after-sales service from each of our branches. Anyone can get after-sales service from any of our branches, no matter from which branch he or she purchased the product.<br />\r\nLargest IT product collection in Bangladesh<br />\r\nWe are constantly expanding our product range as well as improving our service quality. We offer the best selection of quality products that you can buy online or purchase from our outlets. Stay connected and stay tuned for new exciting products. Remember, we have the largest collection of IT products in Bangladesh. Lastly, it is our highest priority to create the best online shopping experience for every customer in Bangladesh. So start your online shopping and remember if you have questions we are just a phone call or email away.</p>\r\n\r\n<h3><strong>Best Computer and Laptop Shop in Bangladesh</strong></h3>\r\n\r\n<p>We are selling Brand PC, mini PC, all in one PC. Also you can build your desired personal computer with our expert consultancy. Ryans Computers is the oldest computers accessories seller in Bangladesh. You can buy from us Processor, motherboard, desktop ram, desktop cooler, casing, SSD, hard disk, graphics card etc. Computer parts.<br />\r\nOne-Stop Shop for Gaming PCs, Laptops and Components<br />\r\nIf you&#39;re a gamer, you&#39;re probably always on the lookout for the best gear to take your gaming experience to the next level. Here&#39;s the deal, if you&#39;re looking for a trusted shop for all your gaming needs in Bangladesh, Ryans is the place to go to find the best selection of gaming components in the country as we also sell gaming PCs, and monitors. Now, why should you choose Ryans over other retailers? RYANS Computers has built a solid reputation as a Bangladesh tech retail and online shopping pioneer. What sets RYANS Computers apart from other retailers is that they are super passionate about technology. They go above and beyond to ensure that every customer enjoys a seamless and personalized shopping experience. RYANS understands that buying tech products can be overwhelming, so they take the time to understand customers&#39; unique needs and help them find the right product to meet them. And hats off to their excellent customer service and after-sales services. They also make sure of competitive prices and special deals regularly. They believe in making tech products accessible to everyone, offering their customers financing options and flexible payment plans.<br />\r\nLatest PC Building Components in Bangladesh<br />\r\nAre you looking for the best PC building components shop? RYANS Computers, Bangladesh&#39;s leading computer component provider, offers an extensive assortment of cutting-edge PC components that cater to the diverse requirements and financial constraints of tech enthusiasts. Whether on a tight budget or seeking high-end solutions, RYANS Computers has got you covered. We offer a wide selection of high-quality components, knowledgeable staff, and an easy online ordering system for your convenience. Create your dream machine with RYANS shop, Bangladesh&#39;s best PC building components store. Visit us today and achieve lightning-fast performance, stunning visuals, and a build you can be proud of.<br />\r\nReliable computer accessories online shop in Bangladesh<br />\r\nWelcome to RYANS Computers, Bangladesh&#39;s leading online shop for computer accessories. Our extensive collection of high-quality computer accessories includes everything from mice and keyboards to printers, monitors, and more. At RYANS Computers, we are dedicated to providing our customers with the best products at the most competitive prices. Our user-friendly website makes it easy to find the perfect computer accessory for your needs, and our fast and reliable shipping ensures that your order arrives quickly and safely. Shop confidently at RYANS Computers as we sell the best quality pc accessories and gadgets like Brand Desktop PC, Processor, Gaming Laptop, Monitors, Smartwatch, DSLR Camera, Desktop Accessories, Printer, Photocopier, Scanner, Projector, Server, Security System, CC Camera, IP Camera, Network Router, Access Control, IP Phone Set from famous brands including HP, Canon, Dell, Toshiba, Brother, Epson, Sharp, Casio, BenQ, Xiaomi, Samsung, Panasonic, etc.<br />\r\nLargest Chain of Computer Store in Bangladesh<br />\r\nBesides online facility Ryans offers the largest chain of computer stores in Bangladesh with its branches available in Dhaka, Chattogram, Rajshahi, Khulna, Rangpur, and Barishal division. We have stores at the most prominent IT market in Dhaka like BCS Computer City (IDB Bhaban), Multiplan City Centre &amp; Eastern Plus Shopping Complex. Moreover, two large outlets are there at the Banani and Uttara locations in Dhaka. The largest store of Ryans is in Agrabad, Chattogram which is the largest computer store in Bangladesh. In Chattogram Ryans has another store at Younesco City Centre, GEC Circle and Agrabad. Ryans Khulna branch is the largest computer store in the Khulna division. Branches in Rangpur, Rajshahi, Bogura, Barishal, and Mymensingh districts are also providing the same quality product and service just like the branches from Dhaka.</p>', 'https://scontent.fdac152-1.fna.fbcdn.net/v/t39.30808-6/312241842_5862737227122802_7723835055261812200_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=e3f864&_nc_eui2=AeGWCm_pGb0A8hZLSheNRkWGR75RgNGeFudHvlGA0Z4W5-2vzQ-CxxlleQyZelO2ao4&_nc_ohc=ZNOYoATJlMwAX_YzxL9&_nc_ht=scontent.fdac152-1.fna&oh=00_AfB3ocfe4U6YqK-p0MH3WaheK0A3L0AP2ABDLQ9quVHukQ&oe=642DB1B6', 'https://goo.gl/maps/HS7a439oSxttH7KG7', NULL, NULL, NULL, NULL, '1', '2023-04-01 09:41:26', '2023-04-01 14:21:10'),
(3, NULL, 4, 1, 'Rayans Computers Limited', NULL, 'rayans-computer-limited-1-1', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 4, NULL, NULL, NULL, 'https://www.ryanscomputers.com/', NULL, NULL, NULL, '[{\"name\":\"RayansBook\",\"link\":\"https:\\/\\/www.facebook.com\\/rayans-books\"},{\"name\":\"RayansTube\",\"link\":\"https:\\/\\/www.youtube.com\\/rayans-tube\"},{\"name\":null,\"link\":null}]', NULL, 'Rayans', 'description', '1', '2023-04-01 12:03:58', '2023-04-03 05:52:05'),
(4, NULL, 1, 1, 'Company name', NULL, 'company-slug-1680416881', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2023-04-02 00:28:01', '2023-04-02 00:28:01'),
(5, NULL, 6, 5, 'Company name', NULL, 'company-slug-1680775976', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2023-04-06 04:12:56', '2023-04-06 04:12:56'),
(6, NULL, 8, 7, 'ABC COMPUTER TECH', 'Bangladesh', 'ABC-COMPUTER-TECH', '2023-04-16', NULL, 'https://i.ibb.co/d51xwyZ/member1-2.jpg', NULL, '2500', 0, NULL, 'SHOP # 632, RAJUK COMMERCIAL COMPLEX ( 5TH FLOOR), AZAMPUR, SECTOR # 07, UTTARA, DHAKA - 1230.,Dhaka,Dhaka,Bangladesh', NULL, 2, '01616000112', '01616000112', 'SOHELMAHMUDJOY@GMAIL.COM', NULL, NULL, NULL, NULL, '[{\"name\":null,\"link\":null},{\"name\":null,\"link\":null},{\"name\":null,\"link\":null}]', NULL, NULL, NULL, '1', '2023-04-16 03:47:13', '2023-04-16 03:59:33'),
(7, NULL, 9, 7, 'ACCESS TECHNOLOGY', NULL, 'ACCESS-TECHNOLOGY', '2023-04-10', '2023-04-17', 'http://127.0.0.1:8000/images/uploads/large/member1.jpg', NULL, '1289', 0, NULL, 'SHOP NO- 310 (2ND FLOOR), R.F. ZOHURA TOWER, CHITTAGONG COMPUTER CITY, CHOWMUHONI, AGRABAD, CHITTAGONG ,,,Bangladesh', NULL, 3, '031-2512037', '01740920420', 'access_technologybd@yahoo.com', NULL, NULL, NULL, NULL, '[{\"name\":null,\"link\":null},{\"name\":null,\"link\":null},{\"name\":null,\"link\":null}]', NULL, NULL, NULL, '1', '2023-04-16 04:58:50', '2023-04-16 05:00:57'),
(8, NULL, 10, 7, 'ADVANCE TECHNOLOGY', NULL, 'ADVANCE-TECHNOLOGY', NULL, NULL, 'http://127.0.0.1:8000/images/uploads/large/member1.jpg', NULL, '1838', 0, NULL, 'SHOP # 413 LEVEL # 4 COMPUTER CITY CENTRE (MULTIPLAN), 69-71, NEW ELEPHANT ROAD, DHAKA-1205,Dhaka,Dhaka,Bangladesh', NULL, 2, '01671664777', '01671664777', 'advance.technology2012@gmail.com', NULL, NULL, NULL, NULL, '[{\"name\":null,\"link\":null},{\"name\":null,\"link\":null},{\"name\":null,\"link\":null}]', NULL, NULL, NULL, '1', '2023-04-16 05:06:15', '2023-04-16 05:08:37'),
(9, NULL, 11, 7, 'AGD IT SOLUTION (BD) LTD.', NULL, 'AGD-IT-SOLUTION-LTD', NULL, NULL, 'http://127.0.0.1:8000/images/uploads/large/member1.jpg', NULL, '1350', 0, NULL, 'RUPSHA TOWER, PLOT- 7, FLAT- A/9, ROAD-17, BANANI C/A, DHAKA-1213.,Dhaka,Dhaka,Bangladesh', NULL, 4, '01711202874', '01711202874', NULL, 'www.agdits.com', NULL, NULL, NULL, '[{\"name\":null,\"link\":null},{\"name\":null,\"link\":null},{\"name\":null,\"link\":null}]', NULL, NULL, NULL, '1', '2023-04-16 05:11:17', '2023-04-16 05:13:16'),
(10, NULL, 7, 7, 'Company name', NULL, 'company-slug-1683350147', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2023-05-05 23:15:47', '2023-05-05 23:15:47'),
(11, NULL, 15, 15, 'Company name', NULL, 'company-slug-1683442059', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2023-05-07 00:47:39', '2023-05-07 00:47:39'),
(12, NULL, 7, 7, 'Company name', NULL, 'company-slug-1683443588', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2023-05-07 01:13:08', '2023-05-07 01:13:08'),
(13, NULL, 7, 7, 'Company name', NULL, 'company-slug-1683443733', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2023-05-07 01:15:33', '2023-05-07 01:15:33'),
(14, NULL, 22, 7, 'Company name', NULL, 'company-slug-1683444394', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2023-05-07 01:26:34', '2023-05-07 01:26:34'),
(15, NULL, 23, 7, 'Company name', NULL, 'company-slug-1683444945', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2023-05-07 01:35:45', '2023-05-07 01:35:45'),
(16, NULL, 24, 7, 'Company name', NULL, 'company-slug-1683451140', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2023-05-07 03:19:00', '2023-05-07 03:19:00'),
(17, NULL, 25, 7, 'Company name', NULL, 'company-slug-1683451200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2023-05-07 03:20:00', '2023-05-07 03:20:00'),
(18, NULL, 26, 7, 'Company name', NULL, 'company-slug-1683451489', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'shahriarshuvo714@gmail.com', NULL, NULL, NULL, NULL, 'null', NULL, NULL, NULL, NULL, '2023-05-07 03:24:49', '2023-05-11 01:50:05'),
(19, NULL, 27, 7, 'Company name', NULL, 'company-slug-1683702893', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '2023-05-10 01:14:53', '2023-05-10 01:14:53');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_03_19_055655_create_welcomes_table', 1),
(7, '2023_03_20_101847_create_contents_table', 1),
(8, '2023_03_20_110106_create_uploads_table', 1),
(9, '2023_03_22_050110_create_events_table', 1),
(10, '2023_03_22_111228_add_role_id_to_users_table', 1),
(11, '2023_03_23_081354_create_landings_table', 2),
(12, '2023_03_28_064905_create_siteoptions_table', 3),
(13, '2023_03_23_065346_create_contacts_table', 4),
(14, '2023_03_29_090631_create_pagesettings_table', 4),
(15, '2023_03_29_184842_add_page_description_to_pagesettings_table', 5),
(16, '2023_03_30_104410_create_members_table', 6),
(17, '2023_04_02_081905_create_employees_table', 7),
(18, '2023_04_03_075108_create_branches_table', 8),
(19, '2023_04_05_062853_create_content_employee_table', 9),
(20, '2023_04_13_091441_create_tags_table', 10),
(21, '2023_04_29_045819_create_subscribes_table', 11),
(22, '2023_05_07_103502_create_content_tag_table', 12),
(23, '2023_05_07_103738_create_content_tag_table', 13);

-- --------------------------------------------------------

--
-- Table structure for table `pagesettings`
--

CREATE TABLE `pagesettings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_slug` varchar(32) NOT NULL,
  `meta_heading` varchar(512) DEFAULT NULL,
  `meta_title` varchar(512) DEFAULT NULL,
  `meta_keyword` varchar(512) DEFAULT NULL,
  `meta_description` varchar(512) DEFAULT NULL,
  `meta_image` varchar(512) DEFAULT NULL,
  `meta_robots` varchar(16) DEFAULT NULL,
  `meta_canonical` varchar(512) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `page_description` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pagesettings`
--

INSERT INTO `pagesettings` (`id`, `meta_slug`, `meta_heading`, `meta_title`, `meta_keyword`, `meta_description`, `meta_image`, `meta_robots`, `meta_canonical`, `created_at`, `updated_at`, `page_description`) VALUES
(1, 'index', 'This is page H1', 'Meta || This is page meta title', 'Keywore, bcs, idb', 'This is the descriotino of the page', 'https://upload.wikimedia.org/wikipedia/commons/c/cb/BCS_Computer_City_1.jpg', 'index', NULL, '2023-03-29 09:33:46', '2023-03-30 00:27:45', '<h2>&quot;BCS Computer City is the largest shopping complex for retail and wholesale of exclusively computer hardware, accessories &amp; related products.</h2>\r\n\r\n<p>পরিষেবার বিকল্প:&nbsp;স্টোর মধ্যস্থ শপিং&nbsp;&middot; দোকান থেকে অর্ডার পিকআপ করার ব্যবস্থা&nbsp;&middot; ডেলিভারি</p>\r\n\r\n<p><a href=\"https://www.google.com/search?newwindow=1&amp;sxsrf=APwXEddkSUvoU_x2NmdJrUsB-kcU8FWRpQ:1680157228777&amp;q=bcs+computer+city+%E0%A6%A0%E0%A6%BF%E0%A6%95%E0%A6%BE%E0%A6%A8%E0%A6%BE&amp;ludocid=7854853005272338930&amp;sa=X&amp;ved=2ahUKEwiRwaa2gYP-AhVkQPUHHbjeAFUQ6BN6BAhbEAI\">ঠিকানা</a>:&nbsp;BCS Computer CIty, আইডিবি ভবন, 8-A Rokeya Sharani, ঢাকা 1207</p>\r\n\r\n<p><a href=\"https://www.google.com/search?newwindow=1&amp;sxsrf=APwXEddkSUvoU_x2NmdJrUsB-kcU8FWRpQ:1680157228777&amp;q=bcs+computer+city+%E0%A6%98%E0%A6%A3%E0%A7%8D%E0%A6%9F%E0%A6%BE&amp;ludocid=7854853005272338930&amp;sa=X&amp;ved=2ahUKEwiRwaa2gYP-AhVkQPUHHbjeAFUQ6BN6BAhIEAI\">খোলা থাকার সময়সূচি</a>:&nbsp;</p>\r\n\r\n<p>খোলা আছে&nbsp;&sdot; ৭:৩০ PM-এ বন্ধ হবে</p>\r\n\r\n<p><a href=\"https://www.google.com/search?newwindow=1&amp;sxsrf=APwXEddkSUvoU_x2NmdJrUsB-kcU8FWRpQ:1680157228777&amp;q=bcs+computer+city+%E0%A6%AB%E0%A7%8B%E0%A6%A8+%E0%A6%A8%E0%A6%AE%E0%A7%8D%E0%A6%AC%E0%A6%B0&amp;ludocid=7854853005272338930&amp;sa=X&amp;ved=2ahUKEwiRwaa2gYP-AhVkQPUHHbjeAFUQ6BN6BAhVEAI\">ফোন নম্বর</a>:&nbsp;<a href=\"https://www.google.com/search?q=bcs+computer+city&amp;oq=bcs+co&amp;aqs=chrome.0.69i59j69i57j0i19i512l2j46i19i175i199i512j69i60l3.6340j0j7&amp;sourceid=chrome&amp;ie=UTF-8#\">01928-028742</a></p>'),
(2, 'events', 'BCS Events 2023', 'BCS Events 2023 || Bangladesh Computer City', NULL, 'BCS events help you connect with the community, tap into the latest thinking, and help to inform and inspire future. BCSWomen Lovelace Colloquium 2023.', 'https://bcsagri.com/wp-content/uploads/2023/02/News-prossime-Fiere_BCS.webp', 'noindex', NULL, '2023-03-29 05:04:52', '2023-05-18 01:58:22', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>'),
(3, 'search', 'Search for shop, notice, blog or any other contents', 'Search | Search for shop, notice, blog or any other contents', 'Search, Search for shop, search notice, find blog, latest news, bcs news search', 'From BCS Computer city you can find your desired shop or service you need, look at this page and search with words.', 'https://images.squarespace-cdn.com/content/v1/52781f42e4b012c43bea23d0/1534379486240-C4ZWTMMH4Z3TM1ES0E6V/o-SEARCH-facebook.jpg?format=2500w', 'index,follow', NULL, '2023-03-29 15:12:33', '2023-03-29 15:12:33', NULL),
(4, 'news', 'All News Page H1 goes Here........', 'meta-news', NULL, 'news meta description', 'https://images.prothomalo.com/prothomalo-bangla%2F2023-02%2F50c31728-9652-4aa5-bd3f-83f0c86b7974%2Fprothomalo_bangla_2020_09_957b9e33_2b3b_4518_aae3_a3a699f72a5e_prothomalo_import_media_2017_11_14_58.webp?auto=format%2Ccompress&format=webp&w=640&dpr=1.0', 'allow,robot', NULL, '2023-04-06 03:42:14', '2023-04-06 03:42:14', '<p>page details</p>'),
(5, 'login', 'BCS Login Page', 'BCS Login', 'login,bcs', 'BCS Computer City is the largest shopping complex in Bangladesh dedicated exclusively to computer hardware, accessories, and related products. Located in the heart of Dhaka city, BCS Computer City offers a one-stop shopping experience for both retail and wholesale customers.', 'http://127.0.0.1:8000/images/uploads/large/about-us.png', 'allow,robot', NULL, '2023-05-01 23:11:07', '2023-05-01 23:44:15', '<p>BCS Computer City is the largest shopping complex in Bangladesh dedicated exclusively to computer hardware, accessories, and related products. Located in the heart of Dhaka city, BCS Computer City offers a one-stop shopping experience for both retail and wholesale customers.</p>'),
(6, 'members', 'members', 'members', 'members', 'members', NULL, NULL, NULL, '2023-05-09 04:38:16', '2023-05-09 04:38:39', NULL),
(7, 'gallery', 'this is h1', 'gallery | BCS', NULL, 'Meta Description', NULL, NULL, NULL, '2023-05-14 00:03:06', '2023-05-14 00:03:06', '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<h2>Why do we use it?</h2>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Where does it come from?</h2>\r\n\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n\r\n<h2>Where can I get some?</h2>\r\n\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('shahriarshuvo714@gmail.com', '$2y$10$5Eg45QxLWCfYVPOkMH.VHe70HvdTJXMu.7VzAQO07znTHMkrNQpCG', '2023-05-06 23:50:04');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `siteoptions`
--

CREATE TABLE `siteoptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `okey` varchar(32) NOT NULL,
  `ovalue` varchar(512) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `siteoptions`
--

INSERT INTO `siteoptions` (`id`, `okey`, `ovalue`, `created_at`, `updated_at`) VALUES
(1, 'cms_author', 'Crenotive Digitals', '2023-03-28 07:04:48', '2023-03-28 02:40:08'),
(2, 'cms_publisher', 'BCS Computer City', '2023-03-28 07:04:48', '2023-03-28 02:43:27'),
(3, 'cms_facebook', NULL, '2023-03-28 02:54:07', '2023-05-13 23:50:48'),
(4, 'cms_sitename', 'BCSWebsite', '2023-03-28 03:03:25', '2023-03-28 03:40:43'),
(5, 'cms_assets', 'http://127.0.0.1:8000', '2023-03-28 03:38:09', '2023-03-28 03:38:09'),
(6, 'cms_url', 'http://127.0.0.1:8000', '2023-03-28 03:38:30', '2023-03-28 03:38:30'),
(7, 'cms_devlink', 'https://www.crenotive.com', '2023-03-28 04:03:26', '2023-03-28 04:03:26'),
(8, 'cms_twitter', 'https://www.twitter.com', '2023-03-29 05:24:06', '2023-03-29 05:24:06'),
(9, 'cms_headcode', '<!-- head code -->', '2023-03-29 05:33:52', '2023-03-29 05:33:52'),
(10, 'cms_bodycode', '<!-- body code -->', '2023-03-29 05:34:05', '2023-03-29 05:34:05'),
(11, 'cms_layout', 'crenotive-s', '2023-03-30 23:00:53', '2023-04-05 23:35:14'),
(12, 'cms_plan_gic', '10', '2023-04-18 05:41:25', '2023-04-18 05:41:25'),
(13, 'cms_plan_pic', '10', '2023-05-02 05:18:03', '2023-05-02 05:18:03'),
(14, 'cms_hnc', '3', '2023-05-13 23:30:24', '2023-05-13 23:30:24'),
(15, 'cms_hsc', '154', '2023-05-13 23:33:51', '2023-05-13 23:35:17'),
(16, 'cms_hpc', '50000', '2023-05-13 23:34:26', '2023-05-13 23:34:26'),
(17, 'cms_hbc', '10000', '2023-05-13 23:34:51', '2023-05-13 23:34:51'),
(18, 'cms_contactaddress', 'IDB Bhaban, 8-A Rokeya Sharani, Dhaka 1207', '2023-05-13 23:43:45', '2023-05-13 23:43:45'),
(19, 'cms_linkedin', 'linkedin.com', '2023-05-13 23:49:31', '2023-05-13 23:49:31');

-- --------------------------------------------------------

--
-- Table structure for table `subscribes`
--

CREATE TABLE `subscribes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subscribe_type` varchar(16) NOT NULL,
  `email` varchar(64) NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribes`
--

INSERT INTO `subscribes` (`id`, `subscribe_type`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'email', 'ufarrell@example.org', '1', '2023-04-28 23:17:27', '2023-04-28 23:17:27'),
(2, 'email', 'ufarrell@example.org', '1', '2023-04-28 23:19:28', '2023-04-28 23:19:28'),
(3, 'email', 'ufarrell@example.org', '1', '2023-04-28 23:26:11', '2023-04-28 23:26:11'),
(4, 'email', 'ufarrell@example.org', '1', '2023-04-29 00:00:41', '2023-04-29 00:00:41');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tag_type` smallint(3) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `parent` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(512) NOT NULL,
  `slug` varchar(612) NOT NULL,
  `linkto` varchar(512) DEFAULT NULL,
  `linkUrl` varchar(512) DEFAULT NULL,
  `sequence` smallint(5) UNSIGNED DEFAULT NULL,
  `status` smallint(5) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `tag_type`, `user_id`, `parent`, `title`, `slug`, `linkto`, `linkUrl`, `sequence`, `status`, `created_at`, `updated_at`) VALUES
(22, 3, 7, 0, 'Tag cat 3', 'tag-cat-3', NULL, NULL, 20, 2, '2023-05-07 05:37:43', '2023-05-08 22:44:51'),
(23, 3, 7, 0, 'Tag Cat 1', 'tag-cat-1', NULL, NULL, 20, 2, '2023-05-07 05:39:37', '2023-05-08 22:44:47'),
(24, 3, 7, 0, 'Tag cat 2', 'tag-cat-2', NULL, NULL, 20, 2, '2023-05-07 05:39:58', '2023-05-08 22:44:44'),
(25, 4, 7, 0, 'Tag Tag 1', 'tag-tag-1', NULL, NULL, 20, 2, '2023-05-07 05:41:45', '2023-05-08 22:44:55'),
(26, 4, 7, 0, 'home', '/home', NULL, '/', 1, 1, '2023-05-07 05:41:59', '2023-05-08 22:47:55'),
(27, 1, 7, 0, 'About', 'about-us', 'about-us', NULL, 2, 1, '2023-05-08 23:08:15', '2023-05-08 23:20:32'),
(28, 1, 7, 0, 'Membership', 'menu-members', 'members', NULL, 3, 1, '2023-05-08 23:16:18', '2023-05-08 23:16:18'),
(29, 0, 7, 0, 'Latest', '#', '#', NULL, 3, 1, '2023-05-11 03:08:33', '2023-05-11 03:08:33'),
(30, 0, 7, 29, 'notice', 'notice', 'notice', NULL, 20, 1, '2023-05-11 03:17:21', '2023-05-11 03:17:21');

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `content_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `video` text DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `user_id`, `content_id`, `name`, `caption`, `description`, `video`, `file`, `url`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Cpation slider', NULL, NULL, NULL, NULL, 'https://demo.crenotive.com/association/public/assets/img/slider-2.jpg', 1, '2023-03-23 01:58:16', '2023-03-23 01:58:16'),
(2, 1, 2, 'asdf', NULL, NULL, NULL, NULL, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVzE5C0XE8_k87veuBj0Pqr0cTIFGKHXWhwA&usqp=CAU', 1, '2023-03-23 06:13:56', '2023-03-28 03:45:57'),
(3, 1, 3, 'a', NULL, NULL, NULL, NULL, 'a', 1, '2023-03-23 10:11:09', '2023-03-23 10:11:09'),
(4, 1, 4, 'a', NULL, NULL, NULL, NULL, 'a', 1, '2023-03-23 10:11:21', '2023-03-23 10:11:21'),
(5, 1, 5, 'aa', NULL, NULL, NULL, NULL, 'aa', 1, '2023-03-26 23:40:15', '2023-03-26 23:40:15'),
(6, 1, 1, 'Slider image name', NULL, NULL, NULL, NULL, 'https://www.jqueryscript.net/demo/Responsive-Full-Width-jQuery-Image-Slider-Plugin-skdslider/slides/1.jpg', 1, '2023-03-27 02:28:24', '2023-03-27 02:28:24'),
(7, 1, 2, 'a', NULL, NULL, NULL, NULL, 'a', 1, '2023-03-27 02:32:47', '2023-03-27 02:32:47'),
(8, 1, 3, 'This abc name', NULL, NULL, NULL, NULL, 'This is upload url', 1, '2023-03-27 02:50:48', '2023-03-27 02:50:48'),
(9, 1, 4, 'abc', NULL, NULL, NULL, NULL, 'abc', 1, '2023-03-27 03:38:08', '2023-03-27 03:38:08'),
(10, 1, 5, 'a', NULL, NULL, NULL, NULL, 'a', 1, '2023-03-27 03:48:29', '2023-03-27 03:48:29'),
(11, 1, 6, 'A', NULL, NULL, NULL, NULL, 'A', 1, '2023-03-29 00:57:22', '2023-03-29 00:57:22'),
(12, 1, 7, 'a', NULL, NULL, NULL, NULL, 'a', 1, '2023-03-29 01:38:54', '2023-03-29 01:38:54'),
(13, 1, 8, 'a', NULL, NULL, NULL, NULL, 'a', 1, '2023-03-29 01:45:12', '2023-03-29 01:45:12'),
(14, 1, 9, 'a', NULL, NULL, NULL, NULL, 'a', 1, '2023-03-29 01:56:08', '2023-03-29 01:57:28'),
(15, 7, 10, 'committee', NULL, NULL, NULL, NULL, 'https://i.ytimg.com/vi/OAcuUs2nf2g/mqdefault.jpg', 1, '2023-04-03 10:28:03', '2023-05-19 23:05:28'),
(16, 5, 11, 'test-1 slider', NULL, NULL, NULL, NULL, 'https://i.ibb.co/x8GHB5z/slider-new-2.png', 1, '2023-04-05 23:51:49', '2023-04-06 00:16:21'),
(17, 5, 12, 'test-2', NULL, NULL, NULL, NULL, 'https://i.ibb.co/L6QrR8h/slider-1.jpg', 1, '2023-04-06 00:17:35', '2023-04-06 00:17:35'),
(18, 5, 13, 'blog', NULL, NULL, NULL, NULL, 'https://images.prothomalo.com/prothomalo-bangla%2F2023-04%2F35615747-64f0-4ce4-a9bf-e4f4866fc465%2Fnearby_share_app_google.png?rect=0%2C24%2C875%2C492&auto=format%2Ccompress&fmt=webp&format=webp&w=900&dpr=1.0', 1, '2023-04-06 02:31:36', '2023-04-06 02:31:36'),
(19, 5, 14, 'blog', NULL, NULL, NULL, NULL, 'https://i.ibb.co/86VB8tq/Untitled-2.jpg', 1, '2023-04-06 02:33:49', '2023-04-06 02:33:49'),
(20, 5, 15, 'blog', NULL, NULL, NULL, NULL, 'https://images.prothomalo.com/prothomalo%2Fimport%2Fmedia%2F2018%2F04%2F24%2F0a62390a26c4c12277408091c9b009a9-5adef05cdcd1c.jpg?rect=0%2C0%2C1600%2C900&auto=format%2Ccompress&fmt=webp&format=webp&w=900&dpr=1.0', 1, '2023-04-06 02:34:48', '2023-04-06 02:34:48'),
(21, 5, 17, 'news', NULL, NULL, NULL, NULL, 'https://i.ibb.co/86VB8tq/Untitled-2.jpg', 1, '2023-04-06 02:39:15', '2023-04-06 02:39:15'),
(22, 5, 18, 'news', NULL, NULL, NULL, NULL, 'https://i.ibb.co/86VB8tq/Untitled-2.jpg', 1, '2023-04-06 02:40:29', '2023-04-06 02:40:29'),
(23, 5, 19, 'news', NULL, NULL, NULL, NULL, 'https://images.prothomalo.com/prothomalo%2Fimport%2Fmedia%2F2018%2F04%2F24%2F0a62390a26c4c12277408091c9b009a9-5adef05cdcd1c.jpg?rect=0%2C0%2C1600%2C900&auto=format%2Ccompress&fmt=webp&format=webp&w=900&dpr=1.0', 1, '2023-04-06 02:41:13', '2023-04-06 02:41:13'),
(24, 5, 21, 'news', NULL, NULL, NULL, NULL, 'https://images.prothomalo.com/prothomalo-bangla%2F2023-04%2F35615747-64f0-4ce4-a9bf-e4f4866fc465%2Fnearby_share_app_google.png?rect=0%2C24%2C875%2C492&auto=format%2Ccompress&fmt=webp&format=webp&w=900&dpr=1.0', 1, '2023-04-06 02:42:06', '2023-04-06 02:42:06'),
(25, 7, NULL, 'new Notice', NULL, NULL, NULL, NULL, NULL, 4, '2023-04-07 23:08:19', '2023-05-15 01:31:22'),
(26, 7, 23, 'demo', NULL, NULL, NULL, NULL, NULL, 1, '2023-04-07 23:20:49', '2023-04-07 23:20:49'),
(27, 7, NULL, 'latest news', NULL, NULL, NULL, NULL, NULL, 4, '2023-04-07 23:24:10', '2023-05-15 01:32:00'),
(28, 7, 25, 'special notice', NULL, NULL, NULL, NULL, NULL, 1, '2023-04-07 23:45:02', '2023-04-07 23:45:02'),
(29, 7, 26, 'gallery_upload', NULL, NULL, NULL, 'images/gallery/large/131152793_1812675995552332_1457164936873485596_n.jpg', NULL, 1, '2023-04-08 00:00:05', '2023-04-08 00:00:05'),
(30, 7, 27, 'gallery_upload', 'caption-3', NULL, NULL, 'images/gallery/large/131444030_1813546558798609_4068022494702724694_n.jpg', NULL, 1, '2023-04-08 00:08:05', '2023-04-08 00:08:05'),
(31, 7, 27, 'gallery_upload', 'caption-3', NULL, NULL, 'images/gallery/large/131895815_1812674965552435_1441409006263935859_n.jpg', NULL, 1, '2023-04-08 00:08:05', '2023-04-08 00:08:05'),
(32, 7, 27, 'gallery_upload', 'caption-3', NULL, NULL, 'images/gallery/large/131499215_1812675125552419_5012372637506478085_n.jpg', NULL, 1, '2023-04-08 00:08:06', '2023-04-08 00:08:06'),
(33, 7, 28, 'video_upload', 'caption-2', NULL, NULL, NULL, NULL, 1, '2023-04-08 00:28:43', '2023-04-08 00:28:43'),
(34, 7, 30, 'video_upload', 'caption-2', NULL, '<iframe width=\"1209\" height=\"713\" src=\"https://www.youtube.com/embed/ckhllNh79gM\" title=\"Laravel Validation: 12 Less-Known Tips in 13 Minutes\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', NULL, NULL, 1, '2023-04-08 00:49:49', '2023-04-08 00:49:49'),
(35, 7, 30, 'video_upload', 'caption-2', NULL, '<iframe width=\"1229\" height=\"713\" src=\"https://www.youtube.com/embed/RTTXZVIL6tw\" title=\"Exceptions in Laravel: Why/How to Use and Create Your Own\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', NULL, NULL, 1, '2023-04-08 00:49:49', '2023-04-08 00:49:49'),
(36, 7, 31, 'video_upload', 'caption-2', NULL, 'https://youtu.be/RTTXZVIL6tw', NULL, NULL, 1, '2023-04-08 00:55:55', '2023-04-08 00:55:55'),
(37, 7, 34, 'video_upload', 'caption-2', NULL, 'https://youtu.be/5khyIHIYIK4', NULL, NULL, 1, '2023-04-08 00:55:55', '2023-04-08 00:55:55'),
(38, 7, 35, 'page-image', NULL, NULL, NULL, NULL, 'https://i.ibb.co/x8GHB5z/slider-new-2.png', 1, '2023-04-12 03:11:17', '2023-04-12 03:28:57'),
(39, 7, 36, 'gallery_upload', NULL, NULL, NULL, 'images/gallery/large/gallery-image-6.jpg', NULL, 1, '2023-04-12 23:23:44', '2023-04-12 23:23:44'),
(40, 7, 36, 'gallery_upload', NULL, NULL, NULL, 'images/gallery/large/gallery-image-2.jpg', NULL, 1, '2023-04-12 23:23:44', '2023-04-12 23:23:44'),
(41, 7, 36, 'gallery_upload', NULL, NULL, NULL, 'images/gallery/large/gallery-image-3.jpg', NULL, 1, '2023-04-12 23:23:44', '2023-04-12 23:23:44'),
(42, 7, 36, 'gallery_upload', NULL, NULL, NULL, 'images/gallery/large/gallery-image-4.jpg', NULL, 1, '2023-04-12 23:23:44', '2023-04-12 23:23:44'),
(43, 7, 37, 'notice One', NULL, NULL, NULL, NULL, NULL, 1, '2023-04-12 23:47:01', '2023-04-12 23:47:01'),
(44, 7, 38, 'blog', NULL, NULL, NULL, NULL, 'https://www.technology-solved.com/wp-content/uploads/2023/01/data-loss-prevention-457x326.jpg', 1, '2023-04-14 22:48:14', '2023-04-15 00:32:24'),
(45, 7, 39, 'news', NULL, NULL, NULL, NULL, 'https://www.technology-solved.com/wp-content/uploads/2022/10/home-printer-457x326.jpg', 1, '2023-04-15 00:13:32', '2023-04-15 00:13:32'),
(46, 7, 40, 'blog', NULL, NULL, NULL, NULL, 'https://www.technology-solved.com/wp-content/uploads/2022/09/office-keyboard-457x326.jpg', 1, '2023-04-15 00:15:10', '2023-04-15 00:27:31'),
(47, 7, 41, 'news', NULL, NULL, NULL, NULL, 'https://www.technology-solved.com/wp-content/uploads/2022/06/internet-connection-457x326.jpg', 1, '2023-04-15 00:35:08', '2023-04-15 00:35:08'),
(48, 7, 31, 'video_upload', 'caption-2', NULL, 'https://youtu.be/RTTXZVIL6tw', NULL, NULL, 1, '2023-04-15 02:09:23', '2023-04-15 02:09:23'),
(49, 7, 31, 'video_upload', 'caption-2', NULL, 'https://youtu.be/RTTXZVIL6tw', NULL, NULL, 1, '2023-04-15 02:10:13', '2023-04-15 02:10:13'),
(50, 7, 31, 'video_upload', 'caption-2', NULL, 'https://youtu.be/RTTXZVIL6tw', NULL, NULL, 1, '2023-04-15 02:10:13', '2023-04-15 02:10:13'),
(51, 7, 31, 'video_upload', 'caption-2', NULL, 'https://youtu.be/RTTXZVIL6tw', NULL, NULL, 1, '2023-04-15 02:10:57', '2023-04-15 02:10:57'),
(52, 7, 31, 'video_upload', 'caption-2', NULL, 'https://youtu.be/RTTXZVIL6tw', NULL, NULL, 1, '2023-04-15 02:10:57', '2023-04-15 02:10:57'),
(53, 7, 31, 'video_upload', 'caption-2', NULL, 'https://youtu.be/RTTXZVIL6tw', NULL, NULL, 1, '2023-04-15 02:10:57', '2023-04-15 02:10:57'),
(54, 7, 31, 'video_upload', 'caption-2', NULL, 'https://youtu.be/RTTXZVIL6tw', NULL, NULL, 1, '2023-04-15 02:10:57', '2023-04-15 02:10:57'),
(55, 7, 42, 'বিসিএস কম্পিউটার সিটি, আইডিবিতে চলছে “সিটি আইটি ঈদ উৎসব ২০২৩', NULL, NULL, NULL, NULL, 'https://i.ibb.co/GVGSzyd/1.jpg', 1, '2023-04-15 02:27:47', '2023-04-16 00:24:57'),
(56, 7, 43, 'j', NULL, NULL, NULL, NULL, NULL, 1, '2023-04-16 00:34:43', '2023-04-16 00:34:43'),
(57, 7, 44, 'video_upload', 'caption-1', NULL, 'https://youtu.be/RTTXZVIL6tw', NULL, NULL, 1, '2023-04-16 01:43:59', '2023-04-16 01:43:59'),
(58, 7, 45, 'video_upload', 'caption-2', NULL, 'https://youtu.be/RTTXZVIL6tw', NULL, NULL, 1, '2023-04-16 01:59:01', '2023-04-16 01:59:01'),
(59, 7, 46, 'video_upload', 'caption-3', NULL, 'https://youtu.be/RTTXZVIL6tw', 'images/video/large/323943912_567656791487210_8363920508356977455_n.jpg', NULL, 1, '2023-04-16 02:02:56', '2023-04-16 02:02:56'),
(60, 7, NULL, 'demo', 'Vice President', 'zsdssda', NULL, 'images/uploads/large/131444030-1813546558798609-4068022494702724694-n.jpg', NULL, 1, '2023-04-16 04:21:57', '2023-04-16 04:21:57'),
(61, 7, NULL, 'new member demo', 'caption-1', NULL, NULL, 'images/uploads/large/member1.jpg', NULL, 1, '2023-04-16 04:57:23', '2023-04-16 04:57:23'),
(62, 7, 47, 'page-image', NULL, NULL, NULL, NULL, NULL, 1, '2023-04-17 00:18:56', '2023-05-15 04:46:20'),
(63, 7, 48, 'page-image', NULL, NULL, NULL, NULL, 'https://www.technology-solved.com/wp-content/uploads/2022/09/office-keyboard-457x326.jpg', 1, '2023-04-17 00:20:42', '2023-04-17 00:20:42'),
(64, 7, NULL, 'about-us', 'about-us', 'about-us', NULL, 'images/uploads/large/about-us.png', NULL, 1, '2023-04-17 00:48:18', '2023-04-17 00:48:18'),
(65, 7, NULL, 'bcs google map', 'bcs-googhle-map', NULL, NULL, 'images/uploads/large/bcs-google-map.png', NULL, 1, '2023-04-17 22:32:56', '2023-04-17 22:32:56'),
(66, 7, 49, 'press 1', NULL, NULL, NULL, 'files/press-1.pdf', NULL, 1, '2023-04-18 05:30:49', '2023-04-18 05:30:49'),
(67, 2, NULL, 'demo', NULL, NULL, NULL, 'images/uploads/large/131817726-1813545538798711-6051768209755142287-n.jpg', NULL, 4, '2023-04-18 05:46:59', '2023-05-11 03:02:02'),
(68, 2, NULL, 'demo', NULL, NULL, NULL, 'images/uploads/large/323943912-567656791487210-8363920508356977455-n.jpg', NULL, 4, '2023-04-18 05:46:59', '2023-05-11 03:02:02'),
(69, 7, 64, 'press 2', NULL, NULL, NULL, 'files/unbranded-case-study-sapphire-hotel-case-study.pdf', NULL, 1, '2023-04-29 00:47:30', '2023-04-29 00:47:30'),
(70, 7, NULL, 'press image', 'press image', NULL, NULL, 'images/uploads/large/get-type-c-cable-with-any-biwintech-ssd.webp', NULL, 1, '2023-04-29 01:41:37', '2023-04-29 01:41:37'),
(71, 7, 65, 'Acknowledgement of Our Privacy Statement', NULL, NULL, NULL, NULL, 'http://127.0.0.1:8000/images/uploads/large/131444030-1813546558798609-4068022494702724694-n.jpg', 1, '2023-05-02 00:05:38', '2023-05-02 00:05:38'),
(72, 7, 107, 'Media Upload', NULL, 'Description...', NULL, 'images/uploads/large/bangla-utshob-logo-1.jpg', NULL, 1, '2023-05-07 05:18:12', '2023-05-07 05:18:12'),
(73, 7, NULL, 'BCS iamg ename', 'capgion', 'desxcri', NULL, 'images/uploads/large/about-us-1.png', NULL, 1, '2023-05-07 05:19:06', '2023-05-07 05:19:47'),
(74, 7, 108, 'ss', 'sss', 'ssss', NULL, 'images/uploads/large/ddo.jpg', NULL, 1, '2023-05-07 05:19:47', '2023-05-07 05:19:47'),
(75, 7, 109, 'BCS Image 1', 'bca image cap', 'of the iamg Description...', NULL, 'images/uploads/large/344811597-195653249938776-9044964405193667493-n.jpg', NULL, 1, '2023-05-07 05:42:55', '2023-05-07 05:42:55'),
(76, 2, NULL, 'demo', NULL, NULL, NULL, 'images/uploads/large/untitled-2.jpg', NULL, 4, '2023-05-08 00:04:04', '2023-05-11 03:02:02'),
(77, 2, NULL, 'bcs computer City', 'bcs computer City', NULL, NULL, 'images/uploads/large/bcs-computer-city-1.jpg', NULL, 4, '2023-05-08 00:06:13', '2023-05-11 03:02:02'),
(78, 7, 111, 'slider', NULL, NULL, NULL, 'images/slider_image/large/faded-monaco-scenery-evening-dark-picjumbo-com-image.jpg', 'https://i.ibb.co/L6QrR8h/slider-1.jpg', 1, '2023-05-09 01:08:02', '2023-05-09 01:08:02'),
(79, 7, 113, 'slider', NULL, NULL, NULL, 'px-beach-daylight-fun-1430675-image.jpg', 'http://127.0.0.1:8000/images/uploads/large/323943912-567656791487210-8363920508356977455-n.jpg', 1, '2023-05-09 01:15:55', '2023-05-09 01:15:55'),
(80, 7, 114, 'Media Upload', NULL, NULL, NULL, 'images/uploads/large/gallery-2.jpg', NULL, 1, '2023-05-09 01:24:21', '2023-05-09 01:24:21'),
(81, 7, 115, 'Media Upload', NULL, NULL, NULL, '1-2.jpg', NULL, 1, '2023-05-09 01:25:41', '2023-05-09 01:25:41'),
(82, 7, 116, 'Media Upload', NULL, NULL, NULL, '131895815-1812674965552435-1441409006263935859-n.jpg', NULL, 1, '2023-05-09 01:37:33', '2023-05-09 01:37:33'),
(83, 7, 117, 'Media Upload', NULL, NULL, NULL, '131444030-1813546558798609-4068022494702724694-n-1.jpg', NULL, 1, '2023-05-09 01:38:42', '2023-05-09 01:38:42'),
(84, 7, 118, 'Media Upload', NULL, NULL, NULL, 'px-beach-daylight-fun-1430675-image.jpg', NULL, 1, '2023-05-09 01:45:04', '2023-05-09 01:45:04'),
(85, 7, 125, 'Image name test for bsc', 'Imag ca', 'Description...', NULL, 'event-1.jpg', 'https://externallink.com', 1, '2023-05-09 02:08:09', '2023-05-09 02:08:09'),
(86, 7, NULL, 'Media Upload', NULL, 'Description...', NULL, NULL, 'https://miro.medium.com/v2/resize:fit:720/format:webp/1*82dJLj3g5xwWbuLWHSNYJw.jpeg', 1, '2023-05-09 02:22:01', '2023-05-09 02:22:01'),
(87, 7, 129, 'Media Upload', NULL, 'Description...', NULL, NULL, 'https://miro.medium.com/v2/resize:fit:720/format:webp/1*82dJLj3g5xwWbuLWHSNYJw.jpeg', 1, '2023-05-09 02:22:01', '2023-05-09 02:22:01'),
(88, 7, NULL, 'Media Upload', NULL, 'Description...', NULL, '131817726-1813545538798711-6051768209755142287-n-1.jpg', NULL, 1, '2023-05-09 02:22:26', '2023-05-09 02:22:26'),
(89, 7, NULL, 'Media Upload', NULL, 'Description...', NULL, 'px-beach-daylight-fun-1430675-image.jpg', NULL, 1, '2023-05-09 02:23:12', '2023-05-09 03:44:52'),
(90, 7, 132, 'Media Upload', NULL, 'Description...', NULL, NULL, NULL, 1, '2023-05-09 02:30:19', '2023-05-09 02:30:19'),
(91, 7, NULL, 'BCS iamg ename', 'capgion', 'Description...;;lj', NULL, 'event-1.jpg', NULL, 1, '2023-05-09 03:44:52', '2023-05-09 03:53:39'),
(92, 7, NULL, 'Media Upload', NULL, 'Description...', NULL, 'px-beach-daylight-fun-1430675-image.jpg', NULL, 1, '2023-05-09 03:51:13', '2023-05-09 03:54:10'),
(93, 7, NULL, 'Media Upload', NULL, 'Description...', NULL, 'picjumbo-com-hanv9909.jpg', NULL, 1, '2023-05-09 03:56:09', '2023-05-09 03:56:32'),
(94, 7, NULL, 'Media Upload', NULL, 'Description...', NULL, '131334196-1813549825464949-3913102037802577890-n.jpg', NULL, 1, '2023-05-09 03:56:33', '2023-05-09 03:57:13'),
(95, 7, 131, 'Media Upload', NULL, 'Description...', NULL, 'px-beach-daylight-fun-1430675-image.jpg', NULL, 1, '2023-05-09 03:56:58', '2023-05-09 03:56:58'),
(96, 7, NULL, 'রাজধানীতে তীব্র যানজট, তিন কারণ জানাল ট্রাফিক পুলিশ', 'রাজধানীতে তীব্র যানজট, তিন কারণ জানাল ট্রাফিক পুলিশ', 'Description...blog', NULL, 'untitled-2-1.jpg', NULL, 1, '2023-05-09 22:44:17', '2023-05-09 23:13:59'),
(97, 7, NULL, 'রাজধানীতে তীব্র যানজট, তিন কারণ জানাল ট্রাফিক পুলিশ', 'রাজধানীতে তীব্র যানজট, তিন কারণ জানাল ট্রাফিক পুলিশ', 'Description...রাজধানীতে তীব্র যানজট, তিন কারণ জানাল ট্রাফিক পুলিশ', NULL, 'untitled-2-1.jpg', NULL, 4, '2023-05-09 23:14:56', '2023-05-13 03:56:34'),
(98, 7, 135, 'চ্যাটজিপিটির সঙ্গে প্রতিদ্বন্দ্বিতা করতে ‘বার্ড’ হালনাগাদ করবে গুগল', 'চ্যাটজিপিটির সঙ্গে প্রতিদ্বন্দ্বিতা করতে ‘বার্ড’ হালনাগাদ করবে গুগল', 'Description...চ্যাটজিপিটির সঙ্গে প্রতিদ্বন্দ্বিতা করতে ‘বার্ড’ হালনাগাদ করবে গুগল', NULL, NULL, 'https://images.prothomalo.com/prothomalo%2Fimport%2Fmedia%2F2018%2F04%2F24%2F0a62390a26c4c12277408091c9b009a9-5adef05cdcd1c.jpg?rect=0%2C0%2C1600%2C900&auto=format%2Ccompress&fmt=webp&format=webp&w=900&dpr=1.0', 1, '2023-05-09 23:30:19', '2023-05-09 23:30:19'),
(99, 7, 136, 'কম্পিউটারেও ব্যবহার করা যাবে অ্যান্ড্রয়েডের নিয়ারবাই শেয়ার সুবিধা', 'কম্পিউটারেও ব্যবহার করা যাবে অ্যান্ড্রয়েডের নিয়ারবাই শেয়ার সুবিধা', 'Description...কম্পিউটারেও ব্যবহার করা যাবে অ্যান্ড্রয়েডের নিয়ারবাই শেয়ার সুবিধা', NULL, NULL, 'https://images.prothomalo.com/prothomalo-bangla%2F2023-04%2F35615747-64f0-4ce4-a9bf-e4f4866fc465%2Fnearby_share_app_google.png?rect=0%2C24%2C875%2C492&auto=format%2Ccompress&fmt=webp&format=webp&w=900&dpr=1.0', 1, '2023-05-09 23:31:50', '2023-05-09 23:31:50'),
(100, 7, NULL, 'bcs notice testing', NULL, 'Description...', NULL, 'bcs-front.jpg', NULL, 1, '2023-05-10 00:08:45', '2023-05-10 00:19:07'),
(101, 7, NULL, 'Media Upload', NULL, 'Description...', NULL, 'blog-new-1.jpg', NULL, 4, '2023-05-10 00:19:08', '2023-05-12 23:12:15'),
(102, 7, 138, 'new test slider one', 'new test slider one', 'Description...new test slider one', NULL, 'slider-new-2.webp', NULL, 1, '2023-05-10 00:30:45', '2023-05-10 00:30:45'),
(103, 7, NULL, 'new test slider two', 'new test slider two', 'Description...new test slider two', NULL, 'slider-1.jpg', NULL, 4, '2023-05-10 00:32:02', '2023-05-13 01:35:23'),
(104, 7, 140, 'HOW DO COMPANIES BACK UP THEIR DATA', 'HOW DO COMPANIES BACK UP THEIR DATAAA', 'Description...HOW DO COMPANIES BACK UP THEIR DATAAA', NULL, 'data-loss-prevention-457x326.jpg', NULL, 1, '2023-05-10 00:50:59', '2023-05-10 00:50:59'),
(105, 7, NULL, 'ss', NULL, 'Description...', NULL, 'breadcrumb.jpg', NULL, 4, '2023-05-10 02:31:54', '2023-05-11 02:01:12'),
(106, 7, NULL, 'ss', NULL, 'Description...', NULL, 'event-1.jpg', NULL, 4, '2023-05-10 02:31:54', '2023-05-11 02:01:21'),
(107, 7, 194, 'ss1', NULL, 'Description...', NULL, 'bg10.jpg', NULL, 1, '2023-05-10 02:48:16', '2023-05-10 02:48:16'),
(108, 7, 194, 'd', NULL, 'Description...', NULL, 'bcs-event.jpg', NULL, 1, '2023-05-10 02:54:27', '2023-05-10 02:54:27'),
(109, 7, 194, 'd', 'zfzf', 'Description...', NULL, 'job.png', 'zfzdfzd', 1, '2023-05-10 02:54:51', '2023-05-10 02:54:51'),
(110, 7, 194, 'd', NULL, 'Description...', NULL, 'logo.png', 'zfzdfzdgxcf', 1, '2023-05-10 02:55:35', '2023-05-10 02:55:35'),
(111, 7, 194, 's', NULL, 'Description...', NULL, 'bcs-blog-2.jpg', NULL, 1, '2023-05-10 03:02:37', '2023-05-10 03:02:37'),
(112, 7, 194, 'ss', NULL, 'Description...', NULL, 'bcs-blog-5.jpg', NULL, 1, '2023-05-10 03:02:37', '2023-05-10 03:02:37'),
(113, 7, 194, 'sss', NULL, 'Description...', NULL, 'icon.png', NULL, 1, '2023-05-10 03:02:37', '2023-05-10 03:02:37'),
(114, 7, NULL, 'Test gallery image 1', 'Test gallery image 1', 'Test gallery image 1', NULL, 'job.jpg', NULL, 1, '2023-05-10 03:07:51', '2023-05-10 03:07:51'),
(115, 7, NULL, 'Test gallery image 2', 'Test gallery image 2', 'Test gallery image 2 Description...', NULL, 'mbhero.png', NULL, 4, '2023-05-10 03:07:51', '2023-05-10 04:57:01'),
(116, 7, NULL, 'Test gallery image 123', NULL, 'Description...', NULL, '131361622-1812674775552454-1334970389285280055-n.jpg', NULL, 4, '2023-05-10 04:05:44', '2023-05-10 04:57:15'),
(117, 7, NULL, 'Test gallery image 124', NULL, 'Description...', NULL, 'bcs-event.jpg', NULL, 4, '2023-05-10 04:05:44', '2023-05-10 04:57:01'),
(118, 7, NULL, 'Media Upload', NULL, 'Description...', NULL, 'dashbord.png', NULL, 4, '2023-05-10 04:08:13', '2023-05-10 04:58:59'),
(119, 7, NULL, 'This ns', NULL, 'Description...', NULL, 'bcs-event-1.png', NULL, 4, '2023-05-10 04:58:55', '2023-05-10 04:59:15'),
(120, 7, NULL, 'asdfasdf asdf', NULL, 'Description...', NULL, 'bg1.jpg', NULL, 4, '2023-05-10 04:59:15', '2023-05-11 00:42:52'),
(121, 7, NULL, 'asdf asdf asdf', NULL, 'Description...', NULL, 'photo-2.jpg', NULL, 4, '2023-05-10 04:59:15', '2023-05-11 00:42:52'),
(122, 7, NULL, 'asdf asdfasdfasdf', NULL, 'Description...', NULL, 'new-logo.jpg', NULL, 4, '2023-05-10 04:59:28', '2023-05-10 05:01:28'),
(123, 7, NULL, 'asdf asdfasdf', NULL, 'Description...', NULL, 'bcs-blog-2.jpg', NULL, 4, '2023-05-10 04:59:37', '2023-05-10 05:01:38'),
(124, 7, NULL, 'asdfa sdf', NULL, 'Description...', NULL, 'bcs-blog-1.jpg', NULL, 4, '2023-05-10 05:12:40', '2023-05-10 05:12:48'),
(125, 7, NULL, 'asd fasdfasd', NULL, 'Description...', NULL, '315653011-2371653949654531-3637245230876337198-n.jpg', NULL, 4, '2023-05-10 05:12:54', '2023-05-11 02:00:45'),
(126, 7, NULL, 'Test gallery image 1ghf', NULL, 'Description...xcg', NULL, 'icon.png', NULL, 4, '2023-05-10 05:32:29', '2023-05-10 05:34:08'),
(127, 7, 143, 'Media Upload', NULL, 'Description...', NULL, 'bcs-blog-4.jpg', NULL, 1, '2023-05-10 05:32:40', '2023-05-10 05:32:40'),
(128, 7, NULL, 'd', NULL, 'Description...', NULL, 'bcs-event-1.jpg', NULL, 4, '2023-05-11 00:59:45', '2023-05-11 01:00:08'),
(129, 7, NULL, 'Media Upload', NULL, 'Description...', NULL, 'bcs-event-1.png', NULL, 4, '2023-05-11 01:00:03', '2023-05-11 02:00:08'),
(130, 7, NULL, 'Media Upload', NULL, 'Description...', NULL, 'bcs-event-1.jpg', NULL, 4, '2023-05-11 01:00:03', '2023-05-11 02:06:36'),
(131, 26, 161, 'd', 'zfzf', 'Description...', NULL, 'blog-new-1.jpg', NULL, 1, '2023-05-11 01:19:44', '2023-05-11 01:19:44'),
(132, 26, NULL, 'Media Upload', NULL, 'Description...', NULL, 'bcs-event-1.png', NULL, 4, '2023-05-11 01:22:03', '2023-05-11 02:09:33'),
(133, 26, 163, 'Media Upload', NULL, 'Description...', NULL, 'bcs-event.jpg', NULL, 1, '2023-05-11 01:22:28', '2023-05-11 01:22:28'),
(134, 26, 163, 'Media Upload', NULL, 'Description...', NULL, 'bcs-blog-4.jpg', NULL, 1, '2023-05-11 01:22:39', '2023-05-11 01:22:39'),
(135, 26, 329, 'demo', NULL, NULL, NULL, 'bcs-event-1.jpg', NULL, 1, '2023-05-11 01:57:08', '2023-05-11 01:57:08'),
(136, 26, NULL, 'Media Upload', NULL, 'Description...', NULL, 'bcs-front.jpg', NULL, 4, '2023-05-11 01:57:43', '2023-05-11 02:15:53'),
(137, 7, 142, 'Media Upload', NULL, 'Description...', NULL, 'bcs-front.jpg', NULL, 1, '2023-05-11 02:00:32', '2023-05-11 02:00:32'),
(138, 7, NULL, 'Media Upload', NULL, 'Description...', NULL, 'icon.png', NULL, 4, '2023-05-11 02:05:55', '2023-05-11 02:09:09'),
(139, 7, NULL, 'Media Upload', NULL, 'Description...', NULL, 'bcs-event-1.jpg', NULL, 4, '2023-05-11 02:06:02', '2023-05-11 02:14:12'),
(140, 26, 162, 'Media Upload', NULL, 'Description...', NULL, 'blog-new-1.jpg', NULL, 1, '2023-05-11 02:09:52', '2023-05-11 02:09:52'),
(141, 7, NULL, 'Media Upload', NULL, 'Description...', NULL, 'blog-1.jpg', NULL, 4, '2023-05-11 02:12:57', '2023-05-11 02:16:25'),
(142, 7, NULL, 'Media Upload', NULL, 'Description...', NULL, 'blog-new-1.jpg', NULL, 4, '2023-05-11 02:14:22', '2023-05-11 02:16:25'),
(143, 7, 141, 'Media Upload', NULL, 'Description...', NULL, 'bcs-blog-1.jpg', NULL, 1, '2023-05-11 02:16:35', '2023-05-11 02:16:35'),
(144, 7, NULL, 'Media Upload', NULL, 'Description...', NULL, 'bg1.jpg', NULL, 4, '2023-05-11 02:16:40', '2023-05-11 02:18:07'),
(145, 7, 141, 'Media Upload', NULL, 'Description...', NULL, 'bcs-event-1.png', NULL, 1, '2023-05-11 02:18:22', '2023-05-11 02:18:22'),
(146, 7, NULL, 'Media Upload', NULL, 'Description...', NULL, 'bg10.jpg', NULL, 4, '2023-05-11 02:18:23', '2023-05-11 02:18:29'),
(147, 7, 141, 'Media Upload', NULL, 'Description...', NULL, 'blog-1.jpg', NULL, 1, '2023-05-11 02:18:23', '2023-05-11 02:18:23'),
(148, 26, 162, 'Media Upload', NULL, 'Description...', NULL, 'icon.png', NULL, 1, '2023-05-11 02:19:30', '2023-05-11 02:19:30'),
(149, 26, NULL, 'Media Upload', NULL, 'Description...', NULL, 'blog-2.jpg', NULL, 4, '2023-05-11 02:20:24', '2023-05-11 02:20:27'),
(150, 7, 57, 'Media Upload', NULL, 'Description...', NULL, 'blog-new-1.jpg', NULL, 1, '2023-05-11 03:02:13', '2023-05-11 03:02:13'),
(151, 7, 58, 'Media Upload', NULL, 'Description...', NULL, 'blog-1.jpg', NULL, 1, '2023-05-11 03:04:02', '2023-05-11 03:04:02'),
(152, 7, 59, 'Media Upload', NULL, 'Description...', NULL, 'bg10.jpg', NULL, 1, '2023-05-11 03:04:14', '2023-05-11 03:04:14'),
(153, 7, NULL, 'arifin', 'cso', 'profile photo of super admin', NULL, 'images/uploads/large/ceo.png', NULL, 1, '2023-05-11 05:22:43', '2023-05-11 05:22:43'),
(154, 7, NULL, 'Media Upload', NULL, 'Description...', NULL, 'about-us-2.png', NULL, 4, '2023-05-12 23:12:15', '2023-05-13 01:40:14'),
(155, 7, NULL, 'Media Upload', NULL, 'Description...', NULL, 'bcs-computer-city-1-1.jpg', NULL, 1, '2023-05-12 23:27:31', '2023-05-12 23:27:31'),
(156, 7, NULL, 'test2', 'test3', NULL, NULL, 'images/uploads/large/crenotive-768x768.jpg', NULL, 1, '2023-05-12 23:35:42', '2023-05-12 23:35:42'),
(157, 7, NULL, 'test56', 'ceo', 'ssd', NULL, 'ceo-1.png', NULL, 1, '2023-05-12 23:42:07', '2023-05-12 23:42:07'),
(158, 7, NULL, 'Media Upload', NULL, 'Description...', NULL, 'untitled-2-1.jpg', NULL, 4, '2023-05-13 01:06:13', '2023-05-13 02:10:53'),
(159, 7, 386, 'Media Upload', NULL, 'Description...', NULL, 'crenotive-768x768-1.jpg', NULL, 1, '2023-05-13 01:07:50', '2023-05-13 01:07:50'),
(160, 7, 386, 'Media Upload', NULL, 'Description...', NULL, 'data-loss-prevention-457x326.jpg', NULL, 1, '2023-05-13 01:07:50', '2023-05-13 01:07:50'),
(161, 7, 387, 'Media Upload', NULL, 'Description...', NULL, 'crenotive-768x768-1.jpg', NULL, 1, '2023-05-13 01:12:26', '2023-05-13 01:12:26'),
(162, 7, 387, 'Media Upload', NULL, 'Description...', NULL, '344811597-195653249938776-9044964405193667493-n-1.jpg', NULL, 1, '2023-05-13 01:12:26', '2023-05-13 01:12:26'),
(163, 7, 388, 'Media Upload', NULL, 'Description...', NULL, 'ceo-1.png', NULL, 1, '2023-05-13 01:13:16', '2023-05-13 01:13:16'),
(164, 7, 389, 'xdfas', NULL, 'Description...', NULL, 'bcs-computer-city-1-1.jpg', NULL, 1, '2023-05-13 01:14:27', '2023-05-13 01:14:27'),
(165, 7, 139, 'Media Upload', NULL, 'Description...', NULL, 'bcs-computer-city-1-1.jpg', NULL, 1, '2023-05-13 01:35:29', '2023-05-13 01:35:29'),
(166, 7, 390, 'Media Upload', NULL, 'Description...', NULL, 'bangla-utshob-logo-1-1.jpg', NULL, 1, '2023-05-13 01:44:13', '2023-05-13 01:44:13'),
(167, 7, 391, 'Media Upload', NULL, 'Description...', NULL, 'bcs-computer-city-1-1.jpg', NULL, 1, '2023-05-13 01:44:52', '2023-05-13 01:44:52'),
(168, 7, NULL, 'Media Upload', NULL, 'Description...', NULL, 'bcs-computer-city-1-1.jpg', NULL, 4, '2023-05-13 02:10:03', '2023-05-13 02:10:46'),
(169, 7, NULL, 'Media Upload', NULL, 'Description...', NULL, 'user-png-icon-10.jpg', NULL, 4, '2023-05-13 02:10:29', '2023-05-13 02:10:53'),
(170, 7, NULL, 'Media Upload', NULL, 'Description...', NULL, 'member1-1.jpg', NULL, 4, '2023-05-13 02:10:29', '2023-05-13 02:10:39'),
(171, 7, NULL, 'Media Upload', NULL, 'Description...', NULL, 'bcs-computer-city-1-1.jpg', NULL, 4, '2023-05-13 02:11:17', '2023-05-17 06:02:03'),
(172, 7, 392, 'image name one', 'caption one', 'Description...', NULL, 'abc.jpg', NULL, 1, '2023-05-13 02:13:51', '2023-05-13 02:13:51'),
(173, 7, 392, 'image name two', 'caption two', 'Description...', NULL, 'event-1.jpg', NULL, 1, '2023-05-13 02:13:51', '2023-05-13 02:13:51'),
(174, 7, 133, 'Media Upload', NULL, 'Description...', NULL, 'untitled-2-1.jpg', NULL, 1, '2023-05-13 03:56:34', '2023-05-13 03:56:34'),
(175, 7, 393, 'new test press', NULL, NULL, NULL, 'files/unbranded-case-study-sapphire-hotel-case-study-1.pdf', NULL, 1, '2023-05-14 04:21:38', '2023-05-14 04:21:38'),
(176, 7, 394, 'new-press-release', NULL, NULL, NULL, 'files/unbranded-case-study-sapphire-hotel-case-study-2.pdf', NULL, 1, '2023-05-14 04:23:18', '2023-05-14 04:23:18'),
(177, 7, NULL, 'sadique', 'sadique crenotive', NULL, NULL, '164280922-3293206954112338-476580855681863938-n.jpg', NULL, 1, '2023-05-14 22:22:41', '2023-05-14 22:22:41'),
(178, 7, 22, 'Media Upload', NULL, 'Description...', NULL, 'bcs-computer-city-1-1.jpg', NULL, 1, '2023-05-15 01:31:23', '2023-05-15 01:31:23'),
(179, 7, 24, 'Media Upload', NULL, 'Description...', NULL, 'untitled-1.png', NULL, 1, '2023-05-15 01:32:00', '2023-05-15 01:32:00'),
(180, 7, 395, 'Media Upload', NULL, 'Description...', NULL, '111.webp', NULL, 1, '2023-05-17 00:10:38', '2023-05-17 00:10:38'),
(181, 7, 396, 'video_upload', 'caption-2', NULL, '<iframe width=\"1209\" height=\"713\" src=\"https://www.youtube.com/embed/c-ZZjRJC4ck\" title=\"New in Laravel 8.61: ValueOrFail() and Make Model Policy\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', NULL, NULL, 1, '2023-05-17 01:53:50', '2023-05-17 01:53:50'),
(182, 7, 396, 'video_upload', 'caption-2', NULL, '<iframe width=\"1209\" height=\"713\" src=\"https://www.youtube.com/embed/c-ZZjRJC4ck\" title=\"New in Laravel 8.61: ValueOrFail() and Make Model Policy\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', NULL, NULL, 1, '2023-05-17 01:53:50', '2023-05-17 01:53:50'),
(184, 7, 397, 'video_upload', 'caption-1', NULL, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/3QQXqQ6LoMo\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', NULL, NULL, 1, '2023-05-17 02:37:25', '2023-05-17 02:37:25'),
(185, 7, 397, 'video image', NULL, 'Description...', NULL, 'i9-gen-13900.webp', NULL, 1, '2023-05-17 02:37:25', '2023-05-17 02:37:25'),
(186, 7, 398, 'video_upload', 'caption-1', NULL, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/3QQXqQ6LoMo\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', NULL, NULL, 1, '2023-05-17 02:42:03', '2023-05-17 02:42:03'),
(187, 7, 398, 'img', 'caption', 'Description...', NULL, 'shop-now-binary-pc.jpeg', NULL, 1, '2023-05-17 02:42:03', '2023-05-17 02:42:03'),
(188, 7, 399, 'video_upload', 'caption-1', NULL, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/3QQXqQ6LoMo\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', NULL, NULL, 1, '2023-05-17 02:46:36', '2023-05-17 02:46:36'),
(189, 7, NULL, 'BCS iamg ename', NULL, 'Description...', NULL, 'binary-offer.webp', NULL, 4, '2023-05-17 02:46:36', '2023-05-17 04:18:09'),
(190, 7, 400, 'video_upload', 'caption-1', NULL, 'https://www.youtube.com/watch?v=3QQXqQ6LoMo', NULL, NULL, 1, '2023-05-17 02:50:20', '2023-05-17 02:50:20'),
(191, 7, NULL, 'BCS iamg ename', NULL, 'Description...', NULL, 'get-type-c-cable-with-any-biwintech-ssd-1.webp', NULL, 4, '2023-05-17 02:50:20', '2023-05-17 04:19:13'),
(192, 7, 401, 'BCS name', NULL, 'Description...', NULL, 'mediummsi-mag-forge-110r-mid-tower-gaming-pc-casing.webp', NULL, 1, '2023-05-17 03:08:37', '2023-05-17 03:08:37'),
(193, 7, 401, 'video_upload', 'caption-1', NULL, 'https://www.youtube.com/watch?v=vJOYNhiyLAU', NULL, NULL, 1, '2023-05-17 03:08:37', '2023-05-17 03:08:37'),
(194, 7, 399, 'video_upload', 'caption-1', NULL, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/3QQXqQ6LoMo\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', NULL, NULL, 1, '2023-05-17 04:17:47', '2023-05-17 04:17:47'),
(195, 7, 399, 'Media Upload', NULL, 'Description...', NULL, 'sickleflow-140-argb-gallery-1-non-led-image.png', NULL, 1, '2023-05-17 04:18:10', '2023-05-17 04:18:10'),
(196, 7, 399, 'video_upload', 'caption-1', NULL, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/3QQXqQ6LoMo\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', NULL, NULL, 1, '2023-05-17 04:18:10', '2023-05-17 04:18:10'),
(197, 7, 399, 'video_upload', 'caption-1', NULL, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/3QQXqQ6LoMo\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', NULL, NULL, 1, '2023-05-17 04:18:10', '2023-05-17 04:18:10'),
(198, 7, 400, 'video_upload', 'caption-1', NULL, 'https://www.youtube.com/watch?v=3QQXqQ6LoMo', NULL, NULL, 1, '2023-05-17 04:18:54', '2023-05-17 04:18:54'),
(199, 7, 400, 'Media Upload', NULL, 'Description...', NULL, 'crenotive-business-growth.jpg', NULL, 1, '2023-05-17 04:19:14', '2023-05-17 04:19:14'),
(200, 7, 400, 'video_upload', 'caption-1', NULL, 'https://www.youtube.com/watch?v=3QQXqQ6LoMo', NULL, NULL, 1, '2023-05-17 04:19:14', '2023-05-17 04:19:14'),
(201, 7, 400, 'video_upload', 'caption-1', NULL, 'https://www.youtube.com/watch?v=3QQXqQ6LoMo', NULL, NULL, 1, '2023-05-17 04:19:14', '2023-05-17 04:19:14'),
(202, 7, 400, 'video_upload', 'caption-1', NULL, 'https://www.youtube.com/watch?v=3QQXqQ6LoMo', NULL, NULL, 1, '2023-05-17 04:26:42', '2023-05-17 04:26:42'),
(203, 7, 400, 'video_upload', 'caption-1', NULL, 'https://www.youtube.com/watch?v=3QQXqQ6LoMo', NULL, NULL, 1, '2023-05-17 04:26:42', '2023-05-17 04:26:42'),
(204, 7, 400, 'video_upload', 'caption-1', NULL, 'https://www.youtube.com/watch?v=3QQXqQ6LoMo', NULL, NULL, 1, '2023-05-17 04:26:42', '2023-05-17 04:26:42'),
(205, 7, 400, 'video_upload', 'caption-1', NULL, 'https://www.youtube.com/watch?v=3QQXqQ6LoMo', NULL, NULL, 1, '2023-05-17 04:26:42', '2023-05-17 04:26:42'),
(206, 7, 400, 'video_upload', 'caption-1', NULL, 'https://www.youtube.com/watch?v=3QQXqQ6LoMo', NULL, NULL, 1, '2023-05-17 04:31:25', '2023-05-17 04:31:25'),
(207, 7, 400, 'video_upload', 'caption-1', NULL, 'https://www.youtube.com/watch?v=3QQXqQ6LoMo', NULL, NULL, 1, '2023-05-17 04:31:25', '2023-05-17 04:31:25'),
(208, 7, 400, 'video_upload', 'caption-1', NULL, 'https://www.youtube.com/watch?v=3QQXqQ6LoMo', NULL, NULL, 1, '2023-05-17 04:31:25', '2023-05-17 04:31:25'),
(209, 7, 400, 'video_upload', 'caption-1', NULL, 'https://www.youtube.com/watch?v=3QQXqQ6LoMo', NULL, NULL, 1, '2023-05-17 04:31:25', '2023-05-17 04:31:25'),
(210, 7, 400, 'video_upload', 'caption-1', NULL, 'https://www.youtube.com/watch?v=3QQXqQ6LoMo', NULL, NULL, 1, '2023-05-17 04:31:25', '2023-05-17 04:31:25'),
(211, 7, 400, 'video_upload', 'caption-1', NULL, 'https://www.youtube.com/watch?v=3QQXqQ6LoMo', NULL, NULL, 1, '2023-05-17 04:31:25', '2023-05-17 04:31:25'),
(212, 7, 400, 'video_upload', 'caption-1', NULL, 'https://www.youtube.com/watch?v=3QQXqQ6LoMo', NULL, NULL, 1, '2023-05-17 04:31:25', '2023-05-17 04:31:25'),
(213, 7, 400, 'video_upload', 'caption-1', NULL, 'https://www.youtube.com/watch?v=3QQXqQ6LoMo', NULL, NULL, 1, '2023-05-17 04:31:25', '2023-05-17 04:31:25'),
(214, 7, 402, 'Media Upload', NULL, 'Description...', NULL, 'whatsapp-image-2023-01-21-at-1-48-26-pm.jpeg', NULL, 1, '2023-05-17 04:37:57', '2023-05-17 04:37:57'),
(215, 7, NULL, 'video_upload', 'caption-1', NULL, 'https://www.youtube.com/watch?v=vJOYNhiyLAU', NULL, NULL, 4, '2023-05-17 04:37:57', '2023-05-17 04:40:57'),
(216, 7, 402, 'video_upload', 'caption-1', NULL, 'https://www.youtube.com/watch?v=vJOYNhiyLAU', NULL, NULL, 1, '2023-05-17 04:40:26', '2023-05-17 04:40:26'),
(217, 7, 402, 'video_upload', 'caption-1', NULL, 'https://www.youtube.com/watch?v=vJOYNhiyLAU', NULL, NULL, 1, '2023-05-17 04:40:37', '2023-05-17 04:40:37'),
(218, 7, 402, 'video_upload', 'caption-1', NULL, 'https://www.youtube.com/watch?v=vJOYNhiyLAU', NULL, NULL, 1, '2023-05-17 04:40:37', '2023-05-17 04:40:37'),
(219, 7, 402, 'video_upload', 'caption-1', NULL, 'https://www.youtube.com/watch?v=vJOYNhiyLAU', NULL, NULL, 1, '2023-05-17 04:40:37', '2023-05-17 04:40:37'),
(220, 7, 402, 'Media Upload', NULL, 'Description...', NULL, 'test-images-2.jpg', NULL, 1, '2023-05-17 04:40:58', '2023-05-17 04:40:58'),
(221, 7, 402, 'video_upload', 'caption-1', NULL, 'https://www.youtube.com/watch?v=vJOYNhiyLAU', NULL, NULL, 1, '2023-05-17 04:40:58', '2023-05-17 04:40:58'),
(222, 7, 402, 'video_upload', 'caption-1', NULL, 'https://www.youtube.com/watch?v=vJOYNhiyLAU', NULL, NULL, 1, '2023-05-17 04:40:58', '2023-05-17 04:40:58'),
(223, 7, 402, 'video_upload', 'caption-1', NULL, 'https://www.youtube.com/watch?v=vJOYNhiyLAU', NULL, NULL, 1, '2023-05-17 04:40:58', '2023-05-17 04:40:58'),
(224, 7, 402, 'video_upload', 'caption-1', NULL, 'https://www.youtube.com/watch?v=vJOYNhiyLAU', NULL, NULL, 1, '2023-05-17 04:40:58', '2023-05-17 04:40:58'),
(225, 7, 402, 'video_upload', 'caption-1', NULL, 'https://www.youtube.com/watch?v=vJOYNhiyLAU', NULL, NULL, 1, '2023-05-17 04:40:58', '2023-05-17 04:40:58'),
(226, 7, 403, 'Media Upload', NULL, 'Description...', NULL, 'test-image-s.jpg', NULL, 1, '2023-05-17 04:47:50', '2023-05-17 04:47:50'),
(227, 7, NULL, 'Media Upload', NULL, 'Description...', 'https://www.youtube.com/watch?v=vJOYNhiyLAU', 'get-type-c-cable-with-any-biwintech-ssd-1.webp', NULL, 4, '2023-05-17 04:53:41', '2023-05-17 04:57:49'),
(228, 7, 405, 'Media Upload', NULL, 'Description...', 'https://www.youtube.com/watch?v=vJOYNhiyLAU', 'binary-offer.webp', NULL, 1, '2023-05-17 04:57:49', '2023-05-17 04:57:49'),
(229, 7, NULL, 'd', 'caption one', 'Description...', 'https://www.youtube.com/watch?v=vJOYNhiyLAU', 'test-images-2.jpg', NULL, 4, '2023-05-17 05:49:58', '2023-05-17 06:27:56'),
(230, 7, 385, 'Media Upload', NULL, 'Description...', NULL, 'desktop-pop.webp', NULL, 1, '2023-05-17 06:02:03', '2023-05-17 06:02:03'),
(231, 7, NULL, 'Media Upload', 'zfzf', NULL, 'https://www.youtube.com/watch?v=vJOYNhiyLAU', NULL, NULL, 4, '2023-05-17 06:21:35', '2023-05-17 06:21:56'),
(232, 7, 407, 'thumbnail Image', 'thumbnail Image Caption', 'Description...', NULL, 'test-image-s.jpg', NULL, 1, '2023-05-17 06:30:26', '2023-05-17 06:30:26'),
(233, 7, NULL, 'Media Upload', NULL, NULL, 'https://www.youtube.com/watch?v=vJOYNhiyLAU', NULL, NULL, 4, '2023-05-17 22:34:52', '2023-05-17 22:39:16'),
(234, 7, NULL, 'Media Upload', NULL, NULL, 'https://www.youtube.com/watch?v=vJOYNhiyLAU', NULL, NULL, 4, '2023-05-17 22:35:06', '2023-05-17 22:39:16'),
(235, 7, 408, 'test video 35', 'caption one', 'Description...', 'https://www.youtube.com/watch?v=vJOYNhiyLAU', 'whatsapp-image-2023-01-21-at-1-48-26-pm.jpeg', NULL, 1, '2023-05-17 22:40:35', '2023-05-17 22:40:35'),
(236, 7, NULL, 'Media Upload', 'caption two', NULL, 'https://www.youtube.com/watch?v=vJOYNhiyLAU', NULL, NULL, 4, '2023-05-17 22:40:35', '2023-05-17 22:45:02'),
(237, 7, 408, 'Media Upload', NULL, NULL, 'https://www.youtube.com/watch?v=vJOYNhiyLAU', NULL, NULL, 1, '2023-05-17 22:50:44', '2023-05-17 22:50:44'),
(238, 7, 408, 'Media Upload', NULL, NULL, 'https://www.youtube.com/watch?v=vJOYNhiyLAU', NULL, NULL, 1, '2023-05-17 22:55:58', '2023-05-17 22:55:58'),
(239, 7, 408, 'Media Upload', NULL, NULL, 'https://www.youtube.com/watch?v=vJOYNhiyLAU', NULL, NULL, 1, '2023-05-17 23:09:21', '2023-05-17 23:09:21'),
(240, 7, 408, 'Media Upload', NULL, NULL, 'https://www.youtube.com/watch?v=vJOYNhiyLAU', NULL, NULL, 1, '2023-05-17 23:09:35', '2023-05-17 23:09:35'),
(241, 7, 408, 'Media Upload', NULL, NULL, 'https://www.youtube.com/watch?v=vJOYNhiyLAU', NULL, NULL, 1, '2023-05-17 23:09:51', '2023-05-17 23:09:51'),
(242, 7, 408, 'Media Upload', NULL, NULL, 'https://www.youtube.com/watch?v=vJOYNhiyLAU', NULL, NULL, 1, '2023-05-17 23:14:07', '2023-05-17 23:14:07'),
(243, 7, 408, 'Media Upload', NULL, NULL, 'https://www.youtube.com/watch?v=vJOYNhiyLAU', NULL, NULL, 1, '2023-05-17 23:16:20', '2023-05-17 23:16:20'),
(244, 7, 409, 'image name', 'caption one', 'Description...', 'https://www.youtube.com/watch?v=vJOYNhiyLAU', 'get-type-c-cable-with-any-biwintech-ssd-1.webp', NULL, 1, '2023-05-17 23:25:09', '2023-05-17 23:25:09'),
(245, 7, 409, 'Media Upload', 'caption two', NULL, 'https://www.youtube.com/watch?v=vJOYNhiyLAU', NULL, NULL, 1, '2023-05-17 23:25:09', '2023-05-17 23:25:09'),
(246, 7, 410, 'Media Upload', NULL, 'Description...', 'https://www.youtube.com/watch?v=vJOYNhiyLAU', '131499215-1812675125552419-5012372637506478085-n.jpg', NULL, 1, '2023-05-18 04:07:47', '2023-05-18 04:07:47');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `profile_photo` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `password_str` varchar(32) DEFAULT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `status` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `profile_photo`, `email_verified_at`, `password`, `password_str`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `created_at`, `updated_at`, `role_id`, `status`) VALUES
(1, 'Aminul', 'aminul@crenotive.com', NULL, NULL, '$2y$10$SEwFUbWzR//GcS0HDzz6LeBM2vy2l9YBXPWvqJ7lluBfxyTYmqXam', NULL, NULL, NULL, NULL, 'KyJnW5YenUplHTEUq93cvbqlHBGAD1MR20sWJd9BtjMBk5AYxQUeCnjrHPyG', '2023-03-23 01:20:24', '2023-03-23 01:20:24', 1, 1),
(2, 'StarTech', 'a@a.com', NULL, NULL, '$2y$10$LjzKcBDGw7dJbFKDNs9W3Od5/nM3ROXB7U5QOq8R65nBdT67bfU.C', NULL, NULL, NULL, NULL, NULL, '2023-03-30 05:40:02', '2023-05-08 04:40:58', 7, NULL),
(4, 'Rayans', 'b@b.com', NULL, NULL, '$2y$10$7MYKjJHT99ZCrL/FABcU4OJXRD5BoB42dg0lQmdKIXCiSJF9EMN6C', NULL, NULL, NULL, NULL, NULL, '2023-03-30 06:10:33', '2023-03-30 06:10:33', 7, NULL),
(5, 'a', 'a1@a.com', NULL, NULL, '$2y$10$oyw1R3enRtII3DOU77xANuQxHQCfj/VV/CiBJVTR.MXS5BdvG2OvO', NULL, NULL, NULL, NULL, NULL, '2023-04-05 23:25:17', '2023-04-05 23:25:17', 7, NULL),
(6, 'binary', 'admin@binarylogic.com.bd', NULL, NULL, '$2y$10$/QLdzaYV0EaNdaLuy8vc5.n6nnJZZZocjwi9cEzmU6SxweM68AMVC', NULL, NULL, NULL, NULL, NULL, '2023-04-06 04:11:31', '2023-04-06 04:11:31', 7, NULL),
(7, 'shuvo', 'shahriarshuvo714@gmail.com', 'http://127.0.0.1:8000/images/uploads/small/164280922-3293206954112338-476580855681863938-n.jpg', NULL, '$2y$10$6k1WYk8M38VGxuWDeT4soOpIq7ZaChLIbBihbHqe63rd/SBsaj0AK', NULL, NULL, NULL, NULL, NULL, '2023-04-07 22:32:22', '2023-05-19 22:56:18', 1, 1),
(8, 'SOHELMAHMUDJOY', 'SOHELMAHMUDJOY@GMAIL.COM', NULL, NULL, '$2y$10$yTwA5VJc53BO1zaJpy36GeyUTHlsFAJJkdFu1zSOavBNgeDJ8EWxi', NULL, NULL, NULL, NULL, NULL, '2023-04-16 03:43:41', '2023-04-16 03:43:41', 7, NULL),
(9, 'access_technologybd', 'access_technologybd@yahoo.com', NULL, NULL, '$2y$10$XBx.7qyV4POpwamIlQNI4.AMxXgL9YTn/o5yR.tL0tyQ7M7Hzolpu', NULL, NULL, NULL, NULL, NULL, '2023-04-16 04:58:46', '2023-04-16 04:58:46', 7, NULL),
(10, 'advance.technology2012', 'advance.technology2012@gmail.com', NULL, NULL, '$2y$10$Y/q8wjqiFpqA5/C39sChROh0FB1TkY8iGaltU8tHPGw1Deu05nC8.', NULL, NULL, NULL, NULL, NULL, '2023-04-16 05:06:12', '2023-04-16 05:06:12', 7, NULL),
(11, 'datuksalim', 'datuksalim@agdits.com', NULL, NULL, '$2y$10$fGCrVqM0sxXhdps.zmazduahEZW8TEbQsCY1av5Cg4NiatQ3toRma', NULL, NULL, NULL, NULL, NULL, '2023-04-16 05:11:15', '2023-04-16 05:11:15', 7, NULL),
(12, 'demo', 'demo@crenotive.com', NULL, NULL, '$2y$10$68lX9cYr3cWxCDS/jDmg7uY25XABMW6ZYL3ndiX/n0q2LSxmtPzu6', NULL, NULL, NULL, NULL, NULL, '2023-05-06 02:11:58', '2023-05-06 02:11:58', 1, 1),
(13, 'super adminaa', 'superadmin@crenotive.com', NULL, NULL, '$2y$10$2xf10/AFXCI2dVBm4.VJ1OyBEoTmLMtC6OmZ6bwk5./WX3LDXuXMe', 'superadmin@crenotive.com123', NULL, NULL, NULL, NULL, '2023-05-06 02:44:27', '2023-05-13 22:56:51', 2, 1),
(14, 'editor', 'editor@crenotive.com', NULL, NULL, '$2y$10$2mS3pCKiwkCO07dyboM4Pu9ThZ0hdGNzPkpu1wiMXU38r/W4Iq7Ve', 'editor@crenotive.com', NULL, NULL, NULL, NULL, '2023-05-06 02:46:58', '2023-05-08 23:56:10', 3, 1),
(15, 'test representative', 'representative@crenotive.com', NULL, NULL, '$2y$10$/.tcrxgX2s1VcoJdMQLzpuXRbdo0mM3pLncZs4rlhtuxN2GAEh4DK', NULL, NULL, NULL, NULL, NULL, '2023-05-07 00:38:00', '2023-05-07 00:38:00', 7, NULL),
(16, 'newtest@test.com', 'newtest@test.com', NULL, NULL, '$2y$10$UkP/t2P9wHaFd6sU9u8JOuwwNvioODg3P0k3B3ADSZyUKGRS0CW8C', NULL, NULL, NULL, NULL, NULL, '2023-05-07 01:13:08', '2023-05-16 04:56:46', 7, 1),
(17, 'demo test two', 'demo2@demo.com', NULL, NULL, '$2y$10$q6QysAHuN8/umeSHxeBrNem32LWajzz6nSlFNUFOykjjp4WUBPzaO', NULL, NULL, NULL, NULL, NULL, '2023-05-07 01:15:33', '2023-05-07 01:15:33', 7, NULL),
(18, 'new test', 'test1@gmail.com', NULL, NULL, '$2y$10$xroYsZrB.YPzczz93fXkSOmbOCfYiG.rIHicsqByV14w2N43OfAca', NULL, NULL, NULL, NULL, NULL, '2023-05-07 01:22:38', '2023-05-07 01:22:38', 7, NULL),
(20, 'new test', 'test123@gmail.com', NULL, NULL, '$2y$10$Ov20OWZ4Qedcikh/ZV4kdeMsK6J5mVV5/P1Ko9D7az.Na2jJDt.nq', NULL, NULL, NULL, NULL, NULL, '2023-05-07 01:23:25', '2023-05-07 01:23:25', 7, NULL),
(21, 'demodf', 'demo123345@gmail.com', NULL, NULL, '$2y$10$yW.dw5EAkto10037EKA/xeQUGfNjVUMhWcjLTTnGx6wfa8iwKp5n.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, NULL),
(22, 'demo1233456@gmail.com', 'demo1233456@gmail.com', NULL, NULL, '$2y$10$PNy2u/xDFNEugYhCWoi6FOfdylTlIoisHw8KV/RdhKKsMKTF4K6.W', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, NULL),
(23, 'newtestmember@test.com', 'newtestmember@test.com', NULL, NULL, '$2y$10$asEBxELxgClWwg23rZPqyuMIwyWl7O/QZL/y2Od1y.dRillSotB4S', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, NULL),
(24, 'new pass_str', 'pass@crentive.com', NULL, NULL, '$2y$10$0VdbYVB2rt0yb/jnaoLbpeBq7Lu6l5z6p31xa86d8lKTb2JW8uIAe', 'pass@crentive.com', NULL, NULL, NULL, NULL, NULL, NULL, 7, NULL),
(25, 'demodfdf', 'shahriarshuvo714hgh@gmail.com', NULL, NULL, '$2y$10$K8KqOirtokdYrdMVtQVVjucBhy1HoEDmDcnMoq/1IF6S3GXNVgTfq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, NULL),
(26, 'rony', 'cc@crenotive.com', NULL, NULL, '$2y$10$6YBTMRq1qt0XUZywfw8e6eJjHkkvRb4XVZjzkutd3eagE2yOIDORq', NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-16 04:51:56', 1, NULL),
(27, 'new_test001', 'new_test001@crenotive.com', NULL, NULL, '$2y$10$Ydwu5MdEjE7OqDH7J/YaIudM4pdmb/ApXdm3KlbUkNF1X/1znbeF2', NULL, NULL, NULL, NULL, NULL, '2023-05-07 03:35:17', '2023-05-13 22:29:23', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `welcomes`
--

CREATE TABLE `welcomes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `text_one` varchar(255) DEFAULT NULL,
  `text_two` varchar(255) NOT NULL,
  `welcome_ticker` text DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `welcomes`
--

INSERT INTO `welcomes` (`id`, `text_one`, `text_two`, `welcome_ticker`, `status`, `created_at`, `updated_at`) VALUES
(1, '<p>Hello viewers, welcome to BCSfgfg</p>', '<p>be connected, get informed, take actiongf</p>', 'chdgh', '3', '2023-03-23 01:21:14', '2023-05-12 22:41:53'),
(2, '<p>Largest IT Market In Bangladesh</p>', '<p>Find Store by Floor Get Latest Market Updates, Notice, Event, Media</p>', 'BCS Computer City is the largest shopping complex in Bangladesh dedicated exclusively to computer hardware, accessories, and related products. Located in the heart of Dhaka city, BCS Computer City offers a one-stop shopping experience for both retail and wholesale customers.', '1', '2023-04-15 04:56:40', '2023-05-12 22:41:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `content_employee`
--
ALTER TABLE `content_employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content_tag`
--
ALTER TABLE `content_tag`
  ADD KEY `content_tag_content_id_foreign` (`content_id`),
  ADD KEY `content_tag_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_slug_unique` (`slug`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `landings`
--
ALTER TABLE `landings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pagelink` (`pagelink`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `members_slug_unique` (`slug`),
  ADD UNIQUE KEY `members_memberid_unique` (`memberId`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pagesettings`
--
ALTER TABLE `pagesettings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pagesettings_meta_slug_unique` (`meta_slug`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `siteoptions`
--
ALTER TABLE `siteoptions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `siteoptions_okey_unique` (`okey`);

--
-- Indexes for table `subscribes`
--
ALTER TABLE `subscribes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `welcomes`
--
ALTER TABLE `welcomes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=411;

--
-- AUTO_INCREMENT for table `content_employee`
--
ALTER TABLE `content_employee`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `landings`
--
ALTER TABLE `landings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `pagesettings`
--
ALTER TABLE `pagesettings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `siteoptions`
--
ALTER TABLE `siteoptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `subscribes`
--
ALTER TABLE `subscribes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `welcomes`
--
ALTER TABLE `welcomes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `content_tag`
--
ALTER TABLE `content_tag`
  ADD CONSTRAINT `content_tag_content_id_foreign` FOREIGN KEY (`content_id`) REFERENCES `contents` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `content_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
