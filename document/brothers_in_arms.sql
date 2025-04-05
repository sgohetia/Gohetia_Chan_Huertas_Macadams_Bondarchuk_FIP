-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 05, 2025 at 03:21 AM
-- Server version: 8.3.0
-- PHP Version: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `brothers_in_armsv3`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

DROP TABLE IF EXISTS `announcements`;
CREATE TABLE IF NOT EXISTS `announcements` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `message` varchar(3000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`id`, `title`, `message`) VALUES
(1, 'Grand Launch', 'We are thrilled to announce the official launch of Brothers in Arms, a dynamic and interactive donation platform dedicated to making a real impact. Our mission is to support those in need, one step at a time. Join us as we embark on this journey of hope and solidarity.'),
(2, 'Fundraising Campaign', 'We are thrilled to announce the official launch of Brothers in\n                  Arms, a dynamic and interactive donation platform dedicated to\n                  making a real impact. Our mission is to support those in need,\n                  one step at a time. Join us as we embark on this journey of\n                  hope and solidarity.'),
(3, 'Volunteer Recruitment', ' We are thrilled to announce the official launch of Brothers in\n                  Arms, a dynamic and interactive donation platform dedicated to\n                  making a real impact. Our mission is to support those in need,\n                  one step at a time. Join us as we embark on this journey of\n                  hope and solidarity.'),
(4, 'Thank You Message', 'We are thrilled to announce the official launch of Brothers in\n                  Arms, a dynamic and interactive donation platform dedicated to\n                  making a real impact. Our mission is to support those in need,\n                  one step at a time. Join us as we embark on this journey of\n                  hope and solidarity.');

-- --------------------------------------------------------

--
-- Table structure for table `contact_general_sponsors`
--

DROP TABLE IF EXISTS `contact_general_sponsors`;
CREATE TABLE IF NOT EXISTS `contact_general_sponsors` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL COMMENT 'madatory',
  `last_name` varchar(255) NOT NULL COMMENT 'madatory',
  `company` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(600) NOT NULL COMMENT 'madatory',
  `type` varchar(500) NOT NULL,
  `message` varchar(10000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'madatory',
  `date_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'hidden',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `contact_general_sponsors`
--

INSERT INTO `contact_general_sponsors` (`id`, `first_name`, `last_name`, `company`, `email`, `type`, `message`, `date_time`) VALUES
(1, 'test', 'test a', 'company A', 'a@a.com', 'Feedback', 'test', '2025-02-21 23:27:50'),
(2, 'test', 'test b', 'company B', 'a@a.com', 'Feedback', 'test', '2025-02-21 23:28:58'),
(3, 'Stephanie', 'Chan', 'Fanshawe College', 'stephaniechan1996514@gmail.com', 'feedback', 'test message', '2025-03-03 21:28:07'),
(4, 'Tanya', 'Huertas', 'Fanshawe College', 'test@test.com', 'feedback', 'test', '2025-03-03 21:28:07');

-- --------------------------------------------------------

--
-- Table structure for table `contact_volunteers`
--

DROP TABLE IF EXISTS `contact_volunteers`;
CREATE TABLE IF NOT EXISTS `contact_volunteers` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
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
  `experience` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `contact_volunteers`
--

INSERT INTO `contact_volunteers` (`id`, `first_name`, `last_name`, `email`, `message`, `date_time`, `volunteer_event_interest`, `availability`, `race`, `dietary_requirements`, `gender`, `age`, `experience`) VALUES
(1, 'Test a', 'test', 'a@a.com', '123', '2025-02-26 23:29:10', 'NULL', 'NULL', 'Not to answer', 'blank', 'Male', '11', '11'),
(2, 'Stephanie', 'Chan', 'stephaniechan1996514@gmail.com', 'test abc', '2025-03-03 21:30:39', 'NULL', 'NULL', 'Not to answer', 'blank', 'Female', '12', 'test abc'),
(3, 'Tanya', 'Huertas', 'test@test.com', 'test abc', '2025-03-03 21:30:39', 'NULL', 'NULL', 'Not to answer', 'blank', 'Female', '15', 'test abc');

-- --------------------------------------------------------

--
-- Table structure for table `donors`
--

DROP TABLE IF EXISTS `donors`;
CREATE TABLE IF NOT EXISTS `donors` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(500) NOT NULL,
  `campaign` varchar(500) NOT NULL,
  `amount` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `donors`
--

INSERT INTO `donors` (`id`, `name`, `campaign`, `amount`) VALUES
(1, 'Alice Day', 'abc', 200),
(2, 'Peter Day', 'abc', 200),
(3, 'Harry Styles', '123', 300);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
CREATE TABLE IF NOT EXISTS `events` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `event_name` varchar(255) NOT NULL,
  `date_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `event_name`, `date_time`, `description`) VALUES
