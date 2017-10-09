-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 22, 2017 at 02:27 PM
-- Server version: 5.5.55-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bookstore_development`
--

-- --------------------------------------------------------

--
-- Table structure for table `ar_internal_metadata`
--

CREATE TABLE IF NOT EXISTS `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ar_internal_metadata`
--

INSERT INTO `ar_internal_metadata` (`key`, `value`, `created_at`, `updated_at`) VALUES
('environment', 'development', '2017-06-21 09:41:42', '2017-06-21 09:41:42');

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE IF NOT EXISTS `authors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `first_name`, `last_name`, `created_at`, `updated_at`) VALUES
(1, 'Scott', 'Raymond', '2017-06-22 01:48:14', '2017-06-22 06:50:35'),
(2, 'Aneesha', 'Bakharia', '2017-06-22 03:22:37', '2017-06-22 03:22:37');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE IF NOT EXISTS `books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `publisher_id` int(11) DEFAULT NULL,
  `isbn` varchar(255) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `buy` varchar(255) DEFAULT NULL,
  `excerpt` text,
  `format` varchar(255) DEFAULT NULL,
  `pages` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `coverpath` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `category_id`, `author_id`, `publisher_id`, `isbn`, `year`, `price`, `buy`, `excerpt`, `format`, `pages`, `created_at`, `updated_at`, `coverpath`) VALUES
(1, 'Ajax On Rails', 1, 1, 1, '128603237', '2017', '47.14', 'http://www.ebay.com/itm/Ajax-on-Rails-Raymond-Scott-/311896796670?epid=96094798&hash=item489e7f6dfe:g:o6YAAOSwAO9ZQz~M', 'Ajax On Rails!: The Comprehensive Guide (Power!) Former Library book. Great condition for a used book! Minimal wear. 100% Money Back Guarantee. Shipped to over one million happy customers. Your purchase benefits world literacy!', 'Paperback', 350, '2017-06-22 02:51:42', '2017-06-22 02:51:42', 'covers/ajax_on_rails.jpg'),
(3, 'PHP And MySQL', 2, 1, 2, '56786535', '2017', '25', 'http://www.ebay.com/itm/Developers-Library-PHP-and-MySQL-Web-Development-by-Luke-Welling-and-Laura-/182601671091?epid=143581321&hash=item2a83e861b3:g:RT8AAOSwTuJYrLIh', 'Beginning PHP 5 and MySQL: From Novice to Professional\r\nby Gilmore, W. Jason\r\n\r\nLight shelf wear and minimal interior marks. Millions of satisfied customers and climbing. Thriftbooks is the name you can trust, guaranteed. Spend Less.', 'Paperback', 245, '2017-06-22 04:16:15', '2017-06-22 04:36:31', 'covers/php_mysql.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Ruby On Rails', '2017-06-22 01:28:38', '2017-06-22 06:37:34'),
(2, 'HTML 5', '2017-06-22 01:31:34', '2017-06-22 06:36:47');

-- --------------------------------------------------------

--
-- Table structure for table `publishers`
--

CREATE TABLE IF NOT EXISTS `publishers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `publishers`
--

INSERT INTO `publishers` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'O''Reilly Media, Incorporated', '2017-06-22 02:44:11', '2017-06-22 02:44:11'),
(2, 'Course Technology', '2017-06-22 03:23:38', '2017-06-22 03:23:38');

-- --------------------------------------------------------

--
-- Table structure for table `schema_migrations`
--

CREATE TABLE IF NOT EXISTS `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20170621093913'),
('20170621094744'),
('20170621095408'),
('20170621095541'),
('20170621095634'),
('20170622030224');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
