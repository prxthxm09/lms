-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql207.byetcluster.com
-- Generation Time: Feb 27, 2023 at 10:35 AM
-- Server version: 10.3.27-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `epiz_31245415_lib`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `b_id` varchar(255) CHARACTER SET latin1 NOT NULL,
  `booksname` varchar(50) CHARACTER SET latin1 NOT NULL,
  `authorname` varchar(50) CHARACTER SET latin1 NOT NULL,
  `copies` varchar(20) CHARACTER SET latin1 NOT NULL,
  `avl_cpy` int(100) NOT NULL,
  `dept` varchar(50) CHARACTER SET latin1 NOT NULL,
  `file_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `path` varchar(200) CHARACTER SET latin1 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`b_id`, `booksname`, `authorname`, `copies`, `avl_cpy`, `dept`, `file_name`, `path`) VALUES
('CS002', 'Test Book', 'Test Author', '12', 6, 'cse', 'CS002.pdf', 'ebooks/CS002.pdf'),
('CS003', 'Test Book', 'Test Author', '12', 12, 'cse', 'CS003.pdf', 'ebooks/CS003.pdf'),
('CS031', 'learning java', 'Test Author', '12', 12, 'cse', 'CS031.pdf', 'ebooks/CS031.pdf'),
('CS005', 'Test Book', 'Test Author2', '12', 9, 'cse', 'CS005.pdf', 'ebooks/CS005.pdf'),
('CS006', 'Test Book', 'Test Author', '12', 12, 'cse', 'CS006.pdf', 'ebooks/CS006.pdf'),
('CS008', 'Test Book', 'Test Author', '10', 10, 'cse', 'CS008.pdf', 'ebooks/CS008.pdf'),
('CS009', 'Book One', 'Reema Thereja', '12', 11, 'cse', 'CS009.pdf', 'ebooks/CS009.pdf'),
('CS010', 'Test Book', 'Test Author', '10', 10, 'cse', 'CS010.pdf', 'ebooks/CS010.pdf'),
('CS011', 'Test Book', 'Test Author', '1', 1, 'cse', 'CS011.pdf', 'ebooks/CS011.pdf'),
('CS012', 'Test Book', 'Test Author', '1', 1, 'cse', 'CS012.pdf', 'ebooks/CS012.pdf'),
('CS013', 'Test Book', 'Test Author', '12', 12, 'cse', 'CS013.pdf', 'ebooks/CS013.pdf'),
('EE001', 'Test Book', 'Test Author', '12', 12, 'ee', 'EE001.pdf', 'ebooks/EE001.pdf'),
('ME001', 'Test Book', 'Test Author', '12', 12, 'me', 'ME001.pdf', 'ebooks/ME001.pdf'),
('TT001', 'Book One', 'Test Author', '12', 7, 'tt', 'TT001.pdf', 'ebooks/TT001.pdf'),
('CS055', 'Test Book', 'Test Author', '10', 10, 'cse', 'CS055.pdf', 'ebooks/CS055.pdf'),
('B001', 'Let Us c', 'YK', '10', 10, 'cse', 'B001.pdf', 'ebooks/B001.pdf'),
('2', 'EHDFUJ', 'HJH', '72', 72, 'cse', '2.pdf', 'ebooks/2.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `student_book`
--

CREATE TABLE `student_book` (
  `emailid` varchar(200) NOT NULL,
  `book_1_id` varchar(100) NOT NULL,
  `book_1` varchar(100) NOT NULL,
  `recive_date_1` varchar(100) NOT NULL,
  `submisson_date_1` varchar(100) NOT NULL,
  `book_2_id` varchar(100) DEFAULT NULL,
  `book_2` varchar(100) DEFAULT NULL,
  `recive_date_2` varchar(100) DEFAULT NULL,
  `submisson_date_2` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_book`
--

