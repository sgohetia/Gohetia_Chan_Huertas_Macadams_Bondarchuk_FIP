-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Feb 28, 2025 at 06:05 PM
-- Server version: 8.0.40
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `brothers_in_arms`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact_general_sponsor`
--

CREATE TABLE `contact_general_sponsor` (
  `id` int UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL COMMENT 'madatory',
  `last_name` varchar(255) NOT NULL COMMENT 'madatory',
  `company` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(600) NOT NULL COMMENT 'madatory',
  `type` varchar(500) NOT NULL,
  `message` varchar(10000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'madatory',
  `date_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'hidden'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `contact_general_sponsor`
--

INSERT INTO `contact_general_sponsor` (`id`, `first_name`, `last_name`, `company`, `email`, `type`, `message`, `date_time`) VALUES
(1, 'test', 'test', 'test', 'a@a.com', 'Feedback', 'test', '2025-02-21 23:27:50'),
(2, 'test', 'test', 'test', 'a@a.com', 'Feedback', 'test', '2025-02-21 23:28:58');

-- --------------------------------------------------------

--
-- Table structure for table `contact_volunteer`
--

CREATE TABLE `contact_volunteer` (
  `id` int UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL COMMENT 'madatory',
  `last_name` varchar(255) NOT NULL COMMENT 'madatory',
  `email` varchar(255) NOT NULL COMMENT 'madatory',
  `message` text NOT NULL COMMENT 'madatory',
  `date_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'hidden',
  `volunteer_event_interest` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'NULL' COMMENT 'Only appear in volunteer\r\nmadatory',
  `availability` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'NULL' COMMENT 'Only appear in volunteer\r\nmadatory',
  `race` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'Not to answer' COMMENT 'Only appear in volunteer\r\noptional',
  `dietary_requirements` varchar(600) NOT NULL DEFAULT 'blank' COMMENT 'Only appear in volunteer\noptional',
  `gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'Only appear in volunteer\r\nWoman Man Not to answer \r\noptional',
  `age` varchar(255) NOT NULL COMMENT 'Only appear in volunteer\n18 , 19-25, 26-35,36-45, 46-55 56 or above \nmandatory',
  `experience` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `contact_volunteer`
--

INSERT INTO `contact_volunteer` (`id`, `first_name`, `last_name`, `email`, `message`, `date_time`, `volunteer_event_interest`, `availability`, `race`, `dietary_requirements`, `gender`, `age`, `experience`) VALUES
(1, 'a', 'a', 'a@a.com', '123', '2025-02-26 23:29:10', 'NULL', 'NULL', 'Not to answer', 'blank', 'Male', '11', '11');

-- --------------------------------------------------------

--
-- Table structure for table `donors`
--

CREATE TABLE `donors` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(500) NOT NULL,
  `campaign` varchar(500) NOT NULL,
  `amount` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `donors`
--

INSERT INTO `donors` (`id`, `name`, `campaign`, `amount`) VALUES
(1, 'Alice Test', 'abc', 200),
(2, 'Peter Abc', 'abc', 200),
(3, 'Harry Test', '123', 300);

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int UNSIGNED NOT NULL,
  `event_name` varchar(255) NOT NULL,
  `date_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `event_name`, `date_time`, `description`) VALUES
(1, 'Color Run: Brother in Arms', '(3/5/2025)', 'The Color Run: Brother in Arms is a vibrant, family-friendly event that celebrates unity, camaraderie, and resilience. This 5K fun run is designed to honor and support our veterans, active-duty military, first responders, and their families. Participants will run, walk, or jog through a course where they will be showered with bursts of color at designated checkpoints, symbolizing the strength, diversity, and spirit of our brothers and sisters in arms.\r\n\r\nBeyond the run, the event features live music, food vendors, and community activities, creating a festival atmosphere where participants can connect, reflect, and show appreciation for those who serve. A portion of the proceeds will go towards organizations supporting mental health, rehabilitation, and reintegration programs for veterans and first responders.\r\n\r\nWhether you\'re running in honor of a loved one, to show support, or just for fun, the Color Run: Brother in Arms is more than just a race—it\'s a movement of gratitude, unity, and celebration. Join us for an unforgettable experience!'),
(2, 'Live Benefit Concert and Auction', '(3/25/2025)', 'Music meets purpose! Enjoy a night of live performances\r\n                      from talented artists while supporting Brothers in Arms.\r\n                      Our Benefit Concert and Auction brings the community\r\n                      together for a great cause, with exclusive items up for\r\n                      bidding. Tune in, donate, and make a difference through\r\n                      the power of music.'),
(3, 'Storytelling and Awareness Night', '(3/20/2025)', 'Real stories. Real impact. Our Storytelling and Awareness\r\n                      Night shines a light on the experiences of veterans, first\r\n                      responders, and community members. Through powerful talks\r\n                      and discussions, we foster understanding, resilience, and\r\n                      support. Join us in honoring their journeys and learning\r\n                      how we can stand together.'),
(4, 'Charity Gaming Tournament', '(3/12/2025)', 'Compete for a cause! Join our Charity Gaming Tournament,\r\n                      where gamers battle it out in a friendly competition while\r\n                      supporting Brothers in Arms. Entry fees and live-stream\r\n                      donations go directly toward helping those in need. Play,\r\n                      stream, and make an impact—every game counts!');

-- --------------------------------------------------------

--
-- Table structure for table `event_gallery`
--

CREATE TABLE `event_gallery` (
  `id` int UNSIGNED NOT NULL,
  `fname` varchar(600) NOT NULL,
  `fname_alt` varchar(600) NOT NULL,
  `event_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `fname` varchar(600) NOT NULL,
  `fname_alt` varchar(600) NOT NULL,
  `type` varchar(255) NOT NULL,
  `year` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `title`, `description`, `fname`, `fname_alt`, `type`, `year`) VALUES
