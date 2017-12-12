-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Mar 12 Décembre 2017 à 15:38
-- Version du serveur :  5.7.14
-- Version de PHP :  7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `formation`
--

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `id` int(11) NOT NULL,
  `categorie` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `categorie`
--

INSERT INTO `categorie` (`id`, `categorie`) VALUES
(1, 'Categorie A'),
(2, 'Categorie B'),
(3, 'Categorie C');

-- --------------------------------------------------------

--
-- Structure de la table `categorie_livre`
--

CREATE TABLE `categorie_livre` (
  `categorie_id` int(11) NOT NULL,
  `livre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `categorie_livre`
--

INSERT INTO `categorie_livre` (`categorie_id`, `livre_id`) VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5),
(3, 6);

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `firstname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `Operating_system_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `contact`
--

INSERT INTO `contact` (`id`, `firstname`, `lastname`, `email`, `message`, `Operating_system_id`) VALUES
(1, 'Camille', 'BLAIX', 'camille.blaix@gmail.com', '"On se melange?"', 3),
(2, 'Laurence', 'LOUISON', 'laurence.louison@gmail.com', 'Ma toulousaine', 3),
(3, 'Brandon', 'MERCAN', 'mercan.brandon@outlook.fr', 'Master', 2);

-- --------------------------------------------------------

--
-- Structure de la table `contacts_hobbies`
--

CREATE TABLE `contacts_hobbies` (
  `contact_id` int(11) NOT NULL,
  `hobby_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `contacts_hobbies`
--

INSERT INTO `contacts_hobbies` (`contact_id`, `hobby_id`) VALUES
(1, 4),
(1, 5),
(2, 1),
(2, 2),
(2, 3),
(3, 1);

-- --------------------------------------------------------

--
-- Structure de la table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `Course` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Slug` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `course`
--

INSERT INTO `course` (`id`, `Course`, `Slug`) VALUES
(1, 'Developpeur back', 'developpeur_back'),
(2, 'Developpeur front ', 'developpeur_front'),
(3, 'Graphiste web', 'graphiste_web');

-- --------------------------------------------------------

--
-- Structure de la table `courses_module`
--

CREATE TABLE `courses_module` (
  `course_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `courses_module`
--

INSERT INTO `courses_module` (`course_id`, `module_id`) VALUES
(1, 1),
(1, 2);

-- --------------------------------------------------------

--
-- Structure de la table `hobby`
--

CREATE TABLE `hobby` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `hobby`
--

INSERT INTO `hobby` (`id`, `name`) VALUES
(4, 'autre'),
(1, 'cyclisme'),
(2, 'natation'),
(5, 'ping-pong'),
(3, 'running');

-- --------------------------------------------------------

--
-- Structure de la table `livre`
--

CREATE TABLE `livre` (
  `id` int(11) NOT NULL,
  `titre` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `auteur` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `categorie` int(11) DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_de_publication` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `livre`
--

INSERT INTO `livre` (`id`, `titre`, `auteur`, `categorie`, `description`, `image`, `date_de_publication`) VALUES
(1, 'Book1', 'auteur1', 1, 'ceci est une description', 'http://dummyimage.com/400x400/000/fff.jpg&text=book1', '2017-12-12'),
(2, 'Book2', 'auteur2', 1, 'ceci est une description', 'http://dummyimage.com/400x400/000/fff.jpg&text=book2', '2017-12-12'),
(3, 'Book3', 'auteur3', 2, 'ceci est une description', 'http://dummyimage.com/400x400/000/fff.jpg&text=book3', '2017-12-12'),
(4, 'Book4', 'auteur4', 2, 'ceci est une description', 'http://dummyimage.com/400x400/000/fff.jpg&text=book4', '2017-12-12'),
(5, 'Book5', 'auteur5', 3, 'ceci est une description', 'http://dummyimage.com/400x400/000/fff.jpg&text=book5', '2017-12-12'),
(6, 'Book6', 'auteur6', 3, 'ceci est une description', 'http://dummyimage.com/400x400/000/fff.jpg&text=book6', '2017-12-12');

-- --------------------------------------------------------

--
-- Structure de la table `module`
--

CREATE TABLE `module` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `module`
--

INSERT INTO `module` (`id`, `name`) VALUES
(4, 'angular'),
(6, 'bootstrap'),
(5, 'css'),
(7, 'html'),
(1, 'php'),
(2, 'sql'),
(3, 'symfony');

-- --------------------------------------------------------

--
-- Structure de la table `operating_system`
--

CREATE TABLE `operating_system` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `operating_system`
--

INSERT INTO `operating_system` (`id`, `name`) VALUES
(2, 'LINUX '),
(1, 'MAC OS '),
(3, 'Windows ');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_497DD634497DD634` (`categorie`);

--
-- Index pour la table `categorie_livre`
--
ALTER TABLE `categorie_livre`
  ADD PRIMARY KEY (`categorie_id`,`livre_id`),
  ADD KEY `IDX_591BA249BCF5E72D` (`categorie_id`),
  ADD KEY `IDX_591BA24937D925CB` (`livre_id`);

--
-- Index pour la table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_4C62E6388515A2B9` (`Operating_system_id`);

--
-- Index pour la table `contacts_hobbies`
--
ALTER TABLE `contacts_hobbies`
  ADD PRIMARY KEY (`contact_id`,`hobby_id`),
  ADD KEY `IDX_B2623840E7A1254A` (`contact_id`),
  ADD KEY `IDX_B2623840322B2123` (`hobby_id`);

--
-- Index pour la table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_169E6FB911326A8F` (`Course`),
  ADD UNIQUE KEY `UNIQ_169E6FB938AF345C` (`Slug`);

--
-- Index pour la table `courses_module`
--
ALTER TABLE `courses_module`
  ADD PRIMARY KEY (`course_id`,`module_id`),
  ADD KEY `IDX_530DB35E591CC992` (`course_id`),
  ADD KEY `IDX_530DB35EAFC2B591` (`module_id`);

--
-- Index pour la table `hobby`
--
ALTER TABLE `hobby`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_3964F3375E237E06` (`name`);

--
-- Index pour la table `livre`
--
ALTER TABLE `livre`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_AC634F99497DD634` (`categorie`),
  ADD KEY `categorie` (`categorie`);

--
-- Index pour la table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_C2426285E237E06` (`name`);

--
-- Index pour la table `operating_system`
--
ALTER TABLE `operating_system`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_BCF9A7815E237E06` (`name`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `hobby`
--
ALTER TABLE `hobby`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `livre`
--
ALTER TABLE `livre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `module`
--
ALTER TABLE `module`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `operating_system`
--
ALTER TABLE `operating_system`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `categorie_livre`
--
ALTER TABLE `categorie_livre`
  ADD CONSTRAINT `FK_591BA24937D925CB` FOREIGN KEY (`livre_id`) REFERENCES `livre` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_591BA249BCF5E72D` FOREIGN KEY (`categorie_id`) REFERENCES `categorie` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `FK_4C62E6388515A2B9` FOREIGN KEY (`Operating_system_id`) REFERENCES `operating_system` (`id`);

--
-- Contraintes pour la table `contacts_hobbies`
--
ALTER TABLE `contacts_hobbies`
  ADD CONSTRAINT `FK_B2623840322B2123` FOREIGN KEY (`hobby_id`) REFERENCES `hobby` (`id`),
  ADD CONSTRAINT `FK_B2623840E7A1254A` FOREIGN KEY (`contact_id`) REFERENCES `contact` (`id`);

--
-- Contraintes pour la table `courses_module`
--
ALTER TABLE `courses_module`
  ADD CONSTRAINT `FK_530DB35E591CC992` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_530DB35EAFC2B591` FOREIGN KEY (`module_id`) REFERENCES `module` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `livre`
--
ALTER TABLE `livre`
  ADD CONSTRAINT `FK_AC634F99497DD634` FOREIGN KEY (`categorie`) REFERENCES `categorie` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
