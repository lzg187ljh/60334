-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 01, 2021 at 08:32 PM
-- Server version: 10.2.37-MariaDB-log
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `long12_proj`
--

-- --------------------------------------------------------

--
-- Table structure for table `Book`
--

CREATE TABLE `Book` (
  `book_id` int(100) NOT NULL,
  `book_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `book_author` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `book_publisher` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `book_category` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `book_num` int(100) NOT NULL,
  `book_record` datetime DEFAULT NULL,
  `book_img` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Book`
--

INSERT INTO `Book` (`book_id`, `book_title`, `book_author`, `book_publisher`, `book_category`, `book_num`, `book_record`, `book_img`) VALUES
(1, 'Colombia : what everyone needs to know', 'Mahoney, Richard D', 'Oxford University Press', 'History', 37, '2020-08-19 22:46:39', 14),
(2, 'Israel\'s Jewish identity crisis', 'Yadgar, Yaacov', 'Cambridge, United Kingdom ; Cambridge University Press', 'History', 0, '2020-08-17 17:23:58', 7),
(3, 'Witch\'s oath', 'Goodkind, Terry', 'Head of Zeus', 'Sci-fi', 40, '2020-01-21 19:02:32', 13),
(4, '1Q84', 'Murakami, Haruki', 'Doubleday Canada', 'Literature', 45, '2020-08-19 22:46:39', 5),
(5, 'A intro to c++', 'Bjarne', 'uwindsor', 'Computer', 46, '2020-08-19 17:13:16', 9),
(6, 'Introducing Bootstrap 4', 'Krause, Jörg', 'Apress', 'Computer', 95, '2020-02-11 17:39:10', 13),
(7, 'Compilers: Principles, Techniques', 'Alfred Aho', 'Pearson', 'Computer', 66, '2019-10-02 17:42:06', 14),
(8, 'Les roses de la nuit', 'Arnaldur Indriðason', 'Éditions Métailié', 'Literature', 100, '2020-02-18 17:49:07', 5),
(9, 'Love me tender : roman', 'Debré, Constance', 'Flammarion', 'Literature', 49, '2020-03-16 17:55:14', 7),
(10, 'Axiom\'s end', 'Ellis, Lindsay', 'St. Martin\'s Press', 'Sci-fi', 100, '2020-08-03 17:57:22', 7),
(11, 'Reconstruction : a very short introduction', 'Guelzo, Allen C', 'NY : Oxford University Press', 'History', 100, '2018-07-11 17:58:45', 13),
(12, 'The human son', 'Walker, Adrian J', 'Solaris, an imprint of Rebellion Publishing', 'Sci-fi', 148, '2019-08-01 18:05:23', 9);

-- --------------------------------------------------------

--
-- Table structure for table `Borrow`
--

CREATE TABLE `Borrow` (
  `book_id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `borrow_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Borrow`
--

INSERT INTO `Borrow` (`book_id`, `user_id`, `borrow_date`) VALUES
(1, 1, '2020-08-20 15:41:53'),
(4, 2, '2020-09-28 17:58:12'),
(7, 10, '2020-08-16 14:48:46'),
(12, 10, '2020-08-16 14:48:43');

-- --------------------------------------------------------

--
-- Table structure for table `Borrow_history`
--

CREATE TABLE `Borrow_history` (
  `user_id` int(100) NOT NULL,
  `book_id` int(100) NOT NULL,
  `user_dep` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `book_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `book_author` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `book_publisher` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `book_category` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `borrow_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Borrow_history`
--

INSERT INTO `Borrow_history` (`user_id`, `book_id`, `user_dep`, `user_type`, `book_title`, `book_author`, `book_publisher`, `book_category`, `borrow_date`) VALUES
(1, 1, 'cs', 'student', 'Colombia : what everyone needs to know', 'Mahoney, Richard D', 'Oxford University Press', 'History', '2020-08-20 15:41:53'),
(1, 1, 'cs', 'student', 'Colombia : what everyone needs to know', 'Mahoney, Richard D', 'Oxford University Press', 'History', '2020-11-05 19:57:53'),
(1, 12, 'cs', 'student', 'The human son', 'Walker, Adrian J', 'Solaris, an imprint of Rebellion Publishing', 'Sci-fi', '2020-08-15 18:28:42'),
(2, 1, 'philo', 'student', 'Colombia : what everyone needs to know', 'Mahoney, Richard D', 'Oxford University Press', 'History', '2020-08-13 19:12:23'),
(2, 1, 'philo', 'student', 'Colombia : what everyone needs to know', 'Mahoney, Richard D', 'Oxford University Press', 'History', '2020-08-14 14:32:54'),
(2, 1, 'philo', 'student', 'Colombia : what everyone needs to know', 'Mahoney, Richard D', 'Oxford University Press', 'History', '2020-08-14 17:31:29'),
(2, 1, 'philo', 'student', 'Colombia : what everyone needs to know', 'Mahoney, Richard D', 'Oxford University Press', 'History', '2020-08-16 14:33:56'),
(2, 1, 'philo', 'student', 'Colombia : what everyone needs to know', 'Mahoney, Richard D', 'Oxford University Press', 'History', '2020-09-28 17:02:02'),
(2, 1, 'philo', 'student', 'Colombia : what everyone needs to know', 'Mahoney, Richard D', 'Oxford University Press', 'History', '2020-09-28 17:11:38'),
(2, 4, 'philo', 'student', '1Q84', 'Murakami, Haruki', 'Doubleday Canada', 'Literature', '2020-08-16 14:33:29'),
(2, 4, 'philo', 'student', '1Q84', 'Murakami, Haruki', 'Doubleday Canada', 'Literature', '2020-09-28 17:58:12'),
(2, 5, 'philo', 'student', 'A intro to c++', 'Bjarne', 'uwindsor', 'Computer', '2020-08-14 17:24:06'),
(2, 5, 'philo', 'student', 'A intro to c++', 'Bjarne', 'uwindsor', 'Computer', '2020-08-14 17:34:35'),
(2, 5, 'philo', 'student', 'A intro to c++', 'Bjarne', 'uwindsor', 'Computer', '2020-08-15 15:04:42'),
(2, 5, 'philo', 'student', 'A intro to c++', 'Bjarne', 'uwindsor', 'Computer', '2020-08-16 14:33:32'),
(2, 5, 'philo', 'student', 'A intro to c++', 'Bjarne', 'uwindsor', 'Computer', '2020-08-16 14:33:52'),
(2, 5, 'philo', 'student', 'A intro to c++', 'Bjarne', 'uwindsor', 'Computer', '2020-09-28 17:04:46'),
(2, 6, 'philo', 'student', 'Introducing Bootstrap 4', 'Krause, Jörg', 'Apress', 'Computer', '2020-08-14 17:34:38'),
(2, 6, 'philo', 'student', 'Introducing Bootstrap 4', 'Krause, Jörg', 'Apress', 'Computer', '2020-08-16 14:28:23'),
(2, 7, 'philo', 'student', 'Compilers: Principles, Techniques', 'Alfred Aho', 'Pearson', 'Computer', '2020-08-14 17:24:11'),
(2, 7, 'philo', 'student', 'Compilers: Principles, Techniques', 'Alfred Aho', 'Pearson', 'Computer', '2020-08-14 17:34:42'),
(2, 7, 'philo', 'student', 'Compilers: Principles, Techniques', 'Alfred Aho', 'Pearson', 'Computer', '2020-08-15 17:15:46'),
(2, 8, 'philo', 'student', 'Les roses de la nuit', 'Arnaldur Indriðason', 'Éditions Métailié', 'Literature', '2020-08-15 17:15:42'),
(2, 9, 'philo', 'student', 'Love me tender : roman', 'Debré, Constance', 'Flammarion', 'Literature', '2020-08-14 17:24:08'),
(2, 9, 'philo', 'student', 'Love me tender : roman', 'Debré, Constance', 'Flammarion', 'Literature', '2020-08-16 14:29:12'),
(7, 5, 'philo', 'teacher', 'A intro to c++', 'Bjarne', 'uwindsor', 'Computer', '2020-08-14 17:35:34'),
(7, 7, 'philo', 'teacher', 'Compilers: Principles, Techniques', 'Alfred Aho', 'Pearson', 'Computer', '2020-08-14 17:35:39'),
(7, 8, 'philo', 'teacher', 'Les roses de la nuit', 'Arnaldur Indriðason', 'Éditions Métailié', 'Literature', '2020-08-14 17:35:37'),
(10, 4, 'history', 'teacher', '1Q84', 'Murakami, Haruki', 'Doubleday Canada', 'Literature', '2020-08-16 14:48:24'),
(10, 5, 'history', 'teacher', 'A intro to c++', 'Bjarne', 'uwindsor', 'Computer', '2020-08-16 14:35:33'),
(10, 6, 'history', 'teacher', 'Introducing Bootstrap 4', 'Krause, Jörg', 'Apress', 'Computer', '2020-08-16 14:36:02'),
(10, 7, 'history', 'teacher', 'Compilers: Principles, Techniques', 'Alfred Aho', 'Pearson', 'Computer', '2020-08-16 14:47:38'),
(10, 7, 'history', 'teacher', 'Compilers: Principles, Techniques', 'Alfred Aho', 'Pearson', 'Computer', '2020-08-16 14:48:46'),
(10, 11, 'history', 'teacher', 'Reconstruction : a very short introduction', 'Guelzo, Allen C', 'NY : Oxford University Press', 'History', '2020-08-16 14:36:04'),
(10, 12, 'history', 'teacher', 'The human son', 'Walker, Adrian J', 'Solaris, an imprint of Rebellion Publishing', 'Sci-fi', '2020-08-16 14:48:43');

-- --------------------------------------------------------

--
-- Table structure for table `Return_table`
--

CREATE TABLE `Return_table` (
  `user_id` int(100) NOT NULL,
  `book_id` int(100) NOT NULL,
  `borrow_date1` datetime NOT NULL,
  `return_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Return_table`
--

INSERT INTO `Return_table` (`user_id`, `book_id`, `borrow_date1`, `return_date`) VALUES
(2, 1, '2020-08-16 14:33:56', '2020-08-16 14:34:16'),
(2, 1, '2020-09-28 17:02:02', '2020-09-28 17:10:22'),
(2, 1, '2020-09-28 17:11:38', '2020-09-28 17:11:43'),
(2, 3, '2020-09-28 17:04:14', '2020-09-28 17:10:22'),
(2, 4, '2020-08-16 14:33:29', '2020-08-16 14:34:16'),
(2, 5, '2020-08-16 14:33:32', '2020-08-16 14:34:16'),
(2, 5, '2020-09-28 17:04:46', '2020-09-28 17:10:23'),
(2, 10, '2020-09-28 17:02:20', '2020-09-28 17:04:02'),
(2, 10, '2020-09-28 17:04:38', '2020-09-28 17:10:23'),
(10, 3, '2020-08-16 14:35:35', '2020-08-16 14:35:43'),
(10, 4, '2020-08-16 14:48:24', '2020-08-16 14:48:31'),
(10, 5, '2020-08-16 14:35:33', '2020-08-16 14:35:43'),
(10, 6, '2020-08-16 14:36:02', '2020-08-16 14:41:53'),
(10, 7, '2020-08-16 14:47:38', '2020-08-16 14:48:31'),
(10, 11, '2020-08-16 14:36:04', '2020-08-16 14:41:53');

-- --------------------------------------------------------

--
-- Table structure for table `Ticket`
--

CREATE TABLE `Ticket` (
  `user_id` int(100) NOT NULL,
  `book_id` int(100) NOT NULL,
  `return_date` datetime NOT NULL,
  `overdue_date` int(100) DEFAULT NULL,
  `fine` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Triggers `Ticket`
--
DELIMITER $$
CREATE TRIGGER `trigger_credit` AFTER INSERT ON `Ticket` FOR EACH ROW BEGIN
if(SELECT count(*) from Ticket WHERE user_id=new.user_id)>3 THEN
	UPDATE User set user_credit = user_credit-1 WHERE user_id=new.user_id;
end if;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `user_id` int(100) NOT NULL,
  `user_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_age` int(100) NOT NULL,
  `user_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_dep` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_credit` int(100) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `User`
--

INSERT INTO `User` (`user_id`, `user_name`, `user_password`, `user_age`, `user_type`, `user_dep`, `user_credit`) VALUES
(1, 'one', '1', 24, 'student', 'cs', 1),
(2, 'QwQ', '2', 11, 'student', 'philo', 1),
(7, 'may', '7', 77, 'teacher', 'philo', 0),
(10, 'liu', '10', 45, 'teacher', 'history', 1),
(12, '12', '123', 23, 'teacher', 'cs', 1),
(123, 'melu', '123', 23, 'student', 'cs', 1),
(1234, 'test', 'test', 1234, 'teacher', 'test', 1),
(12345, 'test2', 'test2', 12345, 'student', 'test2', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Book`
--
ALTER TABLE `Book`
  ADD PRIMARY KEY (`book_id`),
  ADD KEY `book_id` (`book_id`),
  ADD KEY `book_record` (`book_record`);

--
-- Indexes for table `Borrow`
--
ALTER TABLE `Borrow`
  ADD PRIMARY KEY (`book_id`,`user_id`),
  ADD KEY `book_id` (`book_id`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `Borrow_history`
--
ALTER TABLE `Borrow_history`
  ADD PRIMARY KEY (`user_id`,`book_id`,`borrow_date`),
  ADD KEY `user_id` (`user_id`,`book_id`,`borrow_date`);

--
-- Indexes for table `Return_table`
--
ALTER TABLE `Return_table`
  ADD PRIMARY KEY (`user_id`,`book_id`,`borrow_date1`),
  ADD KEY `user_id` (`user_id`,`book_id`,`borrow_date1`);

--
-- Indexes for table `Ticket`
--
ALTER TABLE `Ticket`
  ADD PRIMARY KEY (`user_id`,`book_id`,`return_date`),
  ADD KEY `user_id` (`user_id`,`book_id`,`return_date`);

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `user_name` (`user_name`),
  ADD KEY `user_id` (`user_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Borrow`
--
ALTER TABLE `Borrow`
  ADD CONSTRAINT `Borrow_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `User` (`user_id`),
  ADD CONSTRAINT `Borrow_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `Book` (`book_id`);

--
-- Constraints for table `Return_table`
--
ALTER TABLE `Return_table`
  ADD CONSTRAINT `Return_table_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `User` (`user_id`),
  ADD CONSTRAINT `Return_table_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `Book` (`book_id`);

--
-- Constraints for table `Ticket`
--
ALTER TABLE `Ticket`
  ADD CONSTRAINT `Ticket_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `User` (`user_id`),
  ADD CONSTRAINT `Ticket_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `Book` (`book_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
