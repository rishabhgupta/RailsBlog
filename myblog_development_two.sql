-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 29, 2015 at 09:01 PM
-- Server version: 5.6.19-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `myblog_development`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `text` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_articles_on_blog_id` (`blog_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `blog_id`, `title`, `text`, `created_at`, `updated_at`) VALUES
(1, 1, 'Bootstrap 3 Modals', 'Modals are “pop-ups” that are contained within your rendered page, and do not require opening another browser window or tab. You can read more about them and see code examples here.\r\n\r\nFor our application, we are going to use modals to display the todo notes. We need to make our changes in app/views/todos/index.html.erb. Instead of displaying the notes in the table, we will display a link which will activate a modal. If the todo has no notes, there will be no link.', '2015-06-22 11:01:24', '2015-06-26 11:12:41'),
(3, 1, 'Devise Routes', 'The above code, will redirect the user back to the edit page, after the form submits with success. Depending on how you have configured your registrations views (if at all) you may need to move them into a different package.', '2015-06-23 10:59:52', '2015-06-26 11:13:18'),
(4, 1, 'GIT VCS', 'GIT is a distributed version control system', '2015-06-23 12:34:17', '2015-06-23 12:34:17'),
(5, 3, 'ASP.NET MVC 4.0', 'This article is about ASP MVC Architecture.', '2015-06-24 10:22:35', '2015-06-24 10:22:35'),
(6, 3, 'C# Fundamentals', 'C# pronounced as see sharp) is a multi-paradigm programming language encompassing strong typing, imperative, declarative, functional, generic, object-oriented (class-based), and component-oriented programming disciplines. It was developed by Microsoft within its .NET initiative and later approved as a standard by Ecma (ECMA-334) and ISO (ISO/IEC 23270:2006). C# is one of the programming languages designed for the Common Language Infrastructure.', '2015-06-29 13:43:43', '2015-06-29 13:43:43'),
(7, NULL, 'C# Fundamentals', 'C# pronounced as see sharp) is a multi-paradigm programming language encompassing strong typing, imperative, declarative, functional, generic, object-oriented (class-based), and component-oriented programming disciplines. It was developed by Microsoft within its .NET initiative and later approved as a standard by Ecma (ECMA-334) and ISO (ISO/IEC 23270:2006). C# is one of the programming languages designed for the Common Language Infrastructure.', '2015-06-29 13:57:59', '2015-06-29 13:57:59'),
(8, 3, 'XAML Fundamentals', 'Extensible Application Markup Language  is a declarative XML-based language developed by Microsoft that is used for initializing structured values and objects. It is available under Microsoft''s Open Specification Promise.[4] The acronym originally stood for Extensible Avalon Markup Language - Avalon being the code-name for Windows Presentation Foundation', '2015-06-29 14:01:32', '2015-06-29 14:01:32');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE IF NOT EXISTS `blogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `description` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_blogs_on_user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `user_id`, `name`, `subtitle`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'Lifewire', 'All about Ruby on Rails by Rishabh Gupta', 'This blog contains articles on Ruby on Rails and various open source technologies.', '2015-06-29 11:27:11', '2015-06-29 11:27:11'),
(3, 7, 'Rajat''s Blog', 'This blog contains articles on .NET Framework', 'Here you will find articles and tutorials on .NET technologies as well as on other Microsoft Technologies.', '2015-06-29 13:11:05', '2015-06-29 13:56:33'),
(4, 17, 'Aswin''s Blog', 'This blog contains articles on Enterpirse Integration', 'he ECA thus provides a modeling framework for technology neutral business process design followed by implementation mappings onto the chosen architecture and technologies. It requires bi-directional traceability across the specification, implementation and operation.', '2015-06-29 15:16:49', '2015-06-29 15:16:49');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `commenter` varchar(255) DEFAULT NULL,
  `body` text,
  `article_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_comments_on_article_id` (`article_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `commenter`, `body`, `article_id`, `created_at`, `updated_at`) VALUES
