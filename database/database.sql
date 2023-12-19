-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 16, 2023 at 05:08 PM
-- Server version: 5.7.39
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `emmarodam`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `item_id` varchar(255) NOT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `item_price` int(11) DEFAULT NULL,
  `item_created_at` int(11) DEFAULT NULL,
  `item_updated_at` int(11) DEFAULT NULL,
  `item_deleted_at` int(11) DEFAULT NULL,
  `item_created_by_user_fk` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`item_id`, `item_name`, `item_price`, `item_created_at`, `item_updated_at`, `item_deleted_at`, `item_created_by_user_fk`) VALUES
('00889495ae', 'eos', 77099, 1702716272, 0, 0, 'e7b19e3d4c'),
('00e93e98ae', 'saepe', 7724, 1702716272, 0, 0, '9176d85a88'),
('03210fe07f', 'accusamus', 71985, 1702716272, 0, 0, 'bda22c3a40'),
('0637841538', 'sunt', 28116, 1702716272, 0, 0, '151f3d7009'),
('0721b7f8c8', 'magni', 55995, 1702716272, 0, 0, '59e42f6f58'),
('0776f7d826', 'fugiat', 2646, 1702716272, 0, 0, '0c6fdf837a'),
('0aa32cfbf6', 'sed', 2092, 1702716272, 0, 0, '9176d85a88'),
('0ade1b82af', 'aliquam', 77861, 1702716272, 0, 0, 'ecee1ee6fe'),
('0c2531a9e5', 'harum', 72462, 1702716272, 0, 0, '6050c4b188'),
('0eab53828b', 'nihil', 15757, 1702716272, 0, 0, 'ecee1ee6fe'),
('1273a5c136', 'inventore', 84665, 1702716272, 0, 0, '8bfebf951c'),
('15e6518a73', 'esse', 23487, 1702716272, 0, 0, '36872ff60d'),
('181a6330f5', 'fuga', 96185, 1702716272, 0, 0, '6ca30356f5'),
('18790b2300', 'fugit', 64570, 1702716272, 0, 0, 'b780b22ec7'),
('1b2a2bdb01', 'optio', 65969, 1702716272, 0, 0, '89ee02f9b0'),
('1e2ded93d7', 'voluptatibus', 6620, 1702716272, 0, 0, 'bb84427464'),
('235f9f4ee9', 'quasi', 85824, 1702716272, 0, 0, '9176d85a88'),
('24fa363c4f', 'tempora', 46983, 1702716272, 0, 0, '50352755f6'),
('28beb35677', 'dignissimos', 81624, 1702716272, 0, 0, '67ec5883b3'),
('2b3617610c', 'rem', 78138, 1702716272, 0, 0, '8c22aae8d1'),
('2f3ff418aa', 'consectetur', 59837, 1702716272, 0, 0, 'b1478bc60f'),
('2f4196f3c0', 'est', 38010, 1702716272, 0, 0, 'e1a5a2eb8b'),
('30429e855e', 'voluptas', 97604, 1702716272, 0, 0, '44f96c5364'),
('3bffbf7ded', 'provident', 64676, 1702716272, 0, 0, '0c6fdf837a'),
('3d2cc08d97', 'ipsum', 11041, 1702716272, 0, 0, '151f3d7009'),
('3d31355f18', 'ea', 42496, 1702716272, 0, 0, '869b20051b'),
('3f5d2c6134', 'enim', 14271, 1702716272, 0, 0, 'ecee1ee6fe'),
('40221edf16', 'tempore', 9876, 1702716272, 0, 0, '7b17c5165a'),
('4193599027', 'earum', 40713, 1702716272, 0, 0, '6050c4b188'),
('44e909ff35', 'voluptate', 49298, 1702716272, 0, 0, 'bb16040c9d'),
('483c85642c', 'ipsa', 34628, 1702716272, 0, 0, 'c36338299e'),
('4bd57a537d', 'excepturi', 97979, 1702716272, 0, 0, '5690df8b79'),
('5059d84a51', 'non', 1433, 1702716272, 0, 0, 'ecee1ee6fe'),
('53cdd63f11', 'dolores', 68633, 1702716272, 0, 0, '42ed922412'),
('5546cde534', 'ex', 92405, 1702716272, 0, 0, '7a601ec5b4'),
('5a399c43a0', 'itaque', 82662, 1702716272, 0, 0, '5690df8b79'),
('5ce1142fe9', 'eum', 23223, 1702716272, 0, 0, '8fd10d164e'),
('6113b1174f', 'iusto', 3873, 1702716272, 0, 0, 'bda22c3a40'),
('62600e1ff5', 'dolorem', 90164, 1702716272, 0, 0, '5518e62b8b'),
('650a831650', 'quos', 53988, 1702716272, 0, 0, '181f1744cd'),
('66b3926f5f', 'ab', 48232, 1702716272, 0, 0, 'bb16040c9d'),
('672e183a27', 'consequatur', 34272, 1702716272, 0, 0, '869b20051b'),
('68b6ad549d', 'magnam', 23203, 1702716272, 0, 0, 'cafb7385e3'),
('69a4a82ced', 'aperiam', 64233, 1702716272, 0, 0, '2bdb3e0eac'),
('6e1e6b7346', 'numquam', 28519, 1702716272, 0, 0, 'e7b19e3d4c'),
('6f6de24fd7', 'ipsam', 69051, 1702716272, 0, 0, '151f3d7009'),
('71ff811b97', 'vel', 2413, 1702716272, 0, 0, '6c5af2a5da'),
('727a76030a', 'rerum', 94617, 1702716272, 0, 0, '9176d85a88'),
('75a58860a6', 'nostrum', 33206, 1702716272, 0, 0, '7a601ec5b4'),
('784edebddd', 'natus', 90467, 1702716272, 0, 0, 'cafb7385e3'),
('79f6af09a0', 'iure', 3036, 1702716272, 0, 0, 'bac80bc849'),
('7e1ef9b0c5', 'voluptatum', 52705, 1702716272, 0, 0, '151f3d7009'),
('7f931efcd8', 'veritatis', 63381, 1702716272, 0, 0, 'e1a5a2eb8b'),
('80d0b6e891', 'sapiente', 43730, 1702716272, 0, 0, '8fd10d164e'),
('85ce2923ef', 'suscipit', 18076, 1702716272, 0, 0, 'b780b22ec7'),
('87c5c5d182', 'omnis', 95024, 1702716272, 0, 0, '0c6fdf837a'),
('8a3617b8f1', 'ut', 11210, 1702716272, 0, 0, '42ed922412'),
('8cb70ff0c7', 'autem', 1141, 1702716272, 0, 0, 'e1a5a2eb8b'),
('941eac792d', 'quis', 19970, 1702716272, 0, 0, 'ecee1ee6fe'),
('9ca115f113', 'facere', 54590, 1702716272, 0, 0, '101c086f74'),
('9d8e47c3e7', 'qui', 3490, 1702716272, 0, 0, 'b1478bc60f'),
('9e03674d0d', 'perspiciatis', 58662, 1702716272, 0, 0, 'b118444595'),
('9fbb87d83d', 'quia', 67655, 1702716272, 0, 0, '6050c4b188'),
('a038ef09ba', 'illum', 2431, 1702716272, 0, 0, '7a601ec5b4'),
('a339d9b983', 'quod', 68914, 1702716272, 0, 0, 'bb16040c9d'),
('a467d3c3f2', 'nobis', 11479, 1702716272, 0, 0, '50352755f6'),
('a798cbb8a5', 'molestiae', 31324, 1702716272, 0, 0, 'c36338299e'),
('afa95a7b43', 'exercitationem', 29941, 1702716272, 0, 0, '7007dba449'),
('b35ab85eb9', 'accusantium', 1340, 1702716272, 0, 0, '2bdb3e0eac'),
('b644e57f0f', 'dicta', 14163, 1702716272, 0, 0, '9b3a344e9c'),
('b6848cd969', 'officia', 81590, 1702716272, 0, 0, '4073b78907'),
('b7416e0c32', 'sit', 66415, 1702716272, 0, 0, '8c22aae8d1'),
('b9b7fee30b', 'velit', 58831, 1702716272, 0, 0, '59e42f6f58'),
('bb93775bc7', 'officiis', 87119, 1702716272, 0, 0, '8fd10d164e'),
('be32935ef3', 'voluptates', 13531, 1702716272, 0, 0, '6c5af2a5da'),
('c8fa9f14f5', 'iste', 57888, 1702716272, 0, 0, '7b643b8389'),
('ca7d499b40', 'reprehenderit', 32943, 1702716272, 0, 0, '808ef91bb9'),
('cc4d3e96b1', 'voluptatem', 82760, 1702716272, 0, 0, 'c36338299e'),
('cfd2476adb', 'nesciunt', 96926, 1702716272, 0, 0, '7007dba449'),
('d529710b85', 'aut', 27475, 1702716272, 0, 0, '44f96c5364'),
('d690499ff5', 'perferendis', 30531, 1702716272, 0, 0, '0008aa94c3'),
('d7eb77f8f6', 'repellendus', 65761, 1702716272, 0, 0, '5518e62b8b'),
('d9b437f758', 'dolor', 59037, 1702716272, 0, 0, '89ee02f9b0'),
('e128630f92', 'illo', 92326, 1702716272, 0, 0, '6ca30356f5'),
('e1da639d06', 'culpa', 26223, 1702716272, 0, 0, '181f1744cd'),
('e2805e137c', 'alias', 94547, 1702716272, 0, 0, 'd97fef5c9d'),
('e2968ce3b7', 'necessitatibus', 57035, 1702716272, 0, 0, '2bdb3e0eac'),
('e80558fee0', 'a', 77718, 1702716272, 0, 0, '8fd10d164e'),
('ec998b98d1', 'nulla', 6460, 1702716272, 0, 0, '869b20051b'),
('ee8acf4426', 'facilis', 81541, 1702716272, 0, 0, '0c6fdf837a'),
('f0af7a1b3f', 'doloribus', 4489, 1702716272, 0, 0, '928e93ea3d'),
('f3ec37c692', 'et', 13939, 1702716272, 0, 0, '2bdb3e0eac'),
('f4b296226c', 'ullam', 94839, 1702716272, 0, 0, '2bdb3e0eac'),
('f560da322e', 'blanditiis', 38358, 1702716272, 0, 0, '7b643b8389'),
('f7c04bd74d', 'nemo', 78993, 1702716272, 0, 0, '108be91cfb'),
('f913e834cd', 'atque', 12337, 1702716272, 0, 0, '59e42f6f58'),
('f9662b8365', 'ratione', 35153, 1702716272, 0, 0, 'b780b22ec7'),
('fa608dd6ef', 'adipisci', 79146, 1702716272, 0, 0, '808ef91bb9'),
('fbdd3e963a', 'consequuntur', 51526, 1702716272, 0, 0, '89ee02f9b0'),
('fdbffd7437', 'repudiandae', 86954, 1702716272, 0, 0, '42ed922412');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` varchar(255) NOT NULL,
  `order_created_by` varchar(255) DEFAULT NULL,
  `order_delivered_by` varchar(255) DEFAULT NULL,
  `order_created_at` int(11) DEFAULT NULL,
  `order_updated_at` int(11) DEFAULT NULL,
  `order_deleted_at` int(11) DEFAULT NULL,
  `order_delivered_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `order_created_by`, `order_delivered_by`, `order_created_at`, `order_updated_at`, `order_deleted_at`, `order_delivered_at`) VALUES