INSERT INTO `student_book` (`emailid`, `book_1_id`, `book_1`, `recive_date_1`, `submisson_date_1`, `book_2_id`, `book_2`, `recive_date_2`, `submisson_date_2`) VALUES
('SHET@GMAIL.COM', 'CS002', 'Test Book', '09-03-2022', '24-03-2022', 'CS005', 'Test Book', '09-03-2022', '24-03-2022'),
('lopa@gmail.com', 'CS001', 'learning Python', '09-03-2022', '24-03-2022', NULL, NULL, NULL, NULL),
('prathamesh@gmil.com', 'CS005', 'Test Book', '14-07-2022', '29-07-2022', NULL, NULL, NULL, NULL),
('karan@gmail.com', 'CS002', 'Test Book', '11-07-2022', '26-07-2022', NULL, NULL, NULL, NULL),
('nithyam@gmail.com', 'CS002', 'Test Book', '14-07-2022', '29-07-2022', NULL, NULL, NULL, NULL),
('abc@gmail.com', 'TT001', 'Book One', '19-07-2022', '', NULL, NULL, NULL, NULL),
('yabJH@gmail.com', 'TT001', 'Book One', '02-08-2022', '17-08-2022', NULL, NULL, NULL, NULL),
('pratham@gmail.com', 'CS002', 'Test Book', '22-08-2022', '', 'TT001', 'Book One', '22-08-2022', ''),
('hello@gmail.com', 'TT001', 'Book One', '07-11-2022', '22-11-2022', 'CS009', 'Book One', '07-11-2022', '22-11-2022'),
('shettygagan88@gmail.com', 'CS005', 'Test Book', '13-02-2023', '28-02-2023', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_registration`
--

CREATE TABLE `student_registration` (
  `id` int(10) NOT NULL,
  `roll` varchar(100) NOT NULL,
  `type` varchar(10) NOT NULL DEFAULT 'student',
  `gender` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `dept` varchar(50) NOT NULL,
  `year` varchar(20) NOT NULL,
  `emailid` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_registration`
--

INSERT INTO `student_registration` (`id`, `roll`, `type`, `gender`, `name`, `dept`, `year`, `emailid`, `password`) VALUES
(1, '001', 'admin', 'm', 'admin', 'blank', 'blank', 'admin', 'admin123'),
(199, '109000000', 'student', 'm', 'SSSSSSS', 'cse', '1st_year', 'sssssss@gmail.com', 'sssssss'),
(200, '1234', 'student', 'm', 'test 3', 'me', '2nd_year', 'test4@gmail.com', '1234'),
(11, '33', 'student', 'm', 'Pratham', 'cse', '3rd_year', 'pratham@gmail.com', '123'),
(197, 'mit', 'student', 'm', 'dheeraj', 'cse', '2nd_year', 'dfsfsff@gmail.com', 'qweasdzxc'),
(198, '1272', 'student', 'm', 'gagan', 'cse', '1st_year', 'shettygagan88@gmail.com', '1234567'),
(196, '345', 'student', 'm', 'hello', 'cse', '1st_year', 'hello@gmail.com', '1234'),
(195, 'rgr', 'student', 'm', 'tg', 'cse', '1st_year', 'rdg@gfd.hdh', 'rgdr'),
(194, '0987654', 'student', 'f', 'laa', 'me', '2nd_year', '12345@gmail.com', '1234567'),
(193, '124567899', 'student', 'f', 'laya', 'cse', '3rd_year', 'raol30117@gmail.com', '1234567'),
(192, 'fgfhgjh', 'student', 'f', 'zsfdghj', 'cse', '3rd_year', 'raol30117@gmail.com', 'ewrtyyu'),
(191, '103cs19041', 'student', 'f', 'rashmi', 'cse', '3rd_year', 'rashmi@gmail.com', '123456789'),
(190, '23', 'student', 'f', 'prajna', 'cse', '3rd_year', 'sudha123@gmail.com', '123456'),
(189, '67', 'student', 'f', 'sudha', 'cse', '3rd_year', 'sudha@gmail.com', '1234556'),
(188, 'hiiiii', 'student', 'f', 'helleo', 'cse', '2nd_year', 'aaaa1@gmail.com', '7890987'),
(187, '111', 'student', 'm', 'karansh', 'cse', '3rd_year', 'karsh@gmail.com', '12345678'),
(36, '103cs18013', 'student', 'm', 'manoj', 'cse', '3rd_year', 'manojneerude@gmail.com', 'Manoj@143'),
(186, '104', 'student', 'm', 'karan s', 'cse', '3rd_year', 'kars@gmail.com', '12345678'),
(39, '103cs18024', 'student', 'f', 'pratheeksha', 'cse', '3rd_year', 'pratheekshakam123@gmail.com', '7899880234'),
(185, '103CS19037', 'student', 'f', 'PUSHPALATHA', 'cse', '3rd_year', 'pushpalatha91623@gmail.com', '123456789'),
(184, '103cs19026', 'student', 'm', 'naren', 'cse', '3rd_year', 'narenmdgowda@mail.com', '12345678'),
(43, '103cs19015', 'student', 'f', 'gouthami', 'cse', '3rd_year', 'gouthamibangera@gmail.com', 'gouthami22032001'),
(183, '103CS19007', 'student', 'm', 'ANDREI', 'cse', '1st_year', 'XXXTENTACION@gmail.com', '123456789'),
(182, '103cs19018', 'student', 'f', 'abcd', 'cse', '3rd_year', 'abcd@gmail.com', 'abcd'),
(181, '12346587', 'student', 'f', 'dar', 'me', '3rd_year', 'dar345@gmail.com', 'rghruhjtr'),
(180, '123556', 'student', 'f', 'rovin', 'ee', '1st_year', 'rovin121@gmail.com', 'ryfjnuj'),
(179, '103', 'student', 'f', 'abhiram', 'me', '2nd_year', 'abhiram123@gmail.com', '8151800'),
(178, '103ccs19058', 'student', 'f', 'vaishali', 'cse', '3rd_year', 'mvaishali860@gmail.com', '12345678'),
(177, '103cs19032', 'student', 'f', 'prapthi', 'cse', '3rd_year', 'prapthi12@gmail.com', '1234567'),
(176, '103cs19035', 'student', 'f', 'prathi', 'cse', '3rd_year', 'prathi@gmail.com', '123456'),
(54, '3', 'student', 'f', 'apoorva', 'cse', '3rd_year', 'apoorvakulal204@gmail.com', 'appu123@'),
(175, '103cs19058', 'student', 'f', 'vaishali', 'cse', '1st_year', 'mvaishali860@gmail.com', '123456'),
(58, '124cs19022', 'student', 'f', 'nagaveni', 'cse', '3rd_year', 'nagavenin266@gmail.com', 'nagu123456'),
(174, '103cs19052', 'student', 'f', 'supreetha', 'cse', '3rd_year', 'supreethachandranaik@gmail.com', '9480953'),
(173, '103cs19004', 'student', 'f', 'bhuvaneshvaridevi', 'me', '2nd_year', 'BHUVI@GMAIL.COM', '123456'),
(61, '124cs19047', 'student', 'f', 'srujana', 'cse', '3rd_year', 'srujugowda213@gmail.com', 'snehanvitha'),
(62, '124', 'student', 'f', 'shalini', 'cse', '3rd_year', 'shalugowda9632@gmail.com', '8197377932'),
(172, '12345', 'student', 'f', 'tashu', 'ee', '3rd_year', 'jin@gmail.com', '123456'),
(171, '98', 'student', 'f', 'njjb8i', 'cse', '3rd_year', 'hhygguiyt@gmail', 'hg6y4ed'),
(170, '76', 'student', 'f', 'dfvghgff', 'cse', '3rd_year', 'hgy6hj@gmail.com', '12356'),
(169, '48', 'student', 'f', 'sudha', 'cse', '3rd_year', 'sisddjgjr@gmail.com', '45ewugdyte3'),
(168, '124cs19055', 'student', 'f', 'Sandhya', 'cse', '3rd_year', 'sandhya@gmail.com', '2581'),
(167, '124cs18014', 'student', 'f', 'Kavya', 'cse', '3rd_year', 'kavya@gmail.com', '8521'),
(166, '124cs19015', 'student', 'f', 'Ramya', 'cse', '3rd_year', 'ramya@gmail.com', '12345'),
(165, '124cs19053', 'student', 'f', 'varsha', 'cse', '3rd_year', 'varsha@gmail.com', 'varsha'),
(164, '12cs19043', 'student', 'f', 'shree', 'cse', '3rd_year', 'shree@gmail.com', 'shree'),
(163, 'lyu,fyu,', 'student', 'f', 'hjdfhd', 'cse', '1st_year', 'kljgljg@gmail.com', 'gsdfnc'),
(162, '16', 'student', 'f', 'lekhana', 'cse', '3rd_year', 'lekhanakulal.lekhu15@gmail.com', '234432'),
(161, '123cs19024', 'student', 'f', 'tejaswini shree', 'cse', '3rd_year', 'tejus12@gmail.com', '123456'),
(160, '15', 'student', 'f', '234567', 'cse', '3rd_year', 'lekhanakulal.lekhu23@gmail.com', '234567891'),
(159, '123cs19023', 'student', 'f', 'tejaswini', 'cse', '3rd_year', 'teju12@gmail.com', '12345'),
(158, '34', 'student', 'm', 'lekhana', 'cse', '3rd_year', 'lekhanakula34@gmail.com', '12345'),
(157, '45', 'student', 'f', 'apoorva', 'cse', '2nd_year', 'appu@gmail.com', '45678'),
(156, '13', 'student', 'f', 'lekhana', 'cse', '3rd_year', 'lekhanakula16l@gmail.com', '1234567'),
(155, '17', 'student', 'f', 'lekhana', 'cse', '3rd_year', 'lekhanakula16l@gmail.com', '12345678'),
(154, '19', 'student', 'f', 'lekhana', 'cse', '3rd_year', 'lekhanakulal@gmail.com', '1234567'),
(153, '9', 'student', 'f', 'prajna', 'cse', '3rd_year', 'deeksha22@gmail.com', 'deeksha123'),
(152, 'rtrtr', 'student', 'm', 'name', 'cse', '1st_year', 'ef@gmail.com', 'gtt'),
(151, '6547', 'student', 'm', 'syuf', 'cse', '2nd_year', 'fhj@gmail.com', 'hj'),
(150, '4', 'student', 'f', 'prajna', 'cse', '3rd_year', 'prajna15@gmail.com', '9876'),
(149, '10', 'student', 'f', 'dishal', 'cse', '3rd_year', 'dishal10@gmail.com', '2468'),
(148, '26', 'student', 'f', 'Nishmitha', 'cse', '3rd_year', 'nishmithat07@gmail.com', '1234'),
(147, '124cs19043', 'student', 'f', 'sonu', 'cse', '3rd_year', 'ganiga12@gmail.com', '12345'),
(146, '22', 'student', 'f', 'bhavya', 'cse', '3rd_year', 'bhavyabhavi14@gmail.com', '56789'),
(145, '124cs19014', 'student', 'f', 'kavya', 'cse', '3rd_year', 'raokavya@gmail.com', '1234'),
(144, '43', 'student', 'f', 'Teena', 'cse', '3rd_year', 'teenamarianunes@gmail.com', '12345678'),
(143, '124cs19011', 'student', 'f', 'divya', 'cse', '1st_year', 'divya@gmail.com', '1234'),
(142, '124cs19008', 'student', 'f', 'deepa', 'cse', '3rd_year', 'deepudinnu547@gmail.com', '12345'),
(141, '44', 'student', 'f', 'Teena', 'cse', '3rd_year', 'teenamarianunes@gmail.com', '1234556'),
(140, '124cs19048', 'student', 'f', 'shreya', 'cse', '3rd_year', 'shreya@gmail.com', 'shreya'),
(139, '124cs19041', 'student', 'f', 'shreya', 'cse', '3rd_year', 'shreya@gmail.com', '123456'),
(138, '11', 'student', 'f', 'aneesha', 'cse', '1st_year', 'anishachandra11@gmail.com', 'aaa111'),
(137, '7', 'student', 'f', 'deeksha', 'cse', '1st_year', 'udeeksha96@gmail.com', 'dee1234'),
(136, '1', 'student', 'f', 'anisha', 'cse', '3rd_year', 'anishachandra15@gmail.com', '112233'),
(135, '123cs123', 'student', 'f', 'ramya', 'cse', '3rd_year', 'ramya@gmail.com', '123456'),
(134, '124cs19033', 'student', 'f', 'roshni', 'cse', '3rd_year', 'roshnikkavoor29@gmail.com', '123456'),
(133, '47', 'student', 'f', 'vinu', 'cse', '3rd_year', 'vithasp012@gmail.com', '9482vini'),
(132, '124cs19007', 'student', 'f', 'dishal', 'cse', '1st_year', 'disha@gmail.com', '1234'),
(131, '124cs20702', 'student', 'f', 'vijetha', 'cse', '3rd_year', 'vijethagkini03@gmail.com', '123456'),
(130, '124cs19031', 'student', 'f', 'rashmi', 'cse', '3rd_year', 'racch82@gmail.com', 'Rashmi@123'),
(129, '124cs19030', 'student', 'f', 'rakshitha', 'cse', '3rd_year', 'abc@gmail.com', 'abs'),
(128, '124cs19042', 'student', 'f', 'sneha', 'cse', '1st_year', 'nambiarsneha77@gmail.com', '1234'),
(127, '45531', 'student', 'm', 'pratham ', 'cse', '1st_year', 'yabJH@gmail.com', '123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`b_id`),
  ADD UNIQUE KEY `b_id` (`b_id`);

--
-- Indexes for table `student_book`
--
ALTER TABLE `student_book`
  ADD PRIMARY KEY (`emailid`);

--
-- Indexes for table `student_registration`
--
ALTER TABLE `student_registration`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roll` (`roll`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student_registration`
--
ALTER TABLE `student_registration`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
