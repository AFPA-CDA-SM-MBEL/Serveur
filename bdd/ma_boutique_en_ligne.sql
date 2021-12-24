-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 24, 2021 at 08:43 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ma_boutique_en_ligne`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) UNSIGNED NOT NULL,
  `image` varchar(50) DEFAULT NULL,
  `rating` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `category` enum('Basketball','Tennis','Football','Test') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `image`, `rating`, `category`) VALUES
(1, 'iPhone', 'iPhone is the stylist phone ever', '1500.00', 'iphone.png', 4, 'Test'),
(2, 'Pixel', 'Pixel is the most feature phone ever', '800.00', 'pixel.png', 4, 'Test'),
(3, 'Laptop', 'Laptop is most productive development tool', '2000.00', 'laptop.png', 0, 'Test'),
(4, 'Tablet', 'Tablet is the most useful device ever for meeting', '1500.00', 'tablet.png', 0, 'Test'),
(5, 'Pendrive', 'Pendrive is useful storage medium', '100.00', 'pendrive.png', 0, 'Test'),
(6, 'Floppy Drive', 'Floppy drive is useful rescue storage medium', '21.00', 'floppy.png', 0, 'Test'),
(7, 'Robot', 'Mon robot personnel', '50.00', 'robot.png', 3, 'Test'),
(8, 'Chaussures de foot Adidas', 'Une paire parfaite pour vous les filles qui veulent ressembler à Eugénis le Sommer.', '36.27', 'adidas_3.png', 2, 'Football'),
(9, 'Chaussures de foot Adidas 2020', 'Parfait pour marquer des buts le dimanche midi en championnat de D4, par contre ça ne vous enlèvera pas votre mal de tête.', '123.99', 'adidas_euro_2020.png', 2, 'Football'),
(10, 'Chaussures de foot Predator', 'Tu aimes les défis ? Cette paire est faite pour toi.', '398.99', 'adidas_predator_19.png', 2, 'Football'),
(11, 'Ballon Puma 1', 'Le ballon idéal pour jouer sous la neige.', '98.00', 'ballon_puma_1.png', 2, 'Football'),
(12, 'Ballon Nike', 'Que dire de ce design complètement décoré par Charlotte Ronson !', '1499.99', 'ballon_nike.png', 2, 'Football'),
(13, 'Umbro 2', 'La couleur jaune que vos hommes adorent, mesdames.', '36.00', 'umbro_2.png', 2, 'Football'),
(14, 'Protège tibias adulte', 'Tu tiens a tes cheville protège toi !!!!', '12.00', 'protege_tibias_2.png', 2, 'Football'),
(15, 'Protège tibias enfant', 'Équipement obligatoire pour la pratique du foot de vos loulous.', '16.00', 'protege_tibias_3.png', 2, 'Football'),
(16, 'Ballon de basket Nike', 'Ballon parfait pour les parquets tout doux des salles de sport.', '15.41', 'ballon_de_basket_nike.png', 2, 'Basketball'),
(17, '3 Ballons de basket', 'Le ballon idéal pour jouer sous la neige.', '150.00', '3_ballon_de_basket.png', 5, 'Basketball'),
(18, 'Ballon basketball', 'Que dire de ce design complètement décoré par un styliste de renom Jean Paul Gaultier !!!!', '5500.00', 'ballon_basketball.png', 4, 'Basketball'),
(19, 'Chaussures Fila du 30 au 49', 'Un confort à tout effort.', '87.00', 'chaussures_fila.png', 5, 'Basketball'),
(20, 'Chaussure Jordan du 30 au 49', 'Un grand nom, à part ça, à vous de juger de ce style Jordan.', '87.00', 'chaussures_jordan.png', 2, 'Basketball'),
(21, 'Chaussures Nike du 30 au 49', 'Une légèreté à toute épreuve.', '87.00', 'chaussures_nike.png', 3, 'Basketball'),
(22, 'Kit panier de basket + ballon + pompe', 'Rien de tel qu\'un bon panier pour une partie entre amis ou en solo.', '107.00', 'panier_de_basket_1.png', 5, 'Basketball'),
(23, 'Panier de basket', 'Panier parfait pour un match de pros des dunk.', '241.00', 'panier_de_basket_2.png', 5, 'Basketball'),
(24, 'Panier de basket pour enfant', 'Rien de tel pour le bonheur de vos loulous, parfait pour la découverte de ce super et merveilleux sport.', '187.00', 'panier_de_basket_4.png', 4, 'Basketball'),
(25, 'Lot de 3 balles de tennis', 'Parfait pour remplacer les balles qui nous servent plus.', '10.99', '3_balles.png', 4, 'Tennis'),
(26, 'Sceau de balles', 'Plus besoin de courir après la balle le sceau sera votre allier.', '87.00', 'seau_de_balles.png', 5, 'Tennis'),
(27, 'Chaussettes 36-46', 'Chaussettes douces qui ne collent pas à la peau.', '25.00', 'chaussette_36_46_et_1.png', 4, 'Tennis'),
(28, 'Chaussettes Umbro 36-46', 'Meilleur qualité prix avec une marque qui a fait ses preuves.', '27.00', 'chaussette_36_46_et_2.png', 5, 'Tennis'),
(29, 'Raquette DDC', 'Raquette idéale pour jouer avec des amis pour des parties fun.', '100.00', 'raquette_ddc.png', 4, 'Tennis'),
(30, 'Raquette Don Nay', 'La raquette parfaite pour la découverte du tennis.', '50.00', 'raquette_don_nay.png', 2, 'Tennis'),
(31, '2 raquettes Vermont', 'Envie de jouer un beau tennis en famille ou avec des amis ? C\'est le set qui vous faut !', '200.00', 'set_de_raquette_vermont.png', 3, 'Tennis'),
(32, 'Sac HEAD', 'Sac parfait pour ranger plusieurs raquettes.', '178.00', 'sac_head.png', 4, 'Tennis'),
(33, 'Sac Artengo', 'Les joueurs de tennis pros l\'utilisent tous les jours car sa légèreté et son espace de rangement en fait le numéro 1 du marché.', '87.00', 'sac_tennis.png', 4, 'Tennis'),
(34, 'Sac de tennis Wilson', 'Sac simple pour rangement de matériels occasionnels.', '102.00', 'sac_tennis_wilson_1.png', 2, 'Tennis');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) UNSIGNED NOT NULL,
  `identifiant` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `identifiant` (`identifiant`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
