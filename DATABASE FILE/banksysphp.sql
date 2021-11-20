SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banksysphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'Babita Saini', 'Vaibhav Saini', 5000, '2021-06-18 4:56:00'),
(2, 'Tejasvi', 'Cloud', 2500, '2021-06-18 4:56:10'),
(3, 'Cloud', 'Tom', 5000, '2021-06-18 4:56:15'),
(4, 'Mount', 'Cloud', 2695, '2021-06-18 4:56:25'),
(5, 'Mat', 'Jerry', 7510, '2021-06-18 4:56:45'),
(6, 'Jerry', 'Christ', 3510, '2021-06-18 4:56:50'),
(7, 'Tom', 'Dummy', 3150, '2021-06-18 4:56:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `gender` varchar(155) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `gender`, `balance`) VALUES
(1, 'Vaibhav Saini', 'vs@gmail.com', 'Male', 500000),
(2, 'Tejasvi', 'ts@gmail.com', 'Female', 40000),
(3, 'Dummy', 'dum@gmail.com', 'Female', 110000),
(4, 'Babita Saini', 'bs@gmail.com', 'Female', 800000),
(5, 'Cloud', 'cloud@gmail.com', 'Female', 127350),
(6, 'Mount', 'mon@gmail.com', 'Male', 80000),
(7, 'John', 'j@gmail.com', 'Male', 69000),
(8, 'Hop', 'hop@gmail.com', 'Male', 21000),
(9, 'Christ', 'chris@gmail.com', 'Male', 90000),
(10, 'Tom', 'tom@gmail.com', 'Male', 40000),
(19, 'Mat', 'mat@gmail.com', 'Male', 40000),
(20, 'Jerry', 'jer@gmail.com', 'Male', 29000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
