-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 22 2024 г., 15:51
-- Версия сервера: 5.7.39
-- Версия PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `425`
--

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `publication_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `title`, `content`, `image`, `publication_date`) VALUES
(1, 'Новость 1', 'Содержание новости 1', 'https://a.d-cd.net/XIAAAgF7V-A-960.jpg', '2023-10-01 10:00:00'),
(2, 'Новость 2', 'Содержание новости 2', 'https://a.d-cd.net/XIAAAgF7V-A-960.jpg', '2023-10-02 11:00:00'),
(3, 'Новость 3', 'Содержание новости 3', 'https://a.d-cd.net/XIAAAgF7V-A-960.jpg', '2023-10-03 12:00:00'),
(4, 'Новость 4', 'Содержание новости 4', 'https://a.d-cd.net/XIAAAgF7V-A-960.jpg', '2023-10-04 13:00:00'),
(5, 'Новость 5', 'Содержание новости 5', 'https://a.d-cd.net/XIAAAgF7V-A-960.jpgэ', '2023-10-05 14:00:00'),
(6, 'Новость 6', 'Содержание новости 6', 'https://a.d-cd.net/XIAAAgF7V-A-960.jpg', '2023-10-06 15:00:00'),
(7, 'Новость 7', 'Содержание новости 7', 'https://a.d-cd.net/XIAAAgF7V-A-960.jpg', '2023-10-07 16:00:00'),
(8, 'Новость 8', 'Содержание новости 8', 'https://a.d-cd.net/XIAAAgF7V-A-960.jpg', '2023-10-08 17:00:00'),
(9, 'Новость 9', 'Содержание новости 9', 'https://a.d-cd.net/XIAAAgF7V-A-960.jpg', '2023-10-09 18:00:00'),
(10, 'Новость 10', 'Содержание новости 10', 'https://a.d-cd.net/XIAAAgF7V-A-960.jpg', '2023-10-10 19:00:00'),
(11, 'Новость 11', 'Содержание новости 11', 'https://a.d-cd.net/XIAAAgF7V-A-960.jpg', '2023-10-11 20:00:00'),
(12, 'Новость 12', 'Содержание новости 12', 'https://a.d-cd.net/XIAAAgF7V-A-960.jpg', '2023-10-12 21:00:00'),
(13, 'Новость 13', 'Содержание новости 13', 'https://a.d-cd.net/XIAAAgF7V-A-960.jpg', '2023-10-13 22:00:00'),
(14, 'Новость 14', 'Содержание новости 14', 'https://a.d-cd.net/XIAAAgF7V-A-960.jpg', '2023-10-14 23:00:00'),
(15, 'Новость 15', 'Содержание новости 15', 'https://a.d-cd.net/XIAAAgF7V-A-960.jpg', '2023-10-15 09:00:00');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