(1, 'World war 1 image 1', 'World war 1 image 1', 'ww1_1.png', 'World war 1 image 1', 'ww1', 1914),
(2, 'World war 1 image 2', 'World war 1 image 2', 'ww1_2.png', 'World war 1 image 2', 'ww1', 1914),
(3, 'World war 1 image 3', 'World war 1 image 3', 'ww1_3.png', 'World war 1 image 3', 'ww1', 1914),
(4, 'World war 1 image 4', 'World war 1 image 4', 'ww1_3.png', 'World war 1 image 4', 'ww1', 1914),
(5, 'World war 1 image 5', 'World war 1 image 5', 'ww1_5.png', 'World war 1 image 5', 'ww1', 1914),
(6, 'World war 2 image 1', 'World war 2 image 1', 'ww2_1.png', 'World war 2 image 1', 'ww2', 1939),
(7, 'World war 2 image 2', 'World war 2 image 2', 'ww2_2.png', 'World war 2 image 2', 'ww2', 1939),
(8, 'World war 2 image 3', 'World war 2 image 3', 'ww2_3.png', 'World war 2 image 3', 'ww2', 1939),
(9, 'World war 2 image 4', 'World war 2 image 4', 'ww2_4.png', 'World war 2 image 4', 'ww2', 1939),
(10, 'Date1 image 1', 'Date1 image 1', 'date1_1.png', 'Date1 image 1', 'date1', 1943),
(11, 'Date1 image 2', 'Date1 image 2', 'date1_2.png', 'Date1 image 2', 'date1', 1943),
(12, 'Date1 image 3', 'Date1 image 3', 'date1_3.png', 'Date1 image 3', 'date1', 1943),
(13, 'Date2 image 1', 'Date2 image 1', 'date2_1.png', 'Date2 image 1', 'date2', 1943),
(14, 'Date2 image 2', 'Date2 image 2', 'date2_2.png', 'Date2 image 2', 'date2', 1943),
(15, 'Date2 image 3', 'Date2 image 3', 'date2_3.png', 'Date2 image 3', 'date2', 1943),
(16, 'Date3 image 1', 'Date3 image 1', 'date3_1.png', 'Date3 image 1', 'date3', 1943),
(17, 'Date3 image 2', 'Date3 image 2', 'date3_2.png', 'Date3 image 2', 'date3', 1943),
(18, 'Date3 image 3', 'Date3 image 3', 'date3_3.png', 'Date3 image 3', 'date3', 1943);

-- --------------------------------------------------------

--
-- Table structure for table `memorial`
--

CREATE TABLE `memorial` (
  `id` int UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `story` text NOT NULL,
  `qrcode` varchar(255) NOT NULL,
  `date_of_death` date NOT NULL,
  `message` varchar(3000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `news_blog`
--

CREATE TABLE `news_blog` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `summary` varchar(3000) NOT NULL,
  `message` text NOT NULL,
  `date_time` datetime NOT NULL,
  `type` varchar(255) NOT NULL,
  `image_file` varchar(255) NOT NULL,
  `image_alt` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscription`
--

CREATE TABLE `subscription` (
  `id` int UNSIGNED NOT NULL,
  `email` varchar(600) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact_general_sponsor`
--
ALTER TABLE `contact_general_sponsor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_volunteer`
--
ALTER TABLE `contact_volunteer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donors`
--
ALTER TABLE `donors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_gallery`
--
ALTER TABLE `event_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `memorial`
--
ALTER TABLE `memorial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_blog`
--
ALTER TABLE `news_blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscription`
--
ALTER TABLE `subscription`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact_general_sponsor`
--
ALTER TABLE `contact_general_sponsor`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contact_volunteer`
--
ALTER TABLE `contact_volunteer`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `donors`
--
ALTER TABLE `donors`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `event_gallery`
--
ALTER TABLE `event_gallery`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `memorial`
--
ALTER TABLE `memorial`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `news_blog`
--
ALTER TABLE `news_blog`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscription`
--
ALTER TABLE `subscription`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