(3, 'rishabhgupta@msn.com', 'really helpful', 1, '2015-06-26 04:43:19', '2015-06-26 04:43:19'),
(4, 'rishabhgupta@msn.com', 'this is article is great.', 1, '2015-06-26 10:16:39', '2015-06-26 10:16:39'),
(5, 'rishabhgupta@msn.com', 'nice article rajat, really helpful.', 7, '2015-06-29 13:58:27', '2015-06-29 13:58:27'),
(6, 'rajatbansal@hotmail.com', 'thankyou rishabh', 1, '2015-06-29 14:10:54', '2015-06-29 14:10:54');

-- --------------------------------------------------------

--
-- Table structure for table `responses`
--

CREATE TABLE IF NOT EXISTS `responses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_id` int(11) DEFAULT NULL,
  `commenter` varchar(255) DEFAULT NULL,
  `body` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_responses_on_comment_id` (`comment_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `responses`
--

INSERT INTO `responses` (`id`, `comment_id`, `commenter`, `body`, `created_at`, `updated_at`) VALUES
(2, 3, 'rgdiscover2@gmail.com', 'Its really helped me.', '2015-06-26 10:15:23', '2015-06-26 10:15:23');

-- --------------------------------------------------------

--
-- Table structure for table `schema_migrations`
--

CREATE TABLE IF NOT EXISTS `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20150622104726'),
('20150623110503'),
('20150625102601'),
('20150626092252'),
('20150629074033'),
('20150629101505'),
('20150629133012');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `encrypted_password`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `sign_in_count`, `current_sign_in_at`, `last_sign_in_at`, `current_sign_in_ip`, `last_sign_in_ip`, `created_at`, `updated_at`) VALUES
(1, 'rishabhgupta@msn.com', '$2a$10$.fCiC7FTLY8XQcqCCbxaeerSfhYbJm86Q2RG7eavxsuTzzcyOv6f2', NULL, NULL, NULL, 25, '2015-06-29 14:07:32', '2015-06-29 12:07:37', '127.0.0.1', '127.0.0.1', '2015-06-25 11:02:21', '2015-06-29 14:07:32'),
(4, 'praveenraj@hotmail.com', '$2a$10$jCjvfMboilJ.lOf81YtyYu2lzAhyDkmGQ16LNdkTWMMmXJN/IybYa', NULL, NULL, NULL, 1, '2015-06-29 11:57:50', '2015-06-29 11:57:50', '127.0.0.1', '127.0.0.1', '2015-06-29 11:57:50', '2015-06-29 11:57:50'),
(7, 'rajatbansal@hotmail.com', '$2a$10$E14oqtuZ.RJE97YWwCLpH.aceP35TshBnj9tNxpmhKBzr4TTUnW3e', NULL, NULL, NULL, 4, '2015-06-29 14:09:48', '2015-06-29 14:09:13', '127.0.0.1', '127.0.0.1', '2015-06-29 12:26:40', '2015-06-29 14:09:48'),
(17, 'aswin.sada@hotmail.com', '$2a$10$0d4WRUlF2Hos7JA3OBgf0OLq2KQGjDBroEDoOWWhST7NI4406gYdK', NULL, NULL, NULL, 2, '2015-06-29 15:17:11', '2015-06-29 15:14:26', '127.0.0.1', '127.0.0.1', '2015-06-29 15:14:26', '2015-06-29 15:17:11');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE IF NOT EXISTS `user_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_user_details_on_user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `user_id`, `first_name`, `last_name`, `username`, `age`, `created_at`, `updated_at`) VALUES
(1, 1, 'Rishabh', 'Gupta', 'rishabhgupta', 25, '2015-06-29 08:15:09', '2015-06-29 09:53:59'),
(2, 4, 'Praveen', 'Raj', 'praveenraj', 23, '2015-06-24 00:00:00', '2015-06-18 00:00:00'),
(5, 7, 'Rajat', 'Bansal', 'rajatbansal', 24, '2015-06-29 12:31:18', '2015-06-29 13:48:58'),
(6, 17, 'Aswin', 'Sadaaswin', 'aswinsada', 23, '2015-06-29 15:15:47', '2015-06-29 15:15:47');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `fk_rails_3bf61a60d3` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`);

--
-- Constraints for table `responses`
--
ALTER TABLE `responses`
  ADD CONSTRAINT `fk_rails_8187599354` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
