-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 04, 2025 at 05:22 PM
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
(1, 'test', 'test a', 'company A', 'a@a.com', 'Feedback', 'test', '2025-02-21 23:27:50'),
(2, 'test', 'test b', 'company B', 'a@a.com', 'Feedback', 'test', '2025-02-21 23:28:58'),
(3, 'Stephanie', 'Chan', 'Fanshawe College', 'stephaniechan1996514@gmail.com', 'feedback', 'test message', '2025-03-03 21:28:07'),
(4, 'Tanya', 'Huertas', 'Fanshawe College', 'test@test.com', 'feedback', 'test', '2025-03-03 21:28:07');

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

--
-- Dumping data for table `memorial`
--

INSERT INTO `memorial` (`id`, `first_name`, `last_name`, `story`, `qrcode`, `date_of_death`, `message`) VALUES
(1, 'test', 'abc', 'test abc', 'NULL', '2025-03-04', 'test message');

-- --------------------------------------------------------

--
-- Table structure for table `news_blog`
--

CREATE TABLE `news_blog` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `summary` varchar(3000) NOT NULL,
  `message` text NOT NULL,
  `date` date NOT NULL,
  `type` varchar(255) NOT NULL,
  `image_file` varchar(255) NOT NULL,
  `image_alt` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `news_blog`
--

