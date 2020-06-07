-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 01 juin 2020 à 21:54
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bibliotheque`
--

-- --------------------------------------------------------

--
-- Structure de la table `auteur`
--

CREATE TABLE `auteur` (
  `numAuteur` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prenom` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `editeur`
--

CREATE TABLE `editeur` (
  `numEditeur` int(11) NOT NULL,
  `nomEditeur` int(11) NOT NULL,
  `adresseEditeur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `emprunte`
--

CREATE TABLE `emprunte` (
  `dateEmprunt` date NOT NULL,
  `dateRetour` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `emprunte`
--

INSERT INTO `emprunte` (`dateEmprunt`, `dateRetour`) VALUES
('0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Structure de la table `emprunteur`
--

CREATE TABLE `emprunteur` (
  `numEmprunteur` int(11) NOT NULL,
  `nomEmprunteur` varchar(100) NOT NULL,
  `adresseEmprunteur` varchar(100) NOT NULL,
  `telephone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `exemplaire`
--

CREATE TABLE `exemplaire` (
  `numExemplaire` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `dateAchat` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `motcle`
--

CREATE TABLE `motcle` (
  `numMot` int(11) NOT NULL,
  `mot` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `ouvrage`
--

CREATE TABLE `ouvrage` (
  `numOuvrage` int(11) NOT NULL,
  `titre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `auteur`
--
ALTER TABLE `auteur`
  ADD PRIMARY KEY (`numAuteur`);

--
-- Index pour la table `editeur`
--
ALTER TABLE `editeur`
  ADD PRIMARY KEY (`numEditeur`);

--
-- Index pour la table `emprunte`
--
ALTER TABLE `emprunte`
  ADD KEY `dateEmprunt` (`dateEmprunt`,`dateRetour`);

--
-- Index pour la table `emprunteur`
--
ALTER TABLE `emprunteur`
  ADD PRIMARY KEY (`numEmprunteur`);

--
-- Index pour la table `exemplaire`
--
ALTER TABLE `exemplaire`
  ADD PRIMARY KEY (`numExemplaire`);

--
-- Index pour la table `motcle`
--
ALTER TABLE `motcle`
  ADD PRIMARY KEY (`numMot`);

--
-- Index pour la table `ouvrage`
--
ALTER TABLE `ouvrage`
  ADD PRIMARY KEY (`numOuvrage`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `auteur`
--
ALTER TABLE `auteur`
  MODIFY `numAuteur` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `editeur`
--
ALTER TABLE `editeur`
  MODIFY `numEditeur` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `emprunteur`
--
ALTER TABLE `emprunteur`
  MODIFY `numEmprunteur` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `exemplaire`
--
ALTER TABLE `exemplaire`
  MODIFY `numExemplaire` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `motcle`
--
ALTER TABLE `motcle`
  MODIFY `numMot` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ouvrage`
--
ALTER TABLE `ouvrage`
  MODIFY `numOuvrage` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
