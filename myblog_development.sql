
INSERT INTO `articles` (`id`, `title`, `text`, `created_at`, `updated_at`) VALUES
(1, 'First Article', 'This is the first article in my blog', '2015-06-22 11:01:24', '2015-06-22 11:01:24'),
(3, 'Bootstrap 3', 'Using Bootstrap 3 with Rails 4', '2015-06-23 10:59:52', '2015-06-23 11:00:49'),
(4, 'GIT VCS', 'GIT is a distributed version control system', '2015-06-23 12:34:17', '2015-06-23 12:34:17'),
(5, 'ASP.NET MVC 4.0', 'This article is about ASP MVC Architecture.', '2015-06-24 10:22:35', '2015-06-24 10:22:35');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--



INSERT INTO `comments` (`id`, `commenter`, `body`, `article_id`, `created_at`, `updated_at`) VALUES
(1, 'Rishabh Gupta', 'Good article', 1, '2015-06-23 12:29:52', '2015-06-23 12:29:52');

-- --------------------------------------------------------

--
-- Table structure for table `schema_migrations`
--

--
-- Dumping data for table `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20150622104726'),
('20150623110503'),
('20150625102601');

-- --------------------------------------------------------

--
-- Table structure for table `users`

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `encrypted_password`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `sign_in_count`, `current_sign_in_at`, `last_sign_in_at`, `current_sign_in_ip`, `last_sign_in_ip`, `created_at`, `updated_at`) VALUES
(1, 'rishabhgupta@msn.com', '$2a$10$1FPocS5RDLw/fRNfq.cI9u0d9tPLUwXwNl7OOWvqMQyAmIF0mGmZy', 'd6cdc4c9c4b0bd631015374888dc3f16e5169ad5a97ae84a6484b8fe7c3c5c4d', '2015-06-25 11:10:55', NULL, 5, '2015-06-25 13:32:51', '2015-06-25 13:25:48', '127.0.0.1', '127.0.0.1', '2015-06-25 11:02:21', '2015-06-25 13:32:51');

--
-- Constraints for dumped tables
--

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
