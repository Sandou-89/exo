-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 01 juin 2020 à 21:56
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
-- Base de données : `cliniquev`
--

-- --------------------------------------------------------

--
-- Structure de la table `animal`
--

CREATE TABLE `animal` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `DateNaissance` date NOT NULL,
  `Datedeces` date NOT NULL,
  `idproprietaire` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `chat`
--

CREATE TABLE `chat` (
  `idAnimal` int(11) NOT NULL,
  `idRace` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `chien`
--

CREATE TABLE `chien` (
  `idAnimal` int(11) NOT NULL,
  `taille` int(11) NOT NULL,
  `poids` int(11) NOT NULL,
  `idRace` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `dossier`
--

CREATE TABLE `dossier` (
  `id` int(11) NOT NULL,
  `antecedants` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `effectuer`
--

CREATE TABLE `effectuer` (
  `idGarde` int(11) NOT NULL,
  `idVeterinaire` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `garde`
--

CREATE TABLE `garde` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `heure_debut` datetime(6) NOT NULL,
  `heure_fin` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `horaire`
--

CREATE TABLE `horaire` (
  `id` int(11) NOT NULL,
  `jour` varchar(100) NOT NULL,
  `heureDebut` time NOT NULL,
  `heureFin` time NOT NULL,
  `idVeterinaire` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `medicament`
--

CREATE TABLE `medicament` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `dosage` int(11) NOT NULL,
  `indications` text NOT NULL,
  `effetsSecondaire` text NOT NULL,
  `laboratoire` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `prescrire`
--

CREATE TABLE `prescrire` (
  `idVisite` int(11) NOT NULL,
  `idMedicament` int(11) NOT NULL,
  `posologie` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `proprietaire`
--

CREATE TABLE `proprietaire` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `rue` varchar(100) NOT NULL,
  `codepostal` int(11) NOT NULL,
  `ville` varchar(100) NOT NULL,
  `telephone` int(11) NOT NULL,
  `telephoneMobile` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `race_chat`
--

CREATE TABLE `race_chat` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `race_chien`
--

CREATE TABLE `race_chien` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `veterinaire`
--

CREATE TABLE `veterinaire` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `telephone` int(11) NOT NULL,
  `telephonemobile` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `visite`
--

CREATE TABLE `visite` (
  `id` int(11) NOT NULL,
  `dateVisite` date NOT NULL,
  `heureVisite` time NOT NULL,
  `raison` text NOT NULL,
  `idDossier` int(11) NOT NULL,
  `idAnimal` int(11) NOT NULL,
  `idVeterinaire` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `animal`
--
ALTER TABLE `animal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idproprietaire` (`idproprietaire`);

--
-- Index pour la table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`idAnimal`),
  ADD KEY `idRace` (`idRace`);

--
-- Index pour la table `chien`
--
ALTER TABLE `chien`
  ADD KEY `idRace` (`idRace`),
  ADD KEY `idAnimal` (`idAnimal`);

--
-- Index pour la table `dossier`
--
ALTER TABLE `dossier`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `effectuer`
--
ALTER TABLE `effectuer`
  ADD KEY `idVeterinaire` (`idVeterinaire`),
  ADD KEY `idGarde` (`idGarde`);

--
-- Index pour la table `garde`
--
ALTER TABLE `garde`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `horaire`
--
ALTER TABLE `horaire`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idVeterinaire` (`idVeterinaire`);

--
-- Index pour la table `medicament`
--
ALTER TABLE `medicament`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `prescrire`
--
ALTER TABLE `prescrire`
  ADD KEY `idMedicament` (`idMedicament`),
  ADD KEY `idVisite` (`idVisite`);

--
-- Index pour la table `proprietaire`
--
ALTER TABLE `proprietaire`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `race_chat`
--
ALTER TABLE `race_chat`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `race_chien`
--
ALTER TABLE `race_chien`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `veterinaire`
--
ALTER TABLE `veterinaire`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `visite`
--
ALTER TABLE `visite`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idDossier` (`idDossier`,`idAnimal`,`idVeterinaire`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `animal`
--
ALTER TABLE `animal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `chat`
--
ALTER TABLE `chat`
  MODIFY `idAnimal` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `dossier`
--
ALTER TABLE `dossier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `garde`
--
ALTER TABLE `garde`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `horaire`
--
ALTER TABLE `horaire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `medicament`
--
ALTER TABLE `medicament`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `proprietaire`
--
ALTER TABLE `proprietaire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `race_chat`
--
ALTER TABLE `race_chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `race_chien`
--
ALTER TABLE `race_chien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `veterinaire`
--
ALTER TABLE `veterinaire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `visite`
--
ALTER TABLE `visite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
