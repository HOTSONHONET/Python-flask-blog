-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 04, 2020 at 02:28 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blogs`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `sno` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_num` varchar(50) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`sno`, `name`, `email`, `phone_num`, `msg`, `date`) VALUES
(1, 'test_name', 'test_name@gmail.com', '0000000000', 'test_name', '2020-07-31 20:04:11'),
(2, 'test_name_1', 'test_name_1@gmail.com', '1111111111', 'first test message\r\n', '2020-07-31 20:49:52'),
(3, 'test_name_1', 'test_name_1@gmail.com', '1111111111', 'first_post\r\n', '2020-07-31 20:50:06'),
(4, 'Rudra Prasad Dash', 'hotsonhonet@gmail.com', '9937386567', 'This is my first post, ', '2020-08-01 00:00:25'),
(5, 'Rudra Prasad Dash', 'hotsonhonet@gmail.com', '9937386567', 'This is my first post, ', '2020-08-01 00:41:22'),
(6, 'Rudra Prasad Dash', 'hotsonhonet@gmail.com', '9937386567', 'This is my first post, ', '2020-08-01 00:42:36'),
(7, 'Rudra Prasad Dash', 'hotsonhonet@gmail.com', '9937386567', 'This is my first post, ', '2020-08-01 00:46:02'),
(8, 'Harry', 'harry@gmail.com', '9090909090', 'Thank for this website', '2020-08-01 01:59:56'),
(9, 'Harry', 'harry@gmail.com', '9090909090', 'Thank for this website', '2020-08-01 02:01:42'),
(10, 'Harry', 'harry@gmail.com', '9090909090', 'Thank for this website', '2020-08-01 02:08:10'),
(11, 'Ruba Donequi', 'rubadonequi@gmail.com', '0909090909', 'Thanks. This is a great website', '2020-08-01 02:10:20'),
(12, 'Pragyan Dash', 'pragyandash7970970@outlooc.com', '4856235214', 'yoooooo, coool stuff', '2020-08-01 02:11:37'),
(13, 'sdgfasogo', 'jabsfbokabfo@gmila.com', '4859263165', 'jksdbgsnkldngknkwbgjbjsba;bgjkbaksbkjvbgjsabugjkbskjbgkbasjkbgjbasjbdgwuqegbonskldbkjgbskjbgjklbsjkajgfsweguiob', '2020-08-01 02:12:37');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `Title` text NOT NULL,
  `Content` text NOT NULL,
  `Date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `slug` varchar(25) NOT NULL,
  `img_file` varchar(25) NOT NULL,
  `tagline` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `Title`, `Content`, `Date`, `slug`, `img_file`, `tagline`) VALUES
(1, 'Programmer', 'A computer programmer, sometimes called a software developer, a programmer or more recently a coder (especially in more informal contexts), is a person who creates computer software. The term computer programmer can refer to a specialist in one area of computers, or to a generalist who writes code for many kinds of software.\r\n\r\nA programmer\'s most oft-used computer language (e.g., Assembly, COBOL, C, C++, C#, JavaScript, Lisp, Python) may be prefixed to the term programmer. Some who work with web programming languages also prefix their titles with web.\r\n\r\nA range of occupations that involve programming also often require a range of other, similar skills, for example: (software) developer, web developer, mobile applications developer, embedded firmware developer, software engineer, computer scientist, game programmer, game developer and software analyst. The use of the term programmer as applied to these positions is sometimes considered an insulting simplification or even derogatory.', '2020-08-01 11:24:43', 'first-post', 'programmer.jpg', 'for all programmers'),
(2, 'Python(Programming Language)', 'Python is an interpreted, high-level, general-purpose programming language. Created by Guido van Rossum and first released in 1991, Python\'s design philosophy emphasizes code readability with its notable use of significant whitespace. Its language constructs and object-oriented approach aim to help programmers write clear, logical code for small and large-scale projects.[28]\r\n\r\nPython is dynamically typed and garbage-collected. It supports multiple programming paradigms, including structured (particularly, procedural), object-oriented, and functional programming. Python is often described as a \"batteries included\" language due to its comprehensive standard library.[29]\r\n\r\nPython was conceived in the late 1980s as a successor to the ABC language. Python 2.0, released in 2000, introduced features like list comprehensions and a garbage collection system with reference counting.\r\n\r\nPython 3.0, released in 2008, was a major revision of the language that is not completely backward-compatible, and much Python 2 code does not run unmodified on Python 3.\r\n\r\nThe Python 2 language was officially discontinued in 2020 (first planned for 2015), and \"Python 2.7.18 is the last Python 2.7 release and therefore the last Python 2 release.\"[30] No more security patches or other improvements will be released for it.[31][32] With Python 2\'s end-of-life, only Python 3.5.x[33] and later are supported.\r\n\r\nPython interpreters are available for many operating systems. A global community of programmers develops and maintains CPython, a free and open-source[34] reference implementation. A non-profit organization, the Python Software Foundation, manages and directs resources for Python and CPython development.', '2020-08-03 01:27:22', 'python', 'python.jpg', 'for all python programmers'),
(3, 'Flask(Web framework)', 'Flask is a micro web framework written in Python. It is classified as a microframework because it does not require particular tools or libraries. It has no database abstraction layer, form validation, or any other components where pre-existing third-party libraries provide common functions. However, Flask supports extensions that can add application features as if they were implemented in Flask itself. Extensions exist for object-relational mappers, form validation, upload handling, various open authentication technologies and several common framework related tools. Extensions are updated far more frequently than the core Flask program.[4]', '2020-08-03 01:27:22', 'flask-web-framework', 'flask.png', 'for all Flask users'),
(4, 'The C pragramming Language', 'The C Programming Language (sometimes termed K&R, after its authors\' initials) is a computer programming book written by Brian Kernighan and Dennis Ritchie, the latter of whom originally designed and implemented the language, as well as co-designed the Unix operating system with which development of the language was closely intertwined. The book was central to the development and popularization of the C programming language and is still widely read and used today. Because the book was co-authored by the original language designer, and because the first edition of the book served for many years as the de facto standard for the language, the book was regarded by many to be the authoritative reference on C', '2020-08-03 01:39:27', 'c-pragramming', 'C.png', 'for all C programmers'),
(5, 'Neuroscience', 'Neuroscience (or neurobiology) is the scientific study of the nervous system. It combines physiology, anatomy, molecular biology, developmental biology, cytology, mathematical modeling, and psychology to understand the fundamental and emergent properties of neurons and neural circuits. The understanding of the biological basis of learning, memory, behavior, perception, and consciousness has been described by Eric Kandel as the \"ultimate challenge\" of the biological sciences.\r\n\r\nThe scope of neuroscience has broadened over time to include different approaches used to study the nervous system at different scales and the techniques used by neuroscientists have expanded enormously, from molecular and cellular studies of individual neurons to imaging of sensory, motor and cognitive tasks in the brain.', '2020-08-03 01:39:27', 'neuroscience', 'neuroscience.jpg', 'for all neuroscience enthusiast'),
(6, 'Machine Learning', 'Machine learning (ML) is the study of computer algorithms that improve automatically through experience. It is seen as a subset of artificial intelligence. Machine learning algorithms build a mathematical model based on sample data, known as \"training data\", in order to make predictions or decisions without being explicitly programmed to do so. Machine learning algorithms are used in a wide variety of applications, such as email filtering and computer vision, where it is difficult or infeasible to develop conventional algorithms to perform the needed tasks.\r\n\r\nMachine learning is closely related to computational statistics, which focuses on making predictions using computers. The study of mathematical optimization delivers methods, theory and application domains to the field of machine learning. Data mining is a related field of study, focusing on exploratory data analysis through unsupervised learning.[5][6] In its application across business problems, machine learning is also referred to as predictive analytics.', '2020-08-03 01:40:39', 'machine-learning', 'ML.png', 'for all ML devs'),
(7, 'Neural Network', 'A neural network is a network or circuit of neurons, or in a modern sense, an artificial neural network, composed of artificial neurons or nodes. Thus a neural network is either a biological neural network, made up of real biological neurons, or an artificial neural network, for solving artificial intelligence (AI) problems. The connections of the biological neuron are modeled as weights. A positive weight reflects an excitatory connection, while negative values mean inhibitory connections. All inputs are modified by a weight and summed. This activity is referred to as a linear combination. Finally, an activation function controls the amplitude of the output. For example, an acceptable range of output is usually between 0 and 1, or it could be ?1 and 1.\r\n\r\nThese artificial networks may be used for predictive modeling, adaptive control and applications where they can be trained via a dataset. Self-learning resulting from experience can occur within networks, which can derive conclusions from a complex and seemingly unrelated set of information.', '2020-08-04 15:15:02', 'neural-network', 'Neural_Network.jpg', 'Heart of Machine Learning');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