(1, 'Honour Run: Brother in Arms', '(6/1/2025)', 'Honour Run: Brother in Arms is a vibrant, family-friendly event that celebrates unity, camaraderie, and resilience. This 5K fun run is designed to honor and support our veterans, active-duty military, first responders, and their families. Participants will run, walk, or jog through a course where they will be showered with bursts of color at designated checkpoints, symbolizing the strength, diversity, and spirit of our brothers and sisters in arms.\n\nBeyond the run, the event features live music, food vendors, and community activities, creating a festival atmosphere where participants can connect, reflect, and show appreciation for those who serve. A portion of the proceeds will go towards organizations supporting mental health, rehabilitation, and reintegration programs for veterans and first responders.\n\nWhether you\'re running in honor of a loved one, to show support, or just for fun, the Color Run: Brother in Arms is more than just a race—it\'s a movement of gratitude, unity, and celebration. Join us for an unforgettable experience!'),
(2, 'Historical Reenactment', '(3/25/2025)', 'Step into history with costumed performances that bring the past to life with remarkable historical accuracy. Experience the reproduction of wartime lifestyles, battles, and conditions, immersing yourself in the stories of soldiers who stood together on the frontlines.'),
(3, 'Lectures & Panels', '(3/20/2025)', 'Gain deeper insights into the realities of wartime life from expert discussions. Explore topics such as the role of female nurses, military uniforms, and the daily challenges of frontline soldiers. This session offers an opportunity to learn, reflect, and engage with history through diverse perspectives.'),
(4, 'Outdoor Cinema', '(3/12/2025)', 'Enjoy an open-air screening of historical newsreels and documentaries, offering a powerful look into real wartime experiences. Bring a blanket and join us for a cinematic journey through history, honoring the legacy of those who served.');

-- --------------------------------------------------------

--
-- Table structure for table `event_gallery`
--

