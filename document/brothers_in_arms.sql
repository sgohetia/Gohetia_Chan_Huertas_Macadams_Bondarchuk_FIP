-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Feb 13, 2025 at 10:51 PM
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
  `company` varchar(255) NOT NULL,
  `email` varchar(600) NOT NULL COMMENT 'madatory',
  `message` text NOT NULL COMMENT 'madatory',
  `date_time` datetime NOT NULL COMMENT 'hidden',
  `type` varchar(255) NOT NULL COMMENT 'general or sponsor'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
  `date_time` datetime NOT NULL COMMENT 'hidden',
  `volunteer_event_interest` varchar(500) NOT NULL COMMENT 'Only appear in volunteer\nmadatory',
  `availability` varchar(500) NOT NULL COMMENT 'Only appear in volunteer\nmadatory',
  `race` varchar(255) NOT NULL DEFAULT 'Not to answer' COMMENT 'Only appear in volunteer\noptional',
  `dietary_requirements` varchar(600) NOT NULL DEFAULT 'blank' COMMENT 'Only appear in volunteer\noptional',
  `gender` varchar(255) NOT NULL DEFAULT 'Not to answer' COMMENT 'Only appear in volunteer\nWoman Man Not to answer \noptional',
  `age` varchar(255) NOT NULL COMMENT 'Only appear in volunteer\n18 , 19-25, 26-35,36-45, 46-55 56 or above \nmandatory',
  `experience` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
  `date_time` datetime NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `event_name`, `date_time`, `description`) VALUES
(1, 'Color Run: Brother in Arms', '2025-02-13 22:35:31', 'The Color Run: Brother in Arms is a vibrant, family-friendly event that celebrates unity, camaraderie, and resilience. This 5K fun run is designed to honor and support our veterans, active-duty military, first responders, and their families. Participants will run, walk, or jog through a course where they will be showered with bursts of color at designated checkpoints, symbolizing the strength, diversity, and spirit of our brothers and sisters in arms.\r\n\r\nBeyond the run, the event features live music, food vendors, and community activities, creating a festival atmosphere where participants can connect, reflect, and show appreciation for those who serve. A portion of the proceeds will go towards organizations supporting mental health, rehabilitation, and reintegration programs for veterans and first responders.\r\n\r\nWhether you\'re running in honor of a loved one, to show support, or just for fun, the Color Run: Brother in Arms is more than just a race—it\'s a movement of gratitude, unity, and celebration. Join us for an unforgettable experience!');

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
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_volunteer`
--
ALTER TABLE `contact_volunteer`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donors`
--
ALTER TABLE `donors`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `event_gallery`
--
ALTER TABLE `event_gallery`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

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