('020d0fe328', '7a8b409642', '8fd10d164e', 1702716279, 0, 0, 0),
('039fe43721', 'b85f5adc16', 'cf4d19c817', 1702716279, 0, 0, 0),
('040e4d32f6', 'f43bb4d635', '9176d85a88', 1702716279, 0, 0, 0),
('04b2ead3c0', '297edd9d0d', '7b9350d077', 1702716279, 0, 0, 0),
('0e33ce1dc4', '664b3a5b46', '2bdb3e0eac', 1702716279, 0, 0, 0),
('0fbc18c884', 'f082f8654c', '67ec5883b3', 1702716279, 0, 0, 0),
('10b8f7a3d4', '721bf16498', 'cf4d19c817', 1702716279, 0, 0, 0),
('171bfa620c', '72f8e7fe64', '808ef91bb9', 1702716279, 0, 0, 0),
('1a65c394a6', '17239715b0', '7a601ec5b4', 1702716279, 0, 0, 0),
('1ceafbe213', 'f9f01283a5', 'd97fef5c9d', 1702716279, 0, 0, 0),
('1df758e261', '297edd9d0d', 'd97fef5c9d', 1702716279, 0, 0, 0),
('25457e7a11', '72f8e7fe64', '101c086f74', 1702716279, 0, 0, 0),
('25f20a212f', '52bf49ab4a', '151f3d7009', 1702716279, 0, 0, 0),
('286566ec60', '147ede2dc8', '6050c4b188', 1702716279, 0, 0, 0),
('29ebea389e', '17239715b0', '8fd10d164e', 1702716279, 0, 0, 0),
('2abbc92c49', 'bc6b6b10c1', 'b1478bc60f', 1702716279, 0, 0, 0),
('2acc9cbcad', '664b3a5b46', '50352755f6', 1702716279, 0, 0, 0),
('2b72b62c86', '3cbef6d57e', '5690df8b79', 1702716279, 0, 0, 0),
('323aef9344', 'fb65cb9a31', '7007dba449', 1702716279, 0, 0, 0),
('32985672dc', '17239715b0', 'b118444595', 1702716279, 0, 0, 0),
('32eaa5d39b', 'bc6b6b10c1', 'bac80bc849', 1702716279, 0, 0, 0),
('3544c93ae5', 'cec6e5de69', 'e1a5a2eb8b', 1702716279, 0, 0, 0),
('358103e164', 'b607f898c3', 'b780b22ec7', 1702716279, 0, 0, 0),
('38d7ec9de3', '35d29b979e', 'cf4d19c817', 1702716279, 0, 0, 0),
('3edba04e7e', '2e31b6670e', '7a601ec5b4', 1702716279, 0, 0, 0),
('419c873f3b', 'a1c46aeff9', '7007dba449', 1702716279, 0, 0, 0),
('4299d1d4ed', '5bc5bf223a', '36872ff60d', 1702716279, 0, 0, 0),
('42bbf5b8bc', '2a04babe42', '50352755f6', 1702716279, 0, 0, 0),
('430261b32f', '35d29b979e', '7b17c5165a', 1702716279, 0, 0, 0),
('45d8c1fb55', 'f082f8654c', 'cf4d19c817', 1702716279, 0, 0, 0),
('4c238c4824', '1a6a9e7f29', '5690df8b79', 1702716279, 0, 0, 0),
('511fdbf718', '9efebdc824', 'd2f7eb87a6', 1702716279, 0, 0, 0),
('5653879d64', '3cbef6d57e', 'bb84427464', 1702716279, 0, 0, 0),
('5bbf500ba5', 'b6925bc364', '9176d85a88', 1702716279, 0, 0, 0),
('5c81397e7b', '3cbef6d57e', '5518e62b8b', 1702716279, 0, 0, 0),
('5d884a8b4f', 'c3f966b7f1', '44f96c5364', 1702716279, 0, 0, 0),
('5e3a878f3d', '35d29b979e', '8fd10d164e', 1702716279, 0, 0, 0),
('5f8412406a', 'f082f8654c', 'd2f7eb87a6', 1702716279, 0, 0, 0),
('6c14810ca7', '20913d5b2e', '7b9350d077', 1702716279, 0, 0, 0),
('7045daad0d', '192c936065', '89ee02f9b0', 1702716279, 0, 0, 0),
('71a5356b34', 'b9eb9ffc03', '7b17c5165a', 1702716279, 0, 0, 0),
('742a9a6b74', '134feb1d58', '7a601ec5b4', 1702716279, 0, 0, 0),
('744224b3bf', 'b5d1561d13', 'b1478bc60f', 1702716279, 0, 0, 0),
('744ac56979', '3cbef6d57e', '9176d85a88', 1702716279, 0, 0, 0),
('7623938b88', '147ede2dc8', 'ecee1ee6fe', 1702716279, 0, 0, 0),
('7886577c67', '1a6a9e7f29', '108be91cfb', 1702716279, 0, 0, 0),
('7a0c8d4ac7', '56c953b412', '6c5af2a5da', 1702716279, 0, 0, 0),
('7a3ca69ff0', 'ab7305ad48', '151f3d7009', 1702716279, 0, 0, 0),
('7c1577b703', '6fb866bf05', 'b780b22ec7', 1702716279, 0, 0, 0),
('7d2d8c1606', '9e197a2a48', '67ec5883b3', 1702716279, 0, 0, 0),
('7fcf1e02ed', '8329106759', 'b780b22ec7', 1702716279, 0, 0, 0),
('8414d19d3e', '2a04babe42', 'bac80bc849', 1702716279, 0, 0, 0),
('86db623c35', '2568286552', '67ec5883b3', 1702716279, 0, 0, 0),
('87956d817a', 'c2f8a2a48e', '42ed922412', 1702716279, 0, 0, 0),
('8a7381e2f2', '721bf16498', 'b1478bc60f', 1702716279, 0, 0, 0),
('8df2e16967', 'b607f898c3', '8fd10d164e', 1702716279, 0, 0, 0),
('97002bb843', 'c2f8a2a48e', 'bda22c3a40', 1702716279, 0, 0, 0),
('9b04d00482', 'b6925bc364', '8bfebf951c', 1702716279, 0, 0, 0),
('9ce4e8eceb', 'c3f966b7f1', '7007dba449', 1702716279, 0, 0, 0),
('9d22bb2f7b', 'f082f8654c', 'e7b19e3d4c', 1702716279, 0, 0, 0),
('9e514f6f2a', '5e1bf2bd13', '50352755f6', 1702716279, 0, 0, 0),
('9fc1498144', 'bc6b6b10c1', 'bac80bc849', 1702716279, 0, 0, 0),
('a09a4eb35b', '147ede2dc8', 'd97fef5c9d', 1702716279, 0, 0, 0),
('a406eb81b0', '4fdcd02b9c', '59e42f6f58', 1702716279, 0, 0, 0),
('a6d639e0a5', 'cec6e5de69', '8fd10d164e', 1702716279, 0, 0, 0),
('a6f1ad5168', 'bc6b6b10c1', 'b118444595', 1702716279, 0, 0, 0),
('a89cd0c8e1', '17239715b0', '108be91cfb', 1702716279, 0, 0, 0),
('ac4034ab61', 'cec6e5de69', '869b20051b', 1702716279, 0, 0, 0),
('b098f9d510', 'a1c46aeff9', '2bdb3e0eac', 1702716279, 0, 0, 0),
('b5a6b08e04', '56c953b412', 'bda22c3a40', 1702716279, 0, 0, 0),
('b86766a475', 'b6925bc364', 'd2f7eb87a6', 1702716279, 0, 0, 0),
('ba4710d427', '52bf49ab4a', '59e42f6f58', 1702716279, 0, 0, 0),
('bab5d27fbc', '2e31b6670e', 'c36338299e', 1702716279, 0, 0, 0),
('bb532d4694', '4fdcd02b9c', '7b9350d077', 1702716279, 0, 0, 0),
('bf3608d3df', 'b607f898c3', '42ed922412', 1702716279, 0, 0, 0),
('c467eaf02e', 'aa93d172b8', '0c6fdf837a', 1702716279, 0, 0, 0),
('c4edaea67c', '5bc5bf223a', '44f96c5364', 1702716279, 0, 0, 0),
('c740492131', '3dfbb8a6b0', '8c22aae8d1', 1702716279, 0, 0, 0),
('c949f6e8ce', '35d29b979e', '151f3d7009', 1702716279, 0, 0, 0),
('cf43547163', 'ec90f072e1', '59e42f6f58', 1702716279, 0, 0, 0),
('cf65a2cf4d', 'b9eb9ffc03', '2bdb3e0eac', 1702716279, 0, 0, 0),
('d2db827b7b', 'f9f01283a5', '6ca30356f5', 1702716279, 0, 0, 0),
('d50bc1c9d7', '72f8e7fe64', '8fd10d164e', 1702716279, 0, 0, 0),
('d5cd5be7ae', '35c9eca33f', 'c36338299e', 1702716279, 0, 0, 0),
('d661403956', '134feb1d58', '5518e62b8b', 1702716279, 0, 0, 0),
('d85a2578ca', 'cec6e5de69', '44f96c5364', 1702716279, 0, 0, 0),
('d8aab434cf', '52bf49ab4a', '2bdb3e0eac', 1702716279, 0, 0, 0),
('d99d4b42ba', '4fdcd02b9c', '808ef91bb9', 1702716279, 0, 0, 0),
('db0d045eb2', '17239715b0', '869b20051b', 1702716279, 0, 0, 0),
('df83d26841', '721bf16498', '5690df8b79', 1702716279, 0, 0, 0),
('e461f3901d', '192c936065', 'e1a5a2eb8b', 1702716279, 0, 0, 0),
('eb84ef512f', '192c936065', 'bb84427464', 1702716279, 0, 0, 0),
('ede758d9cf', 'b6925bc364', '8c22aae8d1', 1702716279, 0, 0, 0),
('ee503d71bd', '3602663d86', '6050c4b188', 1702716279, 0, 0, 0),
('f0e5289b3a', '8329106759', 'c36338299e', 1702716279, 0, 0, 0),
('f1b6fcb0e4', 'b607f898c3', 'e1a5a2eb8b', 1702716279, 0, 0, 0),
('f6e5d51b4e', 'f43bb4d635', '59e42f6f58', 1702716279, 0, 0, 0),
('f846c254c9', '20913d5b2e', '7b9350d077', 1702716279, 0, 0, 0),
('fa106c3e31', '2568286552', 'bda22c3a40', 1702716279, 0, 0, 0),
('fa47ab7b6b', '3602663d86', '7b9350d077', 1702716279, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `orders_items`
--

CREATE TABLE `orders_items` (
  `orders_items_id` varchar(255) NOT NULL,
  `orders_items_order_fk` varchar(255) DEFAULT NULL,
  `orders_items_item_fk` varchar(255) DEFAULT NULL,
  `orders_items_item_price` int(11) DEFAULT NULL,
  `orders_items_item_quantity` int(11) DEFAULT NULL,
  `orders_items_created_at` int(11) DEFAULT NULL,
  `orders_items_updated_at` int(11) DEFAULT NULL,
  `orders_items_deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders_items`
--

INSERT INTO `orders_items` (`orders_items_id`, `orders_items_order_fk`, `orders_items_item_fk`, `orders_items_item_price`, `orders_items_item_quantity`, `orders_items_created_at`, `orders_items_updated_at`, `orders_items_deleted_at`) VALUES
('0196ef4498', '10b8f7a3d4', '15e6518a73', 81590, 2, 1493878042, 0, 0),
('025d87c4c3', 'a6d639e0a5', 'e2968ce3b7', 71985, 5, 1247519187, 0, 0),
('091dc2f8c6', 'f6e5d51b4e', '6f6de24fd7', 67655, 3, 953079804, 0, 0),
('0ab5939b9f', 'f846c254c9', 'b35ab85eb9', 31324, 1, 1199964779, 0, 0),
('12d9048ee0', '10b8f7a3d4', '0ade1b82af', 87119, 4, 1110012584, 0, 0),
('184857d317', '744ac56979', '53cdd63f11', 14271, 2, 1193690143, 0, 0),
('199ed13cb4', '1df758e261', '7f931efcd8', 94839, 5, 1126144288, 0, 0),
('1d68fb91c8', '5f8412406a', '80d0b6e891', 97604, 3, 1312316392, 0, 0),
('1df19442f3', 'ba4710d427', '00e93e98ae', 13939, 5, 1104551126, 0, 0),
('1e7ed7cf29', 'f6e5d51b4e', 'fdbffd7437', 11210, 3, 127497730, 0, 0),
('1e991a8415', '4c238c4824', '672e183a27', 48232, 2, 795034897, 0, 0),
('27fdb15f87', 'd8aab434cf', 'f4b296226c', 7724, 2, 1310073243, 0, 0),
('2aa924e009', '87956d817a', '9d8e47c3e7', 38358, 4, 882476157, 0, 0),
('337474b005', 'c949f6e8ce', '9e03674d0d', 90164, 2, 418724356, 0, 0),
('393153aa13', '7a0c8d4ac7', 'afa95a7b43', 78138, 1, 825966418, 0, 0),
('3f220e6f5f', '7886577c67', '7f931efcd8', 1340, 5, 1548953790, 0, 0),
('3fc0045cdd', '1ceafbe213', '24fa363c4f', 13531, 4, 1355441526, 0, 0),
('41ef944dce', 'f846c254c9', '79f6af09a0', 59837, 5, 429944143, 0, 0),
('4345ad1515', '10b8f7a3d4', '66b3926f5f', 11479, 1, 570743688, 0, 0),
('44add5a317', '8a7381e2f2', '8cb70ff0c7', 55995, 2, 756332780, 0, 0),
('470ea9399a', 'ba4710d427', 'a038ef09ba', 69051, 2, 1598903509, 0, 0),
('4909ae0ecb', '29ebea389e', 'fbdd3e963a', 58831, 4, 1535901922, 0, 0),
('4c6c61ca5d', 'eb84ef512f', '235f9f4ee9', 11479, 3, 779474180, 0, 0),
('4f143ffa9c', 'fa47ab7b6b', '6113b1174f', 78138, 1, 695671815, 0, 0),
('4f25007dc9', 'd2db827b7b', 'f4b296226c', 19970, 2, 1186322048, 0, 0),
('53092a45c6', '5653879d64', '7e1ef9b0c5', 65969, 3, 509313936, 0, 0),
('57791cc5c4', '419c873f3b', '71ff811b97', 94617, 2, 988559991, 0, 0),
('5a8255a0a2', '7c1577b703', 'f0af7a1b3f', 63381, 1, 888894379, 0, 0),
('5caf70e870', '020d0fe328', 'b644e57f0f', 46983, 1, 1326220682, 0, 0),
('5f0be0dad8', '32eaa5d39b', '784edebddd', 81590, 3, 1361495318, 0, 0),
('61ec07bfd8', 'e461f3901d', 'f9662b8365', 67655, 5, 1191763634, 0, 0),
('6a8eeb2313', '0fbc18c884', '00e93e98ae', 28116, 5, 337946211, 0, 0),
('6c5bc9dcf8', '5f8412406a', '15e6518a73', 64570, 2, 676573478, 0, 0),
('6daac2b341', 'eb84ef512f', '483c85642c', 14163, 5, 944757044, 0, 0),
('73f9bb1ccd', '32eaa5d39b', '0776f7d826', 49298, 4, 1235847081, 0, 0),
('76aa9e0457', '7a3ca69ff0', '9e03674d0d', 92326, 3, 1093552033, 0, 0),
('78c9b2fbd1', '039fe43721', '3d2cc08d97', 30531, 3, 247842313, 0, 0),
('7dd9b91257', 'f846c254c9', '69a4a82ced', 2413, 3, 785389788, 0, 0),
('7eaf79bede', 'cf65a2cf4d', 'b644e57f0f', 51526, 5, 1055016831, 0, 0),
('7f87302126', 'ee503d71bd', 'ec998b98d1', 28116, 4, 937456134, 0, 0),
('8074d4ee4a', '7623938b88', '0c2531a9e5', 82662, 5, 168109093, 0, 0),
('83857bf6d1', '430261b32f', 'd690499ff5', 29941, 3, 1073302825, 0, 0),
('84027715c2', 'fa47ab7b6b', '0ade1b82af', 53988, 4, 258494816, 0, 0),
('879b990311', 'db0d045eb2', 'e2805e137c', 48232, 4, 297526537, 0, 0),
('8c4b5e8980', '744ac56979', '00e93e98ae', 42496, 1, 1613448663, 0, 0),
('8f4b0eadf4', 'a89cd0c8e1', '30429e855e', 90164, 4, 543404398, 0, 0),
('905dc54b81', '8a7381e2f2', '87c5c5d182', 94839, 3, 524171982, 0, 0),
('912cf2a1c3', 'a6d639e0a5', 'fa608dd6ef', 30531, 2, 824957662, 0, 0),
('956228dd87', '1ceafbe213', 'b9b7fee30b', 86954, 2, 854831619, 0, 0),
('977cafd3ea', '039fe43721', 'e1da639d06', 82760, 5, 1420423877, 0, 0),
('9859c2c5d5', 'c467eaf02e', '2f4196f3c0', 38010, 4, 831109147, 0, 0),
('99fc942a91', 'b86766a475', '4193599027', 87119, 2, 1129709794, 0, 0),
('9a57b1e693', '040e4d32f6', 'be32935ef3', 65969, 5, 370566083, 0, 0),
('9d71948f6c', 'ee503d71bd', '181a6330f5', 19970, 4, 1606970086, 0, 0),
('9de8976b5e', '04b2ead3c0', 'f3ec37c692', 11041, 1, 1413159387, 0, 0),
('9fa0a28a52', '6c14810ca7', '9e03674d0d', 46983, 1, 1641072989, 0, 0),
('a404bae6dc', '04b2ead3c0', '2f4196f3c0', 2092, 5, 455723718, 0, 0),
('a4d3158659', '7fcf1e02ed', '5a399c43a0', 95024, 2, 971074474, 0, 0),
('a67654f9d7', 'ac4034ab61', '66b3926f5f', 26223, 3, 1178126640, 0, 0),
('ac23bc2667', '2b72b62c86', 'cc4d3e96b1', 30531, 5, 723347818, 0, 0),
('ad2fd46e45', '71a5356b34', 'a467d3c3f2', 49298, 1, 1370655297, 0, 0),
('ae429e4cf7', 'a6d639e0a5', 'e2805e137c', 34272, 4, 796954204, 0, 0),
('b30bb0a6f4', '7d2d8c1606', '3d31355f18', 72462, 5, 198794887, 0, 0),
('b498ba57c5', '5c81397e7b', '3d2cc08d97', 85824, 2, 757621105, 0, 0),
('b992e8fcb9', 'b098f9d510', '235f9f4ee9', 53988, 4, 1113139831, 0, 0),
('bc7acc47a3', '7a0c8d4ac7', '0ade1b82af', 6460, 3, 114371234, 0, 0),
('bfe4e806d7', '419c873f3b', '30429e855e', 28519, 3, 609610791, 0, 0),
('c0526cc5f9', '9b04d00482', '75a58860a6', 29941, 2, 1614179220, 0, 0),
('c28035502a', '1ceafbe213', '727a76030a', 23203, 2, 1453388942, 0, 0),
('c3004746b9', '04b2ead3c0', '4193599027', 94617, 4, 1597552965, 0, 0),
('c392b6d404', 'df83d26841', '79f6af09a0', 1141, 1, 1660995170, 0, 0),
('c4d4b648e5', 'f846c254c9', 'b9b7fee30b', 53988, 1, 108340670, 0, 0),
('c5869e6b39', 'f846c254c9', '85ce2923ef', 7724, 3, 1216793037, 0, 0),
('c910b9a590', '4c238c4824', 'fdbffd7437', 1141, 4, 227459040, 0, 0),
('c9dd3b5408', '2abbc92c49', '0ade1b82af', 78993, 1, 1464897460, 0, 0),
('ce425e4165', '9d22bb2f7b', '181a6330f5', 68633, 5, 693049144, 0, 0),
('cfd7ca7f56', '4c238c4824', 'cc4d3e96b1', 23223, 2, 1521740007, 0, 0),
('d19673f834', '286566ec60', '24fa363c4f', 23203, 3, 540400782, 0, 0),
('d45da6f567', 'b86766a475', 'e2968ce3b7', 82760, 5, 529070044, 0, 0),
('d7ff27260a', 'd2db827b7b', '235f9f4ee9', 95024, 5, 1347319082, 0, 0),
('d84153db99', 'bb532d4694', 'f560da322e', 26223, 4, 847636040, 0, 0),
('dd34589d2d', 'd5cd5be7ae', 'fa608dd6ef', 77861, 4, 640674518, 0, 0),
('dd7659a727', 'b86766a475', 'c8fa9f14f5', 33206, 3, 1481824870, 0, 0),
('e18f1a2776', '744224b3bf', 'c8fa9f14f5', 6460, 5, 1031736576, 0, 0),
('e3844bd878', '4c238c4824', '9e03674d0d', 18076, 4, 450701747, 0, 0),
('e3ea305a58', 'f6e5d51b4e', '0c2531a9e5', 11041, 5, 1041012349, 0, 0),
('e49d20629d', '323aef9344', 'b6848cd969', 57888, 4, 899220555, 0, 0),
('e53a77f9c8', '020d0fe328', '53cdd63f11', 2092, 4, 854818124, 0, 0),
('e6c0550b16', '29ebea389e', 'f0af7a1b3f', 4489, 1, 477280266, 0, 0),
('e7a5c4f205', '6c14810ca7', '3f5d2c6134', 92405, 3, 1581001845, 0, 0),
('eba487720e', '430261b32f', 'a038ef09ba', 2646, 1, 1609859434, 0, 0),
('ede3843561', '10b8f7a3d4', '7f931efcd8', 19970, 3, 316792727, 0, 0),
('f1e300605f', 'd5cd5be7ae', '3d2cc08d97', 92326, 5, 881499949, 0, 0),
('f234adb1e6', '4c238c4824', '40221edf16', 32943, 4, 827350189, 0, 0),
('f36c4b46a5', '0e33ce1dc4', '2f3ff418aa', 92405, 2, 526720385, 0, 0),
('f5a5b28416', '7c1577b703', '6113b1174f', 68914, 4, 378013550, 0, 0),
('f934ecb81e', 'd661403956', '3d2cc08d97', 1433, 3, 903702285, 0, 0),
('fa1f0b6707', 'c467eaf02e', 'a467d3c3f2', 86954, 4, 768872226, 0, 0),
('fae0901ca6', 'd8aab434cf', '650a831650', 96926, 1, 1416775420, 0, 0),
('fd72b6d3b9', '0fbc18c884', 'e1da639d06', 38010, 5, 516903525, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` varchar(255) NOT NULL,
  `role_name` varchar(20) DEFAULT NULL,
  `role_created_at` int(11) DEFAULT NULL,
  `role_updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `role_name`, `role_created_at`, `role_updated_at`) VALUES
('113201f10aaa410f9b7b9f0a6477b443', 'partner', 1702627418, 0),
('a3280a85612746c38a17465530739090', 'customer', 1702627418, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` varchar(255) NOT NULL,
  `user_name` varchar(20) DEFAULT NULL,
  `user_last_name` varchar(20) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `user_password` text,
  `user_address` varchar(255) DEFAULT NULL,
  `user_role_name` varchar(20) DEFAULT NULL,
  `user_created_at` int(11) DEFAULT NULL,
  `user_updated_at` int(11) DEFAULT NULL,
  `user_deleted_at` int(11) DEFAULT NULL,
  `user_is_blocked` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_last_name`, `user_email`, `user_password`, `user_address`, `user_role_name`, `user_created_at`, `user_updated_at`, `user_deleted_at`, `user_is_blocked`) VALUES
('0008aa94c3', 'Kelton', 'Lubowitz', 'nlowe@berge.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '1956 Hudson Knolls\nWest Carrollport, ND 26872-6842', 'partner', 1702627419, 0, 0, 0),
('0c6fdf837a', 'Madyson', 'Oberbrunner', 'ernser.jameson@gmail.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '87443 Lambert Roads\nWilfridburgh, KY 06193', 'partner', 1702627419, 0, 0, 1),
('101c086f74', 'Cortney', 'Schultz', 'jules.reichert@hotmail.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '874 Boehm River\nWest Melodystad, GA 04494', 'partner', 1702627419, 0, 0, 1),
('108be91cfb', 'Danielle', 'Hills', 'pauline60@hotmail.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '66891 Senger Lane Suite 136\nSouth Laurine, OH 51098-0785', 'partner', 1702627419, 0, 0, 1),
('134feb1d58', 'Nathan', 'Bernier', 'ignacio.hill@hotmail.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '9778 Dalton Street\nEast Ezequiel, OK 01216-9394', 'customer', 1702627419, 0, 0, 1),
('147ede2dc8', 'Conor', 'Bechtelar', 'irving07@smitham.biz', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '42941 Krajcik Mountain Apt. 828\nWest Andretown, RI 69001-8965', 'customer', 1702627419, 0, 0, 1),
('151f3d7009', 'Elisa', 'Schuster', 'kim.terry@gmail.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '84302 Collins Ranch\nNorth Myrtistown, DE 79817-8232', 'partner', 1702627419, 0, 0, 0),
('17239715b0', 'Randall', 'Douglas', 'ystiedemann@aufderhar.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '56698 Lilliana Road\nPort Winnifredmouth, ND 75436', 'customer', 1702627419, 0, 0, 1),
('181f1744cd', 'Gloria', 'Okuneva', 'raina42@gmail.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '5491 Lizzie Ville\nEllenmouth, MO 78462', 'partner', 1702627419, 0, 0, 1),
('192c936065', 'Savanah', 'Hansen', 'vergie.volkman@heaney.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '356 Kemmer Prairie Apt. 196\nSouth Sandrineton, AK 14991-5033', 'customer', 1702627419, 0, 0, 0),
('1a6a9e7f29', 'Sabina', 'Gibson', 'patsy.hegmann@gmail.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '95279 Labadie Via\nWest Hertha, NV 67318-9862', 'customer', 1702627419, 0, 0, 1),
('1c24a92785', 'Carlos', 'Wyman', 'upton.allison@hotmail.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '28408 Reichel Pines Suite 247\nLulafort, WI 29354', 'customer', 1702627419, 0, 0, 0),
('201afbb842', 'Lawson', 'Hackett', 'vtromp@west.org', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '7907 Corkery Forges\nWebsterhaven, AL 45711-3863', 'customer', 1702627419, 0, 0, 1),
('20913d5b2e', 'Eileen', 'Ortiz', 'knienow@hickle.info', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '533 Josefina Court\nNorth Cordeliashire, MS 44301', 'customer', 1702627419, 0, 0, 0),
('2568286552', 'Amos', 'Vandervort', 'ischinner@yahoo.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '926 Cartwright Extension Apt. 110\nIsaiahbury, SC 73402', 'customer', 1702627419, 0, 0, 0),
('297edd9d0d', 'Virginia', 'O\'Keefe', 'alfonso.kuhn@yahoo.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '1553 Cortney Loaf\nEbertmouth, KS 21789', 'customer', 1702627419, 0, 0, 1),
('2a04babe42', 'Sofia', 'Heidenreich', 'desiree.cremin@schuster.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '5978 Yost Loop Suite 077\nAndersonmouth, SC 89314', 'customer', 1702627419, 0, 0, 1),
('2bdb3e0eac', 'Justina', 'Rowe', 'aniyah71@ebert.biz', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '813 Koelpin Well Apt. 102\nZeldamouth, OH 33945', 'partner', 1702627419, 0, 0, 1),
('2e31b6670e', 'Frances', 'Kuhn', 'feest.golda@senger.info', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '98567 Miles Curve\nEast Raquelville, TN 08740-6175', 'customer', 1702627419, 0, 0, 0),
('35c9eca33f', 'Meaghan', 'Heidenreich', 'herzog.anya@koelpin.org', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '3025 Watsica Dale Apt. 341\nRunolfssonfurt, RI 36152-8370', 'customer', 1702627419, 0, 0, 1),
('35d29b979e', 'Virginia', 'Fay', 'ellie16@barrows.net', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '812 Lukas Vista Apt. 851\nPort Israelside, CA 56776', 'customer', 1702627419, 0, 0, 0),
('3602663d86', 'Rosie', 'Wunsch', 'devin.sawayn@nader.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '566 Mark Tunnel\nCourtneybury, AZ 91408', 'customer', 1702627419, 0, 0, 1),
('36872ff60d', 'Bernadette', 'Kulas', 'jsimonis@hotmail.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '64993 Tressa Parkways Apt. 736\nPort Mariam, NJ 05891-6622', 'partner', 1702627419, 0, 0, 0),
('3cbef6d57e', 'Timmy', 'Glover', 'margaret.satterfield@yahoo.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '51628 Alia Glen Suite 545\nPort Lenoramouth, AZ 28478', 'customer', 1702627419, 0, 0, 1),
('3dfbb8a6b0', 'Elyse', 'Hayes', 'aluettgen@hotmail.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '37083 Madeline Stream\nEast Delbert, NY 09350-2413', 'customer', 1702627419, 0, 0, 1),
('4073b78907', 'Dejah', 'Oberbrunner', 'stiedemann.aida@hotmail.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '709 Leonie Tunnel Apt. 285\nLake Justonburgh, MA 68446', 'partner', 1702627419, 0, 0, 0),
('42ed922412', 'Layne', 'Hodkiewicz', 'claire.mckenzie@rodriguez.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '41595 Myrtie Pine\nSouth Mozell, MS 36644-1749', 'partner', 1702627419, 0, 0, 1),
('44f96c5364', 'Zora', 'Towne', 'eleazar57@green.biz', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '136 Keeling Parkways Suite 239\nO\'Haraside, IA 04383-1078', 'partner', 1702627419, 0, 0, 0),
('4fdcd02b9c', 'Eveline', 'Rodriguez', 'adelle46@howe.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '108 Reynolds Drive\nWest Hertaberg, KY 04239', 'customer', 1702627419, 0, 0, 0),
('50352755f6', 'Lawrence', 'Lakin', 'bechtelar.adah@yahoo.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '741 Mante Roads\nPort Melisaport, TX 66828-9789', 'partner', 1702627419, 0, 0, 0),
('52bf49ab4a', 'Marquise', 'Rogahn', 'eileen99@gmail.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '372 Wuckert Underpass Apt. 509\nO\'Haraburgh, DC 51339', 'customer', 1702627419, 0, 0, 0),
('5518e62b8b', 'Westley', 'Ullrich', 'khessel@yahoo.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '707 Cedrick Loaf Apt. 103\nLake Dallinport, MA 37221', 'partner', 1702627419, 0, 0, 0),
('5690df8b79', 'Daren', 'Conroy', 'moore.euna@gmail.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '10518 Rempel Tunnel\nMikeview, AK 95643-6465', 'partner', 1702627419, 0, 0, 0),
('56c953b412', 'Sidney', 'Rutherford', 'alexandrine.ledner@fritsch.net', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '44647 Champlin Knolls\nPort Jaunita, DE 20790-0352', 'customer', 1702627419, 0, 0, 1),
('59e42f6f58', 'Alberta', 'VonRueden', 'alta.cassin@durgan.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '49912 Krystel Villages\nNorth Onie, AZ 36069-0209', 'partner', 1702627419, 0, 0, 1),
('5bc5bf223a', 'Blanche', 'Torphy', 'qbreitenberg@gmail.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '71238 Rippin Freeway\nSouth Ewell, MS 58443-1631', 'customer', 1702627419, 0, 0, 0),
('5d3ce0f3a6', 'Jeffery', 'Ortiz', 'fisher.tess@hotmail.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '4947 Celine Points\nTyraside, WV 22566-6111', 'customer', 1702627419, 0, 0, 1),
('5e1bf2bd13', 'Josiane', 'Kautzer', 'germaine.kling@hotmail.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '9497 Neva Union Suite 242\nWest Greg, AZ 30744-8052', 'customer', 1702627419, 0, 0, 1),
('6050c4b188', 'Davonte', 'Barrows', 'arielle.quitzon@yahoo.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '7636 Luettgen Village Suite 849\nYostburgh, ME 78039', 'partner', 1702627419, 0, 0, 0),
('64474be79ad54b2b8f62164d97ff7ef1', 'Admin', 'Admin', 'admin@company.com', '$2y$10$8YtDUg.ii1I10oXdC.lvqu651bHpnq01Uv/aSMY4.pUTi735D/Cby', 'Admin address', 'admin', 1702627419, 0, 0, 0),
('664b3a5b46', 'Ines', 'Goodwin', 'tbernhard@gmail.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '28101 Abbie Skyway Suite 219\nNorth Jefferyfort, OH 31370', 'customer', 1702627419, 0, 0, 1),
('67ec5883b3', 'Ellsworth', 'Stokes', 'grace.braun@gmail.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '634 Bergstrom Ferry Suite 239\nWest Shaunborough, KS 16656', 'partner', 1702627419, 0, 0, 0),
('6c5af2a5da', 'Aa', 'Aaa', 'aa@aa.dk', '$2y$10$Z.Tvf3j9bBm4FMnO.fns1uLUUmcFd0ulEsNwHKlcyzo1LVFKOmyum', 'Messinavej 13', 'partner', 1702629342, 0, 1702717625, 1),
('6ca30356f5', 'Werner', 'Hyatt', 'thessel@bruen.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '8459 Clifton Course Suite 349\nWest Mikelborough, IA 11586', 'partner', 1702627419, 0, 0, 1),
('6fb866bf05', 'Lowell', 'Bins', 'chloe61@hotmail.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '73349 Therese Turnpike\nEliezerstad, MT 87778-3769', 'customer', 1702627419, 0, 0, 0),
('7007dba449', 'Miguel', 'West', 'daryl64@gmail.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '854 Friesen Pike Apt. 685\nPort Ivy, MT 31404-4418', 'partner', 1702627419, 0, 0, 1),
('721bf16498', 'Pink', 'Bogisich', 'nweimann@schuster.net', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '26155 Robel Gateway\nBennieborough, KS 52009', 'customer', 1702627419, 0, 0, 1),
('72f8e7fe64', 'Alvis', 'Boyle', 'gutmann.hallie@yahoo.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '5326 Mante Track\nEast Jo, WV 58286', 'customer', 1702627419, 0, 0, 1),
('72f976a6a3', 'Ansel', 'Muller', 'oconnell.helen@mann.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '415 Corwin Spur Apt. 618\nWest Gracie, SD 17963-2122', 'customer', 1702627419, 0, 0, 1),
('730f2267ac', 'Sallie', 'Hegmann', 'ubrown@yahoo.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '4086 Aracely Street Apt. 264\nEast Devantetown, ND 85663-7206', 'customer', 1702627419, 0, 0, 0),
('7a601ec5b4', 'Keon', 'Block', 'xterry@kiehn.biz', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '52397 Jaime Island Apt. 376\nPort Maximillia, TN 98835-8207', 'partner', 1702627419, 0, 0, 1),
('7a8b409642', 'Ee', 'Eee', 'emmarodam@gmail.com', '$2y$10$jf6FMLzMMkOQ2uhh7t.5Z.G6pSR85dNvXi/ngMYrf0JlZT6WJer0G', 'Palermovej 11', 'costumer', 1702627508, 0, 0, 0),
('7b17c5165a', 'Manley', 'Mosciski', 'kgoodwin@gmail.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '120 Madonna Drives\nNew Elishaside, CA 66653', 'partner', 1702627419, 0, 0, 0),
('7b643b8389', 'Maya', 'Bosco', 'esmeralda.jenkins@hotmail.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '19710 Tavares Course\nPort Sofiabury, NY 09550-7638', 'partner', 1702627419, 0, 0, 0),
('7b9350d077', 'Dexter', 'Corkery', 'damaris.huel@gmail.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '2373 Annie Lake Suite 370\nPort Cassandre, MD 15083', 'partner', 1702627419, 0, 0, 1),
('808ef91bb9', 'Steve', 'Nolan', 'ohermiston@yahoo.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '723 Eleonore Rapid\nSouth Newell, WA 43632', 'partner', 1702627419, 0, 0, 0),
('8329106759', 'Bernardo', 'Herman', 'donny21@schumm.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '560 Ted Fort\nWest Clarabelleton, NV 28402', 'customer', 1702627419, 0, 0, 0),
('869b20051b', 'Zakary', 'Mante', 'xkris@barton.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '22493 Bernice Inlet Suite 827\nSouth Americo, IL 76376-6379', 'partner', 1702627419, 0, 0, 0),
('89ee02f9b0', 'Bret', 'Borer', 'ispinka@sawayn.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '32030 Shanny Tunnel Apt. 703\nHannamouth, MA 12444-7647', 'partner', 1702627419, 0, 0, 0),
('8bfebf951c', 'Carmen', 'Rolfson', 'acassin@lynch.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '7343 Morar Spring\nNorth Audie, DC 04239', 'partner', 1702627419, 0, 0, 0),
('8c22aae8d1', 'Jane', 'Anderson', 'zakary.romaguera@hotmail.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '665 Rhiannon Run\nWest Loismouth, MD 78964', 'partner', 1702627419, 0, 0, 1),
('8fd10d164e', 'Brock', 'Swift', 'obreitenberg@hotmail.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '8513 Ofelia Mountain\nMcGlynnborough, MT 84597-7738', 'partner', 1702627419, 0, 0, 0),
('9176d85a88', 'Burdette', 'Wisozk', 'mcclure.rosario@hotmail.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '267 Heathcote Stravenue Suite 618\nChristopherfurt, KY 11869-8455', 'partner', 1702627419, 0, 0, 1),
('928e93ea3d', 'Enoch', 'Schultz', 'feest.edgardo@kuhn.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '2323 Green Trail\nSouth Selmerton, ND 59928', 'partner', 1702627419, 0, 0, 1),
('9b3a344e9c', 'Brisa', 'Cruickshank', 'aimee84@heller.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '8967 Dooley Land\nLake Celia, KY 22250-9425', 'partner', 1702627419, 0, 0, 0),
('9e197a2a48', 'Imogene', 'Graham', 'ypollich@yahoo.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '327 Gerhold Glens\nWest Lunaview, ME 72944-3318', 'customer', 1702627419, 0, 0, 1),
('9efebdc824', 'Noel', 'Christiansen', 'ekertzmann@gmail.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '39431 Darrion Rapid\nMarianastad, MN 58305-0722', 'customer', 1702627419, 0, 0, 1),
('a1c46aeff9', 'Devyn', 'McCullough', 'coleman44@brown.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '244 Cummings Cove\nEast Walton, HI 38351-1891', 'customer', 1702627419, 0, 0, 0),
('aa93d172b8', 'May', 'Hahn', 'oconner.lou@gmail.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '788 Hackett Plaza\nRobelshire, MN 88696', 'customer', 1702627419, 0, 0, 0),
('ab7305ad48', 'Janet', 'Wilderman', 'schaden.guiseppe@yahoo.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '222 Romaguera Key\nPort Eltonview, NV 04950-0536', 'customer', 1702627419, 0, 0, 0),
('b118444595', 'Marty', 'Gulgowski', 'altenwerth.sallie@bosco.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '69645 Gerlach Shoal\nPort Charityton, AZ 45707', 'partner', 1702627419, 0, 0, 1),
('b1478bc60f', 'Elenor', 'Harvey', 'bennie.kerluke@gmail.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '5524 Bahringer Park\nHarveyborough, HI 30030', 'partner', 1702627419, 0, 0, 1),
('b5d1561d13', 'Shanny', 'Nikolaus', 'krajcik.etha@gmail.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '26865 Waters Square\nSouth Tressieton, VA 63233', 'customer', 1702627419, 0, 0, 0),
('b607f898c3', 'Elaina', 'Terry', 'hcarroll@goldner.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '6485 Bayer Skyway\nNorth Bartburgh, DE 96752-5868', 'customer', 1702627419, 0, 0, 1),
('b6925bc364', 'Eda', 'Kirlin', 'johnston.jan@waters.net', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '3303 Dell Club Suite 149\nEbonyburgh, MA 57633-7750', 'customer', 1702627419, 0, 0, 1),
('b780b22ec7', 'Angelina', 'Jacobson', 'jewell82@gmail.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '3637 Berge Valley\nUptonfurt, WA 25128', 'partner', 1702627419, 0, 0, 0),
('b7bce1067b', 'Deangelo', 'Lebsack', 'moen.rex@veum.biz', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '46317 Prohaska Park Suite 263\nCollierfurt, AL 42884-2399', 'customer', 1702627419, 0, 0, 0),
('b85f5adc16', 'Ee', 'Ee', 'ee@ee.dk', '$2y$10$muo/UafKJAvEyF8YOK7GAOwsDoZFOikDvqYGYoCkRppAfY.R7hWxy', 'Palermovej 11', 'costumer', 1702716074, 0, 0, 0),
('b9eb9ffc03', 'Leonard', 'Orn', 'mbaumbach@yahoo.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '657 Spinka Island\nJohnsport, IL 93038-7423', 'customer', 1702627419, 0, 0, 1),
('bac80bc849', 'Vince', 'Walsh', 'eda.daniel@gmail.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '2367 Litzy Way Suite 244\nLake Rudyborough, NE 82586', 'partner', 1702627419, 0, 0, 0),
('bb16040c9d', 'Garth', 'Ward', 'talon85@langworth.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '93056 Darwin Roads\nMitchellport, WA 75049-7148', 'partner', 1702627419, 0, 0, 1),
('bb84427464', 'Jeanette', 'Cummings', 'astark@nicolas.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '99325 Jane Villages Apt. 683\nNorth Brionna, WI 66430', 'partner', 1702627419, 0, 0, 0),
('bc6b6b10c1', 'Odie', 'Haley', 'zhayes@funk.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '68694 Legros Glens Apt. 913\nWest Ressietown, NY 14218', 'customer', 1702627419, 0, 0, 1),
('bda22c3a40', 'Kathryne', 'Hudson', 'hillard.green@lebsack.net', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '51879 Kris Creek Suite 134\nBethanyview, KY 26579', 'partner', 1702627419, 0, 0, 0),
('c2f8a2a48e', 'Jorge', 'Dare', 'anikolaus@swaniawski.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '513 Stracke Squares\nHowellfurt, WA 61182-4846', 'customer', 1702627419, 0, 0, 1),
('c36338299e', 'Tara', 'Rosenbaum', 'zoey08@tillman.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '6799 Robel Creek\nSouth Lauriane, MS 92045', 'partner', 1702627419, 0, 0, 0),
('c3f966b7f1', 'Casper', 'Schneider', 'josefa87@yahoo.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '29564 Rau Ports\nLake Dejahfurt, ID 97604', 'customer', 1702627419, 0, 0, 0),
('cafb7385e3', 'Eloy', 'Kassulke', 'tbrekke@hotmail.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '67687 Dario Keys\nPort Rey, VA 60933', 'partner', 1702627419, 0, 0, 0),
('cec6e5de69', 'Clare', 'King', 'gutkowski.emerson@yahoo.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '1989 Suzanne Haven\nWest Lesterview, CT 13610', 'customer', 1702627419, 0, 0, 1),
('cf4d19c817', 'Tiffany', 'Pfeffer', 'august.stamm@littel.net', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '40521 Jenkins Rapids\nGustaveton, MA 44017-4138', 'partner', 1702627419, 0, 0, 1),
('d2f7eb87a6', 'Coleman', 'Stanton', 'jeremy21@torp.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '950 Fisher Fort\nReeceburgh, AR 71587-3114', 'partner', 1702627419, 0, 0, 1),
('d97fef5c9d', 'Forest', 'Shanahan', 'lschneider@deckow.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '766 Pfeffer Stravenue Apt. 473\nWest Francesco, TX 50160', 'partner', 1702627419, 0, 0, 1),
('e1a5a2eb8b', 'George', 'Hermiston', 'mueller.anya@fay.info', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '970 Zelma Harbors Suite 288\nTremayneburgh, OH 61694-8288', 'partner', 1702627419, 0, 0, 0),
('e3ebb43354', 'Ines', 'Herzog', 'oconner.charlotte@vandervort.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '6140 Whitney Ridges Suite 711\nBinsport, MD 26062-7331', 'customer', 1702627419, 0, 0, 0),
('e7b19e3d4c', 'Ericka', 'Bauch', 'bettie.spinka@yahoo.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '31373 Auer Wall Apt. 583\nWest Elvafort, SC 46207', 'partner', 1702627419, 0, 0, 0),
('eba516cf90', 'Johanna', 'Breitenberg', 'lkutch@shields.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '165 Koepp Plains\nDestineehaven, LA 97551-7738', 'customer', 1702627419, 0, 0, 0),
('ec90f072e1', 'Jarvis', 'Gislason', 'kurtis99@aufderhar.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '586 Odessa Crest\nChasitytown, CO 95414', 'customer', 1702627419, 0, 0, 1),
('ecee1ee6fe', 'Francesco', 'Conroy', 'kohler.arnold@funk.biz', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '63995 McLaughlin Cove\nSharonmouth, SC 06072-5382', 'partner', 1702627419, 0, 0, 0),
('f082f8654c', 'Myles', 'Hoppe', 'hhettinger@runte.biz', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '7671 Nader Causeway Suite 826\nStacymouth, MA 36952', 'customer', 1702627419, 0, 0, 1),
('f0e21a7558', 'Jordyn', 'Ziemann', 'tkrajcik@bogan.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '615 Silas Radial Apt. 227\nBalistrerifort, KS 72225-6074', 'customer', 1702627419, 0, 0, 0),
('f1294a30e8', 'Trudie', 'Smith', 'percy.rice@yahoo.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '94255 Rodolfo Pines Suite 072\nWalshshire, GA 10607', 'customer', 1702627419, 0, 0, 1),
('f43bb4d635', 'Rickie', 'Mosciski', 'sjohnson@gmail.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '7306 Eryn Shore\nArchtown, PA 18809', 'customer', 1702627419, 0, 0, 1),
('f9f01283a5', 'Eric', 'Cartwright', 'faustino18@gmail.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '960 Christiansen Canyon\nRicestad, VA 46719-0079', 'customer', 1702627419, 0, 0, 0),
('fb65cb9a31', 'Kenneth', 'Gusikowski', 'gorczany.lauren@yahoo.com', '$2y$10$9PKZKihHUQ3F8uspWYceieqKKKITf3E.3RdKXtmi5.rnZPpC1qfja', '36281 Predovic Lakes Suite 053\nImmanuelfort, UT 82671', 'customer', 1702627419, 0, 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `orders_items`
--
ALTER TABLE `orders_items`
  ADD PRIMARY KEY (`orders_items_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_email` (`user_email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