DROP TABLE IF EXISTS `event_gallery`;
CREATE TABLE IF NOT EXISTS `event_gallery` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `fname` varchar(600) NOT NULL,
  `fname_alt` varchar(600) NOT NULL,
  `event_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `event_gallery`
--

INSERT INTO `event_gallery` (`id`, `fname`, `fname_alt`, `event_id`) VALUES
(1, 'colorrun_1.png', 'Color Run info', 1),
(2, 'colorrun_2.png', 'Color Run info 2', 1),
(3, 'colorrun_3.png', 'Color run info3 ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

DROP TABLE IF EXISTS `gallery`;
CREATE TABLE IF NOT EXISTS `gallery` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `fname` varchar(600) NOT NULL,
  `fname_alt` varchar(600) NOT NULL,
  `type` varchar(255) NOT NULL,
  `year` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `title`, `description`, `fname`, `fname_alt`, `type`, `year`) VALUES
(1, 'World war 1 image 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'ww1_1.png', 'World war 1 image 1', 'ww1', 1914),
(2, 'World war 1 image 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'ww1_2.png', 'World war 1 image 2', 'ww1', 1914),
(3, 'World war 1 image 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'ww1_3.png', 'World war 1 image 3', 'ww1', 1914),
(4, 'World war 1 image 4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'ww1_4.png', 'World war 1 image 4', 'ww1', 1914),
(5, 'World war 1 image 5', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'ww1_5.png', 'World war 1 image 5', 'ww1', 1914),
(6, 'World war 2 image 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'ww2_1.png', 'World war 2 image 1', 'ww2', 1939),
(7, 'World war 2 image 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'ww2_2.png', 'World war 2 image 2', 'ww2', 1939),
(8, 'World war 2 image 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'ww2_3.png', 'World war 2 image 3', 'ww2', 1939),
(9, 'World war 2 image 4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'ww2_4.png', 'World war 2 image 4', 'ww2', 1939),
(10, 'Date1 image 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'date1_1.png', 'Date1 image 1', 'date1', 1943),
(11, 'Date1 image 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'date1_2.png', 'Date1 image 2', 'date1', 1943),
(12, 'Date1 image 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'date1_3.png', 'Date1 image 3', 'date1', 1943),
(13, 'Date2 image 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'date2_1.png', 'Date2 image 1', 'date2', 1943),
(14, 'Date2 image 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'date2_2.png', 'Date2 image 2', 'date2', 1943),
(15, 'Date2 image 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'date2_3.png', 'Date2 image 3', 'date2', 1943),
(16, 'Date3 image 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'date3_1.png', 'Date3 image 1', 'date3', 1943),
(17, 'Date3 image 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'date3_2.png', 'Date3 image 2', 'date3', 1943),
(18, 'Date3 image 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'date3_3.png', 'Date3 image 3', 'date3', 1943);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `sub_title` varchar(500) NOT NULL,
  `summary` varchar(3000) NOT NULL,
  `message` text NOT NULL,
  `image_file` varchar(255) NOT NULL,
  `image_alt` varchar(255) NOT NULL,
  `image_file2` varchar(255) NOT NULL,
  `image_alt2` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `sub_title`, `summary`, `message`, `image_file`, `image_alt`, `image_file2`, `image_alt2`) VALUES
(1, 'Explore the Future Memorial Online', 'News Update for January', 'Take a virtual tour of the upcoming memorial dedicated to Indian and Canadian soldiers of World War I. Visit the Memorial page on our website to see the planned design and read the informational panels honoring their legacy.', '<b>Take a virtual tour of the upcoming memorial dedicated to Indian and Canadian soldiers of World War I. Visit the Memorial page on our website to see the planned design and read the informational panels honoring their legacy.</b>\r\n\\n\\n We are excited to share that you can now explore the future memorial from the comfort of your home. By visiting the Memorial page on our website, you can take a virtual tour and see how the site will look once completed.\\n\\n Wander through the planned pathways, view the monument, explore what else is waiting for you in this place, and read the informational panels that will honor the legacy of Indian and Canadian soldiers who served in World War I. This interactive experience offers a glimpse into the space designed to preserve their memory and share their stories.\r\n\\n\\n <b>Visit the Memorial page now and be among the first to walk through this place of remembrance—virtually.</b>', 'blog1.png', 'blog 1 image', 'ad1.png', 'ad 1'),
(2, 'We’re Launching Our Social Media!', 'News Update for February', 'Stay connected and be the first to know about the latest Brothers In Arms Memorial updates. Follow us to discover fascinating facts about World War I. Join us on this journey of remembrance and tribute—subscribe to our social media pages today!', '<b>Stay connected and be the first to know about the latest Brothers In Arms Memorial updates. Follow us to discover fascinating facts about World War I. Join us on this journey of remembrance and tribute—subscribe to our social media pages today!</b>\r\n\\n\\n We’re excited to announce the launch of our social media pages, where you can stay up to date with the latest news and progress of the Brothers In Arms memorial.\r\n\\n\\n\r\n- Discover little-known facts about World War I.\\n\\n\r\n\r\n\r\n- Get behind-the-scenes insights into the creation of the Memorial.\\n\\n\r\n\r\n\r\n- Be the first to hear about the latest events and announcements.\\n\\n\r\n\r\n\r\n<b>Follow us and join the community dedicated to honoring the legacy of Indian and Canadian soldiers. Together, we’ll keep their memory alive.</b>\r\n', 'blog2.png', 'blog 2 image', 'ad2.png', 'ad 2'),
(3, 'How Your Donations Make a Changes', 'News Update for March', 'Every donation brings us one step closer to creating a meaningful place of remembrance for the Indian and Canadian soldiers of World War I. Learn how your support makes a difference in this article.', '<b>Every donation brings us one step closer to creating a meaningful place of remembrance for the Indian and Canadian soldiers of World War I. Learn how your support makes a difference in this article.</b>\r\n\\n\\n\r\nEvery contribution you make plays a crucial role in bringing the Memorial to life. Your donations help create a meaningful space that will honor the soldiers\' bravery and preserve their legacy for future generations. Here’s how your support is helping us move forward:\r\n\\n\\n\r\n<b>- Construction:</b> Funding the memorial’s structure, including pathways, plaques, and landscaping.\r\n\\n\\n\r\n\r\n<b>-Informational Panels:</b> Creating detailed displays that share the soldiers\' stories.\r\n\\n\\n\r\n\r\n<b>-Interactive Features:</b> Developing digital and multimedia elements to enhance the visitor experience.\r\n\\n\\n\r\n\r\n<b>Transparency Matters</b>\\n\r\n\r\n We are committed to keeping you informed. Regular progress reports will be shared on our website and social media, showing how your donations are being used.\r\n\\n\\n\r\n<b>Beyond Donations</b>\\n\r\n You can also support us by volunteering, sharing our project on social media, or contributing family stories and historical artifacts.\r\n\\n\\n\r\n<b>Together, we can build a lasting tribute that honor their courage and sacrifice!</b>\r\n', 'blog3.png', 'blog 3 image', 'ad3.png', 'ad3');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

DROP TABLE IF EXISTS `subscriptions`;
CREATE TABLE IF NOT EXISTS `subscriptions` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(600) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `email`) VALUES
(1, 'stephaniechan1996514@gmail.com'),
(2, 'test@test.com'),
(3, 'testa@testa.com');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'test', 'test');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
