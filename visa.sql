-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Июл 14 2020 г., 06:43
-- Версия сервера: 5.7.30-0ubuntu0.18.04.1
-- Версия PHP: 7.2.24-0ubuntu0.18.04.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `visa`
--

-- --------------------------------------------------------

--
-- Структура таблицы `tasks`
--

CREATE TABLE `tasks` (
  `id` int(255) NOT NULL,
  `log_user` varchar(255) NOT NULL,
  `task` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tasks`
--

INSERT INTO `tasks` (`id`, `log_user`, `task`) VALUES
(3, 'igor', 'Ð—Ð°ÐºÑ€Ñ‹Ñ‚ÑŒ ÑÐµÑÑÐ¸ÑŽ'),
(5, 'igor', 'ÐšÑƒÑ€ÑÐ¾Ð²Ð°Ñ Ñ€Ð°Ð±Ð¾Ñ‚Ð° '),
(6, 'dessan', 'ÐšÑƒÑ€ÑÐ¾Ð²Ð°Ñ Ñ€Ð°Ð±Ð¾Ñ‚Ð° ');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `login` varchar(100) CHARACTER SET latin1 NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 NOT NULL,
  `parol` varchar(100) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `login`, `email`, `parol`) VALUES
(1, 'pluto', 'plut@mail.ru', 'pluto11'),
(2, 'igor', 'ig@bk.ru', 'igor'),
(3, 'asd', 'asd@mail.ru', 'qwer'),
(4, 'dessan', 'dessanhemrayev@gmail.com', 'dessan1');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login` (`login`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
