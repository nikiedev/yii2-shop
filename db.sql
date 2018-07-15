-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 15 2018 г., 22:32
-- Версия сервера: 5.7.20
-- Версия PHP: 7.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `yii2basic-shop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `lang` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `title`, `description`, `lang`) VALUES
(1, 'Смартфоны', 'В данной категории находятся все смартфоны', 'ru'),
(2, 'Планшеты', 'В данной категории находятся все планшеты', 'ru'),
(3, 'Ноутбуки', 'В данной категории находятся все ноутбуки', 'ru'),
(4, 'Smartphones', 'In this category contains all smartphones', 'en'),
(5, 'Laptops', 'In this category contains all laptops', 'en'),
(6, 'Notebooks', 'In this category contains all notebooks', 'en');

-- --------------------------------------------------------

--
-- Структура таблицы `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1531236690),
('m180710_095743_create_product_table', 1531236691),
('m180710_095835_create_category_table', 1531236692),
('m180710_095854_create_review_table', 1531236692),
('m180714_171534_add_lang_column_to_product_table', 1531679249),
('m180714_171534_add_product_id_column_to_product_table', 1531594792),
('m180715_181242_add_lang_column_to_category_table', 1531679321);

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `photo` varchar(255) DEFAULT NULL,
  `price` decimal(18,2) DEFAULT NULL,
  `lang` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `title`, `description`, `photo`, `price`, `lang`, `category_id`) VALUES
