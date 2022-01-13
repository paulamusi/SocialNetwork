-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Erstellungszeit: 13. Jan 2022 um 10:18
-- Server-Version: 10.4.20-MariaDB
-- PHP-Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `social`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `signup_date` date NOT NULL,
  `profile_pic` varchar(255) NOT NULL,
  `num_posts` int(11) NOT NULL,
  `num_likes` int(11) NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `friend_array` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `email`, `password`, `signup_date`, `profile_pic`, `num_posts`, `num_likes`, `user_closed`, `friend_array`) VALUES
(1, 'Paula', 'Musitelli', 'paulita', 'paula@yahoo.com', '1234', '2022-01-09', 'blabla', 1, 1, 'no', ''),
(2, 'Simon', 'Bolivar', 'simon_bolivar', 'Simon@bolivar.com', 'e10adc3949ba59abbe56e057f20f883e', '2022-01-11', 'assets/immages/profile_pics/defaults/head_deep_blue.png', 0, 0, 'no', ','),
(3, 'Juan', 'Delospalotes', 'juan_delospalotes', 'Juan@delospalotes.com', 'e10adc3949ba59abbe56e057f20f883e', '2022-01-11', 'assets/immages/profile_pics/defaults/head_deep_blue.png', 0, 0, 'no', ','),
(4, 'Pedro', 'Picapiedra', 'pedro_picapiedra', 'Pedro@picapiedra.com', 'e10adc3949ba59abbe56e057f20f883e', '2022-01-11', 'assets/immages/profile_pics/defaults/head_deep_blue.png', 0, 0, 'no', ','),
(5, 'Lisa', 'Minelli', 'lisa_minelli', 'Lisa@minelli.com', 'e10adc3949ba59abbe56e057f20f883e', '2022-01-11', 'assets/immages/profile_pics/defaults/head_deep_blue.png', 0, 0, 'no', ','),
(6, 'Paula', 'Musitelli', 'paula_musitelli', 'Pmusi@yahoo.com', 'e10adc3949ba59abbe56e057f20f883e', '2022-01-11', 'assets/immages/profile_pics/defaults/head_deep_blue.png', 0, 0, 'no', ','),
(7, 'Otro', 'Intento', 'otro_intento', 'Otro@intento.com', 'e10adc3949ba59abbe56e057f20f883e', '2022-01-11', 'assets/immages/profile_pics/defaults/head_deep_blue.png', 0, 0, 'no', ','),
(8, 'Pescado', 'Frito', 'pescado_frito', 'Pescado@frito.com', 'e10adc3949ba59abbe56e057f20f883e', '2022-01-11', 'assets/immages/profile_pics/defaults/head_deep_blue.png', 0, 0, 'no', ','),
(9, 'Basta', 'Desto', 'basta_desto', 'Basta@desto.com', 'e10adc3949ba59abbe56e057f20f883e', '2022-01-11', 'assets/immages/profile_pics/defaults/head_deep_blue.png', 0, 0, 'no', ',');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
