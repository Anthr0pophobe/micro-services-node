CREATE TABLE `interaction` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_post` int(11) DEFAULT NULL,
  `like` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `text` text,
  `parent_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `attachements` text,
  `likes` int(11) NOT NULL DEFAULT '0',
  `dislike` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `img_url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `users` (`id`, `username`, `mail`, `password`, `img_url`) VALUES
(1, 'Anthropophobe', 'test@test.fr', 'azerty', ''),
(2, 'Ayoubix', 'ljksdhf', 'jqsdkhf', 'lsjdhflqsdjh'),
(4, 'ldsjkfhsldjfh', 'ljksdhf', 'jqsdkhf', 'lsjdhflqsdjh'),
(5, 'tony', 'oui@oui.fr', 'bonjour', ''),
(7, 'tonymslkqdjfmklsdj', 'oui@oui.fr', 'bonjour', ''),
(8, 'mslkdfjqmsdkfjm', 'oui@oui.fr', 'bonjour', ''),
(9, 'cwx', 'oui@oui.fr', 'bonjour', ''),
(10, 'cwxljkhljk', 'oui@oui.fr', 'bonjour', ''),
(11, 'cwxljkhljkkjmsqdkjfmkj', 'oui@oui.fr', '9af32ef4b581335f96fca2fc18f920b6fcf9bc1a3fa57f584c461a76ff346618c242f36b301944551a6454fc72e53fb534db867082674435c96a95decbc75779', '');

ALTER TABLE `interaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_post` (`id_post`);

ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `user_id` (`user_id`);

ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

ALTER TABLE `interaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

ALTER TABLE `interaction`
  ADD CONSTRAINT `interaction_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `interaction_ibfk_2` FOREIGN KEY (`id_post`) REFERENCES `posts` (`id`);

ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `posts_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
