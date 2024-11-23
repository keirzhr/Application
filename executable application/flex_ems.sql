-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2024 at 02:01 PM
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
-- Database: `flex_ems`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendees`
--

CREATE TABLE `attendees` (
  `attendee_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `attendee_phone` varchar(20) DEFAULT NULL,
  `attendee_address` varchar(255) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendees`
--

INSERT INTO `attendees` (`attendee_id`, `name`, `email`, `attendee_phone`, `attendee_address`, `event_id`) VALUES
(3, 'spiderman', 'spiderman@gmail.com', NULL, NULL, NULL),
(5, 'taylor swift', 'taylor@gmail.com', NULL, NULL, NULL),
(6, 'keil', 'keil@mail.com', NULL, NULL, NULL),
(8, 'rose', 'rose@gmail.com', NULL, NULL, NULL),
(9, 'roses', 'rose@gmail.com', NULL, NULL, NULL),
(11, 'tryqlang', 'tryqlang@mail.com', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `event_id` int(11) NOT NULL,
  `event_name` varchar(255) NOT NULL,
  `event_date` date DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `organizer_contact` varchar(255) DEFAULT NULL,
  `event_type` varchar(50) NOT NULL,
  `event_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event_id`, `event_name`, `event_date`, `location`, `description`, `organizer_contact`, `event_type`, `event_image`) VALUES
(21, 'Grand BiniVerse', '2024-12-24', 'Manila', 'Lorem ipsum dolor sit', '09971671686', 'Concert', 'C:/Users/keilr/Downloads/bini.png'),
(22, 'Taylor Swift: The Eras Tour', '2025-12-18', 'Canada', 'Lorem Ipsum Dolor', '09971671686', 'Concert', 'C:/Users/keilr/Downloads/362a2913-b823-4f3a-93e4-c7603d9f1345.jpg'),
(23, 'keil event', '2023-12-12', 'batangas', 'wala', '09971671686', 'Conference', 'C:/Users/keilr/Downloads/bini.png'),
(24, 'keil event', '2023-12-12', 'batangas', 'wala', '09971671686', 'Conference', 'C:/Users/keilr/Downloads/bini.png'),
(25, 'Tech Conference 2024', '2024-12-15', 'Main Hall', NULL, NULL, '', NULL),
(26, 'try', '0000-00-00', 'try', 'try', 'try', 'Workshop', 'C:/Users/keilr/Downloads/bini.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`) VALUES
(19, 'keilrizher', '5c61d194d5714c7feb9e184f9e452f7cc4feef0b55950e8518336b76b5961e65'),
(20, 'keil', '5c61d194d5714c7feb9e184f9e452f7cc4feef0b55950e8518336b76b5961e65');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendees`
--
ALTER TABLE `attendees`
  ADD PRIMARY KEY (`attendee_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendees`
--
ALTER TABLE `attendees`
  MODIFY `attendee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
