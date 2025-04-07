-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 07, 2025 at 03:57 AM
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
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `message` varchar(3000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`id`, `title`, `message`) VALUES
(1, 'Grand Launch', ' We’re building a Memorial Park to honor Canadian and Indian WWI soldiers. Phase 2 includes the monument, trails, signs, and amenities. Phase 1 is complete. Follow our progress and donate.'),
(2, 'Fundraising Campaign', 'Help Build the Memorial\nSupport the construction of the monument, walking trails, and rest areas. Every donation helps honor 2.4 million soldiers. Let’s build this tribute together.'),
(3, 'Volunteer with Us', 'Join our team to develop the park, work on trails and signs, assist with fundraising, and share stories. No experience needed, just a passion for honoring their memory. Contact us to get involved.'),
(4, 'Thank You for Remembering', 'Visiting the Memorial honors WWI soldiers. Explore the site, read their stories, and donate to help complete the Memorial. Thank you for keeping their memory alive.');

-- --------------------------------------------------------

--
-- Table structure for table `contact_general_sponsors`
--

CREATE TABLE `contact_general_sponsors` (
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

CREATE TABLE `contact_volunteers` (
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
(1, 'Alice Day', 'abc', 200),
(2, 'Peter Day', 'abc', 200),
(3, 'Harry Styles', '123', 300);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int UNSIGNED NOT NULL,
  `event_name` varchar(255) NOT NULL,
  `date_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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

CREATE TABLE `event_gallery` (
  `id` int UNSIGNED NOT NULL,
  `fname` varchar(600) NOT NULL,
  `fname_alt` varchar(600) NOT NULL,
  `event_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
(1, 'World war 1 image 1', 'Soldiers of the Indian Army, serving in the military of British Empire in Europe, during the First World War. Here they are training at bayonet practice.', 'ww1_1.png', 'World war 1 image 1', 'ww1', 1914),
(2, 'World war 1 image 2', 'German East African Campaign. Dar-es-Salaam. Indian troops embarking for Kilwa, October 1917.', 'ww1_2.png', 'World war 1 image 2', 'ww1', 1914),
(3, 'World war 1 image 3', 'The Indian army in Paris, 1916: ‘A fitting testatment’. Photograph: Kharbine-Tapabo.', 'ww1_3.png', 'World war 1 image 3', 'ww1', 1914),
(4, 'World war 1 image 4', 'The legendary 29th Lancers (Deccan Horse) of the Indian Expeditionary Force make their way through a shell-torn landscape on the Western Front, March 1917.', 'ww1_4.png', 'World war 1 image 4', 'ww1', 1914),
(5, 'World war 1 image 5', 'Indian soldiers in Thessaloniki training with gas masks.', 'ww1_5.png', 'World war 1 image 5', 'ww1', 1914),
(6, 'World war 2 image 1', 'THE MACEDONIAN CAMPAIGN, 1915-1918: A gymnastic display by men of an Indian mule transport unit at a sports meeting near Salonika in May 1916.', 'ww2_1.png', 'World war 2 image 1', 'ww2', 1939),
(7, 'World war 2 image 2', 'Colonel Kishan Singh Sirdar Bahadur and Dr Sampuran Singh, two Indian officers of an Indian mule company who got all the mules and their carts off during the Suvla Bay evacuation. in Gallipoli at their post during WWI.', 'ww2_2.png', 'World war 2 image 2', 'ww2', 1939),
(8, 'World war 2 image 3', 'A group of Indian soldiers, possibly soldiers of the 9th Hodson\'s Horse (wearing just shirts and trousers), stand round the improvised cookhouse at an Indian cavalry camp near Querrieu whilst two seated cooks prepare some food. Indian Cavalry Camp. 29 July 1916.', 'ww2_3.png', 'World war 2 image 3', 'ww2', 1939),
(9, 'World war 2 image 4', 'THE BRITISH ARMY IN THE SINAI AND PALESTINE CAMPAIGN, 1915-1918: Indian troops of the 7th (Meerut) Division bathing in the River Auja, Summer 1918.', 'ww2_4.png', 'World war 2 image 4', 'ww2', 1939),
(10, 'Date1 image 1', 'Indian infantry  (58th Rifles) with gas masks in the trenches, prepared  to meet a gas attack near Fauquissart, August 1915.', 'date1_1.png', 'Date1 image 1', 'date1', 1943),
(11, 'Date1 image 2', 'The Mesopotamian Campaign, 1916-1918, Mesopotamia, Iraq:\nA group of British and Indian soldiers standing in a desert landscape, during World War I.', 'date1_2.png', 'Date1 image 2', 'date1', 1943),
(12, 'Date1 image 3', 'Wounded Indian soldiers write letters home from Brighton, UK, the sea town where they were sent to recuperate.', 'date1_3.png', 'Date1 image 3', 'date1', 1943),
(13, 'Date2 image 1', 'THE MACEDONIAN CAMPAIGN, 1915-1918: A running race between men of an Indian mule transport unit at a sports meeting near Salonika in May 1916.', 'date2_1.png', 'Date2 image 1', 'date2', 1943),
(14, 'Date2 image 2', 'A crew positioning a BL 6-inch 26 cwt howitzer, February 1918; No.2 Canadian (Overseas) Siege Artillery Battery', 'date2_2.png', 'Date2 image 2', 'date2', 1943),
(15, 'Date2 image 3', 'Indian soldiers in France, First World War, 1914; Sikh soldiers of Punjab came all the way to Europe ( to help the European people who were forcibly under the occupation of the Germans )\nduring World War 1. They fought on the western front Belgium and France and died in thousands. ', 'date2_3.png', 'Date2 image 3', 'date2', 1943),
(16, 'Date3 image 1', 'Canadian troops returning from the trenches. November, 1916. Battle of the Somme.', 'date3_1.png', 'Date3 image 1', 'date3', 1943),
(17, 'Date3 image 2', ' French soldiers advance with fixed bayonets against German soldiers at the Second Battle of Champagne', 'date3_2.png', 'Date3 image 2', 'date3', 1943),
(18, 'Date3 image 3', 'Sikh troops with British officer; The Sikh Army, also known as the Khalsa Fauj, has a rich history of valor and sacrifice. They played a significant role in shaping the course of Indian and world history; Reviving a Sikh regiment has come up several times in the recent past in Britain. One recent attempt was abandoned in 2007 amid fears that the move could be termed racist.', 'date3_3.png', 'Date3 image 3', 'date3', 1943);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` varchar(500) NOT NULL,
  `summary` varchar(3000) NOT NULL,
  `message` text NOT NULL,
  `image_file` varchar(255) NOT NULL,
  `image_alt` varchar(255) NOT NULL,
  `image_file2` varchar(255) NOT NULL,
  `image_alt2` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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

CREATE TABLE `subscriptions` (
  `id` int UNSIGNED NOT NULL,
  `email` varchar(600) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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

CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'test', 'test');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_general_sponsors`
--
ALTER TABLE `contact_general_sponsors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_volunteers`
--
ALTER TABLE `contact_volunteers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donors`
--
ALTER TABLE `donors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
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
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contact_general_sponsors`
--
ALTER TABLE `contact_general_sponsors`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contact_volunteers`
--
ALTER TABLE `contact_volunteers`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `donors`
--
ALTER TABLE `donors`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `event_gallery`
--
ALTER TABLE `event_gallery`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