INSERT INTO `news_blog` (`id`, `title`, `summary`, `message`, `date`, `type`, `image_file`, `image_alt`) VALUES
(1, 'GRAND LAUNCH', 'We are thrilled to announce the official launch of Brothers in Arms, a dynamic and interactive donation platform dedicated to making a real impact. Our mission is to support those in need, one step at a time. Join us as we embark on this journey of hope and solidarity.', 'We are thrilled to announce the official launch of Brothers in Arms, a dynamic and interactive donation platform dedicated to making a real and lasting impact in the lives of those who need it the most.\r\n\r\nOur Mission:\r\nAt Brothers in Arms, our mission is clear: to support individuals, families, and communities in need by providing them with the resources, assistance, and hope they deserve. Through a simple yet powerful platform, we aim to create a ripple effect of kindness, compassion, and solidarity.\r\n\r\nHow It Works:\r\n	•	Seamless Donations: Whether you’re contributing a one-time donation or setting up a recurring contribution, our platform makes it easy for you to give.\r\n	•	Direct Impact: All funds go directly to vetted organizations and causes, ensuring that every penny counts.\r\n	•	Transparency: Our platform provides regular updates and reports on how donations are being used, offering complete transparency and accountability.\r\n	•	Interactive Features: As a supporter, you’ll be able to track the progress of campaigns, connect with recipients, and witness the direct change you’re helping to create.\r\n\r\nJoin Us in Making a Difference:\r\nAs we launch Brothers in Arms, we invite you to be a part of this movement. By joining us, you are not only contributing to a cause but also helping build a global community united by hope and shared responsibility. Together, we can make the world a better place, one step at a time.\r\n\r\nJoin us today and be a part of the change you want to see!', '2025-03-04', 'announcement', 'grandlaunch.png', 'Grand Launch'),
(2, 'FUNDRAISING CAMPAIGN', 'Brothers in Arms is launching a special fundraising campaign to provide essential aid to those who need it most. Every donation, help, support, big or small, brings us closer to our goal.', 'We are excited to announce the launch of Brothers in Arms’ Special Fundraising Campaign, dedicated to providing essential aid to those who need it most. This campaign is a critical step in our mission to offer support to individuals, families, and communities facing difficult times.\r\n\r\nOur Campaign Goal:\r\nThrough this campaign, we aim to raise funds for vital resources, including:\r\n	•	Emergency Food and Shelter: Ensuring that no one has to go without basic necessities during difficult times.\r\n	•	Medical Assistance: Providing healthcare, medicine, and supplies for those who can’t afford them.\r\n	•	Education and Empowerment: Supporting access to education, skills training, and resources to help individuals break free from cycles of poverty.\r\n	•	Disaster Relief: Offering immediate help to those affected by natural disasters or unexpected crises.\r\n\r\nWhy Every Contribution Matters:\r\nEvery donation, no matter how big or small, brings us one step closer to reaching our goal. Whether you can give a little or a lot, your contribution will go directly toward providing essential aid where it’s needed most. Every bit of help makes a difference, and together, we can create a ripple effect of hope.\r\n\r\nHow You Can Help:\r\n	•	Make a Donation: Your generous contribution can provide immediate assistance to those in dire need.\r\n	•	Spread the Word: Share this campaign with your friends, family, and networks. The more people who know about it, the greater our collective impact.\r\n	•	Become a Fundraiser: Start your own fundraising page through our platform and rally support from your community. With your efforts, we can amplify the power of kindness and generosity.\r\n\r\nCampaign Transparency:\r\nWe are committed to ensuring that your donations are used effectively and transparently. You will receive regular updates on the progress of the campaign and how the funds are being distributed. Your trust is important to us, and we will work hard to uphold it by demonstrating the positive change your contribution is making.\r\n\r\nJoin Us Today:\r\nWe invite you to stand with us in this important campaign. Your support brings us one step closer to providing much-needed relief and making a real difference in the lives of those who need it most. Together, we can create a brighter, more hopeful future for all.', '2025-03-04', 'announcement', 'fundingcampiange.png', 'funding campiange'),
(3, 'VOLUNTEER RECRUITMENT', 'Are you passionate about making a difference? Brothers in Arms is looking for dedicated volunteers to help with our upcoming initiatives. Whether it’s organizing events, spreading awareness, or supporting our digital platforms, your skills can create an impact!', 'Are you passionate about making a real difference in your community and beyond? Brothers in Arms is currently seeking dedicated volunteers to help with our upcoming initiatives. Whether you’re looking to contribute your time, skills, or energy, we welcome you to join us in our mission to create positive change for those in need.\r\n\r\nWhy Volunteer with Brothers in Arms?\r\nBy volunteering with Brothers in Arms, you will become a part of a movement focused on supporting individuals, families, and communities facing adversity. Our mission is to provide vital aid, raise awareness, and foster a spirit of solidarity, and we need your help to reach even more people.\r\n\r\nVolunteer Opportunities:\r\n	1.	Event Planning & Organization:\r\nHelp us organize fundraising events, awareness campaigns, and community outreach activities. Your role will involve everything from coordinating logistics to ensuring a smooth event experience, all while spreading the message of hope and solidarity.\r\n	2.	Digital & Social Media Support:\r\nAssist in managing and growing our online presence. Whether you’re helping create content for our social media platforms, drafting blog posts, or engaging with our online community, you’ll play an essential part in spreading the word about our mission and activities.\r\n	3.	Fundraising Assistance:\r\nSupport our fundraising efforts by helping to plan and implement campaigns, reaching out to potential donors, and engaging with local businesses or influencers. Your involvement will help us raise the necessary funds to provide critical resources and aid to those in need.\r\n	4.	Administrative Support:\r\nIf you’re detail-oriented, help us with administrative tasks such as organizing donations, managing volunteers, or tracking campaign progress. Your support will ensure that our initiatives run smoothly behind the scenes.\r\n	5.	Community Outreach:\r\nHelp us connect with local communities and organizations to spread awareness about our cause. You could assist with outreach efforts, visiting communities, and helping them access the support they need.\r\n\r\nWhat You’ll Gain:\r\n	•	Hands-on experience in various aspects of nonprofit work, including event planning, social media management, and fundraising.\r\n	•	An opportunity to make a real impact, as your contributions will directly support the people and causes that need it most.\r\n	•	A sense of community, working alongside passionate individuals who share your dedication to helping others.\r\n	•	Recognition for your efforts in making a positive change and being part of a movement that’s making a real difference.\r\n\r\nHow to Get Involved:\r\nGetting involved is easy! Simply fill out our volunteer application form on our website, and one of our team members will reach out to discuss how you can contribute based on your skills and interests. Whether you can commit a few hours or dedicate more time, there’s always room for you to make an impact.\r\n\r\nJoin Us and Be the Change You Wish to See:\r\nVolunteering with Brothers in Arms is more than just giving your time – it’s about creating a lasting impact. Your support can help us expand our reach, provide essential aid to those in need, and continue to build a community of hope and solidarity.', '2025-03-04', 'announcement', 'volunteer.png', 'volunteer');

-- --------------------------------------------------------

--
-- Table structure for table `subscription`
--

CREATE TABLE `subscription` (
  `id` int UNSIGNED NOT NULL,
  `email` varchar(600) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `subscription`
--

INSERT INTO `subscription` (`id`, `email`) VALUES
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact_general_sponsor`
--
ALTER TABLE `contact_general_sponsor`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contact_volunteer`
--
ALTER TABLE `contact_volunteer`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `memorial`
--
ALTER TABLE `memorial`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `news_blog`
--
ALTER TABLE `news_blog`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subscription`
--
ALTER TABLE `subscription`
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