(1, 'iPhone 6', 'Описание смартфона iPhone 6. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare sem sed nisl dignissim, facilisis dapibus lacus vulputate. Sed lacinia lacinia magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare sem sed nisl dignissim, facilisis dapibus lacus vulputate. Sed lacinia lacinia magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare sem sed nisl dignissim, facilisis dapibus lacus vulputate. Sed lacinia lacinia magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare sem sed nisl dignissim, facilisis dapibus lacus vulputate. Sed lacinia lacinia magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare sem sed nisl dignissim, facilisis dapibus lacus vulputate. Sed lacinia lacinia magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare sem sed nisl dignissim, facilisis dapibus lacus vulputate. Sed lacinia lacinia magna.', '96a7c691f8293bf6d510ef9509659ca3.jpg', '455.55', 'ru', 1),
(2, 'HTC One', 'Описание смартфона HTC One. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare sem sed nisl dignissim, facilisis dapibus lacus vulputate. Sed lacinia lacinia magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare sem sed nisl dignissim, facilisis dapibus lacus vulputate. Sed lacinia lacinia magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare sem sed nisl dignissim, facilisis dapibus lacus vulputate. Sed lacinia lacinia magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare sem sed nisl dignissim, facilisis dapibus lacus vulputate. Sed lacinia lacinia magna.  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare sem sed nisl dignissim, facilisis dapibus lacus vulputate. Sed lacinia lacinia magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare sem sed nisl dignissim, facilisis dapibus lacus vulputate. Sed lacinia lacinia magna.', 'b4c79d0bf0491beb09c91d284665d7db.jpg', '599.49', 'ru', 1),
(3, 'Sony Xperia', 'Описание смартфона Sony Xperia. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare sem sed nisl dignissim, facilisis dapibus lacus vulputate. Sed lacinia lacinia magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare sem sed nisl dignissim, facilisis dapibus lacus vulputate. Sed lacinia lacinia magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare sem sed nisl dignissim, facilisis dapibus lacus vulputate. Sed lacinia lacinia magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare sem sed nisl dignissim, facilisis dapibus lacus vulputate. Sed lacinia lacinia magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare sem sed nisl dignissim, facilisis dapibus lacus vulputate. Sed lacinia lacinia magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare sem sed nisl dignissim, facilisis dapibus lacus vulputate. Sed lacinia lacinia magna.', '37c5377ec11d8621a6bd852b12fb141e.jpg', '299.99', 'ru', 1),
(4, 'iPhone 6', 'Description smartphone iPhone 6. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare sem sed nisl dignissim, facilisis dapibus lacus vulputate. Sed lacinia lacinia magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare sem sed nisl dignissim, facilisis dapibus lacus vulputate. Sed lacinia lacinia magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare sem sed nisl dignissim, facilisis dapibus lacus vulputate. Sed lacinia lacinia magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare sem sed nisl dignissim, facilisis dapibus lacus vulputate. Sed lacinia lacinia magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare sem sed nisl dignissim, facilisis dapibus lacus vulputate. Sed lacinia lacinia magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare sem sed nisl dignissim, facilisis dapibus lacus vulputate. Sed lacinia lacinia magna.', '96a7c691f8293bf6d510ef9509659ca3.jpg', '455.55', 'en', 1),
(5, 'HTC One', 'Description smartphone HTC One. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare sem sed nisl dignissim, facilisis dapibus lacus vulputate. Sed lacinia lacinia magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare sem sed nisl dignissim, facilisis dapibus lacus vulputate. Sed lacinia lacinia magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare sem sed nisl dignissim, facilisis dapibus lacus vulputate. Sed lacinia lacinia magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare sem sed nisl dignissim, facilisis dapibus lacus vulputate. Sed lacinia lacinia magna.  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare sem sed nisl dignissim, facilisis dapibus lacus vulputate. Sed lacinia lacinia magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare sem sed nisl dignissim, facilisis dapibus lacus vulputate. Sed lacinia lacinia magna.', 'b4c79d0bf0491beb09c91d284665d7db.jpg', '599.49', 'en', 1),
(6, 'Sony Xperia', 'Description smartphone Sony Xperia. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare sem sed nisl dignissim, facilisis dapibus lacus vulputate. Sed lacinia lacinia magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare sem sed nisl dignissim, facilisis dapibus lacus vulputate. Sed lacinia lacinia magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare sem sed nisl dignissim, facilisis dapibus lacus vulputate. Sed lacinia lacinia magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare sem sed nisl dignissim, facilisis dapibus lacus vulputate. Sed lacinia lacinia magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare sem sed nisl dignissim, facilisis dapibus lacus vulputate. Sed lacinia lacinia magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare sem sed nisl dignissim, facilisis dapibus lacus vulputate. Sed lacinia lacinia magna.', '37c5377ec11d8621a6bd852b12fb141e.jpg', '299.99', 'en', 1),
(7, 'Acer', 'Описание планшета Acer. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare sem sed nisl dignissim, facilisis dapibus lacus vulputate. Sed lacinia lacinia magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare sem sed nisl dignissim, facilisis dapibus lacus vulputate. Sed lacinia lacinia magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare sem sed nisl dignissim, facilisis dapibus lacus vulputate. Sed lacinia lacinia magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare sem sed nisl dignissim, facilisis dapibus lacus vulputate. Sed lacinia lacinia magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare sem sed nisl dignissim, facilisis dapibus lacus vulputate. Sed lacinia lacinia magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare sem sed nisl dignissim, facilisis dapibus lacus vulputate. Sed lacinia lacinia magna.', '96a7c691f8293bf6d510ef9509659ca3.jpg', '455.55', 'ru', 2),
(8, 'Lenovo', 'Описание планшета Lenovo. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare sem sed nisl dignissim, facilisis dapibus lacus vulputate. Sed lacinia lacinia magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare sem sed nisl dignissim, facilisis dapibus lacus vulputate. Sed lacinia lacinia magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare sem sed nisl dignissim, facilisis dapibus lacus vulputate. Sed lacinia lacinia magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare sem sed nisl dignissim, facilisis dapibus lacus vulputate. Sed lacinia lacinia magna.  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare sem sed nisl dignissim, facilisis dapibus lacus vulputate. Sed lacinia lacinia magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare sem sed nisl dignissim, facilisis dapibus lacus vulputate. Sed lacinia lacinia magna.', 'b4c79d0bf0491beb09c91d284665d7db.jpg', '599.49', 'ru', 2),
(9, 'Asus', 'Описание ноутбука Asus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare sem sed nisl dignissim, facilisis dapibus lacus vulputate. Sed lacinia lacinia magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare sem sed nisl dignissim, facilisis dapibus lacus vulputate. Sed lacinia lacinia magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare sem sed nisl dignissim, facilisis dapibus lacus vulputate. Sed lacinia lacinia magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare sem sed nisl dignissim, facilisis dapibus lacus vulputate. Sed lacinia lacinia magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare sem sed nisl dignissim, facilisis dapibus lacus vulputate. Sed lacinia lacinia magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare sem sed nisl dignissim, facilisis dapibus lacus vulputate. Sed lacinia lacinia magna.', '37c5377ec11d8621a6bd852b12fb141e.jpg', '299.99', 'ru', 3),
(10, 'Acer', 'Description laptop Acer. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare sem sed nisl dignissim, facilisis dapibus lacus vulputate. Sed lacinia lacinia magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare sem sed nisl dignissim, facilisis dapibus lacus vulputate. Sed lacinia lacinia magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare sem sed nisl dignissim, facilisis dapibus lacus vulputate. Sed lacinia lacinia magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare sem sed nisl dignissim, facilisis dapibus lacus vulputate. Sed lacinia lacinia magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare sem sed nisl dignissim, facilisis dapibus lacus vulputate. Sed lacinia lacinia magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare sem sed nisl dignissim, facilisis dapibus lacus vulputate. Sed lacinia lacinia magna.', '96a7c691f8293bf6d510ef9509659ca3.jpg', '455.55', 'en', 2),
(11, 'Lenovo', 'Description laptop Lenovo. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare sem sed nisl dignissim, facilisis dapibus lacus vulputate. Sed lacinia lacinia magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare sem sed nisl dignissim, facilisis dapibus lacus vulputate. Sed lacinia lacinia magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare sem sed nisl dignissim, facilisis dapibus lacus vulputate. Sed lacinia lacinia magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare sem sed nisl dignissim, facilisis dapibus lacus vulputate. Sed lacinia lacinia magna.  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare sem sed nisl dignissim, facilisis dapibus lacus vulputate. Sed lacinia lacinia magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare sem sed nisl dignissim, facilisis dapibus lacus vulputate. Sed lacinia lacinia magna.', 'b4c79d0bf0491beb09c91d284665d7db.jpg', '599.49', 'en', 2),
(12, 'Asus', 'Description Notebook Asus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare sem sed nisl dignissim, facilisis dapibus lacus vulputate. Sed lacinia lacinia magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare sem sed nisl dignissim, facilisis dapibus lacus vulputate. Sed lacinia lacinia magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare sem sed nisl dignissim, facilisis dapibus lacus vulputate. Sed lacinia lacinia magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare sem sed nisl dignissim, facilisis dapibus lacus vulputate. Sed lacinia lacinia magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare sem sed nisl dignissim, facilisis dapibus lacus vulputate. Sed lacinia lacinia magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare sem sed nisl dignissim, facilisis dapibus lacus vulputate. Sed lacinia lacinia magna.', '37c5377ec11d8621a6bd852b12fb141e.jpg', '299.99', 'en', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `published` date DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `review_text` text,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `review`
--

INSERT INTO `review` (`id`, `published`, `user_name`, `user_email`, `review_text`, `product_id`) VALUES
(1, '2018-07-12', 'Гость 1', 'guest1@gmail.com', 'Отзыв 1-го гостя: +', 1),
(2, '2018-07-11', 'Гость 2', 'guest2@gmail.com', 'Комментарий гостя 2: -', 1),
(4, '2018-07-12', 'Гость 1', 'guest1@gmail.com', '3434', 1),
(5, '2018-07-12', 'Гость 1', 'guest1@gmail.com', 'test', 1),
(6, '2018-07-12', 'Гость 1', 'guest1@gmail.com', 'teset', 1),
(7, '2018-07-12', 'Гость 1', 'guest1@gmail.com', 'test', 1),
(8, '2018-07-13', 'Гость 1', 'guest1@gmail.com', 'test demo', 2),
(9, '2018-07-13', 'Гость 2', 'guest2@gmail.com', 'Положительный отзыв))', 2),
(10, '2018-07-13', 'Гость 3', 'guest3@gmail.com', 'текст 3', 2),
(11, '2018-07-13', 'Гость 4', 'guest4@gmail.com', 'Текст 4', 2),
(12, '2018-07-13', 'Гость 5', 'guest5@gmail.com', 'текст 5', 2),
(14, '2018-07-15', 'Guest 1', 'guest1@gmail.com', 'this is a review of a guest 1', 4);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_product_id` (`product_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `fk_product_id` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
