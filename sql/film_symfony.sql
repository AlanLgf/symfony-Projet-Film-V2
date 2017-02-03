-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Ven 03 Février 2017 à 09:22
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `film_symfony`
--

-- --------------------------------------------------------

--
-- Structure de la table `film`
--

CREATE TABLE `film` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `synopsis` longtext COLLATE utf8_unicode_ci NOT NULL,
  `date_de_sortie` date NOT NULL,
  `realisateur_id` int(11) DEFAULT NULL,
  `genre_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `film`
--

INSERT INTO `film` (`id`, `titre`, `synopsis`, `date_de_sortie`, `realisateur_id`, `genre_id`) VALUES
(1, 'Avatar', 'L’action se déroule en 21541 sur Pandora, une des lunes de Polyphème, une planète géante gazeuse en orbite autour d\'Alpha Centauri A. L’exolune, recouverte d’une jungle luxuriante, est le théâtre du choc entre des humains, venus exploiter un minerai rare susceptible de résoudre la crise énergétique sur Terre, et la population autochtone, les Na’vis, qui vivent en parfaite symbiose avec leur environnement et tentent de se défendre face à l’invasion militarisée. Un programme est créé par les terriens, le programme Avatar, qui va leur permettre de contrôler des corps Na’vi clonés associés à des gènes humains, afin de s’insérer dans la population et de tenter de négocier avec elle, dans la mesure où le clan Omaticaya est installé dans un gigantesque arbre maison situé sur un des principaux gisements de ce minerai dénommé Unobtainium. Le personnage central de l’histoire est Jake Sully, un marine paraplégique qui, via son avatar, va devoir choisir son camp avec pour enjeu, le destin de la planète.', '2012-10-20', 3, 1),
(2, 'E.T. l\'extra-terrestre', 'Un appareil extraterrestre atterrit en pleine nuit dans les environs de Los Angeles. Ses occupants, botanistes, envoyés sur Terre en mission d\'exploration, recueillent quelques plantes. L\'un d\'eux s\'éloigne du groupe et explore la forêt avant de s\'arrêter, fasciné par les lumières de la ville au loin. C\'est sa première découverte de la civilisation humaine. Mais un groupe d\'hommes en voitures débarque et traque la créature qui tente alors de rejoindre ses semblables. Ces derniers, voulant éviter le contact avec les êtres humains, font décoller le vaisseau et quittent la Terre en toute hâte. L\'extraterrestre désormais seul et apeuré arrive à se frayer un chemin vers un quartier résidentiel où vit une famille en crise : Mary, mère divorcée et ses trois enfants Elliott, Michael et Gertie. Elliott, 10 ans, ne tarde pas à découvrir la créature qui s\'est réfugiée dans son jardin et, après des moments de frayeurs, l\'invite dans sa chambre. Liés par un lien psychique, les deux êtres ne tardent pas à devenir très proches. Elliott baptise son nouvel ami E.T. (Extra-Terrestre). Bientôt aidé par sa petite sœur et son frère aîné, Elliott va alors tenter de garder la présence d\'E.T. secrète. E.T. n\'aspire qu\'à une chose : retrouver les siens par tous les moyens. Il se met alors à construire un appareil de communication, en combinant plusieurs outils et jeux électroniques, et tente d\'appeler l\'espace. Mais sa santé décline et il entraîne également le jeune humain avec lui vers la mort. Au même moment, l\'armée découvre son existence et investit les lieux pour construire un laboratoire de recherches...', '1982-05-26', 5, 1),
(3, 'Harry Potter', 'Après la mort tragique de Lily et James Potter, leur fils Harry est recueilli par sa tante Pétunia, la sœur de Lily et son oncle Vernon. Son oncle et sa tante, possédant une haine féroce envers les parents d\'Harry, le maltraitent et laissent leur fils Dudley l\'humilier. Harry ne sait rien sur ses parents. On lui a toujours dit qu’ils étaient morts dans un accident de voiture. Un jour de juillet, peu avant son onzième anniversaire, Harry reçoit une lettre de Poudlard, l\'école de magie et de sorcellerie, l\'invitant à s\'y présenter pour la rentrée des classes, mais son oncle la lui confisque avant qu\'il ne puisse la lire, ne voulant pas que Harry devienne sorcier. L\'école ne recevant aucune réponse, d\'autres lettres, en nombre croissant, sont envoyées en vain par la directrice-adjointe de Poudlard, Minerva McGonagall. Finalement, le directeur Albus Dumbledore envoie Rubeus Hagrid, un demi-géant, gardien des clés et des lieux à Poudlard, chercher Harry le jour de son anniversaire, le 31 juillet.', '2005-12-01', 1, 2),
(4, 'Jurassic Park', 'John Parker Hammond, le PDG de la puissante compagnie InGen, parvient à donner vie à des dinosaures grâce au clonage et décide de les utiliser dans le cadre d’un parc d\'attractions qu’il compte ouvrir sur une île au large du Costa Rica. Avant l\'ouverture, il fait visiter le parc à un groupe d\'experts pour obtenir leur aval. Pendant la visite, une tempête éclate et un informaticien corrompu par une entreprise rivale en profite pour couper les systèmes de sécurité afin de voler des embryons de dinosaures. En l\'absence de tout système de sécurité pendant plusieurs heures, les dinosaures s\'échappent sans mal, mais le cauchemar des visiteurs ne fait que commencer...', '1993-10-20', 5, 1),
(5, 'Le Seigneur des anneaux', 'Sur la Terre du Milieu, dans la paisible Comté, vit le Hobbit Frodon Sacquet. Comme tous les Hobbits, Frodon est un bon vivant, amoureux de la terre bien cultivée et de la bonne chère. Orphelin alors qu\'il n\'était qu\'un enfant, il s\'est installé à Cul-de-Sac chez son oncle Bilbon, connu de toute la Comté pour les aventures extraordinaires qu\'il a vécues étant jeune et les trésors qu\'il en a tirés. Le jour de ses 111 ans, Bilbon donne une fête grandiose à laquelle est convié le puissant magicien Gandalf le Gris. C\'est en ce jour particulier que Bilbon décide de se retirer chez les Elfes pour y finir sa vie. Il laisse en héritage à Frodon son trou de Hobbit ainsi qu\'un mystérieux anneau qu\'il a autrefois trouvé dans une galerie souterraine des Monts Brumeux et qui a le pouvoir de rendre invisible quiconque le porte à son doigt.', '2005-12-19', 4, 2),
(6, 'The Mask', 'Stanley Ipkiss est un banal employé de banque. Il voue une passion aux cartoons de Tex Avery. Un soir, il trouve un ancien masque doté d\'extraordinaires pouvoirs, qui révèle la personnalité exagérée de son possesseur. Chaque fois qu\'il le met, il devient The Mask, personnage loufoque sûr de lui et plein de ressources. Il espère que ce masque lui permettra de vaincre sa timidité et de conquérir ainsi le cœur de la chanteuse de cabaret Tina Carlyle. Cependant, Tina est la conjointe de Dorian Tyrell, un mafieux qui tente de mettre la main sur le masque. De plus, un policier astucieux, le lieutenant Kellaway, a deviné que Stanley est l\'auteur d\'un vol audacieux. Stanley aura fort à faire pour gagner l\'amour de Tina et se débarrasser à la fois du mafieux et du policier.', '1994-10-26', 2, 3),
(7, 'Titanic', 'Le 10 avril 1912, Rose embarque sur le Titanic à Southampton avec sa mère, Ruth DeWitt Bukater, son fiancé, Caledon Hockley, et leurs domestiques. Pendant ce temps, dans un pub du port, quatre hommes disputent une partie de poker. Deux d\'entre eux ont misé leurs billets de troisième classe pour le Titanic, billets que remportent finalement leurs adversaires, Jack et Fabrizio. Ceux-ci embarquent ainsi sur le paquebot. Alors que commence la traversée, Rose se sent de plus en plus piégée par une haute société qui veut lui faire épouser un homme qu\'elle n\'aime pas. Finalement, le soir du vendredi 12 avril, après le dîner, elle tente de se suicider en sautant de l\'arrière du navire. Jack, qui flânait sur le pont, se précipite à son secours et réussit à la sauver. Lorsque Cal et d\'autres passagers arrivent sur les lieux, ils décident d\'inviter Jack à dîner avec eux en première classe pour le remercier.', '1998-01-07', 3, 4);

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

CREATE TABLE `genre` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `genre`
--

INSERT INTO `genre` (`id`, `nom`) VALUES
(1, 'Science-Fiction'),
(2, 'Fantastique'),
(3, 'Comédie'),
(4, 'Drame');

-- --------------------------------------------------------

--
-- Structure de la table `personne`
--

CREATE TABLE `personne` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_de_naissance` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `personne`
--

INSERT INTO `personne` (`id`, `nom`, `prenom`, `date_de_naissance`) VALUES
(1, 'Columbus', 'Chris', '1958-09-10'),
(2, 'Russell', 'Chuck ', '1952-08-06'),
(3, 'Cameron', 'James ', '1954-08-16'),
(4, 'Jackson', 'Peter ', '1961-10-31'),
(5, 'Spielberg ', 'Steven ', '1946-12-18');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_8244BE22F1D8422E` (`realisateur_id`),
  ADD KEY `IDX_8244BE224296D31F` (`genre_id`);

--
-- Index pour la table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `personne`
--
ALTER TABLE `personne`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `film`
--
ALTER TABLE `film`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `personne`
--
ALTER TABLE `personne`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `film`
--
ALTER TABLE `film`
  ADD CONSTRAINT `FK_8244BE224296D31F` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`id`),
  ADD CONSTRAINT `FK_8244BE22F1D8422E` FOREIGN KEY (`realisateur_id`) REFERENCES `personne` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
