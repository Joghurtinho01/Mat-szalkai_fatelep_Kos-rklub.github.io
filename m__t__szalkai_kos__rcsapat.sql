-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2026. Jún 04. 10:29
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `mátészalkai kosárcsapat`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `csapat`
--

CREATE TABLE `csapat` (
  `csapat_id` int(100) NOT NULL,
  `csapat_nev` varchar(100) DEFAULT NULL,
  `varos` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `csapat`
--

INSERT INTO `csapat` (`csapat_id`, `csapat_nev`, `varos`) VALUES
(1, 'Gábor Ádám', 'Mateszalka'),
(2, 'Perl zoltán', 'Mátészalka'),
(3, 'Nestea Brájen', 'Mátészalka'),
(4, 'Gábor Ádám', 'Mátészalka'),
(5, 'Lebron János', 'Mátészalka'),
(6, 'Multifilter Géza', 'Mátészalka');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `edzo`
--

CREATE TABLE `edzo` (
  `id` int(11) NOT NULL,
  `nev` varchar(32) NOT NULL,
  `beosztas` varchar(30) NOT NULL,
  `csapat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `csapat`
--
ALTER TABLE `csapat`
  ADD PRIMARY KEY (`csapat_id`);

--
-- A tábla indexei `edzo`
--
ALTER TABLE `edzo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `csapat_id` (`csapat_id`);

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `edzo`
--
ALTER TABLE `edzo`
  ADD CONSTRAINT `edzo_ibfk_1` FOREIGN KEY (`csapat_id`) REFERENCES `csapat` (`csapat_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
