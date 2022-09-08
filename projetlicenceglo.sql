-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
<<<<<<< HEAD
-- Généré le : jeu. 08 sep. 2022 à 13:39
=======
-- Généré le : mer. 07 sep. 2022 à 14:03
>>>>>>> 919b0a70103f549ce380f7b011cfc484e2ad84ae
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `projetlicenceglo`
--

-- --------------------------------------------------------

--
-- Structure de la table `absences`
--

CREATE TABLE `absences` (
  `id_absence` int(11) NOT NULL,
  `date_absence` date NOT NULL,
  `etudiant_id` int(11) NOT NULL,
  `type_exam_id` int(11) DEFAULT NULL,
  `justificatif` text DEFAULT NULL,
  `annee_id` int(11) NOT NULL,
  `appel_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `absences`
--

INSERT INTO `absences` (`id_absence`, `date_absence`, `etudiant_id`, `type_exam_id`, `justificatif`, `annee_id`, `appel_id`) VALUES
(1, '2021-10-10', 95, NULL, NULL, 1, 1),
(2, '2021-10-10', 96, NULL, NULL, 1, 1),
(3, '2021-10-10', 97, NULL, NULL, 1, 1),
(4, '2021-10-10', 98, NULL, NULL, 1, 1),
(5, '2021-10-10', 95, NULL, NULL, 1, 2),
(6, '2021-10-10', 96, NULL, NULL, 1, 2),
(7, '2021-10-10', 97, NULL, NULL, 1, 2),
(8, '2021-10-14', 95, NULL, NULL, 1, 3),
(9, '2021-10-14', 96, NULL, NULL, 1, 3),
(10, '2021-10-14', 97, NULL, NULL, 1, 3),
(11, '2021-10-14', 98, NULL, NULL, 1, 3),
(12, '2021-10-10', 95, NULL, NULL, 1, 4),
(13, '2021-10-10', 96, NULL, NULL, 1, 4),
(14, '2021-10-10', 97, NULL, NULL, 1, 4),
(15, '2021-10-10', 98, NULL, NULL, 1, 4),
(16, '2021-10-10', 96, NULL, NULL, 1, 5),
(17, '2021-10-10', 97, NULL, NULL, 1, 5),
(18, '2021-10-10', 98, NULL, NULL, 1, 5),
(19, '2021-10-14', 95, NULL, NULL, 1, 6),
(20, '2021-10-14', 96, NULL, NULL, 1, 6),
(21, '2021-10-14', 97, NULL, NULL, 1, 6),
(22, '2021-10-14', 98, NULL, NULL, 1, 6),
(23, '2020-10-11', 1, NULL, NULL, 2, 7),
(24, '2020-10-11', 10, NULL, NULL, 2, 7),
(25, '2020-10-11', 24, NULL, NULL, 2, 7),
(26, '2020-10-11', 39, NULL, NULL, 2, 7),
(27, '2020-10-11', 54, NULL, NULL, 2, 7),
(28, '2020-10-11', 74, NULL, NULL, 2, 7),
(29, '2020-10-11', 82, NULL, NULL, 2, 7),
(30, '2020-10-12', 1, NULL, NULL, 2, 8),
(31, '2020-10-12', 2, NULL, NULL, 2, 8),
(32, '2020-10-12', 1, NULL, NULL, 2, 9),
(33, '2020-10-12', 2, NULL, NULL, 2, 9),
(34, '2020-10-14', 4, NULL, NULL, 2, 10),
(35, '2020-10-14', 6, NULL, NULL, 2, 10),
(36, '2020-10-14', 8, NULL, NULL, 2, 10),
(37, '2020-10-14', 10, NULL, NULL, 2, 10);

-- --------------------------------------------------------

--
-- Structure de la table `absences_surprises`
--

CREATE TABLE `absences_surprises` (
  `id_absence_surp` int(11) NOT NULL,
  `date_absence` date NOT NULL,
  `etudiant_id` int(11) NOT NULL,
  `appel_surp_id` int(11) NOT NULL,
  `annee_id` int(11) NOT NULL,
  `justificatif` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `absences_surprises`
--

INSERT INTO `absences_surprises` (`id_absence_surp`, `date_absence`, `etudiant_id`, `appel_surp_id`, `annee_id`, `justificatif`) VALUES
(1, '2022-03-23', 1, 1, 2, NULL),
(2, '2022-03-23', 2, 1, 2, NULL),
(3, '2022-07-09', 2, 2, 2, NULL),
(4, '2022-07-09', 5, 2, 2, NULL),
(5, '2022-07-09', 8, 2, 2, NULL),
(6, '2022-07-09', 11, 2, 2, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `acces_bibliotheque`
--

CREATE TABLE `acces_bibliotheque` (
  `id_acces` int(11) NOT NULL,
  `date_acces` date NOT NULL,
  `heure_acces` varchar(50) NOT NULL,
  `dossier_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `acces_bibliotheque`
--

INSERT INTO `acces_bibliotheque` (`id_acces`, `date_acces`, `heure_acces`, `dossier_id`) VALUES
(1, '2021-09-13', '06:58:44', 2),
(2, '2021-09-16', '17:26:57', 1),
(3, '2021-09-17', '11:49:22', 1),
(4, '2021-09-27', '11:18:15', 1),
(5, '2021-10-05', '14:40:14', 1);

-- --------------------------------------------------------

--
-- Structure de la table `acces_examen`
--

CREATE TABLE `acces_examen` (
  `id_acces` int(11) NOT NULL,
  `date_acces` date NOT NULL,
  `heure_acces` time NOT NULL,
  `dossier_id` int(11) NOT NULL,
  `examen_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `acces_examen`
--

INSERT INTO `acces_examen` (`id_acces`, `date_acces`, `heure_acces`, `dossier_id`, `examen_id`) VALUES
(1, '2021-08-11', '14:12:25', 3, 20),
(2, '2021-08-17', '16:10:26', 20, 20),
(3, '2021-09-13', '06:56:58', 2, 73),
(4, '2021-09-13', '06:57:29', 2, 73),
(5, '2021-09-14', '09:31:18', 1, 38);

-- --------------------------------------------------------

--
-- Structure de la table `acces_laboratoire`
--

CREATE TABLE `acces_laboratoire` (
  `id_acces` int(11) NOT NULL,
  `date_acces` date NOT NULL,
  `heure_acces` varchar(50) NOT NULL,
  `dossier_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `acces_laboratoire`
--

INSERT INTO `acces_laboratoire` (`id_acces`, `date_acces`, `heure_acces`, `dossier_id`) VALUES
(1, '2021-09-17', '11:50:27', 1),
(2, '2021-09-25', '12:27:00', 1),
(3, '2021-10-05', '15:18:19', 1);

-- --------------------------------------------------------

--
-- Structure de la table `actions`
--

CREATE TABLE `actions` (
  `id_action` int(11) NOT NULL,
  `date` datetime(6) NOT NULL,
  `auteur` varchar(255) NOT NULL,
  `desc_action` varchar(255) NOT NULL,
  `module` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `actions`
--

INSERT INTO `actions` (`id_action`, `date`, `auteur`, `desc_action`, `module`) VALUES
(52, '2022-03-18 13:06:14.000000', 'ADMIN_SIGI', 'Ajout du personnel Dr NDONO ', ''),
(53, '2022-03-18 13:06:53.000000', 'ADMIN_SIGI', 'Creation d\'un compte pour laurette dans le système', ''),
(62, '2019-09-12 13:33:24.000000', 'Mr Mengue constantin 	', 'suppression du memoire de l\'etudiant de matricule 17I046IU', 'gestion des stages et archivage des mémoires'),
(63, '2019-09-12 14:15:28.000000', 'YENKE OMER Blaise', 'annonymisation de L\'EXAMEN IFT-101 dans la filiere GIN', ' gestion des notes 	'),
(64, '2020-09-15 15:10:23.000000', 'YENKE OMER Blaise', 'annonymisation de L\'EXAMEN IFT-301 dans la filiere GIN ', 'gestion des notes '),
(65, '2019-09-12 15:10:23.000000', 'YENKE OMER Blaise', 'annonymisation de L\'EXAMEN IFT-301 dans la filiere GIN ', 'gestion des notes'),
(66, '2019-09-17 11:55:44.000000', 'Tchogang joseph', 'Ajout du personnel Dr Yaoudam Elizabeth dans le service SFP affecter le 2014-03-05', ''),
(67, '2019-09-17 12:44:39.000000', 'Tchogang joseph', 'Ajout du personnel toto dans le service Division_stage affecter le 2017-10-30', ''),
(68, '2019-09-17 11:55:44.000000', 'Tchogang joseph', 'Ajout du personnel Dr Elizabeth dans le service bibliotheque affecter le 2014-03-05', ''),
(69, '2019-09-17 12:44:39.000000', 'Tchogang joseph', 'Ajout du personnel toto dans le service Division_stage affecter le 2017-10-30', ''),
(70, '2020-10-16 13:55:35.000000', 'Tchogang joseph', 'Ajout du personnel Dr NDAM NJOYA Arouna  dans le service DFI affecter le 2020-10-16', ''),
(71, '2020-10-16 13:57:08.000000', 'Tchogang joseph', 'Suppression du personnel Dr NDAM NJOYA Arouna', ''),
(72, '2020-10-16 13:58:12.000000', 'Tchogang joseph', 'Ajout du personnel Dr NDAM NJOYA', ''),
(73, '2020-10-16 14:02:03.000000', 'Tchogang joseph', 'Ajout du personnel Dr FENDJI Jean Loui', ''),
(74, '2020-10-16 14:06:05.000000', 'Tchogang joseph', 'Ajout du personnel Dr DANGBE Ezekiel  dans le service S_stages affecter le 2020-10-16', ''),
(75, '2020-10-16 14:09:39.000000', 'Tchogang joseph', 'Ajout du personnel Dr BATOURE Apollinaire', ''),
(76, '2020-10-16 14:17:28.000000', 'Tchogang joseph', 'Ajout du personnel Dr FARIKOU', ''),
(77, '2020-10-16 14:18:17.000000', 'Tchogang joseph', 'Ajout du personnel Mr BAKANG', ''),
(78, '2020-10-16 14:19:25.000000', 'Tchogang joseph', 'Suppression du personnel Mr BAKANG', ''),
(79, '2020-10-16 14:27:31.000000', 'Tchogang joseph', 'Ajout du personnel Mr BAKANG', ''),
(80, '2020-10-16 14:40:11.000000', 'Pr EKOBENA Fouda', 'Suppression du personnel lambey', ''),
(81, '2020-10-17 13:09:40.000000', 'Tchogang joseph', 'Ajout du personnel test', ''),
(82, '2020-10-20 08:30:27.000000', 'Admin_SIGI', 'Ajout du personnel Dr Salli', ''),
(83, '2020-11-03 00:04:55.000000', 'Admin_SIGI', 'Ajout du personnel Pr Kom Kamsu  dans le service aucun service affecter le 2020-11-03', ''),
(84, '2020-11-03 00:10:04.000000', 'Admin_SIGI', 'Creation d\'un compte pour kamsu dans le système', ''),
(85, '2020-11-03 04:09:33.000000', 'Admin_SIGI', 'Creation d\'un compte pour batoure dans le système', ''),
(86, '2020-11-07 10:40:52.000000', 'Admin_SIGI', 'Creation d\'un compte pour arouna dans le système', ''),
(87, '2020-11-07 10:44:09.000000', 'Admin_SIGI', 'Creation d\'un compte pour jean louis dans le système', ''),
(88, '2020-11-07 10:46:57.000000', 'Admin_SIGI', 'Creation d\'un compte pour dangbe dans le système', ''),
(89, '2020-11-07 10:48:15.000000', 'Admin_SIGI', 'Creation d\'un compte pour bakang dans le système', ''),
(90, '2020-11-07 17:16:16.000000', 'Admin_SIGI', 'Ajout du personnel njaya  dans le service aucun service affecter le 2012-01-01', ''),
(91, '2020-11-07 17:18:43.000000', 'Admin_SIGI', 'Creation d\'un compte pour njaya dans le système', ''),
(92, '2020-11-07 18:24:09.000000', 'Admin_SIGI', 'Ajout du personnel Pr Ngongang  dans le service aucun service affecter le 2016-10-04', ''),
(93, '2020-11-07 18:24:37.000000', 'Admin_SIGI', 'Creation d\'un compte pour ngongang dans le système', ''),
(94, '2020-11-11 09:39:38.000000', 'Admin_SIGI', 'Creation d\'un compte pour fendji01 dans le système', ''),
(95, '2021-03-26 12:34:45.000000', 'Admin_SIGI', 'Ajout du personnel Dr DONO', ''),
(96, '2021-03-26 12:35:52.000000', 'Admin_SIGI', 'Creation d\'un compte pour Drdono dans le système', ''),
(97, '2021-03-26 13:58:41.000000', 'Admin_SIGI', 'Ajout du personnel M. Kale', ''),
(98, '2021-03-26 14:01:23.000000', 'Admin_SIGI', 'Suppression du personnel M. Kale', ''),
(99, '2021-03-26 14:02:05.000000', 'Admin_SIGI', 'Ajout du personnel M. Kale', ''),
(100, '2021-03-26 14:02:30.000000', 'Admin_SIGI', 'Creation d\'un compte pour Nkale dans le système', ''),
(101, '2021-03-31 12:36:56.000000', 'Admin_SIGI', 'Ajout du personnel ChargeDiscipline', ''),
(102, '2021-03-31 12:38:02.000000', 'Admin_SIGI', 'Creation d\'un compte pour Dischar dans le système', '');

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `id_admin` tinyint(4) NOT NULL,
  `nom_admin` varchar(255) NOT NULL,
  `prenom_admin` varchar(255) NOT NULL,
  `email_admin` varchar(255) NOT NULL,
  `mdp_admin` varchar(255) NOT NULL,
  `photo_admin` varchar(255) NOT NULL,
  `profession` varchar(255) NOT NULL,
  `joined_on` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_on` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `level` tinyint(1) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created_by` tinyint(4) DEFAULT 0,
  `updated_by` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `affecter`
--

CREATE TABLE `affecter` (
  `id_affecter` int(11) NOT NULL,
  `personnel_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `date_ar` date DEFAULT NULL,
  `date_dep` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `affecter`
--

INSERT INTO `affecter` (`id_affecter`, `personnel_id`, `service_id`, `date_ar`, `date_dep`) VALUES
(1, 2, 6, '2020-01-01', NULL),
(2, 3, 6, '2020-08-21', NULL),
(3, 5, 6, '2021-09-09', NULL),
(4, 6, 22, NULL, NULL),
(5, 7, 6, NULL, NULL),
(7, 9, 6, '2000-07-01', NULL),
(8, 10, 22, NULL, NULL),
(10, 12, 22, NULL, NULL),
(11, 13, 22, NULL, NULL),
(12, 14, NULL, NULL, NULL),
(13, 15, 22, NULL, NULL),
(14, 16, 6, '2021-09-30', NULL),
(15, 17, 6, '2009-01-01', NULL),
(16, 18, 8, NULL, NULL),
(17, 19, 22, NULL, NULL),
(18, 20, 22, NULL, NULL),
(19, 21, 6, '2021-01-01', NULL),
(20, 22, NULL, '2021-09-14', NULL),
(21, 23, 22, NULL, NULL),
(22, 24, 6, NULL, NULL),
(27, 32, 6, NULL, NULL),
(30, 36, 6, '2021-10-27', NULL),
(31, 37, 11, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `agent_bloc_nettoyage`
--

CREATE TABLE `agent_bloc_nettoyage` (
  `id_bloc_agent` int(11) NOT NULL,
  `id_agent` int(11) NOT NULL,
  `id_bloc` int(11) NOT NULL,
  `date_debut` varchar(50) NOT NULL,
  `date_fin` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `agent_bloc_nettoyage`
--

INSERT INTO `agent_bloc_nettoyage` (`id_bloc_agent`, `id_agent`, `id_bloc`, `date_debut`, `date_fin`) VALUES
(1, 3, 4, '2021-05-06', '2021-06-30'),
(2, 3, 4, '2021-08-21', '2021-09-01'),
(3, 3, 1, '2021-10-30', '2021-11-20');

-- --------------------------------------------------------

--
-- Structure de la table `agent_entretien`
--

CREATE TABLE `agent_entretien` (
  `id_agent` int(11) NOT NULL,
  `id_personnel` int(11) NOT NULL,
  `nom_prenom` varchar(255) NOT NULL,
  `niveau_instruction` varchar(255) NOT NULL,
  `qualite_au_recrutement` varchar(255) NOT NULL,
  `telephone` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `agent_entretien`
--

INSERT INTO `agent_entretien` (`id_agent`, `id_personnel`, `nom_prenom`, `niveau_instruction`, `qualite_au_recrutement`, `telephone`) VALUES
(3, 42, 'Jean Mouni', 'Bacc + 3', 'Tres bien', '(+237) 658-88-88-84');

-- --------------------------------------------------------

--
-- Structure de la table `annee_academiques`
--

CREATE TABLE `annee_academiques` (
  `id_annee` int(11) NOT NULL,
  `debut` year(4) NOT NULL,
  `fin` year(4) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT '0',
  `annee` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `annee_academiques`
--

INSERT INTO `annee_academiques` (`id_annee`, `debut`, `fin`, `status`, `annee`) VALUES
(1, 2021, 2022, '0', '2021-2022'),
(2, 2020, 2021, 'en cours', '2020-2021');

-- --------------------------------------------------------

--
-- Structure de la table `appels`
--

CREATE TABLE `appels` (
  `id_appel` int(11) NOT NULL,
  `niv_par_id` int(11) NOT NULL,
  `date_appel` date NOT NULL,
  `annee_id` int(11) NOT NULL,
  `planning_id` int(11) NOT NULL,
  `enseigne_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `appels`
--

INSERT INTO `appels` (`id_appel`, `niv_par_id`, `date_appel`, `annee_id`, `planning_id`, `enseigne_id`) VALUES
(1, 10, '2021-10-10', 1, 582, 7),
(2, 10, '2021-10-10', 1, 584, 38),
(3, 10, '2021-10-14', 1, 598, 67),
(4, 10, '2021-10-10', 1, 583, 7),
(5, 10, '2021-10-10', 1, 585, 38),
(6, 10, '2021-10-14', 1, 598, 68),
(7, 10, '2020-10-11', 2, 816, 74),
(8, 10, '2020-10-12', 2, 819, 80),
(9, 10, '2020-10-12', 2, 819, 81),
(10, 10, '2020-10-14', 2, 828, 80);

-- --------------------------------------------------------

--
-- Structure de la table `appels_surprises`
--

CREATE TABLE `appels_surprises` (
  `id_appel_surp` int(11) NOT NULL,
  `niv_par_id` int(11) NOT NULL,
  `ec_id` int(11) NOT NULL,
  `annee_id` int(11) NOT NULL,
  `date_appel` date NOT NULL,
  `heure_debut` time NOT NULL,
  `heure_fin` time NOT NULL,
  `nombre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `appels_surprises`
--

INSERT INTO `appels_surprises` (`id_appel_surp`, `niv_par_id`, `ec_id`, `annee_id`, `date_appel`, `heure_debut`, `heure_fin`, `nombre`) VALUES
(1, 10, 3, 2, '2022-03-23', '14:33:00', '15:33:00', 1),
(2, 10, 8, 2, '2022-07-09', '16:02:00', '16:02:00', 0);

-- --------------------------------------------------------

--
-- Structure de la table `approv_materiels`
--

CREATE TABLE `approv_materiels` (
  `id_approv` int(11) NOT NULL,
  `code_approv` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `approv_materiels`
--

INSERT INTO `approv_materiels` (`id_approv`, `code_approv`) VALUES
(1, 'APP-2020-09-16-22-07-53'),
(2, 'APP-2020-09-16-22-20-30'),
(3, 'APP-2020-09-17-06-23-27'),
(4, 'APP-2020-09-17-06-27-38'),
(5, 'APP-2020-09-19-12-26-06'),
(6, 'APP-2020-09-21-17-49-30'),
(7, 'APP-2020-09-21-17-52-05'),
(8, 'APP-2021-06-04-14-21-29');

-- --------------------------------------------------------

--
-- Structure de la table `associations`
--

CREATE TABLE `associations` (
  `id_association` int(11) NOT NULL,
  `ue_id` int(11) NOT NULL,
  `niv_par_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `associations`
--

INSERT INTO `associations` (`id_association`, `ue_id`, `niv_par_id`) VALUES
(1, 1, 10),
(2, 2, 10),
(3, 3, 10),
(4, 4, 10),
(5, 5, 10),
(6, 6, 10),
(7, 7, 10),
(8, 8, 10),
(9, 9, 11),
(10, 10, 11),
(11, 11, 11),
(12, 12, 11),
(13, 13, 11),
(14, 14, 11),
(15, 15, 11),
(16, 16, 11),
(17, 17, 11),
(26, 26, 17),
(27, 27, 17),
(28, 28, 17),
(29, 29, 17),
(30, 30, 17),
(31, 31, 17),
(32, 32, 17),
(33, 33, 17),
(36, 36, 38),
(37, 37, 38),
(38, 38, 38),
(39, 39, 38),
(40, 40, 38),
(41, 41, 38),
(42, 42, 38),
(43, 43, 38),
(44, 44, 38);

-- --------------------------------------------------------

--
-- Structure de la table `blocs_nettoyage`
--

CREATE TABLE `blocs_nettoyage` (
  `id_bloc` int(11) NOT NULL,
  `nom_bloc` varchar(50) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `blocs_nettoyage`
--

INSERT INTO `blocs_nettoyage` (`id_bloc`, `nom_bloc`, `description`) VALUES
(1, 'bloc a', ''),
(2, 'bloc b', ''),
(3, 'bloc c', ''),
(4, 'Rez de chaussé Gauche', '');

-- --------------------------------------------------------

--
-- Structure de la table `bureau_personnel`
--

CREATE TABLE `bureau_personnel` (
  `id_affecter` int(11) NOT NULL,
  `id_personnel` int(11) NOT NULL,
  `id_salle` int(11) NOT NULL,
  `date_affectation` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id_categorie` int(11) NOT NULL,
  `nom_categorie` varchar(255) NOT NULL,
  `description_categorie` text NOT NULL,
  `CheminA` text NOT NULL,
  `CheminM` text NOT NULL,
  `categorie_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `departement_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id_categorie`, `nom_categorie`, `description_categorie`, `CheminA`, `CheminM`, `categorie_id`, `service_id`, `departement_id`) VALUES
(1, 'mesdoc', 'gfj', 'mesdoc/', '/mesdoc', NULL, 6, NULL),
(2, 'mesdoc', 'ras', 'mesdoc/mesdoc/', '/mesdoc/DFI/mesdoc', 1, 6, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `categorie_materiel`
--

CREATE TABLE `categorie_materiel` (
  `id_categorie_mat` int(11) NOT NULL,
  `designation` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `categorie_materiel`
--

INSERT INTO `categorie_materiel` (`id_categorie_mat`, `designation`) VALUES
(1, 'didactique'),
(2, 'laboratoire'),
(3, 'electrique'),
(4, 'machinerie'),
(5, 'menage'),
(6, 'Meuble');

-- --------------------------------------------------------

--
-- Structure de la table `chat`
--

CREATE TABLE `chat` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `attachment_name` text NOT NULL,
  `file_ext` text NOT NULL,
  `mime_type` text NOT NULL,
  `message_date_time` text NOT NULL,
  `ip_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `chat`
--

INSERT INTO `chat` (`id`, `sender_id`, `receiver_id`, `message`, `attachment_name`, `file_ext`, `mime_type`, `message_date_time`, `ip_address`) VALUES
(1, 3, 9, 'bjr', '', '', '', '2022-04-09 14:19:22', '192.168.1.203'),
(2, 9, 3, 'merci bjr', '', '', '', '2022-04-09 14:20:20', '192.168.1.13'),
(3, 3, 9, 'fgg', '', '', '', '2022-04-09 14:20:55', '192.168.1.203'),
(35, 7, 14, 'bonjour DR', '', '', '', '2020-11-12 10:03:36', '172.16.168.30'),
(36, 7, 14, 'NULL', 'Travaux_dirige?s__1_GLO_642-1.pdf', '.pdf', 'application/pdf', '2020-11-12 10:03:46', '172.16.168.30'),
(37, 7, 8, 'bonjour', '', '', '', '2020-11-12 10:05:04', '172.16.168.30'),
(38, 7, 8, 'NULL', 'Travaux_dirige?s__2_GLO_642_.pdf', '.pdf', 'application/pdf', '2020-11-12 10:05:11', '172.16.168.30'),
(39, 28, 8, 'bonjour', '', '', '', '2021-06-04 14:39:02', '192.168.1.219');

-- --------------------------------------------------------

--
-- Structure de la table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('060a95505fdfdc3e2f087d66d09115e8daaf1aff', '172.16.168.180', 1605003751, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630353030333735313b),
('08e6d976936defa893be052a3f25171f495688b4', '192.168.1.13', 1605710349, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630353731303334393b),
('0e2ao8s8t685b988elaqp1rinb70arqk', '192.168.1.13', 1656935771, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635363933353737313b69645f757365727c733a323a223138223b726f6c657c733a313a2236223b6e616d655f757365727c733a31313a224e44414d204e646a6f7961223b656d61696c7c733a31373a22656d61696c313340676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('0e41ba6963ed85801be2cba9a9e9f44d9d5efb8f', '192.168.1.13', 1608296686, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630383239363638363b),
('0fa2075c773a23b6021221e15a1f769e45dc74b0', '172.16.168.30', 1605107945, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630353130373934353b),
('0ipcjn560i5t9os301i5gctrmcn010jk', '192.168.1.13', 1648117537, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383131373533363b69645f757365727c733a323a223138223b726f6c657c733a313a2236223b6e616d655f757365727c733a31313a224e44414d204e646a6f7961223b656d61696c7c733a31373a22656d61696c313340676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('0k3k1jmg5vmm51sub4iv0afm99nm8slf', '192.168.1.219', 1616753022, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631363735323837333b),
('0kr1o3fpqi7atr8ftfnee0gg1m7q6gdn', '192.168.1.219', 1623071118, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333037313131383b),
('0pgvvs7imot6n6ag70upqoiqi08dgs0j', '192.168.1.219', 1618655018, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631383635353031383b),
('0umm0kfpdajrsdkn9pcapife4qfefhd3', '192.168.1.4', 1647530231, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634373533303132383b69645f757365727c733a323a223138223b726f6c657c733a313a2236223b6e616d655f757365727c733a31313a224e44414d204e646a6f7961223b656d61696c7c733a31373a22656d61696c313340676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a343b),
('11to2stineterf3oo1vt07jmt9bf54d0', '192.168.1.4', 1647528832, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634373532383833323b69645f757365727c733a323a223138223b726f6c657c733a313a2236223b6e616d655f757365727c733a31313a224e44414d204e646a6f7961223b656d61696c7c733a31373a22656d61696c313340676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('16429f1333fc6748e1405f2278855be7464fa325', '172.16.168.69', 1604491291, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630343439313239313b69645f757365727c733a313a2231223b726f6c657c733a313a2232223b6e616d655f757365727c733a32303a224d72204d656e67756520636f6e7374616e74696e223b656d61696c7c733a31363a226d656e67756540676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c4e3b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('19jrlqg6lvrc6sdiv12odl4qh6tnh17n', '192.168.1.4', 1647521274, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634373532313237343b69645f757365727c733a323a223138223b726f6c657c733a313a2236223b6e616d655f757365727c733a31313a224e44414d204e646a6f7961223b656d61696c7c733a31373a22656d61696c313340676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('1fec309002de54da4b60beec027bbad7f14c85c1', '172.16.168.69', 1604502588, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630343530323538383b69645f757365727c733a313a2231223b726f6c657c733a313a2232223b6e616d655f757365727c733a32303a224d72204d656e67756520636f6e7374616e74696e223b656d61696c7c733a31363a226d656e67756540676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c4e3b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('1p8dojvillgr7evnp8ncrmnh55ba4hpo', '192.168.1.219', 1623071650, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333037313635303b),
('20a3323d0f7165f3d6fea774fa2e6a13f4c4299a', '172.16.168.30', 1605078337, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630353037383333363b),
('21f84lbpbdqbttu306j4ug5j4bcokbcm', '192.168.1.219', 1623077836, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333037373833333b),
('24d1562dd1eab857a8d01e4862c5d2832a047903', '172.16.168.69', 1604489534, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630343438393533343b69645f757365727c733a313a2231223b726f6c657c733a313a2232223b6e616d655f757365727c733a32303a224d72204d656e67756520636f6e7374616e74696e223b656d61696c7c733a31363a226d656e67756540676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c4e3b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('24f7e0787175fad21f68e314cebe10b06c161a00', '172.16.168.69', 1604508583, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630343530383538333b69645f757365727c733a313a2231223b726f6c657c733a313a2232223b6e616d655f757365727c733a32303a224d72204d656e67756520636f6e7374616e74696e223b656d61696c7c733a31363a226d656e67756540676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c4e3b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('2cdd7c0a121099097ebc8167b9be76ccc8789a33', '172.16.168.30', 1605173698, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630353137333639383b),
('2cs6f9pjksmn4mprim746pujkcups7mr', '192.168.1.4', 1647517357, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634373531373335373b),
('2d2cf03cl5da2n1ek2q2t9efkgs2f9sv', '127.0.0.1', 1616674995, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631363637343939353b),
('2deser7ahr9mtf56i3ai763pg55ehgsq', '192.168.1.4', 1647530433, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634373533303433333b69645f757365727c733a323a223138223b726f6c657c733a313a2236223b6e616d655f757365727c733a31313a224e44414d204e646a6f7961223b656d61696c7c733a31373a22656d61696c313340676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('327822358bacb90943118b4485ce32a2fb0e2a28', '192.168.1.13', 1608293206, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630383239333230363b),
('3r2j22ls9dbj781tf7fdkt1ia7cuuma9', '192.168.1.4', 1647527374, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634373532373337343b69645f757365727c733a323a223138223b726f6c657c733a313a2236223b6e616d655f757365727c733a31313a224e44414d204e646a6f7961223b656d61696c7c733a31373a22656d61696c313340676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('3utj5vj4npsjck2vdptakotlkv9jqa1u', '192.168.1.4', 1647522870, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634373532323837303b69645f757365727c733a323a223138223b726f6c657c733a313a2236223b6e616d655f757365727c733a31313a224e44414d204e646a6f7961223b656d61696c7c733a31373a22656d61696c313340676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('4309acebc926fde2b78351c14248b7dbfa8dd632', '172.16.168.28', 1605003258, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630353030333235383b),
('43657c2e38f3507107c42c4e38ee66bab6f6d577', '172.16.168.69', 1604493281, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630343439333036383b69645f757365727c733a313a2231223b726f6c657c733a313a2232223b6e616d655f757365727c733a32303a224d72204d656e67756520636f6e7374616e74696e223b656d61696c7c733a31363a226d656e67756540676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c4e3b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('449psu4fv3sekb1kiii1enjrhadpgj0g', '192.168.1.4', 1647524447, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634373532343434373b69645f757365727c733a323a223138223b726f6c657c733a313a2236223b6e616d655f757365727c733a31313a224e44414d204e646a6f7961223b656d61696c7c733a31373a22656d61696c313340676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('4626280275197a8fc4d458b031736e2c6cf1ab3a', '192.168.1.13', 1608295503, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630383239353530333b69645f757365727c733a313a2231223b726f6c657c733a313a2232223b6e616d655f757365727c733a32303a224d72204d656e67756520636f6e7374616e74696e223b656d61696c7c733a31363a226d656e67756540676d61696c2e636f6d223b736572766963657c733a31343a224269626c696f7468c3a871756520223b706f7374657c733a313a2234223b67726164657c4e3b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('473106709dc298e96b61112872311374ad570b6a', '192.168.1.13', 1605706394, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630353730363339343b),
('49fbab310ac256660cadebc4bddbe8883af6119d', '10.8.0.18', 1604921507, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630343932313434323b),
('49n1lpl8tg6m7upba2trpgprfkr5363d', '192.168.1.13', 1631616972, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633313631363937323b69645f757365727c733a323a223138223b726f6c657c733a313a2236223b6e616d655f757365727c733a31313a224e44414d204e646a6f7961223b656d61696c7c733a31373a22656d61696c313340676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('4nempl4otfjh231bmtcdmptl7mucqp3v', '192.168.1.4', 1656607170, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635363630373137303b69645f757365727c733a323a223138223b726f6c657c733a313a2236223b6e616d655f757365727c733a31313a224e44414d204e646a6f7961223b656d61696c7c733a31373a22656d61696c313340676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('4oravuheb0nq0fnig77tffni8utoagof', '192.168.1.13', 1634308253, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633343330383235333b69645f757365727c733a323a223138223b726f6c657c733a313a2236223b6e616d655f757365727c733a31313a224e44414d204e646a6f7961223b656d61696c7c733a31373a22656d61696c313340676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('5dm2jf5p1voi2snl9at3t2olpqm5kaqe', '192.168.1.219', 1623071780, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333037313738303b6d6573736167657c733a32393a22436f6e6e656374657a20766f757320706f757220636f6e74696e756572223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226e6577223b7d),
('5p9t0o57m2occos0uv3sa6h10j7huoqv', '192.168.1.13', 1634307306, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633343330373330363b),
('5qeemnkq86vsn4ooi03ahd5p78lh0134', '192.168.1.4', 1647523365, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634373532333336353b69645f757365727c733a323a223138223b726f6c657c733a313a2236223b6e616d655f757365727c733a31313a224e44414d204e646a6f7961223b656d61696c7c733a31373a22656d61696c313340676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('5rr9uvsk8gsqudfo5n0f69f8vinmofq9', '127.0.0.1', 1618577258, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631383537373235383b69645f757365727c733a323a223238223b726f6c657c733a313a2236223b6e616d655f757365727c733a31373a2244722044414e47424520457a656b69656c223b656d61696c7c733a32323a2264616e676265657a656b69656c407961686f6f2e6672223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('63ojtq4gui4e0bodjmavtpodvnvg6jr0', '192.168.1.13', 1647258325, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634373235383332353b69645f757365727c733a323a223138223b726f6c657c733a313a2236223b6e616d655f757365727c733a31313a224e44414d204e646a6f7961223b656d61696c7c733a31373a22656d61696c313340676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('673b34f3f32f367fb59a0630823acdeb7fdaf1b5', '172.16.168.28', 1605002000, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630353030323030303b69645f757365727c733a313a2231223b726f6c657c733a313a2232223b6e616d655f757365727c733a32303a224d72204d656e67756520636f6e7374616e74696e223b656d61696c7c733a31363a226d656e67756540676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c4e3b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('6793ad0c2f6ab71929c063118a25b324d6649165', '192.168.1.13', 1605710352, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630353731303334393b6d6573736167657c733a32393a22436f6e6e656374657a20766f757320706f757220636f6e74696e756572223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d),
('6ec0kffat05ptfq0s6jql1tvek1hfllp', '192.168.1.219', 1623073225, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333037333232353b69645f757365727c733a323a223238223b726f6c657c733a313a2236223b6e616d655f757365727c733a31373a2244722044414e47424520457a656b69656c223b656d61696c7c733a32323a2264616e676265657a656b69656c407961686f6f2e6672223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a353b),
('6mcqdekt4ssef1o6fe6ovn9p42oersld', '192.168.1.4', 1656607252, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635363630373137303b69645f757365727c733a323a223138223b726f6c657c733a313a2236223b6e616d655f757365727c733a31313a224e44414d204e646a6f7961223b656d61696c7c733a31373a22656d61696c313340676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('7040md1446ho3sj9sdf48cnls4olh48n', '192.168.1.13', 1656938997, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635363933383939373b69645f757365727c733a323a223138223b726f6c657c733a313a2236223b6e616d655f757365727c733a31313a224e44414d204e646a6f7961223b656d61696c7c733a31373a22656d61696c313340676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('74059a85240b5b36ea521b3dd0e4b28dd76be7c5', '10.8.0.18', 1605167600, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630353136373539393b),
('7412701826f6562d763c34b09c0fadcf87ea2aeb', '172.16.168.69', 1604492030, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630343439323033303b69645f757365727c733a313a2231223b726f6c657c733a313a2232223b6e616d655f757365727c733a32303a224d72204d656e67756520636f6e7374616e74696e223b656d61696c7c733a31363a226d656e67756540676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c4e3b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('78ad638c43cb0658c897aa63ac479a4c883ed474', '172.16.168.28', 1605003621, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630353030333531353b),
('7c325bjhr7tilc1ecje3a4n6kr4e8469', '192.168.1.4', 1647521928, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634373532313932383b69645f757365727c733a323a223138223b726f6c657c733a313a2236223b6e616d655f757365727c733a31313a224e44414d204e646a6f7961223b656d61696c7c733a31373a22656d61696c313340676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('7ehn5q1eq2nub5qh4o9v1lgg0vanc5d4', '192.168.1.54', 1647257943, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634373235373934333b),
('7fee8141a1cf487d119407eff3540b0eb29b570b', '192.168.1.13', 1605803339, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630353830333333393b),
('7mc02k5aqs33d0av26cs2oq63c9sr3ne', '192.168.1.219', 1623071780, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333037313738303b),
('7mvft6i31rt30fstvh0qokn1as0nrbol', '192.168.1.203', 1646923399, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363932333339393b69645f757365727c733a323a223138223b726f6c657c733a313a2236223b6e616d655f757365727c733a31313a224e44414d204e646a6f7961223b656d61696c7c733a31373a22656d61696c313340676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('840af6006976ca8ada603025f3fad9f3694539b0', '192.168.1.13', 1605709075, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630353730393037353b),
('8442a0da5b15c5f2254b06db8c240eca9a9f0784', '172.16.168.69', 1604502180, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630343530323138303b6d6573736167657c733a32393a22436f6e6e656374657a20766f757320706f757220636f6e74696e756572223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d),
('8574fb83516a5c3132ffa2faea61a0bea481f48b', '192.168.1.13', 1605709511, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630353730393531313b69645f757365727c733a323a223238223b726f6c657c733a313a2236223b6e616d655f757365727c733a31373a2244722044414e47424520457a656b69656c223b656d61696c7c733a32323a2264616e676265657a656b69656c407961686f6f2e6672223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('87b81tpv187cjrv4pku428letuaus36p', '192.168.1.13', 1652107437, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323130373135353b69645f757365727c733a323a223138223b726f6c657c733a313a2236223b6e616d655f757365727c733a31313a224e44414d204e646a6f7961223b656d61696c7c733a31373a22656d61696c313340676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('933724cbbffc5c98bf64219374ddd11ef13f7cb8', '172.16.168.69', 1604486383, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630343438363338333b69645f757365727c733a313a2231223b726f6c657c733a313a2232223b6e616d655f757365727c733a32303a224d72204d656e67756520636f6e7374616e74696e223b656d61696c7c733a31363a226d656e67756540676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c4e3b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('9a90eacb940b8df577007faf59fcd54f5a095bfa', '172.16.168.69', 1604485277, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630343438353237373b69645f757365727c733a313a2231223b726f6c657c733a313a2232223b6e616d655f757365727c733a32303a224d72204d656e67756520636f6e7374616e74696e223b656d61696c7c733a31363a226d656e67756540676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c4e3b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('9d9c42d571d8cee170586c16b623e58befea9242', '172.16.168.69', 1604492534, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630343439323533343b69645f757365727c733a313a2231223b726f6c657c733a313a2232223b6e616d655f757365727c733a32303a224d72204d656e67756520636f6e7374616e74696e223b656d61696c7c733a31363a226d656e67756540676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c4e3b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('9fo4dhuth6j9r7ncusp5m1j9plaoat1o', '192.168.1.13', 1631616439, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633313631363433393b69645f757365727c733a323a223138223b726f6c657c733a313a2236223b6e616d655f757365727c733a31313a224e44414d204e646a6f7961223b656d61696c7c733a31373a22656d61696c313340676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('9lrl8m9bvin02a1ihsk9nlimcluo9mf1', '192.168.1.13', 1631617119, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633313631363937323b6d6573736167657c733a32393a22436f6e6e656374657a20766f757320706f757220636f6e74696e756572223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d),
('9ttsqaqq79eq8te22qltnjvl5ipsu4te', '127.0.0.1', 1618577376, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631383537373235383b69645f757365727c733a323a223238223b726f6c657c733a313a2236223b6e616d655f757365727c733a31373a2244722044414e47424520457a656b69656c223b656d61696c7c733a32323a2264616e676265657a656b69656c407961686f6f2e6672223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('a28dnru8icdoi3n39aq1v4uakmp6capn', '192.168.1.13', 1647261855, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634373236313835353b69645f757365727c733a323a223138223b726f6c657c733a313a2236223b6e616d655f757365727c733a31313a224e44414d204e646a6f7961223b656d61696c7c733a31373a22656d61696c313340676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('a3t2aepitcbqoego98ka5gfv23r5t8ov', '192.168.1.203', 1646923062, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363932333036323b69645f757365727c733a323a223138223b726f6c657c733a313a2236223b6e616d655f757365727c733a31313a224e44414d204e646a6f7961223b656d61696c7c733a31373a22656d61696c313340676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('a464d6047837c4a439a46c40936e7b51b4f60af3', '192.168.1.52', 1605702934, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630353730323933343b),
('a6vljfl7k33qdnm53m5aabvkjcrbdphb', '192.168.1.203', 1647944203, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634373934343130313b),
('a7fbf5bba1e18a9a7e99e1fe6163de3c6d84a664', '192.168.1.13', 1608296971, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630383239363937313b),
('ac5b1475d00ec61a4ca41b2c753ccc9b688d19fa', '172.16.168.69', 1604488133, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630343438383133333b69645f757365727c733a313a2231223b726f6c657c733a313a2232223b6e616d655f757365727c733a32303a224d72204d656e67756520636f6e7374616e74696e223b656d61696c7c733a31363a226d656e67756540676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c4e3b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('ad16bacc16821550e84dd24b9ea44953ba8f5759', '192.168.1.13', 1608295143, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630383239353134333b),
('aogcal77eme493t9pj0tpfk7bbhjek34', '192.168.1.13', 1652105188, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323130353138383b69645f757365727c733a323a223138223b726f6c657c733a313a2236223b6e616d655f757365727c733a31313a224e44414d204e646a6f7961223b656d61696c7c733a31373a22656d61696c313340676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('b58741b872ae5dab25d1e05fc490265fbc61eeac', '172.16.168.69', 1604503441, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630343530333434313b69645f757365727c733a313a2231223b726f6c657c733a313a2232223b6e616d655f757365727c733a32303a224d72204d656e67756520636f6e7374616e74696e223b656d61696c7c733a31363a226d656e67756540676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c4e3b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('b83c53e8af01a452d98d14b593e315e0de39b5ee', '172.16.168.69', 1604508585, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630343530383538353b),
('be02495c424e06c3357f1df52c9c26c28dc329af', '172.16.168.69', 1604493068, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630343439333036383b69645f757365727c733a313a2231223b726f6c657c733a313a2232223b6e616d655f757365727c733a32303a224d72204d656e67756520636f6e7374616e74696e223b656d61696c7c733a31363a226d656e67756540676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c4e3b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('bheajt4au309cov87kq5mv4b3sdr8rfe', '192.168.1.219', 1623072532, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333037323533323b69645f757365727c733a323a223238223b726f6c657c733a313a2236223b6e616d655f757365727c733a31373a2244722044414e47424520457a656b69656c223b656d61696c7c733a32323a2264616e676265657a656b69656c407961686f6f2e6672223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('bjfgf3m64tc65kp40qrotl6852on5d1r', '192.168.1.203', 1647604562, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634373630343437343b),
('brq67rh1omjsogs102c5goijsev1s5mj', '192.168.1.219', 1623070209, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333037303230393b),
('c9i8su0fkgodnrmkg71r0n9au13gmf69', '192.168.1.4', 1647531293, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634373533313139323b69645f757365727c733a323a223138223b726f6c657c733a313a2236223b6e616d655f757365727c733a31313a224e44414d204e646a6f7961223b656d61696c7c733a31373a22656d61696c313340676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('cb6ul5pd79dsati9t5r3efhm3h60s1e9', '192.168.1.203', 1647262832, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634373236323833323b),
('ccc5e06100656994753f4bf7b83426ff99dacee4', '172.16.168.69', 1604484832, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630343438343833323b69645f757365727c733a313a2231223b726f6c657c733a313a2232223b6e616d655f757365727c733a32303a224d72204d656e67756520636f6e7374616e74696e223b656d61696c7c733a31363a226d656e67756540676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c4e3b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('ccm7is5rk72h8m4ut86o8nv9nn4ljjft', '192.168.1.13', 1634307546, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633343330373534363b69645f757365727c733a323a223138223b726f6c657c733a313a2236223b6e616d655f757365727c733a31313a224e44414d204e646a6f7961223b656d61696c7c733a31373a22656d61696c313340676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('cfqa4l2ronj94rdb0i7u09os1c4a7q2s', '192.168.1.13', 1656939303, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635363933393330333b69645f757365727c733a323a223138223b726f6c657c733a313a2236223b6e616d655f757365727c733a31313a224e44414d204e646a6f7961223b656d61696c7c733a31373a22656d61696c313340676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('cqglgb8hsai0u31gre9p1fo66afgai3n', '192.168.1.54', 1618655001, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631383635353030313b),
('cr659t89i6r0lenfmav1t2v27loc9tg4', '192.168.1.13', 1647260020, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634373236303032303b69645f757365727c733a323a223138223b726f6c657c733a313a2236223b6e616d655f757365727c733a31313a224e44414d204e646a6f7961223b656d61696c7c733a31373a22656d61696c313340676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('d0199nofhfcef11gb9gculoltrput37g', '127.0.0.1', 1616753728, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631363735333732383b),
('d0dd1675f5fa4d56895d5baafda8b4df424a7131', '192.168.1.13', 1608296112, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630383239363131323b69645f757365727c733a313a2239223b726f6c657c733a313a2236223b6e616d655f757365727c733a32303a2244722059616f7564616d20456c697a6162657468223b656d61696c7c733a31373a2279616f7564616d40676d61696c2e636f6d223b736572766963657c733a333a22534650223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('d0klt9dts0m4j7730231a7ba65b208t7', '192.168.1.4', 1647519030, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634373531393033303b69645f757365727c733a323a223138223b726f6c657c733a313a2236223b6e616d655f757365727c733a31313a224e44414d204e646a6f7961223b656d61696c7c733a31373a22656d61696c313340676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('d2239afed07cc2da26e2a8041daf9b38192e5a66', '192.168.1.54', 1605706453, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630353730363234373b),
('d4398426dfa16a103be1931075369b2a01da9fcd', '192.168.1.52', 1605700797, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630353730303534373b),
('d452cb846da0a3b33d2050915ae6db3a9eb8e389', '172.16.168.28', 1605110577, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630353131303537303b),
('d9bc0cfa40311dd7f509b896b6340864e17ed791', '172.16.168.69', 1604486077, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630343438363037373b69645f757365727c733a313a2231223b726f6c657c733a313a2232223b6e616d655f757365727c733a32303a224d72204d656e67756520636f6e7374616e74696e223b656d61696c7c733a31363a226d656e67756540676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c4e3b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('dk1ppg1uhejr0qtq1ailrbdrbcbgiudm', '127.0.0.1', 1616675023, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631363637343939353b),
('e0q048hmbmh0ktsig28chj09ov7rj05h', '192.168.1.254', 1656687793, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635363638373739333b69645f757365727c733a323a223138223b726f6c657c733a313a2236223b6e616d655f757365727c733a31313a224e44414d204e646a6f7961223b656d61696c7c733a31373a22656d61696c313340676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('e2qdsi3m9i7c0mgguv3bjh9uv71ggta0', '192.168.1.221', 1631630761, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633313633303736313b),
('e76vqekghqd2jhp92d1kvto8hocafe0m', '192.168.1.13', 1636114788, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633363131343738383b69645f757365727c733a323a223138223b726f6c657c733a313a2236223b6e616d655f757365727c733a31313a224e44414d204e646a6f7961223b656d61696c7c733a31373a22656d61696c313340676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('efc4ddb92772157c417b6c01269e8761e27652ec', '172.16.168.69', 1604485626, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630343438353632363b69645f757365727c733a313a2231223b726f6c657c733a313a2232223b6e616d655f757365727c733a32303a224d72204d656e67756520636f6e7374616e74696e223b656d61696c7c733a31363a226d656e67756540676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c4e3b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('ennf2taj741tna4afifu1s38ks2cauc7', '192.168.1.203', 1649509190, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393530393139303b),
('f15agst5h5sd22559kn6h6mekpln26ck', '192.168.1.13', 1623073877, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333037333837373b6d6573736167657c733a32393a22436f6e6e656374657a20766f757320706f757220636f6e74696e756572223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d),
('f3b726e0597a9277318d231e50d318676433e73d', '172.16.168.69', 1604490223, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630343439303232333b69645f757365727c733a313a2231223b726f6c657c733a313a2232223b6e616d655f757365727c733a32303a224d72204d656e67756520636f6e7374616e74696e223b656d61696c7c733a31363a226d656e67756540676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c4e3b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('fda7b9a88dc17d8cdf81bf665ccc0809851d9841', '172.16.168.69', 1604488822, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630343438383832323b69645f757365727c733a313a2231223b726f6c657c733a313a2232223b6e616d655f757365727c733a32303a224d72204d656e67756520636f6e7374616e74696e223b656d61696c7c733a31363a226d656e67756540676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c4e3b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('fe135b04hl0nmce97q6u0lmglm5q0i4a', '192.168.1.13', 1647258019, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634373235383031393b69645f757365727c733a313a2233223b726f6c657c733a313a2236223b6e616d655f757365727c733a31343a2244616e67626520457a656b69656c223b656d61696c7c733a32323a2264616e676265657a656b69656c407961686f6f2e6672223b736572766963657c733a333a22444649223b706f7374657c733a313a2236223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b6d6573736167657c733a33363a22566f7573206e276176657a2070617320616363c3a87320c3a02063657420657370616365223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d),
('fh9q423io85ak26cavvm1pa0bngmv2jt', '192.168.1.4', 1647518700, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634373531383730303b69645f757365727c733a323a223138223b726f6c657c733a313a2236223b6e616d655f757365727c733a31313a224e44414d204e646a6f7961223b656d61696c7c733a31373a22656d61696c313340676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('fi2t33d8eh2vj0fm02c08rpug0ahhvvl', '192.168.1.203', 1647262832, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634373236323833323b69645f757365727c733a323a223138223b726f6c657c733a313a2236223b6e616d655f757365727c733a31313a224e44414d204e646a6f7961223b656d61696c7c733a31373a22656d61696c313340676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('fk41ine59tup6uc5h31mqrn9i1f3o39e', '192.168.1.54', 1618651883, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631383635313838333b),
('fs1qojki0enm6hs391av5s1kuj5h6i2j', '192.168.1.203', 1646922437, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363932323433373b69645f757365727c733a323a223138223b726f6c657c733a313a2236223b6e616d655f757365727c733a31313a224e44414d204e646a6f7961223b656d61696c7c733a31373a22656d61696c313340676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('g1hpfag1heqjuo1b93pqii7aqo0o57us', '192.168.1.13', 1634307847, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633343330373834373b69645f757365727c733a323a223138223b726f6c657c733a313a2236223b6e616d655f757365727c733a31313a224e44414d204e646a6f7961223b656d61696c7c733a31373a22656d61696c313340676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('g6ilop412k7fmqk1hlp4h08qq0isd32n', '192.168.1.13', 1634307003, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633343330373030333b69645f757365727c733a323a223138223b726f6c657c733a313a2236223b6e616d655f757365727c733a31313a224e44414d204e646a6f7961223b656d61696c7c733a31373a22656d61696c313340676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('gbocu0n5q1kt34uoh8ja4kha1mobbgrj', '192.168.1.13', 1647262222, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634373236323136313b69645f757365727c733a323a223138223b726f6c657c733a313a2236223b6e616d655f757365727c733a31313a224e44414d204e646a6f7961223b656d61696c7c733a31373a22656d61696c313340676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a323b),
('glvbg1atslnvnljojech4j308g3q6cu5', '192.168.1.4', 1647530128, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634373533303132383b69645f757365727c733a323a223138223b726f6c657c733a313a2236223b6e616d655f757365727c733a31313a224e44414d204e646a6f7961223b656d61696c7c733a31373a22656d61696c313340676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a333b),
('hp3m06tbp4p9oq1794inob29lb8djltc', '192.168.1.4', 1656688914, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635363638383738393b69645f757365727c733a323a223138223b726f6c657c733a313a2236223b6e616d655f757365727c733a31313a224e44414d204e646a6f7961223b656d61696c7c733a31373a22656d61696c313340676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('idv0ts6or5psr4h82vetpl8g3sro4rqo', '192.168.1.254', 1656688789, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635363638383738393b69645f757365727c733a323a223138223b726f6c657c733a313a2236223b6e616d655f757365727c733a31313a224e44414d204e646a6f7961223b656d61696c7c733a31373a22656d61696c313340676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('ipmtonjejuuihtnvkclgq3opmks59sbf', '192.168.1.4', 1656606856, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635363630363835363b),
('is44buvah5hlhlpijhhfc7tguvnasdgb', '192.168.1.13', 1634307306, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633343330373330363b6d6573736167657c733a32393a22436f6e6e656374657a20766f757320706f757220636f6e74696e756572223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226e6577223b7d),
('iv1dbtqkehgiv8e52e12c8e2kkh7s233', '192.168.1.203', 1639489194, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393438393134313b),
('j1euejmrdkeu14imf5v7rf9j5mr0s9pa', '192.168.1.13', 1637572917, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633373537323931373b),
('j2ei0roitbvdke68self752jfv1fktqa', '192.168.1.203', 1646923996, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363932333939363b69645f757365727c733a323a223138223b726f6c657c733a313a2236223b6e616d655f757365727c733a31313a224e44414d204e646a6f7961223b656d61696c7c733a31373a22656d61696c313340676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('j2figvqhb1n93opnd4evci7i0mpamo6e', '192.168.1.4', 1647603411, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634373630333133343b),
('jb5a5gi6ono0spjsn1cs2tio2ahfhdqe', '192.168.1.13', 1652107155, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323130373135353b69645f757365727c733a323a223138223b726f6c657c733a313a2236223b6e616d655f757365727c733a31313a224e44414d204e646a6f7961223b656d61696c7c733a31373a22656d61696c313340676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('jir0l54hnfjshl7e9bppo320hrkn29ol', '192.168.1.13', 1647259367, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634373235393336373b69645f757365727c733a323a223138223b726f6c657c733a313a2236223b6e616d655f757365727c733a31313a224e44414d204e646a6f7961223b656d61696c7c733a31373a22656d61696c313340676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('jp1kq4jmcliu67vdljmbaupi78edc91n', '192.168.1.13', 1647261187, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634373236313138373b69645f757365727c733a323a223138223b726f6c657c733a313a2236223b6e616d655f757365727c733a31313a224e44414d204e646a6f7961223b656d61696c7c733a31373a22656d61696c313340676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('kbvpv4c6ud2i73eat5bbf095m8961btn', '192.168.1.13', 1618576285, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631383537363238353b),
('kpk5frvq07ap9jahn3h147guouslfegv', '192.168.1.13', 1634308427, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633343330383235333b69645f757365727c733a323a223138223b726f6c657c733a313a2236223b6e616d655f757365727c733a31313a224e44414d204e646a6f7961223b656d61696c7c733a31373a22656d61696c313340676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('ljrc3pblgfctj6856hdj4hpujsb438te', '192.168.1.13', 1634307306, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633343330373330363b),
('lmvp65jcflfnj4vag2u9ld7eclil93qk', '192.168.1.13', 1652104464, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323130343436343b69645f757365727c733a323a223138223b726f6c657c733a313a2236223b6e616d655f757365727c733a31313a224e44414d204e646a6f7961223b656d61696c7c733a31373a22656d61696c313340676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('lq3tjv0tp9kuepol6ir2m43rfbo4mq9i', '192.168.1.219', 1623072918, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333037323931383b69645f757365727c733a323a223238223b726f6c657c733a313a2236223b6e616d655f757365727c733a31373a2244722044414e47424520457a656b69656c223b656d61696c7c733a32323a2264616e676265657a656b69656c407961686f6f2e6672223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a353b),
('m01s0frkc10l8omp8seng7etqdm3vhe5', '192.168.1.13', 1637146081, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633373134363038313b),
('m3sovhgo7cstuv6pj9ov8h71lt2ehid6', '192.168.1.254', 1656686904, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635363638363930343b69645f757365727c733a323a223138223b726f6c657c733a313a2236223b6e616d655f757365727c733a31313a224e44414d204e646a6f7961223b656d61696c7c733a31373a22656d61696c313340676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('m89l14f10s6elha8h3pfcgq2o93mvr0i', '192.168.1.219', 1623071780, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333037313738303b),
('m9hldt8b7e8d8drmakgdte9qharq09ou', '192.168.1.219', 1623073585, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333037333538353b69645f757365727c733a323a223238223b726f6c657c733a313a2236223b6e616d655f757365727c733a31373a2244722044414e47424520457a656b69656c223b656d61696c7c733a32323a2264616e676265657a656b69656c407961686f6f2e6672223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a353b),
('n13aatmrhdp9vtlp0kkfq10mhufog7vr', '192.168.1.203', 1647260213, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634373236303231333b69645f757365727c733a323a223138223b726f6c657c733a313a2236223b6e616d655f757365727c733a31313a224e44414d204e646a6f7961223b656d61696c7c733a31373a22656d61696c313340676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('n54hst33idcmclrqdsfupkn1f45vm4ak', '192.168.1.13', 1648115780, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383131353738303b69645f757365727c733a323a223138223b726f6c657c733a313a2236223b6e616d655f757365727c733a31313a224e44414d204e646a6f7961223b656d61696c7c733a31373a22656d61696c313340676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('nbbi1p2berqh47nocnt4s8ts00bqbfj2', '192.168.1.13', 1636114789, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633363131343738393b),
('ndpnbq781635k407rjij2o5a7oucdr3a', '192.168.1.13', 1647262161, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634373236323136313b69645f757365727c733a323a223138223b726f6c657c733a313a2236223b6e616d655f757365727c733a31313a224e44414d204e646a6f7961223b656d61696c7c733a31373a22656d61696c313340676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a323b),
('nfvfovn9r4fmeudrrhik7abnjn3ov2rk', '192.168.1.13', 1652106534, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323130363533343b69645f757365727c733a323a223138223b726f6c657c733a313a2236223b6e616d655f757365727c733a31313a224e44414d204e646a6f7961223b656d61696c7c733a31373a22656d61696c313340676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('no29bs03r4s9c6u7t3b1gc6kn5jgbfu5', '192.168.1.4', 1647531148, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634373533313134383b69645f757365727c733a323a223138223b726f6c657c733a313a2236223b6e616d655f757365727c733a31313a224e44414d204e646a6f7961223b656d61696c7c733a31373a22656d61696c313340676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('o20j0rrfhni5h1eosfct0331jn49faau', '192.168.1.254', 1656688486, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635363638383438363b69645f757365727c733a323a223138223b726f6c657c733a313a2236223b6e616d655f757365727c733a31313a224e44414d204e646a6f7961223b656d61696c7c733a31373a22656d61696c313340676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('oe0bj8rs7llbueqhns18reu6l59vddho', '192.168.1.13', 1656939403, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635363933393330343b6d6573736167657c733a32393a22436f6e6e656374657a20766f757320706f757220636f6e74696e756572223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d),
('oifn1fembrjl7t22vc4irtnklv8vv9dg', '192.168.1.4', 1647518218, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634373531383231383b69645f757365727c733a323a223138223b726f6c657c733a313a2236223b6e616d655f757365727c733a31313a224e44414d204e646a6f7961223b656d61696c7c733a31373a22656d61696c313340676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('pfdit1cphrum0taua97g7vdg7ro6rfop', '127.0.0.1', 1616753738, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631363735333732383b),
('pm81i1846bmfgao4fha73u40qvqp78r6', '127.0.0.1', 1623073876, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333037333837363b),
('pph7e3rrqdj64feqjgaia8tbf6qvjbq0', '192.168.1.13', 1647258811, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634373235383831313b69645f757365727c733a323a223138223b726f6c657c733a313a2236223b6e616d655f757365727c733a31313a224e44414d204e646a6f7961223b656d61696c7c733a31373a22656d61696c313340676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('q7rekvfpc12r3apfl1dlb74c7og7vvd2', '192.168.1.13', 1636114413, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633363131343431333b69645f757365727c733a323a223138223b726f6c657c733a313a2236223b6e616d655f757365727c733a31313a224e44414d204e646a6f7961223b656d61696c7c733a31373a22656d61696c313340676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('q832rrjq9k6m8n5v8pa33g12b6val2mu', '127.0.0.1', 1618576735, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631383537363733353b69645f757365727c733a323a223238223b726f6c657c733a313a2236223b6e616d655f757365727c733a31373a2244722044414e47424520457a656b69656c223b656d61696c7c733a32323a2264616e676265657a656b69656c407961686f6f2e6672223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('q9gk1gmrpk2rdjtvnif8cehmsdjae4tp', '192.168.1.13', 1648117135, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383131373133353b69645f757365727c733a323a223138223b726f6c657c733a313a2236223b6e616d655f757365727c733a31313a224e44414d204e646a6f7961223b656d61696c7c733a31373a22656d61696c313340676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('qaq96rsinn2qa38sp98kmod3ih4658s9', '192.168.1.13', 1631961369, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633313936313336393b);
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('qmep2gkjl5q1de0jsb8m0celdh0er4pe', '192.168.1.4', 1647526978, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634373532363937383b69645f757365727c733a323a223138223b726f6c657c733a313a2236223b6e616d655f757365727c733a31313a224e44414d204e646a6f7961223b656d61696c7c733a31373a22656d61696c313340676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('qqt85k4c29hbd3rmp5kasabsdjo2o7ml', '192.168.1.13', 1631961379, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633313936313336393b),
('ri5pb30coqjsni568csmgp9nrrg7varp', '192.168.1.13', 1636114108, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633363131343130383b),
('rus19urn3kuct9hekhia5p42ndg99e1o', '192.168.1.13', 1656938637, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635363933383633373b69645f757365727c733a323a223138223b726f6c657c733a313a2236223b6e616d655f757365727c733a31313a224e44414d204e646a6f7961223b656d61696c7c733a31373a22656d61696c313340676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('s5phr69hpf4l7urjm0l2bhd0su37cq18', '192.168.1.13', 1652105744, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323130353734343b69645f757365727c733a323a223138223b726f6c657c733a313a2236223b6e616d655f757365727c733a31313a224e44414d204e646a6f7961223b656d61696c7c733a31373a22656d61696c313340676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('s7s40l9nu3ifcq6570a42kq58ps4tnto', '192.168.1.13', 1634553140, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633343535333134303b6d6573736167657c733a32393a22436f6e6e656374657a20766f757320706f757220636f6e74696e756572223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d),
('s9jhm1m6v47dhhko22admpp1g2noh0gh', '192.168.1.219', 1618653187, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631383635333138373b),
('sig887a64ntmc7gfhju707empuq0jkhq', '192.168.1.203', 1631617268, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633313631373030353b69645f757365727c733a323a223138223b726f6c657c733a313a2236223b6e616d655f757365727c733a31313a224e44414d204e646a6f7961223b656d61696c7c733a31373a22656d61696c313340676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('ss0gsaos1mvil69ss80bh1ssca5nknkn', '192.168.1.13', 1618655029, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631383635353032393b),
('sscniu4s1f8menttknqgf6f6vnaoadm9', '192.168.1.13', 1648568858, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383536383835383b6d6573736167657c733a32393a22436f6e6e656374657a20766f757320706f757220636f6e74696e756572223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d),
('t50k258ilrucemi4o49ag41bleg1ghjs', '192.168.1.13', 1648117536, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634383131373533363b69645f757365727c733a323a223138223b726f6c657c733a313a2236223b6e616d655f757365727c733a31313a224e44414d204e646a6f7961223b656d61696c7c733a31373a22656d61696c313340676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('t5ek1pltrq9tqe8a6qijbf0lqsjb7jmc', '192.168.1.254', 1656687224, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635363638373232343b69645f757365727c733a323a223138223b726f6c657c733a313a2236223b6e616d655f757365727c733a31313a224e44414d204e646a6f7961223b656d61696c7c733a31373a22656d61696c313340676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('taqgqaotkmr1atuk94dkcd03mjip61og', '192.168.1.13', 1647259691, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634373235393639313b69645f757365727c733a323a223138223b726f6c657c733a313a2236223b6e616d655f757365727c733a31313a224e44414d204e646a6f7961223b656d61696c7c733a31373a22656d61696c313340676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('tu0llcv9bcmc5nam3lketlcoep722jdb', '192.168.1.4', 1647531168, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634373533313134383b69645f757365727c733a323a223138223b726f6c657c733a313a2236223b6e616d655f757365727c733a31313a224e44414d204e646a6f7961223b656d61696c7c733a31373a22656d61696c313340676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('tusiuii9hq74h6cbtg1613c9ukdqh9h7', '192.168.1.4', 1647529384, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634373532393338343b69645f757365727c733a323a223138223b726f6c657c733a313a2236223b6e616d655f757365727c733a31313a224e44414d204e646a6f7961223b656d61696c7c733a31373a22656d61696c313340676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('u1b3fnh0ab3haivt869ie7fdg5u8bcqd', '192.168.1.13', 1618655020, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631383635353032303b),
('u2cfc9gtn77j5163d16sh6qlj602encc', '192.168.1.13', 1634306702, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633343330363730323b),
('u4g4mn9cbrigfhjung2jhnog3nqmicdh', '192.168.1.203', 1646924107, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634363932333939363b69645f757365727c733a323a223138223b726f6c657c733a313a2236223b6e616d655f757365727c733a31313a224e44414d204e646a6f7961223b656d61696c7c733a31373a22656d61696c313340676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('u73uk7qdnudpb0a11eqvsmnra1420i97', '192.168.1.254', 1656688121, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635363638383132313b69645f757365727c733a323a223138223b726f6c657c733a313a2236223b6e616d655f757365727c733a31313a224e44414d204e646a6f7961223b656d61696c7c733a31373a22656d61696c313340676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('u8gr74v7dup5m9arb6meblpef8874qn5', '192.168.1.13', 1618576468, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631383537363238353b),
('un5eejjccuvrkb31587c9cdmgutl30jc', '192.168.1.13', 1652104783, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323130343738333b69645f757365727c733a323a223138223b726f6c657c733a313a2236223b6e616d655f757365727c733a31313a224e44414d204e646a6f7961223b656d61696c7c733a31373a22656d61696c313340676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('un7g3dtui4vlo4c2koq95dvo2n7aie3u', '192.168.1.219', 1618655018, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631383635353031383b),
('uq3rbhmjfipk7o0i1krf125aae5b2ut1', '192.168.1.13', 1656690627, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635363639303334313b69645f757365727c733a323a223138223b726f6c657c733a313a2236223b6e616d655f757365727c733a31313a224e44414d204e646a6f7961223b656d61696c7c733a31373a22656d61696c313340676d61696c2e636f6d223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a313b),
('v6d6vc1gs6lvm4t7u10j07ospf8m9ubc', '192.168.1.219', 1623077689, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333037373638393b69645f757365727c733a323a223238223b726f6c657c733a313a2236223b6e616d655f757365727c733a31373a2244722044414e47424520457a656b69656c223b656d61696c7c733a32323a2264616e676265657a656b69656c407961686f6f2e6672223b736572766963657c733a383a22535f737461676573223b706f7374657c733a313a2234223b67726164657c733a313a2232223b6c6f676765645f696e7c623a313b636f756e747c693a353b),
('vij55cghhi8rct858e55hr4d67j4v435', '192.168.1.54', 1618655001, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631383635353030313b);

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

CREATE TABLE `commentaire` (
  `id_commentaire` int(11) NOT NULL,
  `commenteur` varchar(60) NOT NULL,
  `date` date NOT NULL,
  `heure` time NOT NULL,
  `destinée_a` varchar(60) NOT NULL,
  `id_tache` int(11) NOT NULL,
  `id_enc` int(11) NOT NULL,
  `id_forum` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `id_personnel` int(11) NOT NULL,
  `id_dossier` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `commentaires`
--

CREATE TABLE `commentaires` (
  `id_commentaite` int(11) NOT NULL,
  `commentaire` text NOT NULL,
  `personnel_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `dossier_id` int(11) NOT NULL,
  `ec_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `commentaires`
--

INSERT INTO `commentaires` (`id_commentaite`, `commentaire`, `personnel_id`, `date`, `dossier_id`, `ec_id`) VALUES
(1, 'Absent', 35, '2021-04-16 11:20:16', 74, 27),
(2, 'Assamaou est  absente', 35, '2021-04-16 11:20:16', 85, 27),
(3, 'Eto s4est jamais presente', 35, '2021-04-16 11:20:16', 93, 27),
(4, 'Trop distraite pendant le cours', 35, '2021-04-16 11:20:16', 102, 27),
(5, 'Ntenga est absent', 35, '2021-04-16 11:20:16', 124, 27),
(6, '', 27, '2021-04-16 11:20:16', 125, 34),
(7, '', 27, '2021-04-16 11:20:16', 129, 34);

-- --------------------------------------------------------

--
-- Structure de la table `comptes`
--

CREATE TABLE `comptes` (
  `id_compte` int(11) NOT NULL,
  `speudo` varchar(50) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `personnel_id` int(11) NOT NULL,
  `statut` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `comptes`
--

INSERT INTO `comptes` (`id_compte`, `speudo`, `pass`, `personnel_id`, `statut`) VALUES
(1, 'admin_iut', 'a6f0ebd95454d8990eb6e3bfd1183b7fdc02d300f84997996df1ad50c84ec1b0f1bea2b9bcbc39a974a489867be85d160f46b8cf061df69dacca274aaf1270373t4zbpuEthJrY71/dcbIdPUdWevYuXHZshjMmfi50t8=', 1, 1),
(2, 'kani90', '1aceb59f9383dd2ce5d9802ce23d570520f077f8ee4863df84d3fa87699b9067069c569e33464787edf3ff0b9cdcaeef899aa288b68091bb87437c7ff7b01dc3xfUynPE+vAq9ICRfg2V+AIm9LhhQFqScYzwFjUT6Jdc=', 2, 1),
(3, 'dangbe', '08166396c99937923c7b59679c1f99a79d65ccd2d5f822d8e857d73396373ff83cf7ed7787c9fdd18786d436c87ec92c1680fb2e654389af4f8f59002231a681goe7J8X4xFMFr4GRFkLYZin4357VGQTnTAVgyLYfonE=', 3, 1),
(4, 'yenke', '71b46e2f31b93e369b34a49e73afae82b994c7460a058ce187e9d7d5c999d696ed0910aec2abdae29bc61c676027b89adafb60dec0c650ccdfcf2e404cca51263X/AVMil1ZhxAexp1E4ZcRL9Fcqfrxb64xhwk0ACGzc=', 9, 1),
(5, 'fendji', '7399a75449afd10ba983edb6d7c21ac2b4de469262b0f097d48e55b835f93e919b7497d67f0163b9d5f3b63ede761c2ec642b759d06b2445c78247cfd38a79cfLBgfMbIfYP7ngb82aqTr3gEI+rOny2SW3h+5bjt8JkY=', 17, 1),
(6, 'arndam', '764d61a467bda3801f16e568ccec2c5b862b037e9774cc48429936653f927fb055ecc4e418cb02d8e1c41f53bf4323635291b34f8cbb7cd8af30c64317e707f0z3GlDOjlKAf8q02K/Q+xIF5T0jvJ4sY9J1kPWjQsslQ=', 18, 1),
(7, 'marthe', 'a8e69d2d9a5e637a23ffc46e2a1d98cb81f9b8b176000dfeb91d6b2619a66eb41215d4cb67c8c59fa14056d50a315f7722c0f2308f0a4d126bcb48bd7220199elYuwvHVFEieJ4cQ70oxeyD75ImYkU58VZPHzon39ltc=', 22, 1),
(9, 'hassanaK', 'd346316829dc1f2fa888ff917e4c844f132bbbb09eeefd5a4ac403e7c3402030f45ac5ad5d20db16262dde70fa54632d39dfa77fecd58cb774eab11369389201ZjkF7WrYtc4VxiRVGBGtB2cfHXszdz3oy90O16b/xtM=', 23, 1),
(10, 'examen', '388ad4e50a829ede0a27093ca8b4612e4918f80b780a145de0af349c0f1f1f65cbf5ad96191d7d21df149a36396fa76f74c9c3ae652d73dcec85fb378c1bb0caNTpwLy3W/pwokW1hjOqzBNvik2kRIa6o4F0rfg8ffXM=', 32, 1),
(12, 'dompet', '29ed07e089b4360432b22397d43cab6e87025576cf0a2e68e50b791478364b9c39fd088161b8999d351761b4f70ba2fed7a118eb92f6c57dd7e5823920238323zhDvoCTrJHVTT0RSFoLyTeGMuAzhtGVBmO7YKuTj/zA=', 36, 1),
(13, 'laurette', '337993ac006bb0ec4d86e38e925b8cbb15a817b197bff33290bebac7c661f1b4712c3640b3eefd7acf3d74d8d732f62e1afb06add29cf26a6c376f49780b590ai6t2RBPUKrIVhZOTMdiyGuAX8jCiDSyIteTQ3SPadns=', 37, 1),
(14, 'test', '$2y$10$wyLnE/FHhi7WvxwVHaBQtuK.0TCIlKxZ8E5KT0Dr4/k/N0P9Clp5a', 18, 1);

-- --------------------------------------------------------

--
-- Structure de la table `correspondancecmp`
--

CREATE TABLE `correspondancecmp` (
  `id` int(11) NOT NULL,
  `mention` int(11) NOT NULL,
  `cycle` int(11) NOT NULL,
  `parcours` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `correspondancecmp`
--

INSERT INTO `correspondancecmp` (`id`, `mention`, `cycle`, `parcours`) VALUES
(1, 11, 4, 14),
(2, 11, 4, 1),
(3, 11, 4, 2),
(4, 11, 4, 3),
(5, 11, 3, 1),
(6, 11, 3, 2),
(7, 11, 3, 3),
(8, 9, 4, 5),
(9, 9, 3, 15),
(10, 9, 3, 16),
(11, 13, 4, 4),
(12, 13, 4, 12),
(13, 13, 4, 11),
(14, 13, 4, 10),
(15, 13, 4, 13),
(16, 11, 3, 14);

-- --------------------------------------------------------

--
-- Structure de la table `correspondances`
--

CREATE TABLE `correspondances` (
  `id_correspondance` int(11) NOT NULL,
  `cycle_id` int(11) NOT NULL,
  `mention_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `correspondances`
--

INSERT INTO `correspondances` (`id_correspondance`, `cycle_id`, `mention_id`) VALUES
(1, 1, 62),
(2, 1, 60),
(3, 1, 64),
(4, 2, 62),
(5, 2, 64),
(6, 2, 60);

-- --------------------------------------------------------

--
-- Structure de la table `correspondance_motcle`
--

CREATE TABLE `correspondance_motcle` (
  `id` int(11) NOT NULL,
  `mot-cle` int(11) NOT NULL,
  `memoire` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `critere_absence`
--

CREATE TABLE `critere_absence` (
  `id_critere` int(255) NOT NULL,
  `avertissement` int(255) DEFAULT 0,
  `message1` text DEFAULT NULL,
  `blame` int(255) DEFAULT 0,
  `message2` text DEFAULT NULL,
  `exclusion` int(255) DEFAULT 0,
  `message3` text DEFAULT NULL,
  `message_tranche1` text DEFAULT NULL,
  `message_tranche2` text DEFAULT NULL,
  `message_totalite` text DEFAULT NULL,
  `annee_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `critere_absence`
--

INSERT INTO `critere_absence` (`id_critere`, `avertissement`, `message1`, `blame`, `message2`, `exclusion`, `message3`, `message_tranche1`, `message_tranche2`, `message_totalite`, `annee_id`) VALUES
(4, 10, 'Faites attention a votre conduite chers étudiants. vous risquez d’être traduit au conseil de discipline pour avertissement.', 20, 'Faites attention a votre conduite chers étudiants. vous risquez d’être traduit au conseil de discipline pour blâme et conduite.', 30, 'Faites attention a votre conduite chers étudiants. vous risquez d’être traduit au conseil de discipline pour exclusion.', 'Veuillez payer votre 1ere tranche de scolarité avant le 22/11/2021.', 'Veuillez payer votre 2eme tranche de scolarité avant le 12/03/2022.', 'Vous vous êtes déjà acquitté de vos frais de scolarité.', 2);

-- --------------------------------------------------------

--
-- Structure de la table `cycles`
--

CREATE TABLE `cycles` (
  `id_cycle` int(11) NOT NULL,
  `abreviation_cycle` varchar(50) NOT NULL,
  `intitule_cycle` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `cycles`
--

INSERT INTO `cycles` (`id_cycle`, `abreviation_cycle`, `intitule_cycle`) VALUES
(1, 'DUT', 'DUT'),
(2, 'BTS', 'BTS'),
(3, 'LITECH', 'LITECH');

-- --------------------------------------------------------

--
-- Structure de la table `cycle_mention`
--

CREATE TABLE `cycle_mention` (
  `cycle_id` int(11) NOT NULL,
  `mention_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `cycle_mention`
--

INSERT INTO `cycle_mention` (`cycle_id`, `mention_id`) VALUES
(1, 10),
(2, 10),
(3, 10),
(1, 14),
(1, 18),
(1, 27),
(3, 27),
(1, 28),
(3, 28),
(2, 29),
(2, 13);

-- --------------------------------------------------------

--
-- Structure de la table `cycle_parcour`
--

CREATE TABLE `cycle_parcour` (
  `cycle_id` int(11) NOT NULL,
  `parcour_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `cycle_parcour`
--

INSERT INTO `cycle_parcour` (`cycle_id`, `parcour_id`) VALUES
(1, 5),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(2, 6),
(2, 7),
(3, 6),
(3, 8),
(3, 9),
(3, 10),
(3, 11),
(3, 12),
(3, 13),
(3, 14),
(3, 15),
(3, 17);

-- --------------------------------------------------------

--
-- Structure de la table `departements`
--

CREATE TABLE `departements` (
  `id_departement` int(11) NOT NULL,
  `nom_departement` varchar(50) NOT NULL,
  `abreviation` varchar(50) NOT NULL,
  `service_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `departements`
--

INSERT INTO `departements` (`id_departement`, `nom_departement`, `abreviation`, `service_id`) VALUES
(1, 'Genie Informatique', 'GIN', 6),
(2, 'Enseignements Généraux', 'EG', 6),
(3, 'Enseignements Scientifiques de Base', 'ESB', 6),
(4, 'Génie Energétique', 'GENERG', 6),
(5, 'Génie Alimentaire et Contrôle de Qualité', 'GACQ', 6),
(6, 'Génie Chimique', 'GCHIM', 6),
(7, 'Génie Electrique', 'GEL', 6),
(8, 'Génie Mécanique', 'GMECA', 6);

-- --------------------------------------------------------

--
-- Structure de la table `deroulements`
--

CREATE TABLE `deroulements` (
  `id_deroulement` int(11) NOT NULL,
  `periode` varchar(50) NOT NULL,
  `examen_id` int(11) NOT NULL,
  `salle_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `deroulements`
--

INSERT INTO `deroulements` (`id_deroulement`, `periode`, `examen_id`, `salle_id`) VALUES
(4, '07-Oct-2020', 40, 3),
(5, '10-Oct-2020', 42, 3),
(6, '10-Oct-2020', 42, 2),
(9, '27-Oct-2020', 57, 3),
(10, '27-Oct-2020', 57, 2),
(11, '31-Oct-2020', 58, 3),
(12, '31-Oct-2020', 58, 2),
(17, '12-Nov-2020', 71, 5),
(18, '12-Nov-2020', 71, 4),
(26, '09-Jul-2022', 298, 5),
(27, '09-Jul-2022', 298, 2),
(28, '09-Jul-2022', 299, 5),
(29, '09-Jul-2022', 300, 5);

-- --------------------------------------------------------

--
-- Structure de la table `documents`
--

CREATE TABLE `documents` (
  `id_doc` int(11) NOT NULL,
  `nom_doc` varchar(255) NOT NULL,
  `date_archivage` date NOT NULL,
  `date_archivage_auto` datetime NOT NULL,
  `modifier` datetime NOT NULL,
  `description_doc` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=publier|0=depubler',
  `categorie_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `documents`
--

INSERT INTO `documents` (`id_doc`, `nom_doc`, `date_archivage`, `date_archivage_auto`, `modifier`, `description_doc`, `status`, `categorie_id`) VALUES
(2, 'doc test', '2022-04-09', '2022-04-09 14:40:23', '2022-04-09 14:40:23', 'document de test', 1, 2),
(28, 'liste_etudiant', '2020-11-12', '2020-11-12 10:02:18', '2020-11-12 10:02:18', 'listes des etudiants', 1, 27);

-- --------------------------------------------------------

--
-- Structure de la table `document_stage`
--

CREATE TABLE `document_stage` (
  `id` int(11) NOT NULL,
  `nom_doc` varchar(30) NOT NULL,
  `chemin` int(11) NOT NULL,
  `propietaire` varchar(60) NOT NULL,
  `date_depot` date NOT NULL,
  `id_enc` int(11) NOT NULL,
  `id_dossier` int(11) NOT NULL,
  `id_personnel` int(11) NOT NULL,
  `id_tache` int(11) NOT NULL,
  `id_dossier_stage` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `dossiers`
--

CREATE TABLE `dossiers` (
  `id_dossier` int(11) NOT NULL,
  `annee_id` int(11) NOT NULL,
  `niv_par_id` int(11) NOT NULL,
  `etudiant_id` int(11) NOT NULL,
  `mot_de_passe` varchar(255) NOT NULL,
  `statut_admission` enum('admis','recale','null','') DEFAULT NULL,
  `statut` enum('admis','echec','compansable','null','') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `dossiers`
--

INSERT INTO `dossiers` (`id_dossier`, `annee_id`, `niv_par_id`, `etudiant_id`, `mot_de_passe`, `statut_admission`, `statut`) VALUES
(1, 2, 10, 1, '4247447545f6558eb3f64adda0ff0f8cf5df5355ce0dfef86b7134515568d0f1829ed5fb208f0ea1ca25c069bd728d0493839349425931a6a0b40cc18c2ea6a6hylLVUs3NYP1CuA43IoG/vKU+9dupfAyM9qKsVT0syo=', NULL, NULL),
(2, 2, 10, 2, '5eaa13edc58f2ad028190b3e7693ed9c0e1a254f12eb4361683d14e44f4776a5c9028c4ac6e6bbe428345ec0b4efd7cfed2d0a1fafcd16de4c8717720fdedd67H9xmBzg+BtLNsWnn9DxAutyv6jxSesYcKS3fOpJVFVQ=', NULL, NULL),
(3, 2, 10, 3, '1febc7387482943c57bdfab61604ae74ac4eac160f569cb9461cf9b0538e41b99ee8536cc4e47f691bbc0cd7206cb924b9d661c65923062919b958dce5837d42Lk86yG5h3KSjTLPfPDTxXaEudUx2bu7LQsKMTEiOq6k=', NULL, NULL),
(4, 2, 10, 4, 'f082cb2d76115c4598c1827241006888932ee40e8b6bfa61473d3f6a82762fa1d5b03ffe98e211ced949ab6d33b8e9466f6199381ad03138efab94a7ec33c2c1eKsyWj3NAxg27ZmUSrSsbmrTuYjtn1DvIHc4c7U0AsY=', NULL, NULL),
(5, 2, 10, 5, '1e414b4721b8424795a06827674747193281b9c7366a77df35d1278bb893b5c148753adb22faa01a7ef094187e0afc0aed7142c53d7086c2ab40710abe7d36f8JVM/PzwQddDIsUdbVG0KL3mHhRWxgsGywCoGAWHfl/4=', NULL, NULL),
(6, 2, 10, 6, '1e3b4de44ffd57cbb5107c68de8c2728829b9066eabe202e3a83da63a1d2026cfbb59a4cbdb8efbce64cc6b2adefe643deba45b593f289d76d931dae508854b25sw+6hccT8FP1evTUt6Q9YfSKZbfX2ZrOtRiWtpgupo=', NULL, NULL),
(7, 2, 10, 7, 'a7134c38b59139a414731ded3458da39320d04a67862d2595d1d43771aabe456a91c9031734448d5f3ca75c817acbba320f40052ca0aa98353f5af7c4a8b24bcVhusR1DxYWXKhse5MxsAy0j49HzozNf3JQnD4IHXgyM=', NULL, NULL),
(8, 2, 10, 8, 'f4512b1cf82b29e1a59b3d5b97991449e7a17fbb2540b79d36ae9eca85156296e7c52bea2a12488937000d72a9e14f24b45c0d3fbe7e4b6fba0ea35b3f0dd89fbaEHKyBgaFeJYxKSh//xS78eOjxyNgtnl0jfb0rdrRQ=', NULL, NULL),
(9, 2, 10, 9, '67dc85537e47aeeabce843ee85d4fabed985b8de7b546154b63a24c6366f98e1b9456baa6f07f00b8e693dab667e6bdd1d6a446b93b92a55d2a9c8d37a347d71cs/XRKlWla5pUluMVDm1M8QhLhXHYH4BgYw1CR21MSg=', NULL, NULL),
(10, 2, 10, 10, '410a5894ba145478b71e5e6ab1b86ced8cabc1b915a77390e7c60ea9f1c45c5034aa3a0b61d222492e97b91bbc8ba49e5ab0c5196683ca3d05cdb7022eaa7febVFP24mEQvO1YCNspNYUX+zoVOG0j5kGmKDAitI+T4w0=', NULL, NULL),
(11, 2, 10, 11, '7b99cadcd6747b42fc8b7cfd327469e0617d56c4406138d30f3eee3bef127efba1e910c371efcafef118f8aee7fbcf547fdaf8f8208a7305718bd4bc7db2c5486648y42V4sxWfxVbA/BJk9nqAkaKHR8TCypZ4W+aOjA=', NULL, NULL),
(12, 2, 10, 12, '3f277ae4fc744dbba2620120586e1460a4e1c85d063f84e08a7149e205bf9023b6eb237509e6c9331666f5cfc7ca4aa536f8907659ea1e39556a51c499346cabxTICjfGlQdcLbH/g0NvN9yc+mEmwNBqqk0mKlRtPyFg=', NULL, NULL),
(13, 2, 10, 13, 'bb5bc6fb9ea42e730797843b9893d70aa96c36431c160ff81564d371c40ea8e29d2ad4e5c54d7bf6e0ddf3bafd22c23ce081aa0b33d92a5db9c96f89ba990010ApSVyD3RMXG+f+6IksGRFiiPDOOiIVGuZfQZQAyTtUg=', NULL, NULL),
(14, 2, 10, 14, 'aebe6c366f3ec402b03690560cf52c7d51e3f4ef3e8eceacada17efd5e2d0717c5f1f814b8b660084c55e55146187a0e540583919552a0b8da60fac1e1b01c75MhLL3ynb8Y4hzw2xLJHNw+ISQ9p5g14sr+pqA8WW4wc=', NULL, NULL),
(15, 2, 10, 15, 'ed320ac9cdf5582b42bd6cd883a5020c4f27e68e8071c31489a90c5d06139942d9a73fdac61ed52c2e814579ed51d93fa8a2135b5c017d80d4f3cb69a228c193u/sTxialsIfFjcnFpAK68Ck38pI3F8sOwdin7K3FgQs=', NULL, NULL),
(16, 2, 10, 16, 'e24b20eb5efdb0ced18883b3ed3c7f507c43901c9eb3353dfa2b869b78ee1277bef33f2c0f96b5d5cc1eb3ae5723cdb1ac425d72a03b56d10d2959fc86d44a84E5KpHmGY6fcvjIBmzWwB2bd8mip6MhT1waHoY9RvcfI=', NULL, NULL),
(17, 2, 10, 17, '1f9470c63f3892888a364d4ff04b3ab8002fa797b77e59f099a60835aa94b691fd3b99be7471c954230e8a7ac56507d4576c160e5c7f8876921af2b98f6e400fi9DvXu6rSBGa2VHenSavkIWHX7YYJkQPsuDTcZBsgZ4=', NULL, NULL),
(18, 2, 10, 18, '070b70a5974b216bd47654998a138a77182e65a21cd3144a076d2d910f52934aaa000aa6b118eb07f6241a341591dd198fc6baa8ea731c7d31bb6b05cdf506150GVkFjvVqsmylwsXa+Qk+qxcRxIIRfHBm1fAN20mp8U=', NULL, NULL),
(19, 2, 10, 19, 'eb66e13c08ae42513a2fe5e81ca2b01e2962e2fd6b1c5436446b29499879867b46b20950b048ed99dec5b8aa5d140357baaea6c3704a1ca01a2e6e34f8677f48fbSrZ94qli6V8APKS5arQqM/4qER5HtNWTeEJ4jILkc=', NULL, NULL),
(20, 2, 10, 20, '9692ef09bb7ed9a6039942afd3d92bd248551459ca4b47f528ab23db6b5bc11608255ee29ec69518e02b1a622b7748ddcb9a0bc0fdf646d995970f5d6e931b25SFQrR7uibJ0GZhvPVVSiBad6eIJ5ZBcs3h+GIAcWKzE=', NULL, NULL),
(21, 2, 10, 21, '45a925162ecd955333335a42e5c1ee9e81181cf969246a9ba7278400e79d888efd803407da31ed8a81039e17d73dddbbf17fc2651be397292d37cf43d2119b8bAYJPYxM1T8N1e/tPk8tJBtlP2irtmn8n9CcL72sPtCo=', NULL, NULL),
(22, 2, 10, 22, 'dd0031e017a3803c64afc959f89c31c9f7906bc1a42ca317d032da895dd93d51611929fc8d287f41383a5cff6c3c80f25f93ba13a5104a7b8be944988c326d505cY0S2N4y5MqWCQnGi6gLqnJJ3Vx7KxhPxQBJfQthbo=', NULL, NULL),
(23, 2, 10, 23, 'e82474f9bedca47ddb7d6872b8e128e1f61da745b1c3c96b936c0e349b63670fba2bcbac2cb9a7e1c4ed79c70d0a53308975740e835f079147b4a36b5539ed08Wqh5BMp3PHMPdh8w+nxWHZAWi/ZkjYjRwVG3YFIMzDU=', NULL, NULL),
(24, 2, 10, 24, '0ef164441ef607703f278d6e834cd45bdcfbdb8f09a4a1288867f83064a152c6677ddb4946683b3a1cf18f0e132531b4d75b54967aa43394538db51b6d3156934bsXsNNFQwOgXnBVyrYQZCHWRKUlLzk4ZOR+64Du5VI=', NULL, NULL),
(25, 2, 10, 25, 'b25d9e38927e37d9dc10870985941a0e954b2f9a835a5925db025f53c718d01fe46f7b338b4ccbf46fa3873b7ba525957232779f24b5fa07160621b934ad755bPg9U0XlEGyn8XhrwI2nlRSh+9nL6rZSJGK83b6aQj5c=', NULL, NULL),
(26, 2, 10, 26, '84f403970480232bf5ebc792d6e650ef435f1c3b7aef903a1677bcd55118251ed5352a3cbb2f44dc4c67cbf7c6a177e4a575c9424f12c6fca75c3c2fd5956f73tJ2IgbL95EfU3tr9ivrXtztgfT4fNUmnv1HgQx8JpB8=', NULL, NULL),
(27, 2, 10, 27, '6ade53c4d7580f124275813ac57ac29118188fecdd449f3818c4509b85d5619f4361f18a00e0982dec1e7237829abf78fa9ca09a01119baacd17d2a803d762b3KOMc1FEvl0q60HnHAndV7CS0z63pQWaRFhVWvEZ/J2o=', NULL, NULL),
(28, 2, 10, 28, 'd0375375576df2317bcf050530b889ca9a74eb3f1a7b62bacba35274690373da07631c3d7523b82e21b3e39f80201ffa8e0fb0a50f18eda02fa30f2e4327ad67R3XUqIib6lFptYDXL9iqJHcBf+JZ0f+9iN2U5oLrW24=', NULL, NULL),
(29, 2, 10, 29, 'd20f85e0e91295ecb51a2236a341b2ee128cd5b831090cbe6620ed773e3b964d83f853ac7902843b8bc6db83d1fea144fec72d8104b1927a471b6a7f9be1b6f7IPS5tsi+PP4J4fLOeD5mUQl7MNQLyum+Hk+boNGSr0k=', NULL, NULL),
(30, 2, 10, 30, '0b2d774ee3ffa77653e5180cc75e80a2ce27607cce840abeddd0bb32fc3b035a76ab5ba90e044cf02469ea0c7baa0426db9bab62d5aa79565a1622788b9e28ef3GKwpuQmlkGkL6EkJdAerMqxupYiNlGt79pmmTMfPAc=', NULL, NULL),
(31, 2, 10, 31, 'e0cbf3b41c3eb63a5a13333417481b6cdc182fa91d13d6e5a8f751934c2c25f719195d4d0030ca0e5099c2fb3013355dac02bd5368969a832bedc0f72afbdc16F0c0CHjnaf+uAqMo0pZmxfeOjsfGaPNnArNKiIKOG8s=', NULL, NULL),
(32, 2, 10, 32, 'ad822c91ba112446a9ef77328917b79ea03089d39beb0d63bfb5ced8fc8163708b17465f496f81ce41a5407ac5a9dcd5f512668736fe46c52dc25d45d61428d8lM2NKplzvknDSDc3/C1UUvA0gQJ+qHMrE6M2n9AKzrk=', NULL, NULL),
(33, 2, 10, 33, '3e09a11a623768fde17b128fff2ddc15a0ad7c184f98789febf82e672af9535b87ee1b19cb7d722a2c34e10e4d847dba490c56e1a27be35ae5952b232de3ef8cU/IsOAl/zT71alBFV1d7MrXzlnTWFgND5xt9gIkYquU=', NULL, NULL),
(34, 2, 10, 34, 'f6cff1c8e8d73243e3ab19d680304c9bdc68e756694b817b7c9e99ded4746801cea46123e11052f181ac2ee1f4a37bd672e063961982e389c71fe53be2344efd36OKQ1uCyJ4yOwE8o0rEWKJ9KpO8DNx0ufb2BpGeHNI=', NULL, NULL),
(35, 2, 10, 35, 'c2a947f4f68371372ffbf63aefea7570b1b2895feb0788c8375f2d8631f256e6667af3a54293fd94089dc9e4a6b910b5aa13d87359e6bb944bacc8b974ebec8fGrX8yHL2CajhXng9uriOPD2KLDcNpg5hcxGYR48PAd8=', NULL, NULL),
(36, 2, 10, 36, '3960a4ed1871648ab214538ff08495779997ecd7bd1ab1bb349f169b38c0f8427ecb3d6075be04884d62a1d14f3b3e7c54e233b483380b0bda496e887c128995dqF5NN04LmJ5XfubtHKVHDS6wnZ00u9RV29724ts0CM=', NULL, NULL),
(37, 2, 10, 37, '4b9859f519ab18240da0a96875769ccdacf89e15e5ab1e372e0cb0b73c6e9b2c81a2d9ca25efae2911430c49b03b86eb54daed86ab89b24640df9239fb06d34b16RFlFkXNufXZ4SHXCeVpiDYdgMRrKTqXkU/t8EKovs=', NULL, NULL),
(38, 2, 10, 38, '365d651b48d6e1fa421100a21b17c6911c3204ccf8cb181befbc1f5c941095c4b42675ba4e3b26a4daaaaa7fb832fb8c8e04f1b069619139c5705fd67e64f2c6hBP8IpfKqnBdr3Lmh6TqszxjMKBKRP0jFeeFF0keb28=', NULL, NULL),
(39, 2, 10, 39, '53afa7dcb92d984703fac109b8b58e1f821b568eff901ff3d35aa253b90d4aabb11f1a1641cff4861c5b30f133f4adcc9e46f77ffd2d7d8604cfe774031aa13eGwNWnmK58jq45pRPFAznjpc/Yn+awY5kGgT4dhs+acg=', NULL, NULL),
(40, 2, 10, 40, '6b8a9bde5618e81a269f980ac8be6a1c634d1318400f5a59614f35fcf79b753f63e6d672015e28b053920e9784351df002760576ed32235e64e3d01a7dc9d05cqViIrQOPWr65wPWbf+cSNusJP/jrsROWy4C1HxB8YpM=', NULL, NULL),
(41, 2, 10, 41, 'c20aeb792522945fb29f4531f69ce176ce072eda542f7a7a0970995b56bda6bf16f14af29a0225b44a07288216baa29fc473a6ca27c550730a793e8171e1cb7au+zP8ov2XorVNN8Ina65JYmzcgkqhEr+92UZis9EpR8=', NULL, NULL),
(42, 2, 10, 42, 'a35ea71a0e26db2135f041eec9c99993e75e496a17fda00234fe8e5881b25bebba2b378aad41f52c714a60b29ad60dfe5ccd165a70f0be9c78f10d2eb3176990aXesGkmMHzVw/2VYTBq5G8ti9VcXtzaQ0FFMy88Sm6I=', NULL, NULL),
(43, 2, 10, 43, '54b1995593895033b60a52added57408fa8a91a31310a8d822c5388db437a9c60ba4fc0425e5e7a2ddd8c4df212d60aca4bf39442bec7daffe2d508e7037d716K/V2tIoIGi5gNouju8cAJ43eC4XiP5WBiS57xG+Tz4c=', NULL, NULL),
(44, 2, 10, 44, '1317a44fa5db2233e420eb7a43b92e608b01b4055d0d31ca038f771b416fdfbecc76ecff84becdfc8f9731ca17b54f1962502d762ba0f87444a1aaaaa2a5dfe6so/8jnsAjN9rZ1UimRXU3iLvlfjr8lrQhw3iommkjBU=', NULL, NULL),
(45, 2, 10, 45, 'baf2f393beb2c292ccb715a32826a04087246e2633daefa05187d9d56a1a378f54f16b628bffe81e4f5f30668129bd699910f0e63d1ee33690eee125c6115b72SYowERRBz0GVpma3hffSn5VZ3fwhjlDmPvJuZdmJIzc=', NULL, NULL),
(46, 2, 10, 46, '8d4f689d29297387a45efd6591d71234d8ff4382ad38b65f7bd807df2ac2ed6bcc1e5e87d1d189b12527f740d250563260fa4803df02df38b6f6e939d4a2861csZPKagxdw+ve0JTv9y3bYbnIgBXxontE++HMXIThxhs=', NULL, NULL),
(47, 2, 10, 47, '07bb5a231c8d6b67383b87688cf24e3d938886d1f69bba43189c3d15f22431b3924d0445010ec44ee49ccb7a5a23a1f9307de125e9b037926f8571eb82984d3cD4HJt5dGmCRRvYPIo8Dfq/f0hqkmG5uwh9EWiQuSYd0=', NULL, NULL),
(48, 2, 10, 48, '48696118524bdc7dd5e500f353c76139a6c4b205a701f0cb7b864d1034bd25be83b53e3f192b247ad56d73d059bc538355b2afaacde14cf6103fcddcdad919b0qcAYY138locwJtG4Ek4FyB0cJDY9falM7r2X83zKR5I=', NULL, NULL),
(49, 2, 10, 49, '7ab5e5bc4c17328fff07f9a0d35052d1e4bad50d34108bef23343213bb22a411453fe7b905dcf345058a7cce068e32eabfadf01d530f2c412ab808f5d8c091canXBYeLUIkVAWR6yHXjiWknxDlZzHepovs++IZw5h+mQ=', NULL, NULL),
(50, 2, 10, 50, '342b84f2a5c58aca437595aa2dc9a103ad34841326526b4559d98455372e8784cfbdf99c40753c297dcca75ca8ddb7ba11e77e87c12e9c99011191a400ed777dyYYdIX7i0RcxgLwR4O/RRpvsDy5/63I80s1HyjPFFtw=', NULL, NULL),
(51, 2, 10, 51, 'c45d08b9cea73f58ec372bacfcbf87be9d703c89fd881db58c63c4786c70de61b51084aaf235e174bb9155021686a51a0dda004ac70e3f1e2cd7ecad60f18604dulZA2ktIq/aBj39LUmRNeDYLIrvXuHE78V7uiTpzBI=', NULL, NULL),
(52, 2, 10, 52, '1f45db726d0f930c63807613cf887280e99aa4467ef6c5e5deb3e43a6726be95024f795aabf7e86b401a9453277eb9c80b8c697a69bb3839d9a1dc40ee4b8655B4KjeJLtlY5kRV33ooQAjcoapn1YcpCRG+MOj+7+Z20=', NULL, NULL),
(53, 2, 10, 53, '250408017d011ff52cc1175ec298b2208c55cf8f730e79d57e0c8f4cc9ca51ef5dcb6f5472cbd027f2d768b9ee62bd3d5046e00c485103389f495c8535c6fffdvmSrClI9ZPZjwGQATmcZafWuCa4Lgv0tfNp9jSyjWQY=', NULL, NULL),
(54, 2, 10, 54, '870891cfc2c0b1b5236fdea88d41d570d44ad1aa5df92b0ba6fc97de79b6721493dd7a450d4e5c590d1c03b650a14f32339d91161f794b13f8a05dac1291ad6dgQBBk4+yx6mZ/x54GqBjkeYLNmTYAhHesOWiCxmTE5M=', NULL, NULL),
(55, 2, 10, 55, '4ccfc588f21072daa252bfd7cadb6924b6ec9f49b545dba2342ea017e5c55445eea9c66e29c7a7baa082cfaf75053a4a130fafc774e7ed55fa11ebecb627138eEln9vMapvRtlagNnO2ODnZcmaAIpL1hQh7zZCCbfPsA=', NULL, NULL),
(56, 2, 10, 56, 'a11065f8a9615736bdc1e7cbd250830acc118cb721f4f247635905a317fa833395675cb3e4ba8fb8d0c8a4641c1b745da4b0b86944e417b1e9bbe8d5c1452e48t7YeT6QsKwxDNJ8Jj1AXfcamResO240nmy3CGlhzIC0=', NULL, NULL),
(57, 2, 10, 57, '8a7616dd60d5aa94239fbf8bc3a848e3c14883ee3682237818531345d9b696226c9f438581d7482f4929df624edc4abda632f2e47e05b308e5b3abb644ed1da8MD35gbXE/9M9Byv0DatWEWSquVkg88pPdx+rwuNLUwE=', NULL, NULL),
(58, 2, 10, 58, '3270997982292f9de8b0a4878c20a82602486bac35ab5e1e0c502b3c76d505f71d932a5e530045f70716d864f5325c9241942dff494a0c4436f1289a5272bca12WPG90Khsl4cCEE2eOFYnIZN1D1Zt5ma6Uubd4AKCY4=', NULL, NULL),
(59, 2, 10, 59, '354a32f03e13fc4cd97c2a96421ae0af6662fdde3876fbc71cd95e5f66fefbc61595223d0703b946cd8a80c16a67f2e3796f829e7d9eae1eb071a5d8292f91701GLOiebJoHpqEgRZ+xW9Mlu0UHifwdKwHnZNu1yla5w=', NULL, NULL),
(60, 2, 10, 60, 'bde097e447f36b19aa1bd9a9fc1f67356e0797afb62d9d008c72ac2a5fea5cad686dda91b10819b7f78c849c6abe58eb7888da7279784de3632690879bd0446diBdheWzb5srPm/j1eZ4gby3fzyMKkPuIb8nSFhzk9q4=', NULL, NULL),
(61, 2, 10, 61, '9a8caa2eb754155427d22d2274efc3fd12efbf41c940e66160859f5284c4d471ffea78487e9287ace7014f15a0904e6eb29e999597250320f4167bb596e514c3iUUHSlAN4mZ9/3eyej3U+O2kRiT/IVV/i2GI7qfFUbk=', NULL, NULL),
(62, 2, 10, 62, 'bb5f25a4304a39f69695f5c270c3939e9508b0eaf80c08698ade69d6fa85d5bfc2b518a58d94b3954cfacba076fc2d47112040e3b50b9468aec1e1b0b817e436p9UQn38+eAyzhmgk3o+1VHfysN67+PiNBpZX0bWjGb8=', NULL, NULL),
(63, 2, 10, 63, 'cd3c045ebed2a462da5856a9b37561f7ccd137a000516a23d7b575f6e2e2c6ab6a74ef3625586147ec20e701ae36b6df12987f00dff7f24a0a7127ff2c4ead72oPLbIKHoylSX5iBxa69GjozbF16Y0RP2sV7vBZchcyQ=', NULL, NULL),
(64, 2, 10, 64, '5259f1941a41f8207de3426458128f9dd569ad3854b0cd5eca55061309aac241de0d5d6f7534ab71ce4190ccafd911d889c0f035670ff915435ec74b3542d774n/snpvV15B14EbO/bQRUc3HYk6kXgV0/QvG7RSOCDpA=', NULL, NULL),
(65, 2, 10, 65, 'f2a8ac6cc636c7f67147d1b84dc865138de8a7994a01c1e2cd2d27d76c5323d0fe3e9c3ab93ac2b23a8066a43f1a30277ec57177a6b24e31964c130bd0c5c720kez8O4go/A6zPKsunp6gZzD6RzrEvnXiZ0E6FO6TdLU=', NULL, NULL),
(66, 2, 10, 66, '2a5efbef85df8e14d16d6c8b5d2da5f7a63b294764570fad2daaa8d0d3df1479bafdeacdd5b6e16f9467afd8d19dcd41e543d4ae91e44eefaf7d2f8129019a99vDyqin9gNWIc1w9iE6b1Z71BiUyVIH7Vxb5kZ8B3cCc=', NULL, NULL),
(67, 2, 10, 67, '35f3fef72aa396833c8b3f28afdce08e13a79f6b9b3f64057d863e13f32df14f965244550337480edf4f44f8c0d5c5c1b97397d0cc4c423d96b0910b92a822d2jbG2fIP+eui++XNTcME0og64z6lmCVXVzkFR8A9kJh0=', NULL, NULL),
(68, 2, 10, 68, '91199fb23e7e2b992be83575068871e9d1cc7d1bf7f29c3af0019e07a6b91fad64f4ea38448158953b5a2580a8a551fabac9dfbe8f678a027427699091d27da8xcapClyxr8bo+eCVap+DuNMcCFZ+QAGPe54Dpe5Dl1g=', NULL, NULL),
(69, 2, 10, 69, '08052d54df5c0a4b1616d6a9b50313148d2bfe384dc08c50df56397f68e2b71fda63b9cd3a432262d1aabdfb24dc1ff8285a87abdac1a9cc0c611b27423a2983RtZU2OxWJlhRuAK9Dz5ZtmUShDyRJdizC3bMU9xizx8=', NULL, NULL),
(70, 2, 10, 70, '3febc78ce335b2bc60dae5573ee36c245d17dcf91c4d1cc9799d91ac246c5ffdf2a493e42a8c81910f8e2b398f8bc245e56c8533ce28309f626a3b1aaeb0b97dm8ikfgdijvhEW4lDQBVlKehwiKXyn7JZ7VkdmQ5aGW4=', NULL, NULL),
(71, 2, 10, 71, '359ad5ddd3aee27466e79b72251846acf43962eb57d2ff13a5470fb4c9ccca1c7e3bff91fcd9b4987847fa0ebb71c4f9b276b30965fe9ca4dac1a1bceef1d384CHIQ7aY6tErAkVonxuUIsjyDr1f1Q211JG5InIpHrrk=', NULL, NULL),
(72, 2, 10, 72, '4808c6342871a8c9d4c4551c5ee3303696b5cd6cb8d6465be421c5fa4a2551bf237bc8fa84257f71a42503773f39b28c471b16e6d83cca95beac52dceb13d040xYWGi8SiZ4NUJFGT5xbFxiuJOIlHvmSC/H03TmvSTL4=', NULL, NULL),
(73, 2, 10, 73, 'ad5e4024a183ac330c0683aec4309e5f35cc98eade386341b94ca4fdbfbf2a46ff4c85477bb589fd2b0ccc7c2669b6161595729f130b5a6b441bfc6e52a586edVp5CjmIODCubgPM6cimHvcTHVEHTCJ/FhtWWwd3zvjQ=', NULL, NULL),
(74, 2, 10, 74, '1e290e4d4872b94f90299aa32b577a2e50303e577d3c7035dbddf5fa1d1fb24a1fa9aba074d84c1efc4d8b756af004873d82394cb2fa6b3c3b7156a2c3d37ef8cNV+5MowUmbNe1aWowoOrYbdq4NIA3ALaBLTqF7OAVU=', NULL, NULL),
(75, 2, 10, 75, 'be75ff28212d1909f4cad9896e24129351f50a7231d61a86614535cee82985f7679b8b6cc82aa081df9da5e360f7ae18b8b03b21014380a6c435cddb14b92957K2JMR0F3Tx9qBb1hISeGQFON/saljVEyAgzFZxUEF2U=', NULL, NULL),
(76, 2, 10, 76, '9252435fc55d5caaa71d163880f787da8e2cd4dcaef595336163a20deb412bb54e3ab07c59d4022313087f275fd54f5cb2783aa68cc24d9486747e7595ed9451V7mN+fLM1vNWIYTfH8pzNBrTJobSUZSpuje7WQSrqvE=', NULL, NULL),
(77, 2, 10, 77, '85218da712983a1be2f0c96c3918cd9868fb0e4843f7260a445e01f52e388d57601fc2d18c806854383afabe5aed771ee5e1e5be270851de073b05c7ddbffd6e982U/W36xxTlTeXepyLXLXAHOEntX54UCTTkBC4//pA=', NULL, NULL),
(78, 2, 10, 78, '2bd9bd04c4503efd32a0e57d9be97b2f6da144743d4bee006180878cb3ccb599a7027755790b92d17ec246689fa2d2c360b59923282359cc180b91e45c031074y5B6/vMJ/Gc6Gcxgl+ikRWoYHxigTHD0moHU2eSY5EQ=', NULL, NULL),
(79, 2, 10, 79, 'f29295bd1f159ae1da9a1acd5eef40fb62a53106f0add87ab0605f03fc7cbeee8e88eb9585a06347bf00ad42f0f59c0f5db121bc01e11d378af3126aba1051c64bUXH1Op096t4s/CB4GWeLEk+kA4jJvBpdWFDiBcudA=', NULL, NULL),
(80, 2, 10, 80, '48e9bb5ac94c5f503720d7f200e335e1d3606abefdf2f7d4c613f11f45beb4a6d585493c8ec6bd714083360ff49eb2dd68420218fed7d4b077bc1b4815d832026ZNZ3VN3HPWa0cqRnVoQLJt9wCANKk46VpZjPGgiqKQ=', NULL, NULL),
(81, 2, 10, 81, '3f2243904713009e2e07086dfebcab93f24f8628b601055c935d85e02410f5dca2f9b9c45d756c65e09d2b485896ca539fda8f4945f593bdd50d5b26c70274d5w4Rem4QMzZBW7GTKjj9iDViNxfjd05rVwqK7h2BQuM0=', NULL, NULL),
(82, 2, 10, 82, '4c0df249bb5fd03acb6beb3e2c07df7285b6b145b90b39fdf98732be0efd813cf6ada02ddabb54400ad0d8888ba17ad85a1a707ae767fb951782f463d07416f20nchgJtRQVLgrgsyJrc3VNa3nqoRgU3qhqqFtLIWngs=', NULL, NULL),
(83, 2, 10, 83, '26969206611f67eb84a8ef81ae4c54da0436ed6e9e5105cc47f70b048d9106a275e4c9e6d84f546e4809cbcdbe05e3e15ecdfbcf6bce3aff6317a44b3961bdc68FmmDO8WTXhh99W64UGyNreF6FWuUY6uyPJBbLFAPX0=', NULL, NULL),
(84, 2, 10, 84, '8e020f2d4cea0a7c91d702328c5e1dd2c9bc116efb78454b444d60e62dd5124deed83dfca6a0e67a2029cfd422f9051221b395ff7857a832349a7f6de5d968beX4Cw6vz/xscKWoGeS8zJn9lP1vUwz4b7cJTLpTz3gnc=', NULL, NULL),
(85, 2, 10, 85, 'd535f4b371f00e7d6f3b5632345b816247f5e35e102351c90655ffd606bd8bb36f43ee1874d5ca5670c491c700b168a38e61574ede26b51aa361eda1d9059ad9HHKbaC6vbDwy7E4k5OckkJEEW2GttWp54GP7miEMoSU=', NULL, NULL),
(86, 2, 10, 86, '9fce02b6e252be1b486de17569985d4e47ef264c2187227fdebf6cc8a9935acae1f817b978ab3ca0d142cd090c1e753a46a155a99acafe2f32c7b3dab54e5ff2r8LP8MHmeINdBCZRvGmh/rnMLQAFEs6P4BuGi0h0JZk=', NULL, NULL),
(87, 2, 10, 87, '04896fdbb4fb19dbc50ffa15dc7bda8040f6f4dd0f7cb8bedbea5a2ccb492ff153c73f6720f7177c675cd7a8a0761f5c87d5b05d0ea1836a9657075987fdf30fxzoMj/RYCiDq9nx6A8WAkuGaUORXRkCAP1GL3TRPIak=', NULL, NULL),
(88, 1, 11, 88, '7deae56898ed768fc577c55aa0796c8d7bdd6910ead9be616cb30187ab93ed08d36ed99fa3cc5fb9ac3101f86917ed3a2aac148294828c0843a22104dbd35d59O5e5fVY18/fphCg9V73wDr57XjS7ucushxQ3fYA2mf8=', NULL, NULL),
(89, 1, 11, 89, '46daec3aff6f5695acd72f7cdcc5d4156c73fb18591d272151c256bbbeb7a2813ffd23b706775ccc19dbd7b58dc17874f8d8fe889bdb17f520059c4bd6212c64ETjFFYWeNDIhWjFI71jQYeZbSCPdyagUZtx/ifRZ5q4=', NULL, NULL),
(90, 1, 11, 90, '375083993d6180c1c5b239aae716b70472a8c0f125fcc0123e97ddcfc08e1f1fc9d08b6561a91b19fcb4f7e05749834559a3c10fb2d1d69f8853ffed6d9d9e49JsVImSkXeEV+22AYc+AVANnLaLfb7P9m7zJ7nn8R7dU=', NULL, NULL),
(91, 1, 11, 91, '4fa5bc2cd87726ca1527500294e02048514b569753e170fe5c012f57ab80f33992b17443a1b67de8a57bf4952275dad92ffc421c24db8df2382152b7c1930c32d/bVIcVG8ZhtsvFY+eHQ9Y9DRwiE57l5iXkL38hd3UM=', NULL, NULL),
(92, 1, 11, 92, '9f636bd5e65b5faffe50c586b7b888317e61d7a2e8ce8ca33f605d9d5cd49026da8557b46cc363191966857c9f2b68b515569cc497fb4539ce9c2f2968d65002RrPnP+i+Brw2nXvD2kRAT+LbH8u++0qXEc74F4P7k00=', NULL, NULL),
(93, 1, 11, 93, '6c564e588a7c50cb135f0cc31396a54d962ea6412ea261033dc1402860637480cb82a89363a5e0c7a92471815dc556348cce02aaae898a73e9ab58a9e1b5cdbcrA1DBu+edCXqqKxMgYp4hqM+OiR8v59M+KE0Doz4YR0=', NULL, NULL),
(94, 1, 11, 94, '1d7ccfcb02c10e8bf09bca94443220e62488df94c5d2c90aeca439c7aed2a2d42718674f43e6fd341e5dabdf00775cfa7b6de030af833dd2f61c6cbae8710684v42qhA71kx22R6Gzg0fH17FHzXzJxBioSgeg/jn9CHs=', NULL, NULL),
(95, 1, 11, 95, 'a76c94ea91dbbf1caf0a04e3bddc25a396341ade7d5164297b5e8e45eae6913db32dc078b90cc45da729d6eb2adee197a035971437a569616fbb5934d12708b7u/p/nJ5uKORFc5nM8lRPup/Ohpdx3cKZON1BK6CHglE=', NULL, NULL),
(96, 1, 11, 96, '65f54266571f080ef9aa63972e969f5ded292e48810de26c2d568500045d9d872f9e8b02b49c8cc98c4bcc1846787b237362090447faded4955c17b2b318e7867VqCajt1duoAGbEcFEpVwzPTFvUluVto4Ud/KoManlg=', NULL, NULL),
(97, 1, 11, 97, 'f01eb37268cae99704bcba568a3281e1594283493cf32f6857e0f8502b13aa28ec6f24001b8af4ba31c3a1b9ece71c9d39f874c3788f480212fdd829304a7c7d77cqydNM0twUDY++qWUltsExIMgpWyogTNaUm92Thig=', NULL, NULL),
(98, 1, 11, 98, '255399dea31e1f832f470346ea787ea4a9565e2e0159285b91fdb1494ed7d58b4cd71cbcc2f047a86682b1f88676c2490ac08e3367fb41340daa2f1cd91d3199Ae03MTbGV/ZosdHLuB1VD9xhaI21+mYngdrt4vC1neI=', NULL, NULL),
(99, 1, 11, 99, 'feea63bc3bd379af573a5ac4dfcbebaafd6207e03f8e04bb42ef9f0e8b8b3c7e4811ef8eea949b171602a289906b7a9d4666bdfeea1976943067d3c0d324b3cc6pPtZsUYrmb0d0OaUGJHdTYhb6eBJfitimQlD/jusMg=', NULL, NULL),
(100, 1, 11, 100, '2fefd4465210c95c8659e95cf2460d9640eab2bf7072c3163915a4ffbde84763daec594f1b6388b913a55eba47fbd2daa6941c89b60967ff30c8dcfb0dfcef181mGfbpKbnT37elG8aCsk06AD90bNQDd+5hkveH2P0iw=', NULL, NULL),
(101, 1, 11, 101, '8c3b57fe02388cf0bbc8953125138632186c25d1d218844e680f0de0dc5316c436d44de6ac4625ad8e0f70bc15907c20e6c9dc513c240ef2b85a17b6e730c84d8ki/d6YaNOsjVE4ZWAxXfYdfbsdmpRnvf9gNbvThHFM=', NULL, NULL),
(102, 1, 11, 102, '844745ce95daa5a9dee1da61fcbe1efaa82b2c23c878da50246a42af5915b466c881bb58795e90abbec3d4b7c054d42dae5b48b08729cb6452f7de213686c41eN5/8+p9lNPaAy4ryv7zxdff5kXOQz8bFjp+qse+8CW0=', NULL, NULL),
(103, 1, 11, 103, 'e52c983a3c3e3f08ddbb89ac5a1575381f31f7d896d7cbdb3c492850ecf3f35252102a72db51335e5354769bef2659b6f2d55f179c46f82cbea9ff0d6f8a92b8sn3fPgNU2oaLCEmwYqogGDuGN2asAS/4y7E5usjG900=', NULL, NULL),
(104, 1, 11, 104, '9ecf194f6980ee49c00a18b01c73d593f561f21b406b49e289f0e0bc8cc00fb47710c90cc49106b3e40ee6fe55ae271d4742b209f2793d425b83e268691a006aCfJFwuqCH+uRB4Yor2hYN8kX5YZOA5ZhrnWXnyeIxvE=', NULL, NULL),
(105, 1, 11, 105, '17ebf90e3d5d656080b86de0c0b16b45a160f1e72437267c9a0abaa82917b1f23cee0878713df75767ff1a1ab1f58595ac7d344572999810dacf05e833456203q8Y7KORwhuRRSarhQvrdAmmeq1npCEsj9ONpM3v83Wg=', NULL, NULL),
(106, 1, 11, 106, 'db554a7cbbe4d0aac666f9c1a928f1c95c4f8747714fd79b7ab447ec10e663d721b9a82c42a7f4cce138cc21753101fb2a5784025662ee6e9b603da41b69da68vwzrPNV7YqcQXJwhFi3AIxY/uDkBv1Nk7fgJZjD/OSo=', NULL, NULL),
(107, 1, 11, 107, '5a5f71fbe0bcf03324321232e2b1f1fe96d4231a46a7836bd51788b9dc0faf45f56b1f57c374f246658b415531401de7d3374a37476728790b517cd052806bc9+C14vCodd0/RMukOQD1XYGqlzVv2ucUKBOn4h2TO4AY=', NULL, NULL),
(108, 1, 11, 108, 'af39d05cc34d99d4fb52da83ecc08478a037f7bacf13139ac70da04a8f9e7b9a9eed9fca52afc52d0d9b2c7c67f7e3e45ee811525bc3fdaa87f40c69ecafe7be1Q2tFsYmGeS29pfS3ZArGRXyBUe5MX6v+BosKP3yVNw=', NULL, NULL),
(109, 1, 11, 109, '1305490d1b5096d3a33bfab40e46e76df8745b8b14d1edda861e89a6264ce07dc43b968c702b1d92586f03ec4c991d530661f62a572534576fa992185bafd33433uIVcoa+BdIv/P69Qosf2dtS4J19erNTY33fNitBxE=', NULL, NULL),
(110, 1, 11, 110, 'da94c01872ff639f356dde195d2c360131b6d44e1054b576247a58e6d0874f643cc620b2276870d2c601a535c920837758b9f3318656124ae60fb2c95d539efd5J8vXlwmJP7Y62SKO3V152CU0SpXxlYn4eyS+SkM/PI=', NULL, NULL),
(111, 1, 11, 111, '798a86657f0e596d4b607a78655e306302376d6f301086b2e1353ceaaed80f78159a7055c4e56aca2587604055f7474ee9d59cf95a58611c3bf6d86c1672c5ce7lh7vtDmVcCvEXSxxD/Scy/NwD2YJOIV+3JMtV4bSvw=', NULL, NULL),
(112, 1, 11, 112, '826d613b7eccba00463a661b35c0e6c404e2115f64a84e7ea9bcf73bc7ced6463841c622640315f9438df857bc324e410e141b2edfb02dafdd5092b613bd8c07MN1a59XspGkWhdoM4fFXUQsdklF7r9KPEuCiTL0QNU4=', NULL, NULL),
(113, 1, 11, 113, '27b0aca8e0ed2d85e803921259251e8751975a43d28edf1cd4c5f92ca0750a945140693892d6c8610332fc259f744f3bab02bb8edb4336402dcaeb9518248b85VZZ2FLoc8YUnHdMqNo6dOrFghzI9PhFBXngIwWzS+Ag=', NULL, NULL),
(114, 1, 11, 114, '2fa4c70ffaa603163b867c8f583a4d463bb9b9a97ba6f1b6ec94bbd2b899663b0c548cdcc7c9cddb7906a0425a7a2e70c2b39794f0ba56377b1f40ec34361e652Gr7hVoB8fRUgdDkh93uOiSiGiF9Du6CIwpXEJ45GYg=', NULL, NULL),
(115, 1, 11, 115, 'afbf02bd7438956256f9aca747532a9e3b031b0f2561d2e18ea3ddcf436212f66a0d54edb674379f0607169be97f774ee0e7d3b1a1151ad131182daf11ceeffa7NRpuhtV59s6buoZEQoqIKDMT2aSrVdqcgQa/xXaeeA=', NULL, NULL),
(116, 1, 11, 116, 'f792518d28a8a5cec7c2a6bb9c6a39e38eddcb1ebd716b38a23eb203732cc9eebce6f5d86883cbf3e0a0c52e1c37fc2a375fe8f676931cd30526366c0ea51d14QoW/Oo0bL2INi5BfgeFj1qTyRka5943RGMpZjHBVs5c=', NULL, NULL),
(117, 1, 11, 117, '4a907d58815cc788eb3721d5746c57c7e6f349ce619ca2f12d15e292e39a04f5c4b371833b13947d48369bc4ae7f8d49ba75ff2bee039bb6d52a268fe2432b54fbPbwgpJTbaUJcDqmZ1qn+ZatuH/gJ5Q7OkA7Gcvn1E=', NULL, NULL),
(118, 1, 11, 118, 'd6a35e32594e0dbc5cb4582964d091e8a83c9a6593a2ea44061933afa9d97f9d34f7c63d76b7351bfc05ade4be87b82871b2869d04ffe1b378bd0ac362a26a69uJZe+RsIkp9Ma70ARWwjmWJ8ERb1dAqMuTgkb6Ov09c=', NULL, NULL),
(119, 1, 11, 119, '96840dbd5d9213ebe487c066d322ec0a3af828822b7e1e1c565414ab8b32c5f57d7161f0126a593119a043a89dc8285bfa7d136589be6adedfa9f30c50e4e9bdxhSf+YsNtB9tyx6hflvKMb/yjmEkuPz8c13aG4pCSP8=', NULL, NULL),
(120, 1, 11, 120, 'e7b3bd1f70b57b788c15e86b57f8788a63119c5a2204944b7bb3ebb403099ed559db0e7747e1846ee1aad87214e8cb501a9727aa31885f4ae098a8d4b7101ab5ROuwA8yxHN/YlRqzAbbYS7R8N0LQjKsyn0N3S6avynI=', NULL, NULL),
(121, 1, 11, 121, 'bdff4c88edc1f09d940541792c76ae2f5b97d2bb219a416479299a5f5e054b3f3dd84c0163ede86ba6312ff0544665aa7e779433926447009e0e9b81da6da05d+o0Xe38l7zbSCXGAOg75V/pO5B/S9/jF8eR9oqId5Jw=', NULL, NULL),
(122, 1, 11, 122, '7c7d2bc3722e1dffdeeca4cff02ce6fcd3775d692adec79fb7a477512d5c8bac08e49cb06d165664cf9e5868b714bd5894431d1fe2ca4cb74d2cb0e9d8587b0e41rYuY2NBg/DEnutDFd2wDnaBwgsh6JWeUQYi7kqagc=', NULL, NULL),
(123, 1, 11, 123, '2f1c95d0ebd091a7e49bf2c7e2a227a1a20f3e457c578d679513b954f25ceb253abc3270b5f41fd9078b811e6475c4ce4b7e89e3b558101b212050f554003de1GwA4r0dRngoopia48uW3N2RY7E0UPQcVNOFgnaluu/A=', NULL, NULL),
(124, 1, 11, 124, 'e419c85de270db9067636d147a7b4c2c1d7aadbd2a1136f7c7799d0831a2e145ee770970946bd092344d65c0c9a29009048fda82278392909d37e1c72bb3a876md8fOL/DTvZfPLf+oCKlgf0kiP39bsMkYROi9GGpGsA=', NULL, NULL),
(125, 1, 11, 125, '936bc9560fc00896f057330a513c7b2be7ff6336abc507f7b8990287e2ba9ea1aa5f29eeec2302c44cea9e19a68f8639740927679157c4d0d150d13e4479f685OOZPvG2gZtqYefJwraO4Pop/rcy1ZpLiosqkXv59A/c=', NULL, NULL),
(126, 1, 11, 126, '9bb995c621a0fa09066a907b253937c9361287ed42f5d06ec29c33e1816be65d64f572980a3b7cbe75a2f15835b6c4329ff6711052bdff1c1b607ebd5d1cb4c7EtNoC921xFTNbKX7+eJ8mJNjXcggYG0ZIhGVehGu3Yw=', NULL, NULL),
(127, 1, 11, 127, 'd366a9e04fd1c05b108fe23e590aacb9eb6b2d80e98bc10ab041e98b4f99fe5c0d7724e1ce86446938dcd0dc0ba1bbb56361cfa0a5f3e7359aa58a282dfb5facEre4/KRBcaeXHqv7bImdN05Y1UQU152uoCGIE+mzLe0=', NULL, NULL),
(128, 1, 11, 128, '9080a3c6b529bb6b4be276c9d93563514a72654f6c2c8be9a5b050f426cda4e9d4b79f33d87e3419282392656053cfed263410330870a79082d8e39ec4d63b13JlOWMai4lDtTmnDcNgSoncKCImZdEG/xfovWMETw73g=', NULL, NULL),
(129, 1, 11, 129, 'b33e1e5c6b1c3f7a5688cf2919938d9af8d147695d96043213decdc11188d1b410021263bc1090308b6abc6623ac6ace00054c95d8dcff78b6735cdb837ebf44ouLC4ymWdwRS4OjCh5kxR4MtvlYl/35kEjdyuU+KQ30=', NULL, NULL),
(130, 1, 11, 130, '4341b8f4ed47c5b84ed44c0f89294dffd448ceb66bdf63bae8558849d400832f98eff505b496a779787183b3ffff48f65abe70ae4743ec1c88ed39be65c683d6A6Y7qTwPT1m988kHb0A6zMTjEEip6KOzd06SJ/1TSPs=', NULL, NULL),
(131, 1, 11, 131, 'fd050115d91e4d7f22d2289041add2d226d12d2875f680e97c89c5b42c9cd384c8ddbac19b3b6b26c7f19280204d015321072b2db14279e3269e87b0ef77efb7/eq58/jHmX1a3+RamVrTzbC5/wu0EIqzD6eA1kH6iP4=', NULL, NULL),
(132, 1, 11, 132, '9cb38555e4a2d898f664f4dbb6147a38449a9f4b62faa0c070fe0b48c28a1b27b75f613a76990cb513691b5367f5585536f33db7212f9afb13f6ff4ccffd17e2UJnGYABVOv0ZWBu1y50f+GHJigMzNBntXqFATWwDabE=', NULL, NULL),
(133, 1, 11, 133, '7c5260a160803516256ed6158c341bc2dbe9931ef14fc4bc3003f8c749c02013b2ceb4e96e9a72ac8bcf40823f98e06b08a4eed71688b1b82ec25e09b88a000apiUdx8urYpQv2zpmh06XlrZhaQKfqMTmnYN2szN0OT4=', NULL, NULL),
(134, 1, 11, 134, 'bdf0620f9f1e3ca38e9f32812f44a360be2c05bb1a1ccb04d3aaaa0e630c7a487a3cfca9b9d61261288e736927d1cf187b38d48c09f3567b9ca95a404e0cfed6fjbfLMihXw/Af+3eHMLuxM1/N+Ah7tmko+EVjR5kPzo=', NULL, NULL),
(135, 1, 11, 135, '9d75e1ec3205fb6333e2d1e4de19acd761dac889bbef9d08bef86b31b14adb50038c1749cf458f39da7808ef1c898f4c74b480520f2ee9d196230b21520f8eacor8JcTfBVD3SARc4+Bx8F7PCegsH/whWJ1DwfpnZQQg=', NULL, NULL),
(136, 1, 11, 136, '8fd9b10aae0a3cb33c33b71b29afbc65623b62c58e3e6a79fd1220bb0c81bc1722aac9e5952e966eb0dc3d54d6c84c6845481fae27589250500eb09ed711a0574UuDVcHNZEHlhC5+NMNRWoqzRhhIBFd5JPmKlWHK3E4=', NULL, NULL),
(137, 1, 11, 137, '322d699768f747be1d3a30cafc6d6321a642bd7b39224e81609375bceb18e9837b2465218ca7afc8e0eb504945fa9856fd30ee239add7bf78e10f6d740f7f56c/BXRkkp7Etp1NRQy9EQ17BUv7n/mEss4wOp5flWN5oY=', NULL, NULL),
(138, 1, 11, 138, 'f571eb1fe86c31e0cf4dd59344cbb005d49c029298fb08e662e9d9aaa75629606303c865b6da4572c774fd17559e8e6d394923a46bb3be0c007d58ab40a52589+L5KY11c0B23W0eBeT+z+zMI2ZbgrbxNwzbNGnQxQbg=', NULL, NULL),
(139, 1, 11, 139, '18ecf1e5091c01f244f9caaa1f704888d096166686e293d1df97b07a6be24110c976f6799aac507bc6dda5d286f4f19b83e79c5b28ce7fd617521eba54d4e1ecS/TiXIgk2SNXsZhEXRm60BSKkt6yPKg3yfXHmFJSNXs=', NULL, NULL),
(140, 1, 11, 140, '33b5882d6f80c8cfed35c48508552dca1bb804b6cea1817278ae41e1b45a8e7f8fb356d8d5339fb7680537de3ac7b76a235854758e71f2f9a6d62ee92e3120c7/fHAnWvD3tDpYP3oO0pRZjJcXa+HqYqOjvqzuPcdfZw=', NULL, NULL),
(141, 1, 11, 141, '155fc64076a57ed39359c95df9cd7b7a7094fa1ed11f146079a3629f14fddd97d15215cf14da340d4a12c22258bd2282c74afab1cab1571e533f43cb92c346a9s16kr5CFOc0qiQ8TKhVaeHtEDaVh8S7BKJkWy7V+2BM=', NULL, NULL),
(142, 1, 11, 142, 'f109350630da4b8e8fa040e11bdbfa74cc9857b12da4e6277f02d16ada72c9dcec6f664b86d4349967a75a2677ae9db5a099a386470e31b333215976e32bb815mWzVpP/TBFpUcQuRyd8ttvSdOJyDcIAbWH5oVnWp5Ac=', NULL, NULL),
(143, 1, 11, 143, '04d58f8880ba4ba3a99b2d38f6fec5848a7a14634f253b0b53c64d7798b540898907af26beff7e7666cd12608ffef96f949b26db46f6ea7773106d8150a054c7WUItauSq8/0++EFlRNgeYwAgAK38yL8xO+mrK57UwEw=', NULL, NULL),
(144, 1, 11, 144, '3e2993814bda9f2d54a510c89912a074c6fed3b82f32281cd15e040cf0719109ce5dee915bbbdb7af999318d02bf6a05c0c4c985c2f8b156db5ed26885cf282ePa3a1SLRpGyF6pKCSSa5tFJoU7JzgQlgmHdT0lP+NFI=', NULL, NULL),
(145, 1, 11, 145, '1f1767e84a0ee4426caf6769ddbd7e09e6cf15fddfa25e0aff1c5958b54d052bda331c123af0372b7b14978edbf1df2d2763ee0bd7cb84cc457a0cb73974a235XHk/3K9A0BRLzh866DdHkYg8jHq2QE6RBxoAt26mxwE=', NULL, NULL),
(146, 1, 11, 146, '700e4f2fc89b6519ad7ab268c9f017afd6fb5e9357afa5d6c92483b5e3ea462036057b9933c13e896871dc65b4d0236c81136136484c812e8d294103e9de527bpVj5ekOejgIURwlmZGho7BFMUXhoK2LoY+NLx073h1M=', NULL, NULL),
(147, 1, 11, 147, 'c249fa6a7d14f2f3fd3a29128f30b99d60a49b0802c823499b5a1b8be9eda6524998fd81ae152528eafa2d2bb8d1bf59a2b2f35d863b9f4b8f51521c0aeea98dAWAhdbS/LyQzPF0JZpRQFJqxAVuU1PWg9sb4EkDjuQ8=', NULL, NULL),
(148, 1, 11, 148, 'fb77e0b58a595597994efc938bd23882058bbbbd124da825892ffcbcca59d532b384a3607ab0eb9566df26241af3103594ff12ba69ea7dddaa4d75258205ba0bx0CDN6i7nLAlS7IZJqR4pQedGE3o/hSF1HsuNPrdAzU=', NULL, NULL),
(149, 1, 11, 149, 'ebdebb0b77b2f58af37b169b6306ba446e422108ef56c44ef7f44266cc5c55e62cbaf4967d859818c22afb2ea9ce91a20f9d12f9e3cea35c6c62794f5472ffe4pf6EUzoSARQGNhlbs9LVfK1gIPuYhev3jITo+3RatEo=', NULL, NULL),
(150, 1, 11, 150, '3641e99f20c707af5c763aebf9022e432580cc11bfc5516a9877d8d8d3aeaf3e34c94938af674f4307f4777e4a076bcdd583c50b9293d558eab67cef76a1ab63Rp+kjlYx/sRcX92tc1h5POAQ7IJOym9Vgwz4be5dP3Q=', NULL, NULL),
(151, 1, 11, 151, 'f92d6061163f7bd36b5a24426a46d99fab33c69c96dbf7b7b66745b585453ef30cdfa15185aa294abc3ccc5df076d424c7ec5c5818443b97fa9c5c5e549f623aG56fQ6N/HHkuOenCs9lyDOAhjjty/KhmK403Qbv9G+o=', NULL, NULL),
(152, 1, 11, 152, '1fe3f5d46cdfaa2e32d7a9576d9b1009649657120e9619a02796af76d124449ea4fdde794a1efbdda86293b0913efc33a92717f66efdb46c1583022ca49176b1jJujGD5KlzXEXG+jYcxsZ1U1ast0RQzFU+ZRMueQtrI=', NULL, NULL),
(153, 1, 11, 153, '6855d9ffb89eb08c566bfd09dd2457e7679b1186382c76b9e4b9c9c7f6a37f5f5b16fc1a445dc1a97c6dc975eaa4caca3c4d28cc1c515a79d5927228ed18c44b/vjbDQoMPli1/QYYcsQ9MNGTDYSU5ESkF9Dfvwm2T+0=', NULL, NULL),
(154, 1, 11, 154, '4e2fd488abcecd0517b35acff232f1d3f692a81c29ec91d591ee603c200876806f6115fdfaa6ea343df6dbd1114ca14a0279d07a54a33ba181bb6c1abada1085K3INYNaDejemrmHq9GGf//iAJ7uKc2Yo6kucqwcKI00=', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `dossier_stage`
--

CREATE TABLE `dossier_stage` (
  `id_dossier_stage` int(11) NOT NULL,
  `dossier_id` int(11) NOT NULL,
  `stage_id` int(11) NOT NULL,
  `statut_demande` int(50) NOT NULL DEFAULT 0,
  `theme` varchar(200) NOT NULL DEFAULT 'Aucun',
  `encadreur_ecole` int(150) NOT NULL,
  `encadreur_industriel` int(150) NOT NULL,
  `avancement` varchar(255) DEFAULT NULL,
  `observation` varchar(255) DEFAULT NULL,
  `date_visite` date DEFAULT NULL,
  `statut_email` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `dossier_stage`
--

INSERT INTO `dossier_stage` (`id_dossier_stage`, `dossier_id`, `stage_id`, `statut_demande`, `theme`, `encadreur_ecole`, `encadreur_industriel`, `avancement`, `observation`, `date_visite`, `statut_email`) VALUES
(1, 1, 14, 1, 'Application', 2, 3, NULL, NULL, NULL, 1),
(2, 2, 13, 1, 'Aucun', 2, 3, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Structure de la table `ec`
--

CREATE TABLE `ec` (
  `id_ec` int(11) NOT NULL,
  `intitule_ec` varchar(50) NOT NULL,
  `code_ec` varchar(50) NOT NULL,
  `code_alpha_ec` varchar(10) NOT NULL,
  `code_num_ec` int(11) NOT NULL,
  `credit` int(11) NOT NULL,
  `heure` varchar(50) NOT NULL,
  `h_cours` int(11) NOT NULL,
  `h_td` int(11) NOT NULL,
  `h_tp` int(11) NOT NULL,
  `type_ec` varchar(100) NOT NULL,
  `ue_id` int(11) NOT NULL,
  `etat_id` int(11) NOT NULL,
  `num_ec` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `ec`
--

INSERT INTO `ec` (`id_ec`, `intitule_ec`, `code_ec`, `code_alpha_ec`, `code_num_ec`, `credit`, `heure`, `h_cours`, `h_td`, `h_tp`, `type_ec`, `ue_id`, `etat_id`, `num_ec`) VALUES
(3, 'Anglais et Français I', 'LAN111', 'LAN', 111, 3, '45', 45, 0, 0, 'TRANSVERSAL', 1, 1, 1),
(4, 'Expression et communication scientifique', 'COM112', 'COM', 112, 3, '45', 45, 0, 0, 'TRANSVERSAL', 1, 1, 2),
(5, 'Education civique et sportive', 'ECS113', 'ECS ', 113, 1, '30', 0, 30, 0, 'TRANSVERSAL', 1, 1, 3),
(6, 'Architecture et technologie des ordinateurs', 'IFT121', 'IFT', 121, 4, '60', 60, 0, 0, 'FONDAMENTAL', 2, 1, 1),
(7, 'Introduction à l\'informatique', 'IFT122', 'IFT', 122, 3, '45', 30, 0, 15, 'FONDAMENTAL', 2, 1, 2),
(8, 'Analyse 1', 'MAT131', 'MAT', 131, 4, '60', 60, 0, 0, 'FONDAMENTAL', 3, 1, 1),
(9, 'Logique et mathématiques discrètes', 'MAT132', 'MAT', 132, 4, '60', 60, 0, 0, 'FONDAMENTAL', 3, 1, 2),
(10, 'Systèmes d\'exploitation des micro-ordinateurs', 'IFT141', 'IFT', 141, 4, '60', 0, 0, 60, 'FONDAMENTAL', 4, 1, 1),
(11, 'Algorithmique et programmation', 'IFT142', 'IFT', 142, 4, '60', 60, 0, 0, 'FONDAMENTAL', 4, 1, 2),
(12, 'Droit du travail', 'EG211', 'EG', 211, 3, '45', 45, 0, 0, 'TRANSVERSAL', 5, 1, 1),
(13, 'Economie générale', 'ECO212', 'ECO', 212, 3, '45', 45, 0, 0, 'FONDAMENTAL', 5, 1, 2),
(14, 'Algèbre linéaire', 'MAT221', 'MAT', 221, 3, '45', 45, 0, 0, 'FONDAMENTAL', 6, 1, 1),
(15, 'Analyse 2', 'MAT222', 'MAT', 222, 3, '45', 45, 0, 0, 'FONDAMENTAL', 6, 1, 2),
(16, 'Algorithmes et structures de données I', 'IFT223', 'IFT', 223, 3, '45', 0, 0, 45, 'FONDAMENTAL', 6, 1, 3),
(17, 'Analyse et conception des systèmes d\'information I', 'IFT231', 'IFT', 231, 3, '45', 45, 0, 0, 'FONDAMENTAL', 7, 1, 1),
(18, 'Programmation en C', 'IFT232', 'IFT', 232, 3, '45', 0, 0, 45, 'FONDAMENTAL', 7, 1, 2),
(19, 'Modèles et langages des bases de données', 'IFT241', 'IFT', 241, 3, '45', 45, 0, 0, 'FONDAMENTAL', 8, 1, 1),
(20, 'Exploitation des BD relationnelles', 'IFT242', 'IFT', 242, 3, '45', 30, 0, 15, 'FONDAMENTAL', 8, 1, 2),
(21, 'Anglais II ou Français II', 'LAN311', 'LAN', 311, 3, '45', 45, 0, 0, 'TRANSVERSAL', 9, 1, 1),
(22, 'Education civique et sportive', 'ECS 312', 'ECS ', 312, 1, '30', 0, 0, 30, 'FONDAMENTAL', 9, 1, 2),
(23, 'Infographie', 'IFT321', 'IFT', 321, 2, '30', 15, 0, 15, 'FONDAMENTAL', 10, 1, 1),
(24, 'Analyse et conception des systèmes d\'information I', 'IFT322', 'IFT', 322, 4, '60', 60, 0, 0, 'FONDAMENTAL', 10, 1, 2),
(25, 'Théorie des graphes', 'IFT331', 'IFT', 331, 3, '45', 45, 0, 0, 'FONDAMENTAL', 11, 1, 1),
(26, 'Télématique et réseaux', 'IFT332', 'IFT', 332, 4, '60', 45, 0, 15, 'FONDAMENTAL', 11, 1, 2),
(27, 'Algorithmes et structures de données II', 'IFT341', 'IFT', 341, 3, '45', 45, 0, 0, 'FONDAMENTAL', 12, 1, 1),
(28, 'Analyse et conception en UML', 'IFT342', 'IFT', 342, 4, '60', 60, 0, 0, 'FONDAMENTAL', 12, 1, 2),
(29, 'Programmation orientée objet en C++', 'IFT351', 'IFT', 351, 4, '60', 15, 0, 45, 'FONDAMENTAL', 13, 1, 1),
(30, 'Programmation avec Visual Basic.NET', 'IFT352', 'IFT', 352, 3, '45', 0, 0, 45, 'FONDAMENTAL', 13, 1, 2),
(31, 'Stage ouvrier et Projet d’intégration', 'SPP411', 'SPP', 411, 3, '0', 0, 0, 0, 'FONDAMENTAL', 14, 1, 1),
(32, 'Stage Agent de Maîtrise', 'SPP412', 'SPP', 412, 6, '0', 0, 0, 0, 'FONDAMENTAL', 14, 1, 2),
(33, 'Circuits logiques', 'IFT421', 'IFT', 421, 3, '45', 45, 0, 0, 'FONDAMENTAL', 15, 1, 1),
(34, 'Administration et gestion de réseaux', 'IFT422', 'IFT', 422, 4, '60', 0, 0, 60, 'FONDAMENTAL', 15, 1, 2),
(35, 'Compilation', 'IFT431', 'IFT', 431, 3, '45', 45, 0, 0, 'FONDAMENTAL', 16, 1, 1),
(36, 'Développement d\'applications Web', 'IFT432', 'IFT', 432, 3, '45', 0, 0, 45, 'FONDAMENTAL', 16, 1, 2),
(37, 'Probabilité et statistique', 'MAT441', 'MAT', 441, 4, '60', 60, 0, 0, 'FONDAMENTAL', 17, 1, 1),
(38, 'Langages formels et automates', 'IFT442', 'IFT', 442, 4, '60', 60, 0, 0, 'FONDAMENTAL', 17, 1, 2),
(39, 'Création et gestion d’entreprise', 'ECO511', 'ECO', 511, 3, '45', 45, 0, 0, 'TRANSVERSAL', 18, 1, 1),
(40, 'Management de projets système d\'information', 'IFT 512', 'IFT ', 512, 3, '45', 45, 0, 0, 'FONDAMENTAL', 18, 1, 2),
(41, 'Travail en équipe et projet', 'IFT521', 'IFT', 521, 3, '45', 45, 0, 0, 'TRANSVERSAL', 19, 1, 1),
(42, 'Education Civique et Sportive (ECS)', 'ECS 522', 'ECS ', 522, 1, '30', 0, 0, 30, 'TRANSVERSAL', 19, 1, 2),
(43, 'Système d\'exploitation', 'IFT531', 'IFT', 531, 4, '60', 30, 0, 30, 'FONDAMENTAL', 20, 1, 1),
(44, 'Analyse et conception des algorithmes', 'IFT532', 'IFT', 532, 3, '45', 45, 0, 0, 'FONDAMENTAL', 20, 1, 2),
(45, 'Bases de données orientées objets', 'IFT533', 'IFT', 533, 3, '45', 30, 0, 15, 'FONDAMENTAL', 20, 1, 3),
(46, 'Réseaux et services TCP/IP', 'IFT541', 'IFT', 541, 4, '60', 30, 0, 30, 'FONDAMENTAL', 21, 1, 1),
(47, 'Interfaces et multimédia', 'IFT542', 'IFT', 542, 3, '45', 30, 0, 15, 'FONDAMENTAL', 21, 1, 2),
(48, 'Programmation Avancée', 'IFT543', 'IFT', 543, 3, '45', 15, 0, 30, 'FONDAMENTAL', 21, 1, 3),
(49, 'Stage ouvrier et Projet d’intégration', 'SPP611', 'SPP', 611, 3, '0', 0, 0, 0, 'FONDAMENTAL', 22, 1, 1),
(50, 'Stage Agent de Maîtrise', 'SPP612', 'SPP', 612, 9, '0', 0, 0, 0, 'FONDAMENTAL', 22, 1, 2),
(51, 'Spécification et vérification des exigences', 'GLO621', 'GLO', 621, 3, '45', 45, 0, 0, 'FONDAMENTAL', 23, 1, 1),
(52, 'Contrôle qualité et métrique du logiciel', 'IFT622', 'IFT', 622, 3, '45', 30, 0, 15, 'FONDAMENTAL', 23, 1, 2),
(53, 'Cloud Computing et Web services', 'IFT631', 'IFT', 631, 3, '45', 15, 0, 30, 'FONDAMENTAL', 24, 1, 1),
(54, 'Développement d\'applications mobiles', 'IFT632', 'IFT', 632, 3, '45', 30, 0, 15, 'FONDAMENTAL', 24, 1, 2),
(55, 'Génie logiciel orienté objet', 'GLO641', 'GLO', 641, 3, '45', 30, 0, 15, 'FONDAMENTAL', 25, 1, 1),
(56, 'Application avancée des bases de données', 'GLO642', 'GLO', 642, 3, '45', 30, 0, 15, 'FONDAMENTAL', 25, 1, 2),
(57, 'Création et gestion d’entreprise', 'GLO511', 'GLO', 511, 3, '45', 45, 0, 0, 'TRANSVERSAL', 26, 1, 1),
(58, 'Management de projets système d\'information', 'IFT512', 'IFT', 512, 3, '45', 45, 0, 0, 'FONDAMENTAL', 26, 1, 2),
(59, 'Travail en équipe et projet', 'IFT521', 'IFT', 521, 1, '30', 0, 0, 30, 'FONDAMENTAL', 27, 1, 1),
(60, 'Education Civique et Sportive (ECS)', 'IFT522', 'IFT', 522, 1, '30', 0, 0, 30, 'FONDAMENTAL', 27, 1, 2),
(61, 'Système d\'exploitation', 'IFT531', 'IFT', 531, 4, '60', 30, 0, 30, 'FONDAMENTAL', 28, 1, 1),
(62, 'Analyse et conception des algorithmes', 'IFT532', 'IFT', 532, 3, '45', 45, 0, 0, 'FONDAMENTAL', 28, 1, 2),
(63, 'Bases de données orientées objets', 'IFT533', 'IFT', 533, 3, '45', 45, 0, 0, 'FONDAMENTAL', 28, 1, 3),
(64, 'Réseaux et services TCP/IP', 'IFT541', 'IFT', 541, 4, '60', 30, 0, 30, 'FONDAMENTAL', 29, 1, 1),
(65, 'Interfaces et multimédia', 'IFT542', 'IFT', 542, 3, '45', 45, 0, 0, 'FONDAMENTAL', 29, 1, 2),
(66, 'Programmation Avancée', 'IFT543', 'IFT', 543, 3, '45', 15, 0, 30, 'FONDAMENTAL', 29, 1, 3),
(67, 'Stage ouvrier et Projet d’intégration', 'SPP611', 'SPP', 611, 3, '0', 0, 0, 0, 'FONDAMENTAL', 30, 1, 1),
(68, 'Stage Agent de Maîtrise', 'SPP612', 'SPP', 612, 9, '0', 0, 0, 0, 'FONDAMENTAL', 30, 1, 2),
(69, 'Introduction à la sécurité système et réseau', 'RIN621', 'RIN', 621, 3, '45', 45, 0, 0, 'FONDAMENTAL', 31, 1, 1),
(70, 'Sécurité des applications, services et serveurs we', 'RIN622', 'RIN', 622, 3, '45', 45, 0, 0, 'FONDAMENTAL', 31, 1, 2),
(71, 'Cloud Computing et Web services', 'IFT631', 'IFT', 631, 3, '45', 30, 0, 15, 'FONDAMENTAL', 32, 1, 1),
(72, 'Développement d\'applications mobiles', 'IFT632', 'IFT', 632, 3, '45', 30, 0, 15, 'FONDAMENTAL', 32, 1, 2),
(73, 'Internet des Objets', 'RIN641', 'RIN', 641, 3, '45', 30, 0, 15, 'FONDAMENTAL', 33, 1, 1),
(74, 'Réseaux mobiles', 'RIN642', 'RIN', 642, 3, '45', 30, 0, 15, 'FONDAMENTAL', 33, 1, 2),
(84, 'Grandeur Physique et Termodynamique', 'GTE121', 'GTE', 121, 3, '45', 45, 0, 0, 'FONDAMENTAL', 37, 1, 1),
(85, 'Comptabilité financière et analytique', 'COM213', 'COM', 213, 3, '45', 45, 0, 0, 'TRANSVERSAL', 5, 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `emprunter_materiels`
--

CREATE TABLE `emprunter_materiels` (
  `id_emprunt` int(11) NOT NULL,
  `qte` int(11) NOT NULL,
  `date_emprunt` datetime NOT NULL DEFAULT current_timestamp(),
  `date_retour` date NOT NULL,
  `materiel_id` int(11) NOT NULL,
  `personnel_id` int(11) DEFAULT NULL,
  `dossier_id` int(11) DEFAULT NULL,
  `rendu` int(3) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `encadrement`
--

CREATE TABLE `encadrement` (
  `id_encadrement` int(11) NOT NULL,
  `id_personnel` int(11) NOT NULL,
  `id_industriel` int(11) NOT NULL,
  `id_stage` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `encadreur`
--

CREATE TABLE `encadreur` (
  `id_enc` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `grade` varchar(255) NOT NULL DEFAULT 'NaN',
  `type_enc` int(11) DEFAULT NULL,
  `fonction` int(11) DEFAULT NULL,
  `entreprise` int(11) DEFAULT NULL,
  `is_industriel` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `encadreur`
--

INSERT INTO `encadreur` (`id_enc`, `nom`, `email`, `grade`, `type_enc`, `fonction`, `entreprise`, `is_industriel`) VALUES
(1, 'Jean Paul', 'jean@gmail.com', 'Directeur', NULL, 1, 13, 1);

-- --------------------------------------------------------

--
-- Structure de la table `enc_industriel`
--

CREATE TABLE `enc_industriel` (
  `id_enc` int(11) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `tel` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `enc_industriel`
--

INSERT INTO `enc_industriel` (`id_enc`, `nom`, `prenom`, `email`, `password`, `tel`) VALUES
(3, 'Talla', 'Simon', 'malachieborohoul@gmail.com', '$2y$10$wyLnE/FHhi7WvxwVHaBQtuK.0TCIlKxZ8E5KT0Dr4/k/N0P9Clp5a', 697140690);

-- --------------------------------------------------------

--
-- Structure de la table `enseignes`
--

CREATE TABLE `enseignes` (
  `id_enseigne` int(11) NOT NULL,
  `ec_id` int(11) NOT NULL,
  `personnel_id` int(11) NOT NULL,
  `annee_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `enseignes`
--

INSERT INTO `enseignes` (`id_enseigne`, `ec_id`, `personnel_id`, `annee_id`) VALUES
(2, 25, 17, 1),
(3, 21, 5, 1),
(5, 21, 21, 1),
(6, 23, 2, 1),
(7, 7, 2, 1),
(10, 21, 6, 2),
(13, 4, 7, 2),
(14, 5, 23, 2),
(16, 8, 3, 2),
(17, 9, 12, 2),
(18, 10, 2, 2),
(19, 11, 9, 2),
(20, 12, 14, 2),
(21, 13, 15, 2),
(22, 14, 12, 2),
(23, 15, 3, 2),
(25, 17, 18, 2),
(26, 18, 17, 2),
(27, 19, 18, 2),
(28, 20, 13, 2),
(33, 4, 7, 1),
(34, 5, 23, 1),
(36, 6, 9, 1),
(37, 8, 3, 1),
(38, 9, 12, 1),
(39, 10, 2, 1),
(40, 12, 14, 1),
(41, 14, 12, 1),
(42, 15, 3, 1),
(43, 17, 18, 1),
(44, 13, 18, 1),
(45, 22, 23, 1),
(46, 26, 17, 1),
(47, 27, 9, 1),
(48, 28, 7, 1),
(49, 35, 9, 1),
(50, 34, 20, 1),
(64, 38, 13, 1),
(65, 30, 2, 1),
(66, 37, 3, 1),
(70, 11, 13, 1),
(73, 6, 2, 2),
(74, 7, 2, 2),
(75, 16, 9, 2),
(76, 16, 2, 2),
(77, 85, 16, 2),
(80, 3, 5, 2),
(81, 3, 21, 2),
(82, 84, 9, 2);

-- --------------------------------------------------------

--
-- Structure de la table `entreprise`
--

CREATE TABLE `entreprise` (
  `id_entreprise` int(11) NOT NULL,
  `nom_entreprise` varchar(255) NOT NULL,
  `ville` int(11) NOT NULL,
  `postale` varchar(100) DEFAULT NULL,
  `email_entreprise` varchar(100) DEFAULT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `telephone` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `entreprise`
--

INSERT INTO `entreprise` (`id_entreprise`, `nom_entreprise`, `ville`, `postale`, `email_entreprise`, `designation`, `telephone`, `description`) VALUES
(13, 'Camtel', 1, '', '', NULL, 0, ''),
(14, 'CENADI', 3, '13750', 'contact@cenadi.cm', 'Directeur', 222232099, ''),
(15, 'IUT', 1, '', 'dstages2004@yahoo.fr', 'Directeur', 699523727, 'institut universitaire de technologie'),
(16, 'Hôpital régional', 1, '45', 'hopitalregionale-ndere@yahoo.fr', 'Directeur', 222251199, '');

-- --------------------------------------------------------

--
-- Structure de la table `etablissement`
--

CREATE TABLE `etablissement` (
  `id_etab` int(11) NOT NULL,
  `nom_etab` varchar(255) NOT NULL,
  `desc_etab` varchar(255) NOT NULL,
  `desc_etab_en` varchar(255) NOT NULL,
  `desc_univ` varchar(255) NOT NULL,
  `desc_univ_en` varchar(255) NOT NULL,
  `boite_pos` varchar(255) NOT NULL,
  `boite_pos_en` varchar(255) NOT NULL,
  `boite_post_fr` varchar(255) NOT NULL,
  `boite_post_en` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `division` varchar(255) NOT NULL,
  `logo_ecole` varchar(255) NOT NULL,
  `rep_fr` varchar(255) NOT NULL,
  `rep_en` varchar(255) NOT NULL,
  `devise_fr` varchar(255) NOT NULL,
  `devise_en` varchar(255) NOT NULL,
  `logo_univ` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `etablissement`
--

INSERT INTO `etablissement` (`id_etab`, `nom_etab`, `desc_etab`, `desc_etab_en`, `desc_univ`, `desc_univ_en`, `boite_pos`, `boite_pos_en`, `boite_post_fr`, `boite_post_en`, `tel`, `email`, `division`, `logo_ecole`, `rep_fr`, `rep_en`, `devise_fr`, `devise_en`, `logo_univ`) VALUES
(1, 'IUT', 'INSTITUT UNIVERSITAIRE DE TECHNOLOGIE', 'UNIVERSITY INSTITUT OF TECHNOLOGIE', 'UNIVERSITE DE NGAOUNDERE', 'THE UNIVERSITY OF NGAOUNDERE', 'B.P: 454 NGAOUNDERE-CAMEROUN', 'P.O BOX: 454 NGAOUNDERE-CAMEROON', 'B.P: 454', 'P.0.Box 454', '22 - 25 - 40 - 66', 'dfi.iutndere@gmail.com', 'DIVISION DE LA FORMATION INITIALE', 'logo_iut.png', ' REPUBLIQUE DU CAMEROUN', 'REPUBLIC OF CAMEROON ', 'Paix - Travail - Patrie', 'Peace - Word - Fatherland ', 'logo_univ.png');

-- --------------------------------------------------------

--
-- Structure de la table `etat`
--

CREATE TABLE `etat` (
  `id_etat` int(11) NOT NULL,
  `libelle` varchar(50) NOT NULL,
  `observation` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `etat`
--

INSERT INTO `etat` (`id_etat`, `libelle`, `observation`) VALUES
(1, 'programmer', 'doit être dispensé dans les délais demandé..'),
(2, 'a voir plus tard', 'bientôt programmable'),
(3, 'terminer', 'EC achevé en date Du 21/03/2019');

-- --------------------------------------------------------

--
-- Structure de la table `etats_quitus`
--

CREATE TABLE `etats_quitus` (
  `id_quitus` int(11) NOT NULL,
  `dossier_id` int(11) NOT NULL,
  `cms` varchar(10) NOT NULL,
  `scolarite` varchar(10) NOT NULL,
  `documentation` varchar(10) NOT NULL,
  `sag` varchar(10) NOT NULL,
  `service_stage` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `etat_materiels`
--

CREATE TABLE `etat_materiels` (
  `id_etat` int(11) NOT NULL,
  `nbre_defectueux` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `id_materiel_salle` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `etudiants`
--

CREATE TABLE `etudiants` (
  `id_etudiant` int(11) NOT NULL,
  `nom_prenom` varchar(255) CHARACTER SET utf8 NOT NULL,
  `genre` enum('M','F') CHARACTER SET utf8 NOT NULL,
  `matricule` varchar(8) NOT NULL,
<<<<<<< HEAD
  `password` varchar(255) NOT NULL,
=======
>>>>>>> 919b0a70103f549ce380f7b011cfc484e2ad84ae
  `nationalite` varchar(255) DEFAULT NULL,
  `date_nais` date DEFAULT NULL,
  `lieu_nais` varchar(255) DEFAULT NULL,
  `telephone` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL DEFAULT 'default.png',
  `pack_sms` int(255) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `etudiants`
--

<<<<<<< HEAD
INSERT INTO `etudiants` (`id_etudiant`, `nom_prenom`, `genre`, `matricule`, `password`, `nationalite`, `date_nais`, `lieu_nais`, `telephone`, `email`, `avatar`, `pack_sms`) VALUES
(1, 'ABDOURRAZAK IBRAHIM MAHAMAT BELLO', 'M', '20I001IU', '$2y$10$rma8YjDbyCJIUVxUc9px/e.JtFe1cceZC.ZDpCezoyv4zvHEAq.eW', 'Camerounaise', '2002-08-25', 'GAROUA', '', '', 'default.png', 0),
(2, 'ABOUBAKAR BRAHIM', 'M', '20I002IU', '$2y$10$sISynSRxTEIA/4ctagcSLOqFke82tUYRRJbOPOCh0qgf396Loljpa', 'Camerounaise', '1998-03-01', 'DOUBANE', '', '', 'default.png', 0),
(3, 'AHMADOU OUSSEINI', 'M', '20I003IU', '$2y$10$pmmLt/GnHuy4asVn7pD44Oky7Q5rJpH18U4nbOmKhZlYNbcp1v1lm', 'Camerounaise', '1999-11-10', 'MBELLA ASSOM', '', '', 'default.png', 0),
(4, 'AHMADOU ROUFAÏ', 'M', '20I004IU', '$2y$10$gHQY1.S87alnx.wPppPW4O01cd4bvpOgPxVbaKFz.ulNEjpu6AlgC', 'Camerounaise', '2004-11-01', 'NGAOUNDERE', '', '', 'default.png', 0),
(5, 'ALIOU SAADOU ALIOU', 'M', '20I005IU', '$2y$10$ftpp3VQp7ffYVoD4wIPowuNqC04Ta3a1Bw7TNQaQzMcAh0VmW/.pa', 'Camerounaise', '1998-02-23', 'MEDINE', '', '', 'default.png', 0),
(6, 'ASSOMO  OBAMA  Thérèse Audrey', 'F', '20I006IU', '$2y$10$wdXx6fW25DAqa6mZgMCTSechHlz.yfEZJUgbWCGGpWkYMQLJG8HBq', 'Camerounaise', '2001-07-26', 'NKOLBISSON', '', '', 'default.png', 0),
(7, 'AWE LEON', 'M', '20I007IU', '$2y$10$gLTWY/OJ.8QZrS1zoNMDneehm0YdlSpz40NLv6vBvWWZIGsn6hCmq', 'Camerounaise', '2000-05-29', 'TALA-MOKOLO', '', '', 'default.png', 0),
(8, 'BABBA ABDEL AZIZ', 'M', '20I008IU', '$2y$10$Ola5mAFHqyppZBiE8BTomeIpZo5jhJSf026KCWciwEyCNYtglAosy', 'Camerounaise', '2003-03-18', 'BERTOUA', '', '', 'default.png', 0),
(9, 'BADANE JEAN CHRETIEN', 'M', '20I009IU', '$2y$10$IZ1255wk9452FDZ.JliaQusgvWjSHTXPehEd.Hq4UP5fT//QHKqQa', 'Camerounaise', '2002-11-25', 'YAOUNDE', '', '', 'default.png', 0),
(10, 'BADEMBE LE GRAND WATCHING MOISE', 'M', '20I010IU', '$2y$10$oRzF817W9eW8sGVIG5sZSed4TXQqOtA2soxjMNv7Bz9tBYgMQwSQ6', 'Camerounaise', '1995-09-11', 'MTE DE KAELE', '', '', 'default.png', 0),
(11, 'BASSIROU HAMADJODA TANKO ', 'M', '20I011IU', '$2y$10$qKgT7ZlRr9kSlj0Xt2uuMeD7q5hpR0c6PCvXFeTPSvfOikj4F11A6', 'Camerounaise', '2001-01-25', 'NGAOUNDERE', '', '', 'default.png', 0),
(12, 'BAYIHA BA MIOUMNDE  Adalbert', 'M', '20I012IU', '$2y$10$kn8DYI6iCmdz/L7SHewX.e06Kp.4MOjwTjlyadETTWLpomK0/1vRu', 'Camerounaise', '1998-11-13', 'BOUMNYEBEL', '', '', 'default.png', 0),
(13, 'BELINGA BELINGE PERRIN', 'M', '20I013IU', '$2y$10$OEkTOSSS3WP6XlNqYjKJWuc2hSC0yvrXuQVaMXKHzWxqSMpyrcBRa', 'Camerounaise', '2000-02-16', 'LEMBE YEZOUM', '', '', 'default.png', 0),
(14, 'CHAHDINOU YICHE AICHA BRENDA', 'F', '20I014IU', '$2y$10$NsV9zVL2ONSQ9FzBc4RSIuttFiB1EX25Ob2eN/FfI/9EEkadoTbCG', 'Camerounaise', '2002-03-30', 'NGAOUNDERE', '', '', 'default.png', 0),
(15, 'DADI GASTON ARSENE DARYLE', 'M', '20I015IU', '$2y$10$AjhVh22INP3QV88gFxWKxOOosCd726KKYSA0wILLuCS2eLfmQHy6W', 'Camerounaise', '2002-07-10', 'NGAOUNDERE', '', '', 'default.png', 0),
(16, 'DINGAMRO URBAIN', 'M', '20I016IU', '$2y$10$Udnci5pKHZ0/OPWaXaJbS.dpWxZCiaU0kktOIohAbNMUXsiOp2Lly', 'Tchadienneienne', '1999-12-19', 'N\'DJAMENA', '', '', 'default.png', 0),
(17, 'DJABOU KAOUTONG EVE', 'F', '20I017IU', '$2y$10$opxVv.ZBDku3bRB0VcRF5eR5pxGQfoVlDyWJY/DVbbjmbDC1HlPri', 'Camerounaise', '2004-01-12', 'NGAOUNDERE', '', '', 'default.png', 0),
(18, 'DJAMA ABENELANG VINCENT KOEL', 'M', '20I018IU', '$2y$10$nm4fesO41gvAvUQGD3uWrOKBAUQosFu55xAEcT8wx5SsyuEAS7Wqy', 'Camerounaise', '1998-05-18', 'EBOLOWA', '', '', 'default.png', 0),
(19, 'DJOUGLA DJOKO DARRYL URIEL', 'M', '20I019IU', '$2y$10$wd..iWRQfJQZuYANI0VhgeJprdhHmbXWIT/VDeQsN8xQzh0Xxf0Wu', 'Camerounaise', '2001-10-20', 'BAFOUSSAM', '', '', 'default.png', 0),
(20, 'DOUVAWISSA TROUMBA DOMINIQUE', 'M', '20I020IU', '$2y$10$f3nSIR50XYX0fRWqELPOx.Rb6azB2Hyszk6IE/iZWL1Sfu1oXxUMa', 'Camerounaise', '2002-04-22', 'TCHOLLIRE', '', '', 'default.png', 0),
(21, 'EBONGUE JEAN  YVES JUNIOR', 'M', '20I021IU', '$2y$10$2AiTS6hZM4Fr9vlBnSXQb.yuGDeiUbJQ5whvrpWtL/gTwYu1xWy4m', 'Camerounaise', '2003-04-15', 'NGAOUNDERE', '', '', 'default.png', 0),
(22, 'EKOBENA  NGANYONGO  Rajesh Constantin', 'M', '20I022IU', '$2y$10$r9Ettt7T52xLKkEyQDPpluVK/u6IZlpWp5ez/MoU/k7uih9IpMm7S', 'Camerounaise', '2002-11-13', 'YAOUNDE', '', '', 'default.png', 0),
(23, 'EYEBE ELOUNDOU JOEL CEDRIC', 'M', '20I023IU', '$2y$10$Pd8.qlyq8xSvM1r1YGKzkO18hACVM/iC4GrcT8cGvXSPsYrxjyyGi', 'Camerounaise', '2002-08-08', 'NGAOUNDERE', '', '', 'default.png', 0),
(24, 'FATCHA WOUENDEU ZACHEE JUNIOR', 'M', '20I024IU', '$2y$10$bTpAPKBt4HtoMlbJjzedSeR.YxdSsRRO5mDrBuKHlSDU9dG7fAjdi', 'Camerounaise', '2000-01-24', 'NGAOUNDERE', '', '', 'default.png', 0),
(25, 'FEZEU KONTCHOU VALENTIN ARMAND', 'M', '20I025IU', '$2y$10$iPOoWWxu3WFYcii6m9rjEe2aOOzxJve3UHWI0quDjTeBZh.9arNH.', 'Camerounaise', '2001-05-04', 'NGAOUNDERE', '', '', 'default.png', 0),
(26, 'FOUEFACK  ZEBAZE  Raoul  Dupont', 'M', '20I026IU', '$2y$10$PkII91XviFJ2S900ZU5rZeWFWzGKhu9od30sMX4ZBzEARk/W0XFlK', 'Camerounaise', '2004-12-30', 'NOMAYOS', '', '', 'default.png', 0),
(27, 'GWADE  Stève', 'M', '20I027IU', '$2y$10$hxcKqPJQtQEfZtq7MBOw1OHNsbfsPXVxFo8kFmmUTPsFgTLFeg/d.', 'Camerounaise', '2002-08-12', 'YAOUNDE', '', '', 'default.png', 0),
(28, 'HANSA-OU RADJIL', 'F', '20I028IU', '$2y$10$4zTI.wEZ.N2WMK.pZZC7jOGiI2olZDfDH/z3IjtpFYt8k2lyCY6vC', 'Camerounaise', '2001-11-05', ' NGAOUNDERE', '', '', 'default.png', 0),
(29, 'HAWAOU MOUSSA', 'F', '20I029IU', '$2y$10$ltnw2X0Dnd8GOBlLecX2.O5Y1G.i.Z.MXH1vKd93BlxmiktSjCsx.', 'Camerounaise', '2002-04-30', 'GAROUA', '', '', 'default.png', 0),
(30, 'IBRAHIMA MAMOUDOU', 'M', '20I030IU', '$2y$10$FRGDHGTjgItSiVw.dXyRqe2g9j.ONu.ZiKjVCEt6dCp3sgU2VnT9q', 'Camerounaise', '2002-07-07', 'TOKOMBERE', '', '', 'default.png', 0),
(31, 'IBRAHIMA SOULE', 'M', '20I031IU', '$2y$10$ZHaNNSKY725GxR20mOief.zb3FEcEkxspuABpNHwVcIL/QSSzPdAe', 'Camerounaise', '2001-01-24', 'NGAOUNDERE', '', '', 'default.png', 0),
(32, 'ILYASSOU ISSA', 'M', '20I032IU', '$2y$10$j2TqvitgynB3dt0suDboMepYyUNdLjIQE3FFqBXRfA8onzuHmuXuO', 'Camerounaise', '1998-11-25', 'NGAOUNDERE', '', '', 'default.png', 0),
(33, 'ISMAILA DOCTOR OUSMANOU', 'M', '20I033IU', '$2y$10$EwM/KONyg18Lz79Xp84ZZ.D1/SqDCk945SpqgYHHcQ7rCp4KOtFkq', 'Camerounaise', '1998-12-02', ' MAROUA', '', '', 'default.png', 0),
(34, 'ISSYAKOU DJIBRILLA ALHADJI ALFAKI ', 'M', '20I034IU', '$2y$10$v9oCF5AGCiYYLiIfsUAASOFxTdD3Fme/RCg4fKjucumKvzlH.Rxae', 'Camerounaise', '2003-01-07', 'DOUALA', '', '', 'default.png', 0),
(35, 'KAMDEM FOKOM BISMARCK', 'M', '20I035IU', '$2y$10$s6PkbkKf1KwgDLtL96V0ZOAxNplri46WEyZicSAITPNLsbjv3fY6m', 'Camerounaise', '1996-10-04', 'BONABERI-DOUALA', '', '', 'default.png', 0),
(36, 'KIGMO YONGA EMMANUEL', 'M', '20I036IU', '$2y$10$mX3.TLD2ohSg/qaIcHmY/uoKwoCnyy/lNKYQrb/ia66DKwj7dfJwC', 'Camerounaise', '2003-02-11', 'YAGOUA', '', '', 'default.png', 0),
(37, 'KOPA PAMI ANGE SUZIE', 'F', '20I037IU', '$2y$10$VOCdp/DDFfP.DinD10PvBObJXjR/Hxp.8NBhATjWtOWXxPxbsLTyO', 'Camerounaise', '1998-03-13', 'BALENG', '', '', 'default.png', 0),
(38, 'LAUWEH KAPTUE STEVY', 'M', '20I038IU', '$2y$10$8h8xwsxac61NfUz3dwbIre32oYyfstK1FbMToali1AvnwkL3dXZSK', 'Camerounaise', '2002-01-27', 'NGAOUNDERE', '', '', 'default.png', 0),
(39, 'MAHAMAT AHMED', 'M', '20I039IU', '$2y$10$/aUFzRxAIR/VrwkjM5jRkOZeBfI4nxfgh2mOLK9QHBd4uUL/7JOju', 'Camerounaise', '2000-12-01', 'GOULFEY', '', '', 'default.png', 0),
(40, 'MAHAMAT ALHAFIZ ALI', 'M', '20I040IU', '$2y$10$KcGkgf/vuMwKwIQeWCNpQObnO2P6qoZd1vWM9cli8STZbtdo3yoNq', 'Tchadienne', '2002-10-28', 'ABECHE', '', '', 'default.png', 0),
(41, 'MAHAMAT BONOKONO IBRAHIM', 'M', '20I041IU', '$2y$10$289AJo6ibiBUF6GUYd/vIu4DqWm1ejq9exsxojUZEHn2NIh0rG6r2', 'Camerounaise', '1999-11-15', 'GAROUA', '', '', 'default.png', 0),
(42, 'MAIMOUNATOU DIDI BALLO', 'F', '20I042IU', '$2y$10$IP9WulLBXxZB/TrnXGU1Yu1F8NfNUcuBN62kjGHwvwdA4dzUBtt/2', 'Camerounaise', '2002-06-29', 'NGAOUNDERE', '', '', 'default.png', 0),
(43, 'MARYAMOU HINDOU', 'F', '20I043IU', '$2y$10$F4wWx.mjoI/uumpxL/cgN.KuzaYIyIVI80ht/DnAU4nJBmoe77yCu', 'Camerounaise', '1998-03-05', 'NGAOUNDERE', '', '', 'default.png', 0),
(44, 'MATAGNE TOKAM ASTRID LOVIE', 'F', '20I044IU', '$2y$10$pJ59/8Sqh8IW3OowIhrYoesO9eDFfjXOnxEaIyvg.ZqNpXzR2u2n.', 'Camerounaise', '2003-07-01', 'NGAOUNDERE', '', '', 'default.png', 0),
(45, 'MBADAI TOKLE AMINATOU', 'F', '20I045IU', '$2y$10$dNnAtKg.40vDNU..tbadNu/20Lfwd/sdj1H2yvxZXWJhYx1B3NHVa', 'Camerounaise', '2001-05-20', 'GAROUA', '', '', 'default.png', 0),
(46, 'MBARGA  EKASSI  Tobie', 'M', '20I046IU', '$2y$10$ct3Bry1dzYrVmjYPQDRmo.pThku1a0JZ661./.BFpYT5lA6BdTDzy', 'Camerounaise', '1996-06-30', 'ENDAMA II', '', '', 'default.png', 0),
(47, 'MBELALE WILFRIED BRUNEL', 'M', '20I047IU', '$2y$10$5ZGimIeNo8cUUu592AlPLeKJ9nuqTB1gLGui0anCqRhmNw8TZGile', 'Camerounaise', '2001-09-12', 'NGAOUNDERE', '', '', 'default.png', 0),
(48, 'MBELE TERRIER VALENTIN', 'M', '20I048IU', '$2y$10$cpIpqZ4576Yr1uUReBGgZOJ82S5GZrm4/FoyWfoBJdjCtLiThMJ7.', 'Camerounaise', '2001-10-18', 'GAROUA', '', '', 'default.png', 0),
(49, 'MENGUENE  NOAH  Chantal', 'F', '20I049IU', '$2y$10$kKQrGztZT68J.HuxI8kQf./UrYdf0AVLQLKAhSs/XmN23ZYypwmJS', 'Camerounaise', '2000-08-29', 'OBALA', '', '', 'default.png', 0),
(50, 'MENKOANDE ME DJEMBE CALVIN', 'M', '20I050IU', '$2y$10$lzgOxIBEuRQBrxwFdWUdA.pubp1yV4JfkFCKK3yWQ5dHDt0zPdGYW', 'Camerounaise', '2002-09-20', 'BERTOUA', '', '', 'default.png', 0),
(51, 'MFOYET  MOUNKAMBOU  Abdelatif', 'M', '20I051IU', '$2y$10$nqzlxlmu33T/ah3.vUqfbe85Z8T7MIbdYNLFZb846PWXNja1YQsoy', 'Camerounaise', '2001-11-08', 'YAOUNDE II', '', '', 'default.png', 0),
(52, 'MOHAMADOU BADAMASSI BABADJI', 'M', '20I052IU', '$2y$10$Cvj8prAGHucQlRgLdrZsaeg9U4Q4sU57VScoaDSILqGTibxD6mfSq', 'Camerounaise', '2001-01-03', 'GAROUA-BOULAI', '', '', 'default.png', 0),
(53, 'MOHAMADOU BELLO', 'M', '20I053IU', '$2y$10$EqmQfmhcQFKfZo8dCkVXoOzwaa7/ZlYbegM3amFPkkNXHgeFTx.RG', 'Camerounaise', '1998-11-27', 'MADJELE', '', '', 'default.png', 0),
(54, 'MOHAMADOU SOULEY', 'M', '20I054IU', '$2y$10$ujQk.7RgN0iCUBkvOfecIem.PQGT4Ql8jgOpmKPK4BANnF9Zb8w7a', 'Camerounaise', '2002-06-29', ' MAROUA', '', '', 'default.png', 0),
(55, 'MOUKATE NGUINI ROGER MANFRED', 'M', '20I055IU', '$2y$10$ORtxVkvYTxOxWTOfgRoHYOLJIG/EBZ0vSLoDnLf3yApjhXQgCFXCS', 'Camerounaise', '2001-08-26', 'DIZANGUE', '', '', 'default.png', 0),
(56, 'MOUKODI CLAUDIA LAUREN JULIENNE', 'F', '20I056IU', '$2y$10$Cglo1sJ/fAPWSmuwQ4yXIOF891976USfXVwU5jjOcu076UKQzSnPW', 'Camerounaise', '2002-12-26', 'NGAOUNDERE', '', '', 'default.png', 0),
(57, 'MOUMANI DAYELA ANDRE', 'M', '20I057IU', '$2y$10$qKN8ziMH8IumuFaTIYBVZ.lYDyBp/QhheoCyoNo6v4.2u8qS1WylS', 'Camerounaise', '2000-01-16', 'BASSAP', '', '', 'default.png', 0),
(58, 'NEDAOUKA JOACHIM', 'M', '20I058IU', '$2y$10$JYLIocrzA/tZFKUw.U.ImeQ4c2wqFlJpwVcc3kmEkk8MA0.8I6PHu', 'Camerounaise', '2002-07-24', 'MAROUA', '', '', 'default.png', 0),
(59, 'NEOSSI NEOSSI DYLAN STEVE', 'M', '20I059IU', '$2y$10$w4xuTFOqmsjUXiAcK0B8h.Ag73bC7MLSvJEEA0XRNk9fv3moUVIsG', 'Camerounaise', '2000-02-26', 'YAOUNDE', '', '', 'default.png', 0),
(60, 'NERAKA JUNIOR DESIRE', 'M', '20I060IU', '$2y$10$HfikX31NTNRZ3DmqYZHmyufQSB5tUWqAU0aNiQCGWpqwGgnWaXD8i', 'Camerounaise', '2001-01-14', ' MEIGANGA', '', '', 'default.png', 0),
(61, 'NGAYAP DASSI JOREL MELVIN', 'M', '20I061IU', '$2y$10$tyLJbL8Nel9iFzX45bKoUuAY3XrIHVx2SGDkUn/zqCci0z8fxXT1O', 'Camerounaise', '0000-00-00', 'BALENG', '', '', 'default.png', 0),
(62, 'NGONGUEUH  MOUELLE  AYAFOR ', 'M', '20I062IU', '$2y$10$YhK/oAMHMKqIMItH5r8UxeuQXBecfZcHnGpg7KtcgtYb.e4YIGMua', 'Camerounaise', '1999-04-13', 'AWING', '', '', 'default.png', 0),
(63, 'NJOH MANGA EMMANUEL PIERRE', 'M', '20I063IU', '$2y$10$BfBdUudxQZkBShpsD.zBPO8HF1vJnZBGmf0wCLzv7Ot8WvJghLjxK', 'Camerounaise', '1998-02-02', 'NSEM', '', '', 'default.png', 0),
(64, 'NJOUONKOU NJOYA MOUSTAPHA MOHAMMED SAID', 'M', '20I064IU', '$2y$10$wOLkPjzXdsUPNG.t.Z2Aqe3JCz6UPkEG.wgwYkJEefODPsvL6GVhS', 'Camerounaise', '2001-06-03', 'YAOUNDE II', '', '', 'default.png', 0),
(65, 'NOUMA  AMBOMO Justine Anne Gerda', 'F', '20I065IU', '$2y$10$8TfCPv6pTAVQ2Uj/dWXbfeYbn6Ct7X3S2ZdVaXQOmNtHfvHNS3DBC', 'Camerounaise', '1997-07-16', 'YAOUNDE', '', '', 'default.png', 0),
(66, 'NYEMB  NDJEM  EONE André Kevin', 'M', '20I066IU', '$2y$10$G6i/6id2xBfqrxNwQ0Rid.F/JaqifbNS/mx4jSX5rTTielkdrmu5y', 'Camerounaise', '2003-10-28', 'YAOUNDE', '', '', 'default.png', 0),
(67, 'OMBIOGNO PHILIPPE CEDRIC', 'M', '20I067IU', '$2y$10$X0XMRRUrJ42cDOuQ37l9o.4OXXol67QkSL7o8JAxgU1tWUrfEw5zu', 'Camerounaise', '1998-10-24', 'MBANDJOCK', '', '', 'default.png', 0),
(68, 'OUMAROU MOKTAR', 'M', '20I068IU', '$2y$10$rLXovvaNYSZtdTIKl7iWVunxL5WxIeKQOYUYBthXkMIMQJLqGA0SO', 'Camerounaise', '2001-07-19', 'NGAOUNDERE', '', '', 'default.png', 0),
(69, 'OUMAROU OUSMANE', 'M', '20I069IU', '$2y$10$WDbVaNNd6rRbxLXdlLOehO5XD.BYcLKpvVuvHKa3HjvG4JWOKP8ly', 'Centrafricaine', '1999-10-13', 'BANGUI', '', '', 'default.png', 0),
(70, 'OUSMANOU HAMADOU', 'M', '20I070IU', '$2y$10$Drfqg2qPoYUNOUinx6ftuerEzPox2ccOUQpMNL0jrhYUf2MmMecCO', 'Camerounaise', '2000-05-02', 'NGAOUNDERE', '', '', 'default.png', 0),
(71, 'PEPEE NGODJO DUCLOS', 'M', '20I071IU', '$2y$10$XM3t0p6RLhA50JiVe8sFse0bJBRuKabLTSZ/ZNjtdTCDlnnQnhGCy', 'Camerounaise', '1998-08-01', 'BONABERI- DOUALA', '', '', 'default.png', 0),
(72, 'POUNTOUNYINYI NCHANGE ABDEL JAMIL', 'M', '20I072IU', '$2y$10$mo8wGwiAa/HtpJZIsnaIbe4P7XdBByLrDJc4.neEsKkh2DTMSBMd2', 'Camerounaise', '1998-03-16', 'KOUPA MATAPIT', '', '', 'default.png', 0),
(73, 'RACHIDOU YOUSSOUFA TEROU', 'M', '20I073IU', '$2y$10$B4McQB7OMH1HEfcSPacruen7TbwieYns8KM/wdMRdpJDBewnZrVhi', 'Camerounaise', '2002-10-14', 'FIGUIL', '', '', 'default.png', 0),
(74, 'RAGUI DJOULDE CHRISTIANE', 'F', '20I074IU', '$2y$10$9VSDSM1GAYvuOjobpMN1AuMwAN/LPAheU1OrgKc2u7qbqf5k9/wum', 'Camerounaise', '2002-03-22', 'GAROUA', '', '', 'default.png', 0),
(75, 'SADJO MAHAMAT ISMAIL', 'M', '20I075IU', '$2y$10$5X3l/nKkhFqUEJDVP0.YGeqik9JU34GJjQt6R.XRxqOfaX999UPjq', 'Camerounaise', '2004-05-07', 'GAROUA', '', '', 'default.png', 0),
(76, 'SALI YAOUBA', 'M', '20I076IU', '$2y$10$WgcrDvA03ZJjNfF5Bk7hLeeByrGrGySG/iO9spJtvMk0QZ9FWVEwy', 'Camerounaise', '1996-01-20', 'NGAOUNDERE', '', '', 'default.png', 0),
(77, 'SILIEBOUE TCHEUNDJUI ROMUALD', 'M', '20I077IU', '$2y$10$vAs9anYkoPRu5YDrvuysw.MBNH2G2XWefJbDrhnqVTVryKCeHhXh.', 'Camerounaise', '2003-01-01', 'DOUALA', '', '', 'default.png', 0),
(78, 'TASSONA BRANDON DARMAN', 'M', '20I078IU', '$2y$10$RUksyJYwx8UHjYYjTKwZkOprWanoFUZJALSDGm7/T4hGaC7GlPxrS', 'Camerounaise', '2004-07-20', 'NGAOUNDERE', '', '', 'default.png', 0),
(79, 'TCHOKOKAM TCHOKOKAM KEVIN MARTIAL', 'M', '20I079IU', '$2y$10$c2H6BPhx5LlTX5hKnVUn3.1TYjZK0BTmiBHjRvdshh0H.WBA07MBO', 'Camerounaise', '1990-10-29', 'NGAOUNDERE', '', '', 'default.png', 0),
(80, 'TENDIAFI BRYIAN MOFOR', 'M', '20I080IU', '$2y$10$tq0MMoMr2L.fqQDsUYf7Le4AJV2LoWZAqHnNhO7LAbRL3gcqQOvEq', 'Camerounaise', '1998-04-21', 'MMOUCK', '', '', 'default.png', 0),
(81, 'TIGE FAMA NTSATE ULRICH', 'M', '20I081IU', '$2y$10$0B4.LzKr/yGpVmAOhEu1POytWNoox0Ja.ZwljgLwe13Yq2aCrN9ge', 'Camerounaise', '2003-01-05', 'NGAOUNDERE', '', '', 'default.png', 0),
(82, 'TOKO NENKAM PATRICK ARTHUR', 'M', '20I082IU', '$2y$10$ca5vwPFKf6DEga6a3HHw.OygjeGhyzW.D7oQfWxF8P.LyfZosQ6F.', 'Camerounaise', '2002-08-31', 'DOUALA', '', '', 'default.png', 0),
(83, 'TOMI FRESNEL FAUSTIN', 'M', '20I083IU', '$2y$10$MnaqNC23DByJrF8uY422WuBJjAmPep1Flz5agqzpD6fUxt8f34ujC', 'Camerounaise', '1998-06-05', 'NGAOUNDERE', '', '', 'default.png', 0),
(84, 'WALLA ZALLA JEAN LUC', 'M', '20I084IU', '$2y$10$ymliCIVQJHRoEwflnd35e.4fSRRZ5P7XUOMwocaJqk3vtQxhxvckG', 'Camerounaise', '2000-04-10', 'MTE KOUSSERI', '', '', 'default.png', 0),
(85, 'YACOUBOU OUMAROU', 'M', '20I085IU', '$2y$10$XZDMaoA/evhdMnTsbiGpa.dD4fx1/gmDazFs5OARp5rCJzbxSCMS2', 'Camerounaise', '1999-04-02', 'GAROUA', '', '', 'default.png', 0),
(86, 'YOMI NOUHAN EMMANUEL  GAETAN', 'M', '20I086IU', '$2y$10$UZWeeE5m6ihf/6tAyVmNrO25OPmuMMSBStt0y/AbgjJ5IoZfaGea.', 'Camerounaise', '2003-10-13', 'NGAOUNDERE', '', '', 'default.png', 0),
(87, 'YOUAFIQ SANDA HAMAN', 'M', '20I087IU', '$2y$10$8Ldz0sz7ioHYrbAqOZF05ept30xNqcq1tDg9w1ICbEAyGIuALIxG2', 'Camerounaise', '2001-09-27', 'MAROUA', '', '', 'default.png', 0),
(88, 'ABDOURRAZAK IBRAHIM MAHAMAT BELLO', 'M', '21I001IU', '$2y$10$JG4kMxHKzv0TCze.T4GCqOs7gJE4qQXXgI43qQRlB.H.Ue2Qyxzwq', 'Camerounaise', '2002-08-25', 'GAROUA', '', '', 'default.png', 0),
(89, 'ABOUBAKAR BRAHIM', 'M', '21I002IU', '$2y$10$Rv47bOMKFN2QLA4.A90mduM2PtuVBjbFnbMG0ktNkIBVNvTGcPEu.', 'Camerounaise', '1998-03-10', 'DOUBANE', '', '', 'default.png', 0),
(90, 'AHMADOU OUSSEINI', 'M', '21I003IU', '$2y$10$.s0UQO0lqBCiig5X9BZf7u/IiXuLljBh/MaSVOIkCQV3DdZiWYQFK', 'Camerounaise', '1999-11-10', 'MBELLA ASSOM', '', '', 'default.png', 0),
(91, 'AWE LEON', 'M', '21I004IU', '$2y$10$uztC4TrKrj1lJ2Ne8h/My.acP4irEyoONQrnY14MH5AbfXb6ehD86', 'Camerounaise', '2000-05-29', 'TALA-MOKOLO', '', '', 'default.png', 0),
(92, 'BABA SARKI MAHAMA', 'M', '21I005IU', '$2y$10$Cz5eFdLLMTta9Hq7TrSJOeYsigYLM/rag4dFw8b5SGgpD10.gWuBK', 'Camerounaise', '2000-07-14', 'DOUALA', '', '', 'default.png', 0),
(93, 'BABBA ABDEL AZIZ', 'M', '21I006IU', '$2y$10$KiOeMeyzrEBC/rRtXLGiwe7mVZiIExNi13Yc3xmFsLyDM4qsQlbK6', 'Camerounaise', '2003-03-18', 'BERTOUA', '', '', 'default.png', 0),
(94, 'BADANE JEAN CHRETIEN', 'M', '21I007IU', '$2y$10$hlU/3slFdLDISD04UEOFaeF4Ky8prGTRfn187C9FgJad3vAjM/oau', 'Camerounaise', '2002-11-25', 'YAOUNDE', '', '', 'default.png', 0),
(95, 'BADEMBE LE GRAND WATCHING MOISE', 'M', '21I008IU', '$2y$10$vLVadCJwZHs2ceHWYtOFH.EiT3Sr26yNq2iFN0qpYz7JxAq7nWpt.', 'Camerounaise', '1995-09-11', 'MTE DE KAELE', '', '', 'default.png', 0),
(96, 'BASSIROU HAMADJODA TANKO ', 'M', '21I009IU', '$2y$10$NjrZm2BIkwHQ61CvqbPrj.cS8qwtW5w9osxmCLzRgWo6AZ0ZKUKgC', 'Camerounaise', '2001-01-25', 'NGAOUNDERE', '', '', 'default.png', 0),
(97, 'BAYIHA BA MIOUMNDE  Adalbert', 'M', '21I010IU', '$2y$10$mvL.2s4YtTkAWSVpgROE6OBZdv/TTTclznKZfpH1xCXlQQHckN6qi', 'Camerounaise', '1998-11-13', 'BOUMNYEBEL', '', '', 'default.png', 0),
(98, 'BELINGA BELINGE PERRIN', 'M', '21I011IU', '$2y$10$UCxvC7sQoobMnpO4kzaVUeGv6vTqzjtylmVmz8NmycCDKcxwNiD7S', 'Camerounaise', '2000-02-16', 'LEMBE YEZOUM', '', '', 'default.png', 0),
(99, 'DADI GASTON ARSENE DARYLE', 'M', '21I012IU', '$2y$10$wjfte.LBu6mNwBE1bhat.eDmKRKICpUCi86qKxNyuQG50LqzO2v7y', 'Camerounaise', '2002-07-10', 'NGAOUNDERE', '', '', 'default.png', 0),
(100, 'DINGAMRO URBAIN', 'M', '21I013IU', '$2y$10$BBQ1WHcXGL/l3nsGLjH09O.yj.9H7DglkzWsxNXzFOVSbZ77xjyEa', 'Camerounaise', '1999-12-19', 'N\'DJAMENA', '', '', 'default.png', 0),
(101, 'DJABOU KAOUTONG EVE', 'M', '21I014IU', '$2y$10$fAPBK2WSVwcLS0ewDFsZ4e6YaXUvoIFQQZyU/V5i40sTGBlbA/0d.', 'Camerounaise', '2004-01-12', 'NGAOUNDERE', '', '', 'default.png', 0),
(102, 'DJAMA ABENELANG VINCENT KOEL', 'M', '21I015IU', '$2y$10$xwoljnq92/ooYE00nuZaDuzRIF5U/nOn.lH1UnwEi/KKVJ3E6o3h6', 'Camerounaise', '1998-05-18', 'EBOLOWA', '', '', 'default.png', 0),
(103, 'DJOUGLA DJOKO DARRYL URIEL', 'M', '21I016IU', '$2y$10$Ap4Kev6VoKeRaXDprJAIru5HM2LJPx.D1ZSwkkaryl.7j.Axm7sWC', 'Camerounaise', '2001-10-20', 'BAFOUSSAM', '', '', 'default.png', 0),
(104, 'DOUVAWISSA TROUMBA DOMINIQUE', 'M', '21I017IU', '$2y$10$UdhjRfyPoZAuL2bKzmIRa.dUlDrlgWs3xChfA49UdZZ62.ESFQ5b2', 'Camerounaise', '2002-04-22', 'TCHOLLIRE', '', '', 'default.png', 0),
(105, 'EBONGUE JEAN  YVES JUNIOR', 'M', '21I018IU', '$2y$10$nLz3xxDP4NrQFBK8Etnyv.fNfPnTqoFC8xW7wUYpRt2bor/kEviq6', 'Camerounaise', '2003-04-15', 'NGAOUNDERE', '', '', 'default.png', 0),
(106, 'EYEBE ELOUNDOU JOEL CEDRIC', 'M', '21I019IU', '$2y$10$wrBAYUeNe4pGzn5994fDY.rdYuDTAEhyyQD2hiJ1t8/L2.87Wx1gm', 'Camerounaise', '2002-08-08', 'NGAOUNDERE', '', '', 'default.png', 0),
(107, 'FATCHA WOUENDEU ZACHEE JUNIOR', 'M', '21I020IU', '$2y$10$5uqvGZDdQo8.MOxZCCOfhOlGDvgFAvE/jqntpH57Dw.avRc9fKfRa', 'Camerounaise', '2000-01-24', 'NGAOUNDERE', '', '', 'default.png', 0),
(108, 'FEZEU KONTCHOU VALENTIN ARMAND', 'M', '21I021IU', '$2y$10$6kMGhgYIOxLoF8AwOA14oeQsbFjJybiAwkXPuAtPLeQvba2VvEHy6', 'Camerounaise', '2001-05-04', 'NGAOUNDERE', '', '', 'default.png', 0),
(109, 'HANSA-OU RADJIL', 'M', '21I022IU', '$2y$10$.CG03n4.C6ZYXV9k/4ENXOKHcWNFUCg3IinZo1L8IgT6AXRk95mkO', 'Camerounaise', '2001-11-05', ' NGAOUNDERE', '', '', 'default.png', 0),
(110, 'HAWAOU MOUSSA', 'M', '21I023IU', '$2y$10$Rd1MROhRYr07.nob7WvB0Oh4ik4KfpuZ/5Htxzt.RYpF2ypAekoye', 'Camerounaise', '2002-04-30', 'GAROUA', '', '', 'default.png', 0),
(111, 'ILYASSOU ISSA', 'M', '21I024IU', '$2y$10$NKbAnerbv9GBjZKHpRjOp.yviyfQU1yJQC9/.hqdn8T144UZan6xW', 'Camerounaise', '1998-11-25', 'NGAOUNDERE', '', '', 'default.png', 0),
(112, 'ISMAILA DOCTOR OUSMANOU', 'M', '21I025IU', '$2y$10$O9re.aY2QoP4FR2Sarb8zO611qbA/5hF8qh3YA/LfQ98omOeDdQhe', 'Camerounaise', '1998-12-02', ' MAROUA', '', '', 'default.png', 0),
(113, 'ISSYAKOU DJIBRILLA ALHADJI ALFAKI ', 'M', '21I026IU', '$2y$10$F6ZgCkZS2ORfKSoQm4qj2ex7D45/eCg8hBhQUec6j9VV/bWVzAjSW', 'Camerounaise', '2003-01-07', 'DOUALA', '', '', 'default.png', 0),
(114, 'KAMDEM FOKOM BISMARCK', 'M', '21I027IU', '$2y$10$3sNHYgR3JZ0hvIEVa96vr.mg3O.6298bUtoCq61YPCvHX0nzFIQAG', 'Camerounaise', '1996-10-04', 'BONABERI-DOUALA', '', '', 'default.png', 0),
(115, 'KIGMO YONGA EMMANUEL', 'M', '21I028IU', '$2y$10$whhTUtSwKuqFsmI/Hu/uYu6UpU84bKf41tSkQNmyfi61iex8jq2pi', 'Camerounaise', '2003-02-11', 'YAGOUA', '', '', 'default.png', 0),
(116, 'KOPA PAMI ANGE SUZIE', 'M', '21I029IU', '$2y$10$Wlq5KGf105X5NxUpXsiuquloKIAOs6lSYvXJcrIEQWOMyn9plDoFC', 'Camerounaise', '1998-03-13', 'BALENG', '', '', 'default.png', 0),
(117, 'LAUWEH KAPTUE STEVY', 'M', '21I030IU', '$2y$10$kmVhipsXXrRGpJITlrjs1OMnbeS2lkm4XRNyTkyq2X2s0y1ubooSy', 'Camerounaise', '2002-01-27', 'NGAOUNDERE', '', '', 'default.png', 0),
(118, 'MAHAMAT AHMED', 'M', '21I031IU', '$2y$10$sn/3s9oXDXJkeXQhtQTvb.wMC7LOuzCN2mNFtQjYKpq80vgGh2wwe', 'Camerounaise', '2000-12-01', 'GOULFEY', '', '', 'default.png', 0),
(119, 'MAHAMAT ALHAFIZ ALI', 'M', '21I032IU', '$2y$10$/9AiK5mQn72EY3vTtDN9l.CA6n6C/6N.IiO0pMOzgnpUdvlf8ovE6', 'Camerounaise', '2002-10-28', 'ABECHE', '', '', 'default.png', 0),
(120, 'MAHAMAT BONOKONO IBRAHIM', 'M', '21I033IU', '$2y$10$6qGONCu9ZJKglR2t9dl3oeANdt/1V69TdUb8G1qsBuq9FK/R3OF4i', 'Camerounaise', '1999-11-15', 'GAROUA', '', '', 'default.png', 0),
(121, 'MAIMOUNATOU DIDI BALLO', 'M', '21I034IU', '$2y$10$PXULJIr/9a7Ke8.NLfKEeeho69RwdH9V5FuZgRE1lgLjym0SIlIM2', 'Camerounaise', '2002-06-29', 'NGAOUNDERE', '', '', 'default.png', 0),
(122, 'MARYAMOU HINDOU', 'M', '21I035IU', '$2y$10$DYnOhGrc3rS/HhC5/AY9OOfp3yIIO12BGTHNfA.gC8/8rhO2zxTJK', 'Camerounaise', '1998-03-05', 'NGAOUNDERE', '', '', 'default.png', 0),
(123, 'MATAGNE TOKAM ASTRID LOVIE', 'M', '21I036IU', '$2y$10$pH/IRixNuJt9eHaAyrsEuekdwQq/uOOFh7.CuUIk3IeAnJTHWlpr2', 'Camerounaise', '2003-07-01', 'NGAOUNDERE', '', '', 'default.png', 0),
(124, 'MBADAI TOKLE AMINATOU', 'M', '21I037IU', '$2y$10$ZbO/64IfOlAmeZ1jZjI5aO2cJyXsOa3TuHB1ayVrIrQigXX01/CEC', 'Camerounaise', '2001-05-20', 'GAROUA', '', '', 'default.png', 0),
(125, 'MBARGA  EKASSI  Tobie', 'M', '21I038IU', '$2y$10$O2J4sUihUr8K8Zs0jHrhcezJ/St.oXWCSGZZwgGrPky47SCdbrsr2', 'Camerounaise', '1996-06-30', 'ENDAMA II', '', '', 'default.png', 0),
(126, 'MBELALE WILFRIED BRUNEL', 'M', '21I039IU', '$2y$10$Qb/5UQepByBA2L3X3MG7iuHisuI1fHG5i5u32AGBnIIDkAhYvWVc.', 'Camerounaise', '2001-09-12', 'NGAOUNDERE', '', '', 'default.png', 0),
(127, 'MBELE TERRIER VALENTIN', 'M', '21I040IU', '$2y$10$RW.B3ATdqKXjgxCPzrUHJOFmzADfFELWDLVl9UsvUJYPV3Qq7upBm', 'Camerounaise', '2001-10-18', 'GAROUA', '', '', 'default.png', 0),
(128, 'MENGUENE  NOAH  Chantal', 'M', '21I041IU', '$2y$10$T76okXKNIStoSVSc.Eotp.ZZwUfdfChKfQW8OBRChLwIc5cSmyxTS', 'Camerounaise', '2000-08-29', 'OBALA', '', '', 'default.png', 0),
(129, 'MENKOANDE ME DJEMBE CALVIN', 'M', '21I042IU', '$2y$10$OxGMSswuv0McvA0Df5xyveKHo4kapAZ4BzGp30BMiyieXWih/HgYC', 'Camerounaise', '2002-09-20', 'BERTOUA', '', '', 'default.png', 0),
(130, 'MOHAMADOU BADAMASSI BABADJI', 'M', '21I043IU', '$2y$10$JKBqApGNMj.CEurW73DEyulof/Aa3Vic8frhAmpVqmS5gPu7da7j.', 'Camerounaise', '2001-01-03', 'GAROUA-BOULAI', '', '', 'default.png', 0),
(131, 'MOHAMADOU BELLO', 'M', '21I044IU', '$2y$10$AomkwN8JWo8DpUUmNM/TFeOAi2gDCB6qhvne662uso05PmnQWfRdW', 'Camerounaise', '1998-11-27', 'MADJELE', '', '', 'default.png', 0),
(132, 'MOHAMADOU SOULEY', 'M', '21I045IU', '$2y$10$KsQMgjZU/8ObuOiDoQxQ7Od9ovnAUOrDKihvkfZJK6gWrPWhU4VXG', 'Camerounaise', '2002-06-29', ' MAROUA', '', '', 'default.png', 0),
(133, 'MOUKATE NGUINI ROGER MANFRED', 'M', '21I046IU', '$2y$10$I5YhTO3X9J7V6QCBvLda1.CLtvdEabgBh.uMRvUoowD510ZaE6tgq', 'Camerounaise', '2001-08-26', 'DIZANGUE', '', '', 'default.png', 0),
(134, 'MOUKODI CLAUDIA LAUREN JULIENNE', 'M', '21I047IU', '$2y$10$R/9/VA5KuV9lZBRtZ.k/QeDimojAaX1/QtOSlJlW.Y38YLC2K4BmC', 'Camerounaise', '2002-12-26', 'NGAOUNDERE', '', '', 'default.png', 0),
(135, 'MOUMANI DAYELA ANDRE', 'M', '21I048IU', '$2y$10$HlNbYZ0jgMxMtID1X52p7Oo/ywZKm72s5yYMXCjUfTu78M7m6bp1u', 'Camerounaise', '2000-01-16', 'BASSAP', '', '', 'default.png', 0),
(136, 'NAOUDIGAPOU LUCIEN ®', 'M', '21I049IU', '$2y$10$wGZEcOUrrsNypBbL5xlWJuljFwLKzr6aqq0TdscobZI1KFa7RrPuy', 'Camerounaise', '2000-09-18', 'GUIDER', '', '', 'default.png', 0),
(137, 'NEDAOUKA JOACHIM', 'M', '21I050IU', '$2y$10$dxAJmTOX.94RfMgWYX3oU.KdTRzeb6dAbZReFvC4bGySioVeX.Ziq', 'Camerounaise', '2002-07-24', 'MAROUA', '', '', 'default.png', 0),
(138, 'NEOSSI NEOSSI DYLAN STEVE', 'M', '21I051IU', '$2y$10$B87Ak78VFZhNhgPO7ZUU2uxOLeh5xz796k9kinoC0RdKOKAaPtSVC', 'Camerounaise', '2000-02-26', 'YAOUNDE', '', '', 'default.png', 0),
(139, 'NERAKA JUNIOR DESIRE', 'M', '21I052IU', '$2y$10$Tt27efSaHhuQ9D29YbvRouVNz/5FyKpUoDvClC9ynL5qnY.7XMPF.', 'Camerounaise', '2001-01-14', ' MEIGANGA', '', '', 'default.png', 0),
(140, 'NGAYAP DASSI JOREL MELVIN', 'M', '21I053IU', '$2y$10$hSvhd756KYCZUnPjQyQCUuZDvIz/BM0dDhmyf1e0rvKoOcyuYsOp.', 'Camerounaise', '2000-10-11', 'BALENG', '', '', 'default.png', 0),
(141, 'NJOUONKOU NJOYA MOUSTAPHA MOHAMMED SAID', 'M', '21I054IU', '$2y$10$J2r.o0IBeKZOwgk2HNCptedoeeNM8vnkZK9jcJAq8PQEacEs3ECz6', 'Camerounaise', '2001-06-03', 'YAOUNDE II', '', '', 'default.png', 0),
(142, 'NYEMB  NDJEM  EONE André Kevin', 'M', '21I055IU', '$2y$10$A5mijUjOTe9xJG8UFMu5l.sFNND50XQoDPJKOPdf9qRW991xXqo2y', 'Camerounaise', '2003-10-28', 'YAOUNDE', '', '', 'default.png', 0),
(143, 'OMBIOGNO PHILIPPE CEDRIC', 'M', '21I056IU', '$2y$10$3/QsZHWuhLULxsnOuYGILeETC6Kgscl.u5tbJIpUedvsCeR3RDm7G', 'Camerounaise', '1998-10-24', 'MBANDJOCK', '', '', 'default.png', 0),
(144, 'OUMAROU OUSMANE', 'M', '21I057IU', '$2y$10$W6MLGwb3MLlZu73VwVeVQuBJfaA44/p/mwcgAaX3GdKQHkxVm9iD6', 'Camerounaise', '1999-10-13', 'BANGUI', '', '', 'default.png', 0),
(145, 'OUSMANOU HAMADOU', 'M', '21I058IU', '$2y$10$vltCgbUAtl6okoQzHaoXpeBRhpECfnjBuN4HJzYdsrjIE/HEOsRAC', 'Camerounaise', '2000-05-02', 'NGAOUNDERE', '', '', 'default.png', 0),
(146, 'POUNTOUNYINYI NCHANGE ABDEL JAMIL', 'M', '21I059IU', '$2y$10$Rcq8ZxO4QstpDRI9KcnxUOh3uezA6aRcUIm.35fmYMtfdIwp4Va/u', 'Camerounaise', '1998-03-16', 'KOUPA MATAPIT', '', '', 'default.png', 0),
(147, 'SALI YAOUBA', 'M', '21I060IU', '$2y$10$0q3JC9bC43Ustsk7nL9TFu4btEKc4EXtS76njO0LtiGz2uOeEhGde', 'Camerounaise', '1996-01-20', 'NGAOUNDERE', '', '', 'default.png', 0),
(148, 'SILIEBOUE TCHEUNDJUI ROMUALD', 'M', '21I061IU', '$2y$10$qHg/dUou5lq3qAyxDSBCM.PCp52P1Axae6H/ea7cgJlysOpa.XdnS', 'Camerounaise', '2003-01-01', 'DOUALA', '', '', 'default.png', 0),
(149, 'TCHOKOKAM TCHOKOKAM KEVIN MARTIAL', 'M', '21I062IU', '$2y$10$c9R3U.zmAZ9ZwD6rZ/7ZWOOnHL/js.QUXrJy5e0OkWsBPVQ3vBgL.', 'Camerounaise', '1990-10-29', 'NGAOUNDERE', '', '', 'default.png', 0),
(150, 'TENDIAFI BRYIAN MOFOR', 'M', '21I063IU', '$2y$10$.RxAWFxgeXdiO1UpmfeR4OPr8D6Ui5HTJDR4AZD3xPFA0eCREHfBa', 'Camerounaise', '1998-04-21', 'MMOUCK', '', '', 'default.png', 0),
(151, 'TOKO NENKAM PATRICK ARTHUR', 'M', '21I064IU', '$2y$10$Uil3sUs.fyGGsDMeU0vGsurA2Lr5TVi.0F06ZuqzqPVrhp6YxCqhi', 'Camerounaise', '2002-08-31', 'DOUALA', '', '', 'default.png', 0),
(152, 'WALLA ZALLA JEAN LUC', 'M', '21I065IU', '$2y$10$19B1qCqQjqHHg4/4vu7GheXrqD5PIHA5ZLprQVTV83AP6/vkp7OAu', 'Camerounaise', '2000-04-10', 'MTE KOUSSERI', '', '', 'default.png', 0),
(153, 'YOMI NOUHAN EMMANUEL  GAETAN', 'M', '21I066IU', '$2y$10$520x8UbclqViA6cWBX/Dm.C1SBqJ.Olu7liPRutdHv90VLQo5wK3K', 'Camerounaise', '2003-10-13', 'NGAOUNDERE', '', '', 'default.png', 0),
(154, 'YOUAFIQ SANDA HAMAN', 'M', '21I067IU', '$2y$10$IHn8RJuSnoOQVgKhZt4MneFfc9PZyl.CddAO63mdp8UlpbNs72xwC', 'Camerounaise', '2001-09-27', 'MAROUA', '', '', 'default.png', 0);
=======
INSERT INTO `etudiants` (`id_etudiant`, `nom_prenom`, `genre`, `matricule`, `nationalite`, `date_nais`, `lieu_nais`, `telephone`, `email`, `avatar`, `pack_sms`) VALUES
(1, 'ABDOURRAZAK IBRAHIM MAHAMAT BELLO', 'M', '20I001IU', 'Camerounaise', '2002-08-25', 'GAROUA', '', '', 'default.png', 0),
(2, 'ABOUBAKAR BRAHIM', 'M', '20I002IU', 'Camerounaise', '1998-03-01', 'DOUBANE', '', '', 'default.png', 0),
(3, 'AHMADOU OUSSEINI', 'M', '20I003IU', 'Camerounaise', '1999-11-10', 'MBELLA ASSOM', '', '', 'default.png', 0),
(4, 'AHMADOU ROUFAÏ', 'M', '20I004IU', 'Camerounaise', '2004-11-01', 'NGAOUNDERE', '', '', 'default.png', 0),
(5, 'ALIOU SAADOU ALIOU', 'M', '20I005IU', 'Camerounaise', '1998-02-23', 'MEDINE', '', '', 'default.png', 0),
(6, 'ASSOMO  OBAMA  Thérèse Audrey', 'F', '20I006IU', 'Camerounaise', '2001-07-26', 'NKOLBISSON', '', '', 'default.png', 0),
(7, 'AWE LEON', 'M', '20I007IU', 'Camerounaise', '2000-05-29', 'TALA-MOKOLO', '', '', 'default.png', 0),
(8, 'BABBA ABDEL AZIZ', 'M', '20I008IU', 'Camerounaise', '2003-03-18', 'BERTOUA', '', '', 'default.png', 0),
(9, 'BADANE JEAN CHRETIEN', 'M', '20I009IU', 'Camerounaise', '2002-11-25', 'YAOUNDE', '', '', 'default.png', 0),
(10, 'BADEMBE LE GRAND WATCHING MOISE', 'M', '20I010IU', 'Camerounaise', '1995-09-11', 'MTE DE KAELE', '', '', 'default.png', 0),
(11, 'BASSIROU HAMADJODA TANKO ', 'M', '20I011IU', 'Camerounaise', '2001-01-25', 'NGAOUNDERE', '', '', 'default.png', 0),
(12, 'BAYIHA BA MIOUMNDE  Adalbert', 'M', '20I012IU', 'Camerounaise', '1998-11-13', 'BOUMNYEBEL', '', '', 'default.png', 0),
(13, 'BELINGA BELINGE PERRIN', 'M', '20I013IU', 'Camerounaise', '2000-02-16', 'LEMBE YEZOUM', '', '', 'default.png', 0),
(14, 'CHAHDINOU YICHE AICHA BRENDA', 'F', '20I014IU', 'Camerounaise', '2002-03-30', 'NGAOUNDERE', '', '', 'default.png', 0),
(15, 'DADI GASTON ARSENE DARYLE', 'M', '20I015IU', 'Camerounaise', '2002-07-10', 'NGAOUNDERE', '', '', 'default.png', 0),
(16, 'DINGAMRO URBAIN', 'M', '20I016IU', 'Tchadienneienne', '1999-12-19', 'N\'DJAMENA', '', '', 'default.png', 0),
(17, 'DJABOU KAOUTONG EVE', 'F', '20I017IU', 'Camerounaise', '2004-01-12', 'NGAOUNDERE', '', '', 'default.png', 0),
(18, 'DJAMA ABENELANG VINCENT KOEL', 'M', '20I018IU', 'Camerounaise', '1998-05-18', 'EBOLOWA', '', '', 'default.png', 0),
(19, 'DJOUGLA DJOKO DARRYL URIEL', 'M', '20I019IU', 'Camerounaise', '2001-10-20', 'BAFOUSSAM', '', '', 'default.png', 0),
(20, 'DOUVAWISSA TROUMBA DOMINIQUE', 'M', '20I020IU', 'Camerounaise', '2002-04-22', 'TCHOLLIRE', '', '', 'default.png', 0),
(21, 'EBONGUE JEAN  YVES JUNIOR', 'M', '20I021IU', 'Camerounaise', '2003-04-15', 'NGAOUNDERE', '', '', 'default.png', 0),
(22, 'EKOBENA  NGANYONGO  Rajesh Constantin', 'M', '20I022IU', 'Camerounaise', '2002-11-13', 'YAOUNDE', '', '', 'default.png', 0),
(23, 'EYEBE ELOUNDOU JOEL CEDRIC', 'M', '20I023IU', 'Camerounaise', '2002-08-08', 'NGAOUNDERE', '', '', 'default.png', 0),
(24, 'FATCHA WOUENDEU ZACHEE JUNIOR', 'M', '20I024IU', 'Camerounaise', '2000-01-24', 'NGAOUNDERE', '', '', 'default.png', 0),
(25, 'FEZEU KONTCHOU VALENTIN ARMAND', 'M', '20I025IU', 'Camerounaise', '2001-05-04', 'NGAOUNDERE', '', '', 'default.png', 0),
(26, 'FOUEFACK  ZEBAZE  Raoul  Dupont', 'M', '20I026IU', 'Camerounaise', '2004-12-30', 'NOMAYOS', '', '', 'default.png', 0),
(27, 'GWADE  Stève', 'M', '20I027IU', 'Camerounaise', '2002-08-12', 'YAOUNDE', '', '', 'default.png', 0),
(28, 'HANSA-OU RADJIL', 'F', '20I028IU', 'Camerounaise', '2001-11-05', ' NGAOUNDERE', '', '', 'default.png', 0),
(29, 'HAWAOU MOUSSA', 'F', '20I029IU', 'Camerounaise', '2002-04-30', 'GAROUA', '', '', 'default.png', 0),
(30, 'IBRAHIMA MAMOUDOU', 'M', '20I030IU', 'Camerounaise', '2002-07-07', 'TOKOMBERE', '', '', 'default.png', 0),
(31, 'IBRAHIMA SOULE', 'M', '20I031IU', 'Camerounaise', '2001-01-24', 'NGAOUNDERE', '', '', 'default.png', 0),
(32, 'ILYASSOU ISSA', 'M', '20I032IU', 'Camerounaise', '1998-11-25', 'NGAOUNDERE', '', '', 'default.png', 0),
(33, 'ISMAILA DOCTOR OUSMANOU', 'M', '20I033IU', 'Camerounaise', '1998-12-02', ' MAROUA', '', '', 'default.png', 0),
(34, 'ISSYAKOU DJIBRILLA ALHADJI ALFAKI ', 'M', '20I034IU', 'Camerounaise', '2003-01-07', 'DOUALA', '', '', 'default.png', 0),
(35, 'KAMDEM FOKOM BISMARCK', 'M', '20I035IU', 'Camerounaise', '1996-10-04', 'BONABERI-DOUALA', '', '', 'default.png', 0),
(36, 'KIGMO YONGA EMMANUEL', 'M', '20I036IU', 'Camerounaise', '2003-02-11', 'YAGOUA', '', '', 'default.png', 0),
(37, 'KOPA PAMI ANGE SUZIE', 'F', '20I037IU', 'Camerounaise', '1998-03-13', 'BALENG', '', '', 'default.png', 0),
(38, 'LAUWEH KAPTUE STEVY', 'M', '20I038IU', 'Camerounaise', '2002-01-27', 'NGAOUNDERE', '', '', 'default.png', 0),
(39, 'MAHAMAT AHMED', 'M', '20I039IU', 'Camerounaise', '2000-12-01', 'GOULFEY', '', '', 'default.png', 0),
(40, 'MAHAMAT ALHAFIZ ALI', 'M', '20I040IU', 'Tchadienne', '2002-10-28', 'ABECHE', '', '', 'default.png', 0),
(41, 'MAHAMAT BONOKONO IBRAHIM', 'M', '20I041IU', 'Camerounaise', '1999-11-15', 'GAROUA', '', '', 'default.png', 0),
(42, 'MAIMOUNATOU DIDI BALLO', 'F', '20I042IU', 'Camerounaise', '2002-06-29', 'NGAOUNDERE', '', '', 'default.png', 0),
(43, 'MARYAMOU HINDOU', 'F', '20I043IU', 'Camerounaise', '1998-03-05', 'NGAOUNDERE', '', '', 'default.png', 0),
(44, 'MATAGNE TOKAM ASTRID LOVIE', 'F', '20I044IU', 'Camerounaise', '2003-07-01', 'NGAOUNDERE', '', '', 'default.png', 0),
(45, 'MBADAI TOKLE AMINATOU', 'F', '20I045IU', 'Camerounaise', '2001-05-20', 'GAROUA', '', '', 'default.png', 0),
(46, 'MBARGA  EKASSI  Tobie', 'M', '20I046IU', 'Camerounaise', '1996-06-30', 'ENDAMA II', '', '', 'default.png', 0),
(47, 'MBELALE WILFRIED BRUNEL', 'M', '20I047IU', 'Camerounaise', '2001-09-12', 'NGAOUNDERE', '', '', 'default.png', 0),
(48, 'MBELE TERRIER VALENTIN', 'M', '20I048IU', 'Camerounaise', '2001-10-18', 'GAROUA', '', '', 'default.png', 0),
(49, 'MENGUENE  NOAH  Chantal', 'F', '20I049IU', 'Camerounaise', '2000-08-29', 'OBALA', '', '', 'default.png', 0),
(50, 'MENKOANDE ME DJEMBE CALVIN', 'M', '20I050IU', 'Camerounaise', '2002-09-20', 'BERTOUA', '', '', 'default.png', 0),
(51, 'MFOYET  MOUNKAMBOU  Abdelatif', 'M', '20I051IU', 'Camerounaise', '2001-11-08', 'YAOUNDE II', '', '', 'default.png', 0),
(52, 'MOHAMADOU BADAMASSI BABADJI', 'M', '20I052IU', 'Camerounaise', '2001-01-03', 'GAROUA-BOULAI', '', '', 'default.png', 0),
(53, 'MOHAMADOU BELLO', 'M', '20I053IU', 'Camerounaise', '1998-11-27', 'MADJELE', '', '', 'default.png', 0),
(54, 'MOHAMADOU SOULEY', 'M', '20I054IU', 'Camerounaise', '2002-06-29', ' MAROUA', '', '', 'default.png', 0),
(55, 'MOUKATE NGUINI ROGER MANFRED', 'M', '20I055IU', 'Camerounaise', '2001-08-26', 'DIZANGUE', '', '', 'default.png', 0),
(56, 'MOUKODI CLAUDIA LAUREN JULIENNE', 'F', '20I056IU', 'Camerounaise', '2002-12-26', 'NGAOUNDERE', '', '', 'default.png', 0),
(57, 'MOUMANI DAYELA ANDRE', 'M', '20I057IU', 'Camerounaise', '2000-01-16', 'BASSAP', '', '', 'default.png', 0),
(58, 'NEDAOUKA JOACHIM', 'M', '20I058IU', 'Camerounaise', '2002-07-24', 'MAROUA', '', '', 'default.png', 0),
(59, 'NEOSSI NEOSSI DYLAN STEVE', 'M', '20I059IU', 'Camerounaise', '2000-02-26', 'YAOUNDE', '', '', 'default.png', 0),
(60, 'NERAKA JUNIOR DESIRE', 'M', '20I060IU', 'Camerounaise', '2001-01-14', ' MEIGANGA', '', '', 'default.png', 0),
(61, 'NGAYAP DASSI JOREL MELVIN', 'M', '20I061IU', 'Camerounaise', '0000-00-00', 'BALENG', '', '', 'default.png', 0),
(62, 'NGONGUEUH  MOUELLE  AYAFOR ', 'M', '20I062IU', 'Camerounaise', '1999-04-13', 'AWING', '', '', 'default.png', 0),
(63, 'NJOH MANGA EMMANUEL PIERRE', 'M', '20I063IU', 'Camerounaise', '1998-02-02', 'NSEM', '', '', 'default.png', 0),
(64, 'NJOUONKOU NJOYA MOUSTAPHA MOHAMMED SAID', 'M', '20I064IU', 'Camerounaise', '2001-06-03', 'YAOUNDE II', '', '', 'default.png', 0),
(65, 'NOUMA  AMBOMO Justine Anne Gerda', 'F', '20I065IU', 'Camerounaise', '1997-07-16', 'YAOUNDE', '', '', 'default.png', 0),
(66, 'NYEMB  NDJEM  EONE André Kevin', 'M', '20I066IU', 'Camerounaise', '2003-10-28', 'YAOUNDE', '', '', 'default.png', 0),
(67, 'OMBIOGNO PHILIPPE CEDRIC', 'M', '20I067IU', 'Camerounaise', '1998-10-24', 'MBANDJOCK', '', '', 'default.png', 0),
(68, 'OUMAROU MOKTAR', 'M', '20I068IU', 'Camerounaise', '2001-07-19', 'NGAOUNDERE', '', '', 'default.png', 0),
(69, 'OUMAROU OUSMANE', 'M', '20I069IU', 'Centrafricaine', '1999-10-13', 'BANGUI', '', '', 'default.png', 0),
(70, 'OUSMANOU HAMADOU', 'M', '20I070IU', 'Camerounaise', '2000-05-02', 'NGAOUNDERE', '', '', 'default.png', 0),
(71, 'PEPEE NGODJO DUCLOS', 'M', '20I071IU', 'Camerounaise', '1998-08-01', 'BONABERI- DOUALA', '', '', 'default.png', 0),
(72, 'POUNTOUNYINYI NCHANGE ABDEL JAMIL', 'M', '20I072IU', 'Camerounaise', '1998-03-16', 'KOUPA MATAPIT', '', '', 'default.png', 0),
(73, 'RACHIDOU YOUSSOUFA TEROU', 'M', '20I073IU', 'Camerounaise', '2002-10-14', 'FIGUIL', '', '', 'default.png', 0),
(74, 'RAGUI DJOULDE CHRISTIANE', 'F', '20I074IU', 'Camerounaise', '2002-03-22', 'GAROUA', '', '', 'default.png', 0),
(75, 'SADJO MAHAMAT ISMAIL', 'M', '20I075IU', 'Camerounaise', '2004-05-07', 'GAROUA', '', '', 'default.png', 0),
(76, 'SALI YAOUBA', 'M', '20I076IU', 'Camerounaise', '1996-01-20', 'NGAOUNDERE', '', '', 'default.png', 0),
(77, 'SILIEBOUE TCHEUNDJUI ROMUALD', 'M', '20I077IU', 'Camerounaise', '2003-01-01', 'DOUALA', '', '', 'default.png', 0),
(78, 'TASSONA BRANDON DARMAN', 'M', '20I078IU', 'Camerounaise', '2004-07-20', 'NGAOUNDERE', '', '', 'default.png', 0),
(79, 'TCHOKOKAM TCHOKOKAM KEVIN MARTIAL', 'M', '20I079IU', 'Camerounaise', '1990-10-29', 'NGAOUNDERE', '', '', 'default.png', 0),
(80, 'TENDIAFI BRYIAN MOFOR', 'M', '20I080IU', 'Camerounaise', '1998-04-21', 'MMOUCK', '', '', 'default.png', 0),
(81, 'TIGE FAMA NTSATE ULRICH', 'M', '20I081IU', 'Camerounaise', '2003-01-05', 'NGAOUNDERE', '', '', 'default.png', 0),
(82, 'TOKO NENKAM PATRICK ARTHUR', 'M', '20I082IU', 'Camerounaise', '2002-08-31', 'DOUALA', '', '', 'default.png', 0),
(83, 'TOMI FRESNEL FAUSTIN', 'M', '20I083IU', 'Camerounaise', '1998-06-05', 'NGAOUNDERE', '', '', 'default.png', 0),
(84, 'WALLA ZALLA JEAN LUC', 'M', '20I084IU', 'Camerounaise', '2000-04-10', 'MTE KOUSSERI', '', '', 'default.png', 0),
(85, 'YACOUBOU OUMAROU', 'M', '20I085IU', 'Camerounaise', '1999-04-02', 'GAROUA', '', '', 'default.png', 0),
(86, 'YOMI NOUHAN EMMANUEL  GAETAN', 'M', '20I086IU', 'Camerounaise', '2003-10-13', 'NGAOUNDERE', '', '', 'default.png', 0),
(87, 'YOUAFIQ SANDA HAMAN', 'M', '20I087IU', 'Camerounaise', '2001-09-27', 'MAROUA', '', '', 'default.png', 0),
(88, 'ABDOURRAZAK IBRAHIM MAHAMAT BELLO', 'M', '21I001IU', 'Camerounaise', '2002-08-25', 'GAROUA', '', '', 'default.png', 0),
(89, 'ABOUBAKAR BRAHIM', 'M', '21I002IU', 'Camerounaise', '1998-03-10', 'DOUBANE', '', '', 'default.png', 0),
(90, 'AHMADOU OUSSEINI', 'M', '21I003IU', 'Camerounaise', '1999-11-10', 'MBELLA ASSOM', '', '', 'default.png', 0),
(91, 'AWE LEON', 'M', '21I004IU', 'Camerounaise', '2000-05-29', 'TALA-MOKOLO', '', '', 'default.png', 0),
(92, 'BABA SARKI MAHAMA', 'M', '21I005IU', 'Camerounaise', '2000-07-14', 'DOUALA', '', '', 'default.png', 0),
(93, 'BABBA ABDEL AZIZ', 'M', '21I006IU', 'Camerounaise', '2003-03-18', 'BERTOUA', '', '', 'default.png', 0),
(94, 'BADANE JEAN CHRETIEN', 'M', '21I007IU', 'Camerounaise', '2002-11-25', 'YAOUNDE', '', '', 'default.png', 0),
(95, 'BADEMBE LE GRAND WATCHING MOISE', 'M', '21I008IU', 'Camerounaise', '1995-09-11', 'MTE DE KAELE', '', '', 'default.png', 0),
(96, 'BASSIROU HAMADJODA TANKO ', 'M', '21I009IU', 'Camerounaise', '2001-01-25', 'NGAOUNDERE', '', '', 'default.png', 0),
(97, 'BAYIHA BA MIOUMNDE  Adalbert', 'M', '21I010IU', 'Camerounaise', '1998-11-13', 'BOUMNYEBEL', '', '', 'default.png', 0),
(98, 'BELINGA BELINGE PERRIN', 'M', '21I011IU', 'Camerounaise', '2000-02-16', 'LEMBE YEZOUM', '', '', 'default.png', 0),
(99, 'DADI GASTON ARSENE DARYLE', 'M', '21I012IU', 'Camerounaise', '2002-07-10', 'NGAOUNDERE', '', '', 'default.png', 0),
(100, 'DINGAMRO URBAIN', 'M', '21I013IU', 'Camerounaise', '1999-12-19', 'N\'DJAMENA', '', '', 'default.png', 0),
(101, 'DJABOU KAOUTONG EVE', 'M', '21I014IU', 'Camerounaise', '2004-01-12', 'NGAOUNDERE', '', '', 'default.png', 0),
(102, 'DJAMA ABENELANG VINCENT KOEL', 'M', '21I015IU', 'Camerounaise', '1998-05-18', 'EBOLOWA', '', '', 'default.png', 0),
(103, 'DJOUGLA DJOKO DARRYL URIEL', 'M', '21I016IU', 'Camerounaise', '2001-10-20', 'BAFOUSSAM', '', '', 'default.png', 0),
(104, 'DOUVAWISSA TROUMBA DOMINIQUE', 'M', '21I017IU', 'Camerounaise', '2002-04-22', 'TCHOLLIRE', '', '', 'default.png', 0),
(105, 'EBONGUE JEAN  YVES JUNIOR', 'M', '21I018IU', 'Camerounaise', '2003-04-15', 'NGAOUNDERE', '', '', 'default.png', 0),
(106, 'EYEBE ELOUNDOU JOEL CEDRIC', 'M', '21I019IU', 'Camerounaise', '2002-08-08', 'NGAOUNDERE', '', '', 'default.png', 0),
(107, 'FATCHA WOUENDEU ZACHEE JUNIOR', 'M', '21I020IU', 'Camerounaise', '2000-01-24', 'NGAOUNDERE', '', '', 'default.png', 0),
(108, 'FEZEU KONTCHOU VALENTIN ARMAND', 'M', '21I021IU', 'Camerounaise', '2001-05-04', 'NGAOUNDERE', '', '', 'default.png', 0),
(109, 'HANSA-OU RADJIL', 'M', '21I022IU', 'Camerounaise', '2001-11-05', ' NGAOUNDERE', '', '', 'default.png', 0),
(110, 'HAWAOU MOUSSA', 'M', '21I023IU', 'Camerounaise', '2002-04-30', 'GAROUA', '', '', 'default.png', 0),
(111, 'ILYASSOU ISSA', 'M', '21I024IU', 'Camerounaise', '1998-11-25', 'NGAOUNDERE', '', '', 'default.png', 0),
(112, 'ISMAILA DOCTOR OUSMANOU', 'M', '21I025IU', 'Camerounaise', '1998-12-02', ' MAROUA', '', '', 'default.png', 0),
(113, 'ISSYAKOU DJIBRILLA ALHADJI ALFAKI ', 'M', '21I026IU', 'Camerounaise', '2003-01-07', 'DOUALA', '', '', 'default.png', 0),
(114, 'KAMDEM FOKOM BISMARCK', 'M', '21I027IU', 'Camerounaise', '1996-10-04', 'BONABERI-DOUALA', '', '', 'default.png', 0),
(115, 'KIGMO YONGA EMMANUEL', 'M', '21I028IU', 'Camerounaise', '2003-02-11', 'YAGOUA', '', '', 'default.png', 0),
(116, 'KOPA PAMI ANGE SUZIE', 'M', '21I029IU', 'Camerounaise', '1998-03-13', 'BALENG', '', '', 'default.png', 0),
(117, 'LAUWEH KAPTUE STEVY', 'M', '21I030IU', 'Camerounaise', '2002-01-27', 'NGAOUNDERE', '', '', 'default.png', 0),
(118, 'MAHAMAT AHMED', 'M', '21I031IU', 'Camerounaise', '2000-12-01', 'GOULFEY', '', '', 'default.png', 0),
(119, 'MAHAMAT ALHAFIZ ALI', 'M', '21I032IU', 'Camerounaise', '2002-10-28', 'ABECHE', '', '', 'default.png', 0),
(120, 'MAHAMAT BONOKONO IBRAHIM', 'M', '21I033IU', 'Camerounaise', '1999-11-15', 'GAROUA', '', '', 'default.png', 0),
(121, 'MAIMOUNATOU DIDI BALLO', 'M', '21I034IU', 'Camerounaise', '2002-06-29', 'NGAOUNDERE', '', '', 'default.png', 0),
(122, 'MARYAMOU HINDOU', 'M', '21I035IU', 'Camerounaise', '1998-03-05', 'NGAOUNDERE', '', '', 'default.png', 0),
(123, 'MATAGNE TOKAM ASTRID LOVIE', 'M', '21I036IU', 'Camerounaise', '2003-07-01', 'NGAOUNDERE', '', '', 'default.png', 0),
(124, 'MBADAI TOKLE AMINATOU', 'M', '21I037IU', 'Camerounaise', '2001-05-20', 'GAROUA', '', '', 'default.png', 0),
(125, 'MBARGA  EKASSI  Tobie', 'M', '21I038IU', 'Camerounaise', '1996-06-30', 'ENDAMA II', '', '', 'default.png', 0),
(126, 'MBELALE WILFRIED BRUNEL', 'M', '21I039IU', 'Camerounaise', '2001-09-12', 'NGAOUNDERE', '', '', 'default.png', 0),
(127, 'MBELE TERRIER VALENTIN', 'M', '21I040IU', 'Camerounaise', '2001-10-18', 'GAROUA', '', '', 'default.png', 0),
(128, 'MENGUENE  NOAH  Chantal', 'M', '21I041IU', 'Camerounaise', '2000-08-29', 'OBALA', '', '', 'default.png', 0),
(129, 'MENKOANDE ME DJEMBE CALVIN', 'M', '21I042IU', 'Camerounaise', '2002-09-20', 'BERTOUA', '', '', 'default.png', 0),
(130, 'MOHAMADOU BADAMASSI BABADJI', 'M', '21I043IU', 'Camerounaise', '2001-01-03', 'GAROUA-BOULAI', '', '', 'default.png', 0),
(131, 'MOHAMADOU BELLO', 'M', '21I044IU', 'Camerounaise', '1998-11-27', 'MADJELE', '', '', 'default.png', 0),
(132, 'MOHAMADOU SOULEY', 'M', '21I045IU', 'Camerounaise', '2002-06-29', ' MAROUA', '', '', 'default.png', 0),
(133, 'MOUKATE NGUINI ROGER MANFRED', 'M', '21I046IU', 'Camerounaise', '2001-08-26', 'DIZANGUE', '', '', 'default.png', 0),
(134, 'MOUKODI CLAUDIA LAUREN JULIENNE', 'M', '21I047IU', 'Camerounaise', '2002-12-26', 'NGAOUNDERE', '', '', 'default.png', 0),
(135, 'MOUMANI DAYELA ANDRE', 'M', '21I048IU', 'Camerounaise', '2000-01-16', 'BASSAP', '', '', 'default.png', 0),
(136, 'NAOUDIGAPOU LUCIEN ®', 'M', '21I049IU', 'Camerounaise', '2000-09-18', 'GUIDER', '', '', 'default.png', 0),
(137, 'NEDAOUKA JOACHIM', 'M', '21I050IU', 'Camerounaise', '2002-07-24', 'MAROUA', '', '', 'default.png', 0),
(138, 'NEOSSI NEOSSI DYLAN STEVE', 'M', '21I051IU', 'Camerounaise', '2000-02-26', 'YAOUNDE', '', '', 'default.png', 0),
(139, 'NERAKA JUNIOR DESIRE', 'M', '21I052IU', 'Camerounaise', '2001-01-14', ' MEIGANGA', '', '', 'default.png', 0),
(140, 'NGAYAP DASSI JOREL MELVIN', 'M', '21I053IU', 'Camerounaise', '2000-10-11', 'BALENG', '', '', 'default.png', 0),
(141, 'NJOUONKOU NJOYA MOUSTAPHA MOHAMMED SAID', 'M', '21I054IU', 'Camerounaise', '2001-06-03', 'YAOUNDE II', '', '', 'default.png', 0),
(142, 'NYEMB  NDJEM  EONE André Kevin', 'M', '21I055IU', 'Camerounaise', '2003-10-28', 'YAOUNDE', '', '', 'default.png', 0),
(143, 'OMBIOGNO PHILIPPE CEDRIC', 'M', '21I056IU', 'Camerounaise', '1998-10-24', 'MBANDJOCK', '', '', 'default.png', 0),
(144, 'OUMAROU OUSMANE', 'M', '21I057IU', 'Camerounaise', '1999-10-13', 'BANGUI', '', '', 'default.png', 0),
(145, 'OUSMANOU HAMADOU', 'M', '21I058IU', 'Camerounaise', '2000-05-02', 'NGAOUNDERE', '', '', 'default.png', 0),
(146, 'POUNTOUNYINYI NCHANGE ABDEL JAMIL', 'M', '21I059IU', 'Camerounaise', '1998-03-16', 'KOUPA MATAPIT', '', '', 'default.png', 0),
(147, 'SALI YAOUBA', 'M', '21I060IU', 'Camerounaise', '1996-01-20', 'NGAOUNDERE', '', '', 'default.png', 0),
(148, 'SILIEBOUE TCHEUNDJUI ROMUALD', 'M', '21I061IU', 'Camerounaise', '2003-01-01', 'DOUALA', '', '', 'default.png', 0),
(149, 'TCHOKOKAM TCHOKOKAM KEVIN MARTIAL', 'M', '21I062IU', 'Camerounaise', '1990-10-29', 'NGAOUNDERE', '', '', 'default.png', 0),
(150, 'TENDIAFI BRYIAN MOFOR', 'M', '21I063IU', 'Camerounaise', '1998-04-21', 'MMOUCK', '', '', 'default.png', 0),
(151, 'TOKO NENKAM PATRICK ARTHUR', 'M', '21I064IU', 'Camerounaise', '2002-08-31', 'DOUALA', '', '', 'default.png', 0),
(152, 'WALLA ZALLA JEAN LUC', 'M', '21I065IU', 'Camerounaise', '2000-04-10', 'MTE KOUSSERI', '', '', 'default.png', 0),
(153, 'YOMI NOUHAN EMMANUEL  GAETAN', 'M', '21I066IU', 'Camerounaise', '2003-10-13', 'NGAOUNDERE', '', '', 'default.png', 0),
(154, 'YOUAFIQ SANDA HAMAN', 'M', '21I067IU', 'Camerounaise', '2001-09-27', 'MAROUA', '', '', 'default.png', 0);
>>>>>>> 919b0a70103f549ce380f7b011cfc484e2ad84ae

-- --------------------------------------------------------

--
-- Structure de la table `etudiant_role`
--

CREATE TABLE `etudiant_role` (
  `id_etud_role` int(11) NOT NULL,
  `id_etudiant` int(11) NOT NULL,
  `id_role_etud` int(11) NOT NULL,
  `id_annee` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `evenement`
--

CREATE TABLE `evenement` (
  `id_event` int(11) NOT NULL,
  `nom_event` varchar(100) NOT NULL,
  `debut_event` date NOT NULL,
  `fin_event` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `evenement`
--

INSERT INTO `evenement` (`id_event`, `nom_event`, `debut_event`, `fin_event`) VALUES
(1, 'SOUTENANCES  DUT', '2022-05-23', '2022-06-04'),
(4, 'SOUTENANCES LICENCE', '2022-06-20', '2022-06-24');

-- --------------------------------------------------------

--
-- Structure de la table `events`
--

CREATE TABLE `events` (
  `id_event` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `type_event_id` varchar(50) NOT NULL,
  `salle_id` int(11) NOT NULL,
  `details` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `events`
--

INSERT INTO `events` (`id_event`, `title`, `start_date`, `end_date`, `type_event_id`, `salle_id`, `details`) VALUES
(7, 'Test', '2022-06-27 16:06:00', '2022-06-27 19:07:00', 'fc-event-dark', 2, 'qsd'),
(8, 'Test', '2022-07-08 13:45:00', '2022-07-08 14:45:00', 'fc-event-danger', 5, 'Test');

-- --------------------------------------------------------

--
-- Structure de la table `examens`
--

CREATE TABLE `examens` (
  `id_examen` int(11) NOT NULL,
  `date` date NOT NULL,
  `heure_debut` time NOT NULL,
  `heure_fin` time NOT NULL,
  `personnel_id` int(11) DEFAULT NULL,
  `ec_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `annee_id` int(11) NOT NULL,
  `niv_par_id` int(11) NOT NULL,
  `statut_env` enum('programme','anonymise','note','publie','transmis') NOT NULL DEFAULT 'programme'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `examens`
--

INSERT INTO `examens` (`id_examen`, `date`, `heure_debut`, `heure_fin`, `personnel_id`, `ec_id`, `type_id`, `annee_id`, `niv_par_id`, `statut_env`) VALUES
(9, '2022-03-18', '00:00:00', '00:00:00', NULL, 7, 3, 2, 10, 'note'),
(10, '2022-03-18', '00:00:00', '00:00:00', NULL, 15, 3, 2, 10, 'programme'),
(11, '2022-03-18', '00:00:00', '00:00:00', NULL, 16, 3, 2, 10, 'note'),
(12, '2022-03-18', '00:00:00', '00:00:00', NULL, 8, 3, 2, 10, 'programme'),
(13, '2022-03-18', '00:00:00', '00:00:00', NULL, 11, 3, 2, 10, 'note'),
(291, '2022-03-23', '00:00:00', '00:00:00', NULL, 5, 3, 2, 10, 'programme'),
(292, '2022-03-23', '00:00:00', '00:00:00', NULL, 5, 4, 2, 10, 'programme'),
(293, '2022-03-23', '00:00:00', '00:00:00', NULL, 5, 5, 2, 10, 'programme'),
(294, '2022-04-27', '00:00:00', '00:00:00', NULL, 11, 4, 2, 10, 'note'),
(295, '2022-04-27', '00:00:00', '00:00:00', NULL, 11, 5, 2, 10, 'note'),
(296, '2022-04-27', '00:00:00', '00:00:00', NULL, 15, 4, 2, 10, 'programme'),
(297, '2022-04-27', '00:00:00', '00:00:00', NULL, 15, 5, 2, 10, 'programme'),
(298, '2022-07-11', '14:43:00', '16:45:00', NULL, 16, 1, 2, 10, 'transmis'),
(299, '2022-07-18', '15:25:00', '17:25:00', NULL, 10, 1, 2, 10, 'transmis'),
(300, '2022-07-10', '15:33:00', '16:33:00', NULL, 10, 2, 2, 10, 'programme');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `fichier`
--

CREATE TABLE `fichier` (
  `id_fic` int(11) NOT NULL,
  `nom_fic` varchar(255) NOT NULL,
  `original_name` varchar(255) NOT NULL,
  `taille` int(11) NOT NULL,
  `format` varchar(255) NOT NULL,
  `memoire_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `fonctions`
--

CREATE TABLE `fonctions` (
  `id_fonction` int(11) NOT NULL,
  `intitule_fonction` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `fonctions`
--

INSERT INTO `fonctions` (`id_fonction`, `intitule_fonction`) VALUES
(1, 'Directeur'),
(2, '1'),
(3, 'tyu');

-- --------------------------------------------------------

--
-- Structure de la table `frais_scolarite`
--

CREATE TABLE `frais_scolarite` (
  `id_scolarite` int(255) NOT NULL,
  `first_tranche` varchar(5) NOT NULL DEFAULT 'non',
  `second_tranche` varchar(5) NOT NULL DEFAULT 'non',
  `date_tranche1` datetime DEFAULT NULL,
  `date_tranche2` datetime DEFAULT NULL,
  `date_enreg` datetime NOT NULL DEFAULT current_timestamp(),
  `date_modif` datetime DEFAULT NULL,
  `etudiant_id` int(11) NOT NULL,
  `annee_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `frais_scolarite`
--

INSERT INTO `frais_scolarite` (`id_scolarite`, `first_tranche`, `second_tranche`, `date_tranche1`, `date_tranche2`, `date_enreg`, `date_modif`, `etudiant_id`, `annee_id`) VALUES
(2, 'oui', 'non', '2021-08-30 00:00:00', NULL, '2021-09-20 14:20:50', NULL, 1, 1),
(3, 'oui', 'non', '2021-10-04 00:00:00', NULL, '2021-10-27 15:37:14', NULL, 7, 2),
(4, 'oui', 'oui', '2021-10-18 00:00:00', '2021-10-18 00:00:00', '2021-10-27 15:38:33', NULL, 9, 2),
(5, 'oui', 'oui', '2021-10-18 00:00:00', '2021-10-18 00:00:00', '2021-10-27 15:38:51', NULL, 12, 2),
(6, 'oui', 'non', '2021-10-16 00:00:00', NULL, '2021-10-27 15:39:11', NULL, 78, 2),
(7, 'oui', 'non', '2021-10-14 00:00:00', NULL, '2021-10-27 15:40:04', NULL, 93, 2),
(8, 'oui', 'non', '2021-10-20 00:00:00', NULL, '2021-10-27 15:40:31', NULL, 11, 2),
(9, 'oui', 'non', '2021-10-07 00:00:00', NULL, '2021-10-28 15:37:39', NULL, 13, 2),
(10, 'oui', 'non', '2022-03-23 00:00:00', NULL, '2022-03-23 15:32:15', NULL, 1, 2);

-- --------------------------------------------------------

--
-- Structure de la table `grades`
--

CREATE TABLE `grades` (
  `id_grade` int(11) NOT NULL,
  `nom_grade` varchar(255) NOT NULL,
  `niveau` int(11) NOT NULL,
  `titre` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `grades`
--

INSERT INTO `grades` (`id_grade`, `nom_grade`, `niveau`, `titre`) VALUES
(1, 'Assistant', 1, 'As'),
(2, 'Chargé de cours', 3, 'CC'),
(3, 'Enseignant technique', 0, 'ET'),
(4, 'Professeur', 5, 'Pr'),
(5, 'Maitre de conférences', 4, 'MC'),
(6, 'Etudiant', 0, 'Et'),
(7, 'Aucun grade', 0, 'Aucun'),
(8, 'vacataire ', 0, 'Vac'),
(9, 'QQ', 0, 'qq');

-- --------------------------------------------------------

--
-- Structure de la table `industriel`
--

CREATE TABLE `industriel` (
  `id_industriel` int(11) NOT NULL,
  `nom` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `grade` varchar(500) NOT NULL,
  `entreprise` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `jours`
--

CREATE TABLE `jours` (
  `id_jour` int(11) NOT NULL,
  `intitule_jour` varchar(255) NOT NULL,
  `num_jour` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `jours`
--

INSERT INTO `jours` (`id_jour`, `intitule_jour`, `num_jour`) VALUES
(1, 'Lundi', 1),
(2, 'Mardi', 2),
(3, 'Mercredi', 3),
(4, 'Jeudi', 4),
(5, 'Vendredi', 5),
(6, 'Samedi', 6);

-- --------------------------------------------------------

--
-- Structure de la table `jury_effectif`
--

CREATE TABLE `jury_effectif` (
  `id_jury` int(11) NOT NULL,
  `id_president` int(11) NOT NULL,
  `id_examinateur` int(11) NOT NULL,
  `id_rapporteur` int(11) NOT NULL,
  `id_encadrement` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `jury_programme`
--

CREATE TABLE `jury_programme` (
  `id_jury` int(11) NOT NULL,
  `president` int(11) NOT NULL,
  `examinateur` int(11) NOT NULL,
  `version_1` int(11) NOT NULL,
  `version_2` int(11) NOT NULL,
  `encadrement_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `materiels`
--

CREATE TABLE `materiels` (
  `id_materiel` int(11) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `quantite` int(11) DEFAULT 0,
  `dimension` varchar(100) NOT NULL,
  `duree_peremption` int(11) NOT NULL DEFAULT 0,
  `caracteristique` varchar(255) NOT NULL,
  `id_categorie_mat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `materiels_approvisionnes`
--

CREATE TABLE `materiels_approvisionnes` (
  `id_materiel_approv` int(11) NOT NULL,
  `quantite` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `decharge` tinyint(1) NOT NULL,
  `id_materiel` int(11) NOT NULL,
  `id_approv` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `materiels_salles`
--

CREATE TABLE `materiels_salles` (
  `id_materiel_salle` int(11) NOT NULL,
  `quantite` int(11) NOT NULL,
  `id_salle` int(11) NOT NULL,
  `id_materiel` int(11) NOT NULL,
  `date_attribution` datetime NOT NULL DEFAULT current_timestamp(),
  `id_annee` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `memoire`
--

CREATE TABLE `memoire` (
  `id_memoire` int(11) NOT NULL,
  `resumer` text NOT NULL,
  `stage` int(11) NOT NULL,
  `datepost` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status_memoire` int(11) NOT NULL,
  `mots_cles` varchar(255) DEFAULT NULL,
  `nb_telechargement` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `mentions`
--

CREATE TABLE `mentions` (
  `id_mention` int(11) NOT NULL,
  `abreviation_mention` varchar(100) NOT NULL,
  `nom_mention` varchar(255) NOT NULL,
  `initial` varchar(12) NOT NULL,
  `departement_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `mentions`
--

INSERT INTO `mentions` (`id_mention`, `abreviation_mention`, `nom_mention`, `initial`, `departement_id`) VALUES
(10, 'GIN', 'Genie Informatique', 'I', 0),
(13, 'RT', 'Réseau et télécommunication', '', 0),
(14, 'GBIO', 'Genie Biologique', 'B', 0),
(18, 'GIM', 'Génie Industriel et Maintenance', 'M', 0),
(27, 'GCD', 'Genie Civil et Construction Durable', 'C', 0),
(28, 'MEB', 'Maintenance des Équipements Biomédicaux ', '', 0),
(29, 'GLO', 'Genie Logiciel', 'GL', 0);

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

CREATE TABLE `messages` (
  `id_message` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `contenu` varchar(255) NOT NULL,
  `piece_jointe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `messages_user`
--

CREATE TABLE `messages_user` (
  `id` int(11) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `receiver` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `sujet` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 0,
  `statut_send` int(11) NOT NULL DEFAULT 0,
  `statut_receive` int(11) NOT NULL DEFAULT 0,
  `personnel_id_send` int(11) NOT NULL,
  `personnel_id_recieve` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `mission`
--

CREATE TABLE `mission` (
  `id_mission` int(11) NOT NULL,
  `type_mission_id` int(11) NOT NULL,
  `personnel_id` int(11) NOT NULL,
  `date_aller` date NOT NULL,
  `date_retour` date NOT NULL,
  `transport` varchar(100) NOT NULL,
  `annee_id` int(11) NOT NULL,
  `code_mission` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `mission`
--

INSERT INTO `mission` (`id_mission`, `type_mission_id`, `personnel_id`, `date_aller`, `date_retour`, `transport`, `annee_id`, `code_mission`) VALUES
(3, 1, 2, '2022-07-28', '2022-07-31', 'Bus', 2, 'prospection2022-07-28'),
(4, 2, 2, '2022-08-04', '2022-08-07', 'Bus', 2, 'encadrement2022-08-04'),
(5, 2, 2, '2022-07-31', '2022-08-07', 'Train', 2, 'encadrement2022-07-31'),
(6, 1, 13, '2022-08-10', '2022-08-19', 'Bus', 2, 'prospection2022-08-10');

-- --------------------------------------------------------

--
-- Structure de la table `mission_dossier`
--

CREATE TABLE `mission_dossier` (
  `id_mission_dossier` int(11) NOT NULL,
  `mission_id` int(11) NOT NULL,
  `dossier_stage_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `mission_dossier`
--

INSERT INTO `mission_dossier` (`id_mission_dossier`, `mission_id`, `dossier_stage_id`) VALUES
(6, 4, 13),
(8, 5, 14);

-- --------------------------------------------------------

--
-- Structure de la table `mission_entreprise`
--

CREATE TABLE `mission_entreprise` (
  `id_mission_entreprise` int(11) NOT NULL,
  `mission_id` int(11) NOT NULL,
  `entreprise_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `mission_entreprise`
--

INSERT INTO `mission_entreprise` (`id_mission_entreprise`, `mission_id`, `entreprise_id`) VALUES
(24, 3, 13),
(26, 6, 13);

-- --------------------------------------------------------

--
-- Structure de la table `mot_cle`
--

CREATE TABLE `mot_cle` (
  `id` int(11) NOT NULL,
  `contenu` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `niveaux`
--

CREATE TABLE `niveaux` (
  `id_niveau` int(11) NOT NULL,
  `niveau` varchar(11) NOT NULL,
  `cycle_id` int(11) NOT NULL,
  `niv` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `niveaux`
--

INSERT INTO `niveaux` (`id_niveau`, `niveau`, `cycle_id`, `niv`) VALUES
(2, 'DUT-1', 1, 1),
(5, 'DUT-2', 1, 2),
(6, 'LITECH-3', 3, 3),
(7, 'BTS-1', 2, 1),
(8, 'BTS-2', 2, 2);

-- --------------------------------------------------------

--
-- Structure de la table `niv_par`
--

CREATE TABLE `niv_par` (
  `id_niv_par` int(11) NOT NULL,
  `rendu` varchar(25) NOT NULL,
  `niveau_id` int(11) NOT NULL,
  `parcour_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `niv_par`
--

INSERT INTO `niv_par` (`id_niv_par`, `rendu`, `niveau_id`, `parcour_id`) VALUES
(10, 'GIN1', 2, 5),
(11, 'GIN2', 5, 5),
(15, 'TELECOM1', 7, 7),
(16, 'TELECOM2', 8, 7),
(17, 'RIN3', 6, 8),
(18, 'ABB2', 5, 9),
(19, 'ABB3', 6, 9),
(20, 'GEN2', 5, 10),
(21, 'GEN3', 6, 10),
(22, 'IAB2', 5, 11),
(23, 'IAB3', 6, 11),
(24, 'GME2', 5, 12),
(25, 'GME3', 6, 12),
(26, 'GEL2', 5, 13),
(27, 'GEL3', 6, 13),
(28, 'GTE2', 5, 14),
(29, 'GTE3', 6, 14),
(30, 'MIP2', 5, 15),
(31, 'MIP3', 6, 15),
(32, 'GCD1', 2, 16),
(33, 'GCD2', 5, 16),
(34, 'MEB1', 2, 17),
(35, 'MEB2', 5, 17),
(36, 'MEB3', 6, 17),
(37, 'GIM1', 2, 18),
(38, 'GBIO1', 2, 19),
(40, 'GLO3', 6, 6),
(41, 'GLO1', 7, 6),
(42, 'GLO2', 8, 6);

-- --------------------------------------------------------

--
-- Structure de la table `notes`
--

CREATE TABLE `notes` (
  `id_note` int(11) NOT NULL,
  `valeur` float DEFAULT NULL,
  `anonymat` varchar(50) DEFAULT NULL,
  `examen_id` int(11) NOT NULL,
  `dossier_id` int(11) NOT NULL,
  `code_anonymat` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `notes`
--

INSERT INTO `notes` (`id_note`, `valeur`, `anonymat`, `examen_id`, `dossier_id`, `code_anonymat`) VALUES
(2460, 10.5, NULL, 9, 1, NULL),
(2461, 14.5, NULL, 9, 2, NULL),
(2462, 12.5, NULL, 9, 3, NULL),
(2463, 13.5, NULL, 9, 7, NULL),
(2464, 13.5, NULL, 9, 8, NULL),
(2465, 14, NULL, 9, 9, NULL),
(2466, 11.5, NULL, 9, 10, NULL),
(2467, 14.5, NULL, 9, 11, NULL),
(2468, 14.5, NULL, 9, 12, NULL),
(2469, 13, NULL, 9, 13, NULL),
(2470, 0, NULL, 9, 15, NULL),
(2471, 10, NULL, 9, 16, NULL),
(2472, 11.5, NULL, 9, 17, NULL),
(2473, 10, NULL, 9, 18, NULL),
(2474, 15.5, NULL, 9, 19, NULL),
(2475, 15, NULL, 9, 20, NULL),
(2476, 14, NULL, 9, 21, NULL),
(2477, 14.5, NULL, 9, 23, NULL),
(2478, 13, NULL, 9, 24, NULL),
(2479, 11, NULL, 9, 25, NULL),
(2480, 13, NULL, 9, 28, NULL),
(2481, 15.5, NULL, 9, 29, NULL),
(2482, 11.5, NULL, 9, 30, NULL),
(2483, 10, NULL, 9, 31, NULL),
(2484, 15, NULL, 9, 32, NULL),
(2485, 13, NULL, 9, 33, NULL),
(2486, 15.5, NULL, 9, 34, NULL),
(2487, 11, NULL, 9, 35, NULL),
(2488, 14, NULL, 9, 36, NULL),
(2489, 15, NULL, 9, 37, NULL),
(2490, 12, NULL, 9, 38, NULL),
(2491, 11, NULL, 9, 39, NULL),
(2492, 13.5, NULL, 9, 40, NULL),
(2493, 14, NULL, 9, 41, NULL),
(2494, 14, NULL, 9, 42, NULL),
(2495, 11, NULL, 9, 43, NULL),
(2496, 10, NULL, 9, 44, NULL),
(2497, 12, NULL, 9, 45, NULL),
(2498, 13, NULL, 9, 46, NULL),
(2499, 14, NULL, 9, 47, NULL),
(2500, 12, NULL, 9, 48, NULL),
(2501, 15, NULL, 9, 49, NULL),
(2502, 12, NULL, 9, 50, NULL),
(2503, 14, NULL, 9, 51, NULL),
(2504, 14, NULL, 9, 52, NULL),
(2505, 11, NULL, 9, 53, NULL),
(2506, 12, NULL, 9, 54, NULL),
(2507, 14, NULL, 9, 55, NULL),
(2508, 15, NULL, 9, 56, NULL),
(2509, 13, NULL, 9, 57, NULL),
(2510, 14, NULL, 9, 58, NULL),
(2511, 12, NULL, 9, 59, NULL),
(2512, 12, NULL, 9, 60, NULL),
(2513, 14, NULL, 9, 61, NULL),
(2514, 11, NULL, 9, 62, NULL),
(2515, 10, NULL, 9, 63, NULL),
(2516, 15, NULL, 9, 64, NULL),
(2517, 12, NULL, 9, 65, NULL),
(2518, 14, NULL, 9, 66, NULL),
(2519, 11, NULL, 9, 67, NULL),
(2520, 10, NULL, 9, 68, NULL),
(2521, 12, NULL, 9, 69, NULL),
(2522, 15, NULL, 9, 70, NULL),
(2523, 12, NULL, 9, 71, NULL),
(2524, 14, NULL, 9, 72, NULL),
(2525, 11, NULL, 9, 73, NULL),
(2526, 12, NULL, 9, 74, NULL),
(2527, 14, NULL, 9, 75, NULL),
(2528, 11, NULL, 9, 76, NULL),
(2529, 11, NULL, 9, 77, NULL),
(2530, 10, NULL, 9, 78, NULL),
(2531, 14, NULL, 9, 79, NULL),
(2532, 12, NULL, 9, 80, NULL),
(2533, 14, NULL, 9, 81, NULL),
(2534, 11, NULL, 9, 82, NULL),
(2535, 10, NULL, 9, 83, NULL),
(2536, 12, NULL, 9, 84, NULL),
(2537, 13, NULL, 9, 85, NULL),
(2538, 15, NULL, 9, 86, NULL),
(2539, 16, NULL, 9, 87, NULL),
(2540, NULL, NULL, 10, 1, NULL),
(2541, 14, NULL, 10, 2, NULL),
(2542, 10, NULL, 10, 3, NULL),
(2543, 3, NULL, 10, 4, NULL),
(2544, 7, NULL, 10, 5, NULL),
(2545, 8, NULL, 10, 6, NULL),
(2546, 15, NULL, 10, 7, NULL),
(2547, 17, NULL, 10, 8, NULL),
(2548, 9, NULL, 10, 9, NULL),
(2549, 12, NULL, 10, 11, NULL),
(2550, 10, NULL, 10, 12, NULL),
(2551, 17, NULL, 10, 13, NULL),
(2552, 12, NULL, 10, 14, NULL),
(2553, 10, NULL, 10, 15, NULL),
(2554, 10, NULL, 10, 16, NULL),
(2555, 10, NULL, 10, 17, NULL),
(2556, 12, NULL, 10, 18, NULL),
(2557, 11, NULL, 10, 19, NULL),
(2558, 12, NULL, 10, 20, NULL),
(2559, 9, NULL, 10, 21, NULL),
(2560, 4, NULL, 10, 22, NULL),
(2561, 3, NULL, 10, 23, NULL),
(2562, 3, NULL, 10, 24, NULL),
(2563, 3, NULL, 10, 25, NULL),
(2564, 4, NULL, 10, 28, NULL),
(2565, 5, NULL, 10, 29, NULL),
(2566, 10, NULL, 10, 30, NULL),
(2567, 10, NULL, 10, 31, NULL),
(2568, 11, NULL, 10, 32, NULL),
(2569, 12, NULL, 10, 33, NULL),
(2570, 11, NULL, 10, 34, NULL),
(2571, 17, NULL, 10, 35, NULL),
(2572, 3, NULL, 10, 36, NULL),
(2573, 4, NULL, 10, 37, NULL),
(2574, 16, NULL, 10, 38, NULL),
(2575, 3, NULL, 10, 39, NULL),
(2576, 5, NULL, 10, 40, NULL),
(2577, 2, NULL, 10, 41, NULL),
(2578, 14, NULL, 10, 42, NULL),
(2579, 13, NULL, 10, 43, NULL),
(2580, 15, NULL, 10, 44, NULL),
(2581, 12, NULL, 10, 45, NULL),
(2582, 11, NULL, 10, 46, NULL),
(2583, 11, NULL, 10, 47, NULL),
(2584, 11, NULL, 10, 48, NULL),
(2585, 10, NULL, 10, 49, NULL),
(2586, 13, NULL, 10, 50, NULL),
(2587, 12, NULL, 10, 51, NULL),
(2588, 18, NULL, 10, 52, NULL),
(2589, 12, NULL, 10, 53, NULL),
(2590, 9, NULL, 10, 54, NULL),
(2591, 8, NULL, 10, 56, NULL),
(2592, 7, NULL, 10, 57, NULL),
(2593, 3, NULL, 10, 58, NULL),
(2594, 14, NULL, 10, 59, NULL),
(2595, 14, NULL, 10, 60, NULL),
(2596, 12, NULL, 10, 61, NULL),
(2597, 11, NULL, 10, 62, NULL),
(2598, 14, NULL, 10, 63, NULL),
(2599, 12, NULL, 10, 64, NULL),
(2600, 8, NULL, 10, 65, NULL),
(2601, 8, NULL, 10, 66, NULL),
(2602, 4, NULL, 10, 67, NULL),
(2603, 15, NULL, 10, 68, NULL),
(2604, 14, NULL, 10, 69, NULL),
(2605, 10, NULL, 10, 70, NULL),
(2606, 10, NULL, 10, 71, NULL),
(2607, 10, NULL, 10, 72, NULL),
(2608, 10, NULL, 10, 73, NULL),
(2609, 11, NULL, 10, 74, NULL),
(2610, 12, NULL, 10, 75, NULL),
(2611, 3, NULL, 10, 76, NULL),
(2612, 4, NULL, 10, 77, NULL),
(2613, 13, NULL, 10, 79, NULL),
(2614, 13, NULL, 10, 80, NULL),
(2615, 7, NULL, 10, 81, NULL),
(2616, 13, NULL, 10, 82, NULL),
(2617, 10, NULL, 10, 83, NULL),
(2618, 10, NULL, 10, 84, NULL),
(2619, 2, NULL, 10, 85, NULL),
(2620, 1, NULL, 10, 86, NULL),
(2621, 10, NULL, 10, 87, NULL),
(2622, 12, NULL, 11, 1, NULL),
(2623, 14, NULL, 11, 2, NULL),
(2624, 15, NULL, 11, 3, NULL),
(2625, 11, NULL, 11, 4, NULL),
(2626, 10, NULL, 11, 5, NULL),
(2627, 14, NULL, 11, 6, NULL),
(2628, 6, NULL, 11, 7, NULL),
(2629, 7, NULL, 11, 8, NULL),
(2630, 3, NULL, 11, 9, NULL),
(2631, 15, NULL, 11, 10, NULL),
(2632, 11, NULL, 11, 11, NULL),
(2633, 14, NULL, 11, 12, NULL),
(2634, 15, NULL, 11, 13, NULL),
(2635, 16, NULL, 11, 14, NULL),
(2636, 15, NULL, 11, 15, NULL),
(2637, 14, NULL, 11, 16, NULL),
(2638, 15, NULL, 11, 17, NULL),
(2639, 13, NULL, 11, 18, NULL),
(2640, 13, NULL, 11, 19, NULL),
(2641, 16, NULL, 11, 20, NULL),
(2642, 14, NULL, 11, 21, NULL),
(2643, 19, NULL, 11, 22, NULL),
(2644, 13, NULL, 11, 23, NULL),
(2645, 13, NULL, 11, 24, NULL),
(2646, 15, NULL, 11, 25, NULL),
(2647, 16, NULL, 11, 26, NULL),
(2648, 13, NULL, 11, 27, NULL),
(2649, 15, NULL, 11, 28, NULL),
(2650, 14, NULL, 11, 29, NULL),
(2651, 19, NULL, 11, 30, NULL),
(2652, 19, NULL, 11, 31, NULL),
(2653, 17, NULL, 11, 32, NULL),
(2654, 14, NULL, 11, 33, NULL),
(2655, 14, NULL, 11, 34, NULL),
(2656, 18, NULL, 11, 35, NULL),
(2657, 19, NULL, 11, 36, NULL),
(2658, 14, NULL, 11, 37, NULL),
(2659, 15, NULL, 11, 38, NULL),
(2660, 13, NULL, 11, 39, NULL),
(2661, 15, NULL, 11, 40, NULL),
(2662, 13, NULL, 11, 41, NULL),
(2663, 15, NULL, 11, 42, NULL),
(2664, 15, NULL, 11, 43, NULL),
(2665, 13, NULL, 11, 44, NULL),
(2666, 18, NULL, 11, 45, NULL),
(2667, 15, NULL, 11, 46, NULL),
(2668, 11, NULL, 11, 47, NULL),
(2669, 13, NULL, 11, 48, NULL),
(2670, 14, NULL, 11, 49, NULL),
(2671, 15, NULL, 11, 50, NULL),
(2672, 11, NULL, 11, 51, NULL),
(2673, 14, NULL, 11, 52, NULL),
(2674, 18, NULL, 11, 53, NULL),
(2675, 11, NULL, 11, 54, NULL),
(2676, 11, NULL, 11, 55, NULL),
(2677, 14, NULL, 11, 56, NULL),
(2678, 13, NULL, 11, 57, NULL),
(2679, 14, NULL, 11, 58, NULL),
(2680, 14, NULL, 11, 59, NULL),
(2681, 13, NULL, 11, 60, NULL),
(2682, 13, NULL, 11, 61, NULL),
(2683, 18, NULL, 11, 62, NULL),
(2684, 16, NULL, 11, 63, NULL),
(2685, 14, NULL, 11, 64, NULL),
(2686, 18, NULL, 11, 65, NULL),
(2687, 17, NULL, 11, 66, NULL),
(2688, 14, NULL, 11, 67, NULL),
(2689, 15, NULL, 11, 68, NULL),
(2690, 14, NULL, 11, 69, NULL),
(2691, 13, NULL, 11, 70, NULL),
(2692, 12, NULL, 11, 71, NULL),
(2693, 15, NULL, 11, 72, NULL),
(2694, 15, NULL, 11, 73, NULL),
(2695, 16, NULL, 11, 74, NULL),
(2696, 12, NULL, 11, 75, NULL),
(2697, 13, NULL, 11, 76, NULL),
(2698, 13, NULL, 11, 77, NULL),
(2699, 14, NULL, 11, 78, NULL),
(2700, 11, NULL, 11, 79, NULL),
(2701, 19, NULL, 11, 80, NULL),
(2702, 18, NULL, 11, 81, NULL),
(2703, 13, NULL, 11, 82, NULL),
(2704, 15, NULL, 11, 83, NULL),
(2705, 16, NULL, 11, 84, NULL),
(2706, 12, NULL, 11, 85, NULL),
(2707, 15, NULL, 11, 86, NULL),
(2708, 12, NULL, 11, 87, NULL),
(2709, 10, NULL, 12, 1, NULL),
(2710, 0, NULL, 12, 2, NULL),
(2711, 0, NULL, 12, 3, NULL),
(2712, 0, NULL, 12, 4, NULL),
(2713, 0, NULL, 12, 5, NULL),
(2714, 0, NULL, 12, 6, NULL),
(2715, 0, NULL, 12, 7, NULL),
(2716, 0, NULL, 12, 8, NULL),
(2717, 0, NULL, 12, 9, NULL),
(2718, 0, NULL, 12, 10, NULL),
(2719, 0, NULL, 12, 11, NULL),
(2720, 0, NULL, 12, 12, NULL),
(2721, 0, NULL, 12, 13, NULL),
(2722, 0, NULL, 12, 14, NULL),
(2723, 0, NULL, 12, 15, NULL),
(2724, 0, NULL, 12, 16, NULL),
(2725, 0, NULL, 12, 18, NULL),
(2726, 0, NULL, 12, 19, NULL),
(2727, 0, NULL, 12, 20, NULL),
(2728, 0, NULL, 12, 21, NULL),
(2729, 0, NULL, 12, 22, NULL),
(2730, 0, NULL, 12, 23, NULL),
(2731, 0, NULL, 12, 24, NULL),
(2732, 0, NULL, 12, 25, NULL),
(2733, 0, NULL, 12, 26, NULL),
(2734, 0, NULL, 12, 27, NULL),
(2735, 0, NULL, 12, 28, NULL),
(2736, 0, NULL, 12, 29, NULL),
(2737, 0, NULL, 12, 32, NULL),
(2738, 0, NULL, 12, 35, NULL),
(2739, 0, NULL, 12, 36, NULL),
(2740, 0, NULL, 12, 37, NULL),
(2741, 0, NULL, 12, 38, NULL),
(2742, 0, NULL, 12, 39, NULL),
(2743, 0, NULL, 12, 41, NULL),
(2744, 0, NULL, 12, 42, NULL),
(2745, 0, NULL, 12, 43, NULL),
(2746, 0, NULL, 12, 45, NULL),
(2747, 0, NULL, 12, 46, NULL),
(2748, 0, NULL, 12, 47, NULL),
(2749, 0, NULL, 12, 48, NULL),
(2750, 0, NULL, 12, 49, NULL),
(2751, 0, NULL, 12, 50, NULL),
(2752, 0, NULL, 12, 52, NULL),
(2753, 0, NULL, 12, 53, NULL),
(2754, 0, NULL, 12, 54, NULL),
(2755, 0, NULL, 12, 55, NULL),
(2756, 0, NULL, 12, 56, NULL),
(2757, 0, NULL, 12, 57, NULL),
(2758, 0, NULL, 12, 58, NULL),
(2759, 0, NULL, 12, 59, NULL),
(2760, 0, NULL, 12, 60, NULL),
(2761, 0, NULL, 12, 61, NULL),
(2762, 0, NULL, 12, 62, NULL),
(2763, 0, NULL, 12, 63, NULL),
(2764, 0, NULL, 12, 64, NULL),
(2765, 0, NULL, 12, 65, NULL),
(2766, 0, NULL, 12, 66, NULL),
(2767, 0, NULL, 12, 67, NULL),
(2768, 0, NULL, 12, 68, NULL),
(2769, 0, NULL, 12, 69, NULL),
(2770, 0, NULL, 12, 70, NULL),
(2771, 0, NULL, 12, 72, NULL),
(2772, 0, NULL, 12, 73, NULL),
(2773, 0, NULL, 12, 74, NULL),
(2774, 0, NULL, 12, 75, NULL),
(2775, 0, NULL, 12, 76, NULL),
(2776, 0, NULL, 12, 77, NULL),
(2777, 0, NULL, 12, 78, NULL),
(2778, 0, NULL, 12, 79, NULL),
(2779, 0, NULL, 12, 80, NULL),
(2780, 0, NULL, 12, 81, NULL),
(2781, 0, NULL, 12, 82, NULL),
(2782, 0, NULL, 12, 83, NULL),
(2783, 0, NULL, 12, 84, NULL),
(2784, 0, NULL, 12, 85, NULL),
(2785, 0, NULL, 12, 86, NULL),
(2786, 0, NULL, 12, 87, NULL),
(2787, NULL, NULL, 13, 1, NULL),
(2788, 12, NULL, 13, 2, NULL),
(2789, 12, NULL, 13, 3, NULL),
(2790, 12, NULL, 13, 4, NULL),
(2791, 12, NULL, 13, 5, NULL),
(2792, 12, NULL, 13, 6, NULL),
(2793, 12, NULL, 13, 7, NULL),
(2794, 12, NULL, 13, 8, NULL),
(2795, 12, NULL, 13, 9, NULL),
(2796, 12, NULL, 13, 10, NULL),
(2797, 16, NULL, 13, 11, NULL),
(2798, 16, NULL, 13, 12, NULL),
(2799, 16, NULL, 13, 13, NULL),
(2800, 16, NULL, 13, 14, NULL),
(2801, 16, NULL, 13, 15, NULL),
(2802, 13, NULL, 13, 16, NULL),
(2803, 13, NULL, 13, 17, NULL),
(2804, 14, NULL, 13, 18, NULL),
(2805, 15, NULL, 13, 19, NULL),
(2806, 13, NULL, 13, 20, NULL),
(2807, 13, NULL, 13, 21, NULL),
(2808, 18, NULL, 13, 22, NULL),
(2809, 12, NULL, 13, 23, NULL),
(2810, 14, NULL, 13, 24, NULL),
(2811, 14, NULL, 13, 25, NULL),
(2812, 15, NULL, 13, 26, NULL),
(2813, 14, NULL, 13, 27, NULL),
(2814, 13, NULL, 13, 28, NULL),
(2815, 14, NULL, 13, 29, NULL),
(2816, 14, NULL, 13, 30, NULL),
(2817, 12, NULL, 13, 31, NULL),
(2818, 15, NULL, 13, 32, NULL),
(2819, 13, NULL, 13, 33, NULL),
(2820, 19, NULL, 13, 34, NULL),
(2821, 12, NULL, 13, 35, NULL),
(2822, 13, NULL, 13, 36, NULL),
(2823, 13, NULL, 13, 37, NULL),
(2824, 12, NULL, 13, 38, NULL),
(2825, 11, NULL, 13, 39, NULL),
(2826, 5, NULL, 13, 40, NULL),
(2827, 5, NULL, 13, 41, NULL),
(2828, 1, NULL, 13, 42, NULL),
(2829, 6, NULL, 13, 43, NULL),
(2830, 3, NULL, 13, 44, NULL),
(2831, 13, NULL, 13, 45, NULL),
(2832, 15, NULL, 13, 46, NULL),
(2833, 15, NULL, 13, 47, NULL),
(2834, 16, NULL, 13, 48, NULL),
(2835, 14, NULL, 13, 49, NULL),
(2836, 14, NULL, 13, 50, NULL),
(2837, 17, NULL, 13, 51, NULL),
(2838, 15, NULL, 13, 52, NULL),
(2839, 13, NULL, 13, 53, NULL),
(2840, 15, NULL, 13, 54, NULL),
(2841, 16, NULL, 13, 55, NULL),
(2842, 13, NULL, 13, 56, NULL),
(2843, 15, NULL, 13, 57, NULL),
(2844, 16, NULL, 13, 58, NULL),
(2845, 14, NULL, 13, 59, NULL),
(2846, 16, NULL, 13, 60, NULL),
(2847, 14, NULL, 13, 61, NULL),
(2848, 13, NULL, 13, 62, NULL),
(2849, 14, NULL, 13, 63, NULL),
(2850, 14, NULL, 13, 64, NULL),
(2851, 13, NULL, 13, 65, NULL),
(2852, 16, NULL, 13, 66, NULL),
(2853, 13, NULL, 13, 67, NULL),
(2854, 15, NULL, 13, 68, NULL),
(2855, 16, NULL, 13, 69, NULL),
(2856, 14, NULL, 13, 70, NULL),
(2857, 13, NULL, 13, 71, NULL),
(2858, 13, NULL, 13, 72, NULL),
(2859, 15, NULL, 13, 73, NULL),
(2860, 15, NULL, 13, 74, NULL),
(2861, 14, NULL, 13, 75, NULL),
(2862, 13, NULL, 13, 76, NULL),
(2863, 15, NULL, 13, 77, NULL),
(2864, 14, NULL, 13, 78, NULL),
(2865, 13, NULL, 13, 79, NULL),
(2866, 15, NULL, 13, 80, NULL),
(2867, 16, NULL, 13, 81, NULL),
(2868, 15, NULL, 13, 82, NULL),
(2869, 14, NULL, 13, 83, NULL),
(2870, 15, NULL, 13, 84, NULL),
(2871, 16, NULL, 13, 85, NULL),
(2872, NULL, NULL, 13, 86, NULL),
(2873, NULL, NULL, 13, 87, NULL),
(3409, NULL, NULL, 291, 1, NULL),
(3410, NULL, NULL, 292, 1, NULL),
(3411, NULL, NULL, 293, 1, NULL),
(3412, NULL, NULL, 291, 2, NULL),
(3413, NULL, NULL, 292, 2, NULL),
(3414, NULL, NULL, 293, 2, NULL),
(3415, 0, NULL, 291, 3, NULL),
(3416, NULL, NULL, 292, 3, NULL),
(3417, NULL, NULL, 293, 3, NULL),
(3418, NULL, NULL, 291, 4, NULL),
(3419, NULL, NULL, 292, 4, NULL),
(3420, NULL, NULL, 293, 4, NULL),
(3421, NULL, NULL, 291, 5, NULL),
(3422, NULL, NULL, 292, 5, NULL),
(3423, NULL, NULL, 293, 5, NULL),
(3424, NULL, NULL, 291, 6, NULL),
(3425, NULL, NULL, 292, 6, NULL),
(3426, NULL, NULL, 293, 6, NULL),
(3427, NULL, NULL, 291, 7, NULL),
(3428, NULL, NULL, 292, 7, NULL),
(3429, NULL, NULL, 293, 7, NULL),
(3430, NULL, NULL, 291, 8, NULL),
(3431, NULL, NULL, 292, 8, NULL),
(3432, NULL, NULL, 293, 8, NULL),
(3433, NULL, NULL, 291, 9, NULL),
(3434, NULL, NULL, 292, 9, NULL),
(3435, NULL, NULL, 293, 9, NULL),
(3436, NULL, NULL, 291, 10, NULL),
(3437, NULL, NULL, 292, 10, NULL),
(3438, NULL, NULL, 293, 10, NULL),
(3439, NULL, NULL, 291, 11, NULL),
(3440, NULL, NULL, 292, 11, NULL),
(3441, NULL, NULL, 293, 11, NULL),
(3442, NULL, NULL, 291, 12, NULL),
(3443, NULL, NULL, 292, 12, NULL),
(3444, NULL, NULL, 293, 12, NULL),
(3445, NULL, NULL, 291, 13, NULL),
(3446, NULL, NULL, 292, 13, NULL),
(3447, NULL, NULL, 293, 13, NULL),
(3448, NULL, NULL, 291, 14, NULL),
(3449, NULL, NULL, 292, 14, NULL),
(3450, NULL, NULL, 293, 14, NULL),
(3451, NULL, NULL, 291, 15, NULL),
(3452, NULL, NULL, 292, 15, NULL),
(3453, NULL, NULL, 293, 15, NULL),
(3454, NULL, NULL, 291, 16, NULL),
(3455, NULL, NULL, 292, 16, NULL),
(3456, NULL, NULL, 293, 16, NULL),
(3457, NULL, NULL, 291, 17, NULL),
(3458, NULL, NULL, 292, 17, NULL),
(3459, NULL, NULL, 293, 17, NULL),
(3460, NULL, NULL, 291, 18, NULL),
(3461, NULL, NULL, 292, 18, NULL),
(3462, NULL, NULL, 293, 18, NULL),
(3463, NULL, NULL, 291, 19, NULL),
(3464, NULL, NULL, 292, 19, NULL),
(3465, NULL, NULL, 293, 19, NULL),
(3466, NULL, NULL, 291, 20, NULL),
(3467, NULL, NULL, 292, 20, NULL),
(3468, NULL, NULL, 293, 20, NULL),
(3469, NULL, NULL, 291, 21, NULL),
(3470, NULL, NULL, 292, 21, NULL),
(3471, NULL, NULL, 293, 21, NULL),
(3472, NULL, NULL, 291, 22, NULL),
(3473, NULL, NULL, 292, 22, NULL),
(3474, NULL, NULL, 293, 22, NULL),
(3475, NULL, NULL, 291, 23, NULL),
(3476, NULL, NULL, 292, 23, NULL),
(3477, NULL, NULL, 293, 23, NULL),
(3478, NULL, NULL, 291, 24, NULL),
(3479, NULL, NULL, 292, 24, NULL),
(3480, NULL, NULL, 293, 24, NULL),
(3481, NULL, NULL, 291, 25, NULL),
(3482, NULL, NULL, 292, 25, NULL),
(3483, NULL, NULL, 293, 25, NULL),
(3484, NULL, NULL, 291, 26, NULL),
(3485, NULL, NULL, 292, 26, NULL),
(3486, NULL, NULL, 293, 26, NULL),
(3487, NULL, NULL, 291, 27, NULL),
(3488, NULL, NULL, 292, 27, NULL),
(3489, NULL, NULL, 293, 27, NULL),
(3490, NULL, NULL, 291, 28, NULL),
(3491, NULL, NULL, 292, 28, NULL),
(3492, NULL, NULL, 293, 28, NULL),
(3493, NULL, NULL, 291, 29, NULL),
(3494, NULL, NULL, 292, 29, NULL),
(3495, NULL, NULL, 293, 29, NULL),
(3496, NULL, NULL, 291, 30, NULL),
(3497, NULL, NULL, 292, 30, NULL),
(3498, NULL, NULL, 293, 30, NULL),
(3499, NULL, NULL, 291, 31, NULL),
(3500, NULL, NULL, 292, 31, NULL),
(3501, NULL, NULL, 293, 31, NULL),
(3502, NULL, NULL, 291, 32, NULL),
(3503, NULL, NULL, 292, 32, NULL),
(3504, NULL, NULL, 293, 32, NULL),
(3505, NULL, NULL, 291, 33, NULL),
(3506, NULL, NULL, 292, 33, NULL),
(3507, NULL, NULL, 293, 33, NULL),
(3508, NULL, NULL, 291, 34, NULL),
(3509, NULL, NULL, 292, 34, NULL),
(3510, NULL, NULL, 293, 34, NULL),
(3511, NULL, NULL, 291, 35, NULL),
(3512, NULL, NULL, 292, 35, NULL),
(3513, NULL, NULL, 293, 35, NULL),
(3514, NULL, NULL, 291, 36, NULL),
(3515, NULL, NULL, 292, 36, NULL),
(3516, NULL, NULL, 293, 36, NULL),
(3517, NULL, NULL, 291, 37, NULL),
(3518, NULL, NULL, 292, 37, NULL),
(3519, NULL, NULL, 293, 37, NULL),
(3520, NULL, NULL, 291, 38, NULL),
(3521, NULL, NULL, 292, 38, NULL),
(3522, NULL, NULL, 293, 38, NULL),
(3523, NULL, NULL, 291, 39, NULL),
(3524, NULL, NULL, 292, 39, NULL),
(3525, NULL, NULL, 293, 39, NULL),
(3526, NULL, NULL, 291, 40, NULL),
(3527, NULL, NULL, 292, 40, NULL),
(3528, NULL, NULL, 293, 40, NULL),
(3529, NULL, NULL, 291, 41, NULL),
(3530, NULL, NULL, 292, 41, NULL),
(3531, NULL, NULL, 293, 41, NULL),
(3532, NULL, NULL, 291, 42, NULL),
(3533, NULL, NULL, 292, 42, NULL),
(3534, NULL, NULL, 293, 42, NULL),
(3535, NULL, NULL, 291, 43, NULL),
(3536, NULL, NULL, 292, 43, NULL),
(3537, NULL, NULL, 293, 43, NULL),
(3538, NULL, NULL, 291, 44, NULL),
(3539, NULL, NULL, 292, 44, NULL),
(3540, NULL, NULL, 293, 44, NULL),
(3541, NULL, NULL, 291, 45, NULL),
(3542, NULL, NULL, 292, 45, NULL),
(3543, NULL, NULL, 293, 45, NULL),
(3544, NULL, NULL, 291, 46, NULL),
(3545, NULL, NULL, 292, 46, NULL),
(3546, NULL, NULL, 293, 46, NULL),
(3547, NULL, NULL, 291, 47, NULL),
(3548, NULL, NULL, 292, 47, NULL),
(3549, NULL, NULL, 293, 47, NULL),
(3550, NULL, NULL, 291, 48, NULL),
(3551, NULL, NULL, 292, 48, NULL),
(3552, NULL, NULL, 293, 48, NULL),
(3553, NULL, NULL, 291, 49, NULL),
(3554, NULL, NULL, 292, 49, NULL),
(3555, NULL, NULL, 293, 49, NULL),
(3556, NULL, NULL, 291, 50, NULL),
(3557, NULL, NULL, 292, 50, NULL),
(3558, NULL, NULL, 293, 50, NULL),
(3559, NULL, NULL, 291, 51, NULL),
(3560, NULL, NULL, 292, 51, NULL),
(3561, NULL, NULL, 293, 51, NULL),
(3562, NULL, NULL, 291, 52, NULL),
(3563, NULL, NULL, 292, 52, NULL),
(3564, NULL, NULL, 293, 52, NULL),
(3565, NULL, NULL, 291, 53, NULL),
(3566, NULL, NULL, 292, 53, NULL),
(3567, NULL, NULL, 293, 53, NULL),
(3568, NULL, NULL, 291, 54, NULL),
(3569, NULL, NULL, 292, 54, NULL),
(3570, NULL, NULL, 293, 54, NULL),
(3571, NULL, NULL, 291, 55, NULL),
(3572, NULL, NULL, 292, 55, NULL),
(3573, NULL, NULL, 293, 55, NULL),
(3574, NULL, NULL, 291, 56, NULL),
(3575, NULL, NULL, 292, 56, NULL),
(3576, NULL, NULL, 293, 56, NULL),
(3577, NULL, NULL, 291, 57, NULL),
(3578, NULL, NULL, 292, 57, NULL),
(3579, NULL, NULL, 293, 57, NULL),
(3580, NULL, NULL, 291, 58, NULL),
(3581, NULL, NULL, 292, 58, NULL),
(3582, NULL, NULL, 293, 58, NULL),
(3583, NULL, NULL, 291, 59, NULL),
(3584, NULL, NULL, 292, 59, NULL),
(3585, NULL, NULL, 293, 59, NULL),
(3586, NULL, NULL, 291, 60, NULL),
(3587, NULL, NULL, 292, 60, NULL),
(3588, NULL, NULL, 293, 60, NULL),
(3589, NULL, NULL, 291, 61, NULL),
(3590, NULL, NULL, 292, 61, NULL),
(3591, NULL, NULL, 293, 61, NULL),
(3592, NULL, NULL, 291, 62, NULL),
(3593, NULL, NULL, 292, 62, NULL),
(3594, NULL, NULL, 293, 62, NULL),
(3595, NULL, NULL, 291, 63, NULL),
(3596, NULL, NULL, 292, 63, NULL),
(3597, NULL, NULL, 293, 63, NULL),
(3598, NULL, NULL, 291, 64, NULL),
(3599, NULL, NULL, 292, 64, NULL),
(3600, NULL, NULL, 293, 64, NULL),
(3601, NULL, NULL, 291, 65, NULL),
(3602, NULL, NULL, 292, 65, NULL),
(3603, NULL, NULL, 293, 65, NULL),
(3604, NULL, NULL, 291, 66, NULL),
(3605, NULL, NULL, 292, 66, NULL),
(3606, NULL, NULL, 293, 66, NULL),
(3607, NULL, NULL, 291, 67, NULL),
(3608, NULL, NULL, 292, 67, NULL),
(3609, NULL, NULL, 293, 67, NULL),
(3610, NULL, NULL, 291, 68, NULL),
(3611, NULL, NULL, 292, 68, NULL),
(3612, NULL, NULL, 293, 68, NULL),
(3613, NULL, NULL, 291, 69, NULL),
(3614, NULL, NULL, 292, 69, NULL),
(3615, NULL, NULL, 293, 69, NULL),
(3616, NULL, NULL, 291, 70, NULL),
(3617, NULL, NULL, 292, 70, NULL),
(3618, NULL, NULL, 293, 70, NULL),
(3619, NULL, NULL, 291, 71, NULL),
(3620, NULL, NULL, 292, 71, NULL),
(3621, NULL, NULL, 293, 71, NULL),
(3622, NULL, NULL, 291, 72, NULL),
(3623, NULL, NULL, 292, 72, NULL),
(3624, NULL, NULL, 293, 72, NULL),
(3625, NULL, NULL, 291, 73, NULL),
(3626, NULL, NULL, 292, 73, NULL),
(3627, NULL, NULL, 293, 73, NULL),
(3628, NULL, NULL, 291, 74, NULL),
(3629, NULL, NULL, 292, 74, NULL),
(3630, NULL, NULL, 293, 74, NULL),
(3631, NULL, NULL, 291, 75, NULL),
(3632, NULL, NULL, 292, 75, NULL),
(3633, NULL, NULL, 293, 75, NULL),
(3634, NULL, NULL, 291, 76, NULL),
(3635, NULL, NULL, 292, 76, NULL),
(3636, NULL, NULL, 293, 76, NULL),
(3637, NULL, NULL, 291, 77, NULL),
(3638, NULL, NULL, 292, 77, NULL),
(3639, NULL, NULL, 293, 77, NULL),
(3640, NULL, NULL, 291, 78, NULL),
(3641, NULL, NULL, 292, 78, NULL),
(3642, NULL, NULL, 293, 78, NULL),
(3643, NULL, NULL, 291, 79, NULL),
(3644, NULL, NULL, 292, 79, NULL),
(3645, NULL, NULL, 293, 79, NULL),
(3646, NULL, NULL, 291, 80, NULL),
(3647, NULL, NULL, 292, 80, NULL),
(3648, NULL, NULL, 293, 80, NULL),
(3649, NULL, NULL, 291, 81, NULL),
(3650, NULL, NULL, 292, 81, NULL),
(3651, NULL, NULL, 293, 81, NULL),
(3652, NULL, NULL, 291, 82, NULL),
(3653, NULL, NULL, 292, 82, NULL),
(3654, NULL, NULL, 293, 82, NULL),
(3655, NULL, NULL, 291, 83, NULL),
(3656, NULL, NULL, 292, 83, NULL),
(3657, NULL, NULL, 293, 83, NULL),
(3658, NULL, NULL, 291, 84, NULL),
(3659, NULL, NULL, 292, 84, NULL),
(3660, NULL, NULL, 293, 84, NULL),
(3661, NULL, NULL, 291, 85, NULL),
(3662, NULL, NULL, 292, 85, NULL),
(3663, NULL, NULL, 293, 85, NULL),
(3664, NULL, NULL, 291, 86, NULL),
(3665, NULL, NULL, 292, 86, NULL),
(3666, NULL, NULL, 293, 86, NULL),
(3667, NULL, NULL, 291, 87, NULL),
(3668, NULL, NULL, 292, 87, NULL),
(3669, NULL, NULL, 293, 87, NULL),
(3670, NULL, NULL, 291, 1, NULL),
(3671, NULL, NULL, 291, 1, NULL),
(3672, NULL, NULL, 294, 1, NULL),
(3673, NULL, NULL, 295, 1, NULL),
(3674, NULL, NULL, 294, 2, NULL),
(3675, NULL, NULL, 295, 2, NULL),
(3676, NULL, NULL, 294, 3, NULL),
(3677, NULL, NULL, 295, 3, NULL),
(3678, NULL, NULL, 294, 4, NULL),
(3679, NULL, NULL, 295, 4, NULL),
(3680, NULL, NULL, 294, 5, NULL),
(3681, NULL, NULL, 295, 5, NULL),
(3682, NULL, NULL, 294, 6, NULL),
(3683, NULL, NULL, 295, 6, NULL),
(3684, NULL, NULL, 294, 7, NULL),
(3685, NULL, NULL, 295, 7, NULL),
(3686, NULL, NULL, 294, 8, NULL),
(3687, NULL, NULL, 295, 8, NULL),
(3688, NULL, NULL, 294, 9, NULL),
(3689, NULL, NULL, 295, 9, NULL),
(3690, NULL, NULL, 294, 10, NULL),
(3691, NULL, NULL, 295, 10, NULL),
(3692, NULL, NULL, 294, 11, NULL),
(3693, NULL, NULL, 295, 11, NULL),
(3694, NULL, NULL, 294, 12, NULL),
(3695, NULL, NULL, 295, 12, NULL),
(3696, NULL, NULL, 294, 13, NULL),
(3697, NULL, NULL, 295, 13, NULL),
(3698, NULL, NULL, 294, 14, NULL),
(3699, NULL, NULL, 295, 14, NULL),
(3700, NULL, NULL, 294, 15, NULL),
(3701, NULL, NULL, 295, 15, NULL),
(3702, NULL, NULL, 294, 16, NULL),
(3703, NULL, NULL, 295, 16, NULL),
(3704, NULL, NULL, 294, 17, NULL),
(3705, NULL, NULL, 295, 17, NULL),
(3706, NULL, NULL, 294, 18, NULL),
(3707, NULL, NULL, 295, 18, NULL),
(3708, NULL, NULL, 294, 19, NULL),
(3709, NULL, NULL, 295, 19, NULL),
(3710, NULL, NULL, 294, 20, NULL),
(3711, NULL, NULL, 295, 20, NULL),
(3712, NULL, NULL, 294, 21, NULL),
(3713, NULL, NULL, 295, 21, NULL),
(3714, NULL, NULL, 294, 22, NULL),
(3715, NULL, NULL, 295, 22, NULL),
(3716, NULL, NULL, 294, 23, NULL),
(3717, NULL, NULL, 295, 23, NULL),
(3718, NULL, NULL, 294, 24, NULL),
(3719, NULL, NULL, 295, 24, NULL),
(3720, NULL, NULL, 294, 25, NULL),
(3721, NULL, NULL, 295, 25, NULL),
(3722, NULL, NULL, 294, 26, NULL),
(3723, NULL, NULL, 295, 26, NULL),
(3724, NULL, NULL, 294, 27, NULL),
(3725, NULL, NULL, 295, 27, NULL),
(3726, NULL, NULL, 294, 28, NULL),
(3727, NULL, NULL, 295, 28, NULL),
(3728, NULL, NULL, 294, 29, NULL),
(3729, NULL, NULL, 295, 29, NULL),
(3730, NULL, NULL, 294, 30, NULL),
(3731, NULL, NULL, 295, 30, NULL),
(3732, NULL, NULL, 294, 31, NULL),
(3733, NULL, NULL, 295, 31, NULL),
(3734, NULL, NULL, 294, 32, NULL),
(3735, NULL, NULL, 295, 32, NULL),
(3736, NULL, NULL, 294, 33, NULL),
(3737, NULL, NULL, 295, 33, NULL),
(3738, NULL, NULL, 294, 34, NULL),
(3739, NULL, NULL, 295, 34, NULL),
(3740, NULL, NULL, 294, 35, NULL),
(3741, NULL, NULL, 295, 35, NULL),
(3742, NULL, NULL, 294, 36, NULL),
(3743, NULL, NULL, 295, 36, NULL),
(3744, NULL, NULL, 294, 37, NULL),
(3745, NULL, NULL, 295, 37, NULL),
(3746, NULL, NULL, 294, 38, NULL),
(3747, NULL, NULL, 295, 38, NULL),
(3748, NULL, NULL, 294, 39, NULL),
(3749, NULL, NULL, 295, 39, NULL),
(3750, NULL, NULL, 294, 40, NULL),
(3751, NULL, NULL, 295, 40, NULL),
(3752, NULL, NULL, 294, 41, NULL),
(3753, NULL, NULL, 295, 41, NULL),
(3754, NULL, NULL, 294, 42, NULL),
(3755, NULL, NULL, 295, 42, NULL),
(3756, NULL, NULL, 294, 43, NULL),
(3757, NULL, NULL, 295, 43, NULL),
(3758, NULL, NULL, 294, 44, NULL),
(3759, NULL, NULL, 295, 44, NULL),
(3760, NULL, NULL, 294, 45, NULL),
(3761, NULL, NULL, 295, 45, NULL),
(3762, NULL, NULL, 294, 46, NULL),
(3763, NULL, NULL, 295, 46, NULL),
(3764, NULL, NULL, 294, 47, NULL),
(3765, NULL, NULL, 295, 47, NULL),
(3766, NULL, NULL, 294, 48, NULL),
(3767, NULL, NULL, 295, 48, NULL),
(3768, NULL, NULL, 294, 49, NULL),
(3769, NULL, NULL, 295, 49, NULL),
(3770, NULL, NULL, 294, 50, NULL),
(3771, NULL, NULL, 295, 50, NULL),
(3772, NULL, NULL, 294, 51, NULL),
(3773, NULL, NULL, 295, 51, NULL),
(3774, NULL, NULL, 294, 52, NULL),
(3775, NULL, NULL, 295, 52, NULL),
(3776, NULL, NULL, 294, 53, NULL),
(3777, NULL, NULL, 295, 53, NULL),
(3778, NULL, NULL, 294, 54, NULL),
(3779, NULL, NULL, 295, 54, NULL),
(3780, NULL, NULL, 294, 55, NULL),
(3781, NULL, NULL, 295, 55, NULL),
(3782, NULL, NULL, 294, 56, NULL),
(3783, NULL, NULL, 295, 56, NULL),
(3784, NULL, NULL, 294, 57, NULL),
(3785, NULL, NULL, 295, 57, NULL),
(3786, NULL, NULL, 294, 58, NULL),
(3787, NULL, NULL, 295, 58, NULL),
(3788, NULL, NULL, 294, 59, NULL),
(3789, NULL, NULL, 295, 59, NULL),
(3790, NULL, NULL, 294, 60, NULL),
(3791, NULL, NULL, 295, 60, NULL),
(3792, NULL, NULL, 294, 61, NULL),
(3793, NULL, NULL, 295, 61, NULL),
(3794, NULL, NULL, 294, 62, NULL),
(3795, NULL, NULL, 295, 62, NULL),
(3796, NULL, NULL, 294, 63, NULL),
(3797, NULL, NULL, 295, 63, NULL),
(3798, NULL, NULL, 294, 64, NULL),
(3799, NULL, NULL, 295, 64, NULL),
(3800, NULL, NULL, 294, 65, NULL),
(3801, NULL, NULL, 295, 65, NULL),
(3802, NULL, NULL, 294, 66, NULL),
(3803, NULL, NULL, 295, 66, NULL),
(3804, NULL, NULL, 294, 67, NULL),
(3805, NULL, NULL, 295, 67, NULL),
(3806, NULL, NULL, 294, 68, NULL),
(3807, NULL, NULL, 295, 68, NULL),
(3808, NULL, NULL, 294, 69, NULL),
(3809, NULL, NULL, 295, 69, NULL),
(3810, NULL, NULL, 294, 70, NULL),
(3811, NULL, NULL, 295, 70, NULL),
(3812, NULL, NULL, 294, 71, NULL),
(3813, NULL, NULL, 295, 71, NULL),
(3814, NULL, NULL, 294, 72, NULL),
(3815, NULL, NULL, 295, 72, NULL),
(3816, NULL, NULL, 294, 73, NULL),
(3817, NULL, NULL, 295, 73, NULL),
(3818, NULL, NULL, 294, 74, NULL),
(3819, NULL, NULL, 295, 74, NULL),
(3820, NULL, NULL, 294, 75, NULL),
(3821, NULL, NULL, 295, 75, NULL),
(3822, NULL, NULL, 294, 76, NULL),
(3823, NULL, NULL, 295, 76, NULL),
(3824, NULL, NULL, 294, 77, NULL),
(3825, NULL, NULL, 295, 77, NULL),
(3826, NULL, NULL, 294, 78, NULL),
(3827, NULL, NULL, 295, 78, NULL),
(3828, NULL, NULL, 294, 79, NULL),
(3829, NULL, NULL, 295, 79, NULL),
(3830, NULL, NULL, 294, 80, NULL),
(3831, NULL, NULL, 295, 80, NULL),
(3832, NULL, NULL, 294, 81, NULL),
(3833, NULL, NULL, 295, 81, NULL),
(3834, NULL, NULL, 294, 82, NULL),
(3835, NULL, NULL, 295, 82, NULL),
(3836, NULL, NULL, 294, 83, NULL),
(3837, NULL, NULL, 295, 83, NULL),
(3838, NULL, NULL, 294, 84, NULL),
(3839, NULL, NULL, 295, 84, NULL),
(3840, NULL, NULL, 294, 85, NULL),
(3841, NULL, NULL, 295, 85, NULL),
(3842, NULL, NULL, 294, 86, NULL),
(3843, NULL, NULL, 295, 86, NULL),
(3844, NULL, NULL, 294, 87, NULL),
(3845, NULL, NULL, 295, 87, NULL),
(3846, NULL, NULL, 296, 1, NULL),
(3847, NULL, NULL, 297, 1, NULL),
(3848, NULL, NULL, 10, 10, NULL),
(3849, NULL, NULL, 10, 26, NULL),
(3850, NULL, NULL, 10, 27, NULL),
(3851, NULL, NULL, 10, 55, NULL),
(3852, NULL, NULL, 10, 78, NULL),
(3853, NULL, NULL, 296, 2, NULL),
(3854, NULL, NULL, 297, 2, NULL),
(3855, NULL, NULL, 296, 3, NULL),
(3856, NULL, NULL, 297, 3, NULL),
(3857, NULL, NULL, 296, 4, NULL),
(3858, NULL, NULL, 297, 4, NULL),
(3859, NULL, NULL, 296, 5, NULL),
(3860, NULL, NULL, 297, 5, NULL),
(3861, NULL, NULL, 296, 6, NULL),
(3862, NULL, NULL, 297, 6, NULL),
(3863, NULL, NULL, 296, 7, NULL),
(3864, NULL, NULL, 297, 7, NULL),
(3865, NULL, NULL, 296, 8, NULL),
(3866, NULL, NULL, 297, 8, NULL),
(3867, NULL, NULL, 296, 9, NULL),
(3868, NULL, NULL, 297, 9, NULL),
(3869, NULL, NULL, 296, 10, NULL),
(3870, NULL, NULL, 297, 10, NULL),
(3871, NULL, NULL, 296, 11, NULL),
(3872, NULL, NULL, 297, 11, NULL),
(3873, NULL, NULL, 296, 12, NULL),
(3874, NULL, NULL, 297, 12, NULL),
(3875, NULL, NULL, 296, 13, NULL),
(3876, NULL, NULL, 297, 13, NULL),
(3877, NULL, NULL, 296, 14, NULL),
(3878, NULL, NULL, 297, 14, NULL),
(3879, NULL, NULL, 296, 15, NULL),
(3880, NULL, NULL, 297, 15, NULL),
(3881, NULL, NULL, 296, 16, NULL),
(3882, NULL, NULL, 297, 16, NULL),
(3883, NULL, NULL, 296, 17, NULL),
(3884, NULL, NULL, 297, 17, NULL),
(3885, NULL, NULL, 296, 18, NULL),
(3886, NULL, NULL, 297, 18, NULL),
(3887, NULL, NULL, 296, 19, NULL),
(3888, NULL, NULL, 297, 19, NULL),
(3889, NULL, NULL, 296, 20, NULL),
(3890, NULL, NULL, 297, 20, NULL),
(3891, NULL, NULL, 296, 21, NULL),
(3892, NULL, NULL, 297, 21, NULL),
(3893, NULL, NULL, 296, 22, NULL),
(3894, NULL, NULL, 297, 22, NULL),
(3895, NULL, NULL, 296, 23, NULL),
(3896, NULL, NULL, 297, 23, NULL),
(3897, NULL, NULL, 296, 24, NULL),
(3898, NULL, NULL, 297, 24, NULL),
(3899, NULL, NULL, 296, 25, NULL),
(3900, NULL, NULL, 297, 25, NULL),
(3901, NULL, NULL, 296, 26, NULL),
(3902, NULL, NULL, 297, 26, NULL),
(3903, NULL, NULL, 296, 27, NULL),
(3904, NULL, NULL, 297, 27, NULL),
(3905, NULL, NULL, 296, 28, NULL),
(3906, NULL, NULL, 297, 28, NULL),
(3907, NULL, NULL, 296, 29, NULL),
(3908, NULL, NULL, 297, 29, NULL),
(3909, NULL, NULL, 296, 30, NULL),
(3910, NULL, NULL, 297, 30, NULL),
(3911, NULL, NULL, 296, 31, NULL),
(3912, NULL, NULL, 297, 31, NULL),
(3913, NULL, NULL, 296, 32, NULL),
(3914, NULL, NULL, 297, 32, NULL),
(3915, NULL, NULL, 296, 33, NULL),
(3916, NULL, NULL, 297, 33, NULL),
(3917, NULL, NULL, 296, 34, NULL),
(3918, NULL, NULL, 297, 34, NULL),
(3919, NULL, NULL, 296, 35, NULL),
(3920, NULL, NULL, 297, 35, NULL),
(3921, NULL, NULL, 296, 36, NULL),
(3922, NULL, NULL, 297, 36, NULL),
(3923, NULL, NULL, 296, 37, NULL),
(3924, NULL, NULL, 297, 37, NULL),
(3925, NULL, NULL, 296, 38, NULL),
(3926, NULL, NULL, 297, 38, NULL),
(3927, NULL, NULL, 296, 39, NULL),
(3928, NULL, NULL, 297, 39, NULL),
(3929, NULL, NULL, 296, 40, NULL),
(3930, NULL, NULL, 297, 40, NULL),
(3931, NULL, NULL, 296, 41, NULL),
(3932, NULL, NULL, 297, 41, NULL),
(3933, NULL, NULL, 296, 42, NULL),
(3934, NULL, NULL, 297, 42, NULL),
(3935, NULL, NULL, 296, 43, NULL),
(3936, NULL, NULL, 297, 43, NULL),
(3937, NULL, NULL, 296, 44, NULL),
(3938, NULL, NULL, 297, 44, NULL),
(3939, NULL, NULL, 296, 45, NULL),
(3940, NULL, NULL, 297, 45, NULL),
(3941, NULL, NULL, 296, 46, NULL),
(3942, NULL, NULL, 297, 46, NULL),
(3943, NULL, NULL, 296, 47, NULL),
(3944, NULL, NULL, 297, 47, NULL),
(3945, NULL, NULL, 296, 48, NULL),
(3946, NULL, NULL, 297, 48, NULL),
(3947, NULL, NULL, 296, 49, NULL),
(3948, NULL, NULL, 297, 49, NULL),
(3949, NULL, NULL, 296, 50, NULL),
(3950, NULL, NULL, 297, 50, NULL),
(3951, NULL, NULL, 296, 51, NULL),
(3952, NULL, NULL, 297, 51, NULL),
(3953, NULL, NULL, 296, 52, NULL),
(3954, NULL, NULL, 297, 52, NULL),
(3955, NULL, NULL, 296, 53, NULL),
(3956, NULL, NULL, 297, 53, NULL),
(3957, NULL, NULL, 296, 54, NULL),
(3958, NULL, NULL, 297, 54, NULL),
(3959, NULL, NULL, 296, 55, NULL),
(3960, NULL, NULL, 297, 55, NULL),
(3961, NULL, NULL, 296, 56, NULL),
(3962, NULL, NULL, 297, 56, NULL),
(3963, NULL, NULL, 296, 57, NULL),
(3964, NULL, NULL, 297, 57, NULL),
(3965, NULL, NULL, 296, 58, NULL),
(3966, NULL, NULL, 297, 58, NULL),
(3967, NULL, NULL, 296, 59, NULL),
(3968, NULL, NULL, 297, 59, NULL),
(3969, NULL, NULL, 296, 60, NULL),
(3970, NULL, NULL, 297, 60, NULL),
(3971, NULL, NULL, 296, 61, NULL),
(3972, NULL, NULL, 297, 61, NULL),
(3973, NULL, NULL, 296, 62, NULL),
(3974, NULL, NULL, 297, 62, NULL),
(3975, NULL, NULL, 296, 63, NULL),
(3976, NULL, NULL, 297, 63, NULL),
(3977, NULL, NULL, 296, 64, NULL),
(3978, NULL, NULL, 297, 64, NULL),
(3979, NULL, NULL, 296, 65, NULL),
(3980, NULL, NULL, 297, 65, NULL),
(3981, NULL, NULL, 296, 66, NULL),
(3982, NULL, NULL, 297, 66, NULL),
(3983, NULL, NULL, 296, 67, NULL),
(3984, NULL, NULL, 297, 67, NULL),
(3985, NULL, NULL, 296, 68, NULL),
(3986, NULL, NULL, 297, 68, NULL),
(3987, NULL, NULL, 296, 69, NULL),
(3988, NULL, NULL, 297, 69, NULL),
(3989, NULL, NULL, 296, 70, NULL),
(3990, NULL, NULL, 297, 70, NULL),
(3991, NULL, NULL, 296, 71, NULL),
(3992, NULL, NULL, 297, 71, NULL),
(3993, NULL, NULL, 296, 72, NULL),
(3994, NULL, NULL, 297, 72, NULL),
(3995, NULL, NULL, 296, 73, NULL),
(3996, NULL, NULL, 297, 73, NULL),
(3997, NULL, NULL, 296, 74, NULL),
(3998, NULL, NULL, 297, 74, NULL),
(3999, NULL, NULL, 296, 75, NULL),
(4000, NULL, NULL, 297, 75, NULL),
(4001, NULL, NULL, 296, 76, NULL),
(4002, NULL, NULL, 297, 76, NULL),
(4003, NULL, NULL, 296, 77, NULL),
(4004, NULL, NULL, 297, 77, NULL),
(4005, NULL, NULL, 296, 78, NULL),
(4006, NULL, NULL, 297, 78, NULL),
(4007, NULL, NULL, 296, 79, NULL),
(4008, NULL, NULL, 297, 79, NULL),
(4009, NULL, NULL, 296, 80, NULL),
(4010, NULL, NULL, 297, 80, NULL),
(4011, NULL, NULL, 296, 81, NULL),
(4012, NULL, NULL, 297, 81, NULL),
(4013, NULL, NULL, 296, 82, NULL),
(4014, NULL, NULL, 297, 82, NULL),
(4015, NULL, NULL, 296, 83, NULL),
(4016, NULL, NULL, 297, 83, NULL),
(4017, NULL, NULL, 296, 84, NULL),
(4018, NULL, NULL, 297, 84, NULL),
(4019, NULL, NULL, 296, 85, NULL),
(4020, NULL, NULL, 297, 85, NULL),
(4021, NULL, NULL, 296, 86, NULL),
(4022, NULL, NULL, 297, 86, NULL),
(4023, NULL, NULL, 296, 87, NULL),
(4024, NULL, NULL, 297, 87, NULL),
(4025, 14, 'SIFT22368', 298, 1, NULL),
(4026, 14, 'SIFT22359', 298, 2, NULL),
(4027, 14, 'SIFT22352', 298, 3, NULL),
(4028, 14, 'SIFT22357', 298, 4, NULL),
(4029, 14, 'SIFT22387', 298, 5, NULL),
(4030, 14, 'SIFT22376', 298, 6, NULL),
(4031, 14, 'SIFT22331', 298, 7, NULL),
(4032, 14, 'SIFT22313', 298, 8, NULL),
(4033, 14, 'SIFT22339', 298, 9, NULL),
(4034, 14, 'SIFT22349', 298, 10, NULL),
(4035, 14, 'SIFT22358', 298, 11, NULL),
(4036, 14, 'SIFT2238', 298, 12, NULL),
(4037, 14, 'SIFT22366', 298, 13, NULL),
(4038, 14, 'SIFT22348', 298, 14, NULL),
(4039, 14, 'SIFT22325', 298, 15, NULL),
(4040, 14, 'SIFT22340', 298, 16, NULL),
(4041, 14, 'SIFT22346', 298, 17, NULL),
(4042, 14, 'SIFT22382', 298, 18, NULL),
(4043, 14, 'SIFT22315', 298, 19, NULL),
(4044, 14, 'SIFT22362', 298, 20, NULL),
(4045, 14, 'SIFT2231', 298, 21, NULL),
(4046, 14, 'SIFT2232', 298, 22, NULL),
(4047, 14, 'SIFT22318', 298, 23, NULL),
(4048, 14, 'SIFT22356', 298, 24, NULL),
(4049, 14, 'SIFT22371', 298, 25, NULL),
(4050, 14, 'SIFT22334', 298, 26, NULL),
(4051, 14, 'SIFT22363', 298, 27, NULL),
(4052, 14, 'SIFT22342', 298, 28, NULL),
(4053, 14, 'SIFT22335', 298, 29, NULL),
(4054, 14, 'SIFT2235', 298, 30, NULL),
(4055, 14, 'SIFT22343', 298, 31, NULL),
(4056, 14, 'SIFT22385', 298, 32, NULL),
(4057, 14, 'SIFT22354', 298, 33, NULL),
(4058, 14, 'SIFT22378', 298, 34, NULL),
(4059, 14, 'SIFT22311', 298, 35, NULL),
(4060, 14, 'SIFT22381', 298, 36, NULL),
(4061, 14, 'SIFT22379', 298, 37, NULL),
(4062, 14, 'SIFT22323', 298, 38, NULL),
(4063, 14, 'SIFT22337', 298, 39, NULL),
(4064, 14, 'SIFT22324', 298, 40, NULL),
(4065, 14, 'SIFT22365', 298, 41, NULL),
(4066, 14, 'SIFT22367', 298, 42, NULL),
(4067, 14, 'SIFT22384', 298, 43, NULL),
(4068, 14, 'SIFT2236', 298, 44, NULL),
(4069, 14, 'SIFT22351', 298, 45, NULL),
(4070, 14, 'SIFT22328', 298, 46, NULL),
(4071, 14, 'SIFT2237', 298, 47, NULL),
(4072, 14, 'SIFT22316', 298, 48, NULL),
(4073, 14, 'SIFT22321', 298, 49, NULL),
(4074, 14, 'SIFT22380', 298, 50, NULL),
(4075, 14, 'SIFT22333', 298, 51, NULL),
(4076, 14, 'SIFT22383', 298, 52, NULL),
(4077, 14, 'SIFT22338', 298, 53, NULL),
(4078, 14, 'SIFT22329', 298, 54, NULL),
(4079, 14, 'SIFT22344', 298, 55, NULL),
(4080, 14, 'SIFT22345', 298, 56, NULL),
(4081, 14, 'SIFT22336', 298, 57, NULL),
(4082, 14, 'SIFT22317', 298, 58, NULL),
(4083, 14, 'SIFT22353', 298, 59, NULL),
(4084, 14, 'SIFT22312', 298, 60, NULL),
(4085, 14, 'SIFT22360', 298, 61, NULL),
(4086, 14, 'SIFT22373', 298, 62, NULL),
(4087, 14, 'SIFT22326', 298, 63, NULL),
(4088, 14, 'SIFT22327', 298, 64, NULL),
(4089, 14, 'SIFT22319', 298, 65, NULL),
(4090, 14, 'SIFT22310', 298, 66, NULL),
(4091, 14, 'SIFT22386', 298, 67, NULL),
(4092, 14, 'SIFT2239', 298, 68, NULL),
(4093, 14, 'SIFT22370', 298, 69, NULL),
(4094, 14, 'SIFT22377', 298, 70, NULL),
(4095, 14, 'SIFT2233', 298, 71, NULL),
(4096, 14, 'SIFT22322', 298, 72, NULL),
(4097, 14, 'SIFT22355', 298, 73, NULL),
(4098, 14, 'SIFT22374', 298, 74, NULL),
(4099, 14, 'SIFT22320', 298, 75, NULL),
(4100, 14, 'SIFT22332', 298, 76, NULL),
(4101, 14, 'SIFT22364', 298, 77, NULL),
(4102, 14, 'SIFT2234', 298, 78, NULL),
(4103, 14, 'SIFT22369', 298, 79, NULL),
(4104, 14, 'SIFT22350', 298, 80, NULL),
(4105, 14, 'SIFT22361', 298, 81, NULL),
(4106, 14, 'SIFT22330', 298, 82, NULL),
(4107, 14, 'SIFT22347', 298, 83, NULL),
(4108, 14, 'SIFT22372', 298, 84, NULL),
(4109, 14, 'SIFT22341', 298, 85, NULL),
(4110, 14, 'SIFT22375', 298, 86, NULL),
(4111, 14, 'SIFT22314', 298, 87, NULL),
(4112, 13, 'SIFT14174', 299, 1, NULL),
(4113, 11, 'SIFT14185', 299, 2, NULL),
(4114, 2, 'SIFT14147', 299, 3, NULL),
(4115, 1, 'SIFT14128', 299, 4, NULL),
(4116, 0, 'SIFT14126', 299, 5, NULL),
(4117, 4, 'SIFT1411', 299, 6, NULL),
(4118, 5, 'SIFT14176', 299, 7, NULL),
(4119, 6, 'SIFT14122', 299, 8, NULL),
(4120, 8, 'SIFT14124', 299, 9, NULL),
(4121, 0, 'SIFT14123', 299, 10, NULL),
(4122, 1, 'SIFT14125', 299, 11, NULL),
(4123, 3, 'SIFT14116', 299, 12, NULL),
(4124, 5, 'SIFT14177', 299, 13, NULL),
(4125, 0, 'SIFT14135', 299, 14, NULL),
(4126, 8, 'SIFT14149', 299, 15, NULL),
(4127, 0, 'SIFT14150', 299, 16, NULL),
(4128, 9, 'SIFT1414', 299, 17, NULL),
(4129, 0, 'SIFT14142', 299, 18, NULL),
(4130, 7, 'SIFT14154', 299, 19, NULL),
(4131, 0, 'SIFT1419', 299, 20, NULL),
(4132, 4, 'SIFT14121', 299, 21, NULL),
(4133, 0, 'SIFT14132', 299, 22, NULL),
(4134, 5, 'SIFT14115', 299, 23, NULL),
(4135, 0, 'SIFT1412', 299, 24, NULL),
(4136, 1, 'SIFT14160', 299, 25, NULL),
(4137, 15, 'SIFT14143', 299, 26, NULL),
(4138, 1, 'SIFT14113', 299, 27, NULL),
(4139, 3, 'SIFT14158', 299, 28, NULL),
(4140, 1, 'SIFT14112', 299, 29, NULL),
(4141, 4, 'SIFT14117', 299, 30, NULL),
(4142, 5, 'SIFT14167', 299, 31, NULL),
(4143, 6, 'SIFT14170', 299, 32, NULL),
(4144, 8, 'SIFT1415', 299, 33, NULL),
(4145, 0, 'SIFT14110', 299, 34, NULL),
(4146, 2, 'SIFT14144', 299, 35, NULL),
(4147, 1, 'SIFT14171', 299, 36, NULL),
(4148, 9, 'SIFT14182', 299, 37, NULL),
(4149, 6.5, 'SIFT14165', 299, 38, NULL),
(4150, 6, 'SIFT14168', 299, 39, NULL),
(4151, 14, 'SIFT14162', 299, 40, NULL),
(4152, 7, 'SIFT14187', 299, 41, NULL),
(4153, 5, 'SIFT1418', 299, 42, NULL),
(4154, 6.5, 'SIFT14181', 299, 43, NULL),
(4155, 1, 'SIFT14151', 299, 44, NULL),
(4156, 10, 'SIFT14172', 299, 45, NULL),
(4157, 1, 'SIFT14141', 299, 46, NULL),
(4158, 5, 'SIFT14134', 299, 47, NULL),
(4159, 6, 'SIFT14152', 299, 48, NULL),
(4160, 8, 'SIFT14161', 299, 49, NULL),
(4161, 4, 'SIFT14118', 299, 50, NULL),
(4162, 6, 'SIFT14169', 299, 51, NULL),
(4163, 8, 'SIFT14146', 299, 52, NULL),
(4164, 9, 'SIFT14184', 299, 53, NULL),
(4165, 11, 'SIFT14136', 299, 54, NULL),
(4166, 4, 'SIFT14156', 299, 55, NULL),
(4167, 5, 'SIFT14163', 299, 56, NULL),
(4168, 3, 'SIFT14145', 299, 57, NULL),
(4169, 1, 'SIFT14139', 299, 58, NULL),
(4170, 2, 'SIFT14148', 299, 59, NULL),
(4171, 8, 'SIFT14130', 299, 60, NULL),
(4172, 9, 'SIFT14186', 299, 61, NULL),
(4173, 8, 'SIFT1416', 299, 62, NULL),
(4174, 5, 'SIFT14153', 299, 63, NULL),
(4175, 9, 'SIFT14157', 299, 64, NULL),
(4176, 8, 'SIFT14173', 299, 65, NULL),
(4177, 9, 'SIFT14155', 299, 66, NULL),
(4178, 9, 'SIFT14137', 299, 67, NULL),
(4179, 8, 'SIFT14178', 299, 68, NULL),
(4180, 8, 'SIFT14166', 299, 69, NULL),
(4181, 8, 'SIFT14129', 299, 70, NULL),
(4182, 4, 'SIFT14133', 299, 71, NULL),
(4183, 5, 'SIFT14120', 299, 72, NULL),
(4184, 6, 'SIFT14175', 299, 73, NULL),
(4185, 5, 'SIFT14119', 299, 74, NULL),
(4186, 4, 'SIFT14183', 299, 75, NULL),
(4187, 4, 'SIFT1417', 299, 76, NULL),
(4188, 5, 'SIFT14180', 299, 77, NULL),
(4189, 5, 'SIFT14114', 299, 78, NULL),
(4190, 5, 'SIFT14127', 299, 79, NULL),
(4191, 5, 'SIFT14159', 299, 80, NULL),
(4192, 5, 'SIFT14179', 299, 81, NULL),
(4193, 5, 'SIFT14164', 299, 82, NULL),
(4194, 7, 'SIFT14140', 299, 83, NULL),
(4195, 8, 'SIFT14111', 299, 84, NULL),
(4196, 8, 'SIFT14131', 299, 85, NULL),
(4197, 9, 'SIFT14138', 299, 86, NULL),
(4198, 9, 'SIFT1413', 299, 87, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `notes_generale`
--

CREATE TABLE `notes_generale` (
  `id_note_generale` int(11) NOT NULL,
  `tpe` float DEFAULT NULL,
  `cc` float DEFAULT NULL,
  `tp` float DEFAULT NULL,
  `Synthese` float DEFAULT NULL,
  `note_generale` float DEFAULT NULL,
  `pourcentages` varchar(15) NOT NULL,
  `etudiant_id` int(11) NOT NULL,
  `ec_id` int(11) NOT NULL,
  `annee_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `notes_generale`
--

INSERT INTO `notes_generale` (`id_note_generale`, `tpe`, `cc`, `tp`, `Synthese`, `note_generale`, `pourcentages`, `etudiant_id`, `ec_id`, `annee_id`) VALUES
(390, NULL, 10, NULL, 12, 11.4, '0_30_0_70', 7, 7, 2),
(391, NULL, 14, NULL, 10, 11.2, '0_30_0_70', 8, 7, 2),
(392, NULL, 18, NULL, 10, 12.4, '0_30_0_70', 9, 7, 2),
(393, NULL, 12, NULL, 12, 12, '0_30_0_70', 10, 7, 2),
(394, NULL, 12, NULL, 11, 11.3, '0_30_0_70', 11, 7, 2),
(395, NULL, 10, NULL, 15, 13.5, '0_30_0_70', 12, 7, 2),
(396, NULL, 13, NULL, 13, 13, '0_30_0_70', 13, 7, 2),
(397, NULL, NULL, NULL, 14, NULL, '0_30_0_70', 14, 7, 2),
(398, NULL, 14, NULL, 14, 14, '0_30_0_70', 15, 7, 2),
(399, NULL, 12, NULL, 11, 11.3, '0_30_0_70', 16, 7, 2),
(400, NULL, 14, NULL, 9, 10.5, '0_30_0_70', 17, 7, 2),
(401, NULL, 10, NULL, 14, 12.8, '0_30_0_70', 18, 7, 2),
(402, NULL, 17, NULL, 14, 14.9, '0_30_0_70', 19, 7, 2),
(403, NULL, 11, NULL, 8, 8.9, '0_30_0_70', 20, 7, 2),
(404, NULL, 13, NULL, 10, 10.9, '0_30_0_70', 21, 7, 2),
(405, NULL, 15, NULL, 9, 10.8, '0_30_0_70', 22, 7, 2),
(406, NULL, 14, NULL, 7, 9.1, '0_30_0_70', 23, 7, 2),
(407, NULL, 12, NULL, 14, 13.4, '0_30_0_70', 24, 7, 2),
(408, NULL, 14, NULL, 14, NULL, '0_30_0_70', 25, 7, 2),
(409, NULL, 14, NULL, 14, NULL, '0_30_0_70', 26, 7, 2),
(410, NULL, 11, NULL, 14, NULL, '0_30_0_70', 27, 7, 2),
(411, NULL, 13, NULL, 14, NULL, '0_30_0_70', 28, 7, 2),
(412, NULL, 15, NULL, 14, NULL, '0_30_0_70', 29, 7, 2),
(413, NULL, 10, NULL, 14, NULL, '0_30_0_70', 30, 7, 2),
(414, NULL, 12, NULL, 14, NULL, '0_30_0_70', 31, 7, 2),
(415, NULL, 17, NULL, 14, NULL, '0_30_0_70', 32, 7, 2),
(416, NULL, 12, NULL, 14, NULL, '0_30_0_70', 33, 7, 2),
(417, NULL, 9, NULL, 14, NULL, '0_30_0_70', 34, 7, 2),
(418, NULL, 8, NULL, 14, NULL, '0_30_0_70', 35, 7, 2),
(419, NULL, 12, NULL, 14, NULL, '0_30_0_70', 36, 7, 2),
(420, NULL, 7, NULL, 14, NULL, '0_30_0_70', 37, 7, 2),
(421, NULL, 12, NULL, 14, NULL, '0_30_0_70', 38, 7, 2),
(422, NULL, 13, NULL, 14, NULL, '0_30_0_70', 39, 7, 2),
(423, NULL, 15, NULL, 14, NULL, '0_30_0_70', 40, 7, 2),
(424, NULL, 14, NULL, 14, NULL, '0_30_0_70', 41, 7, 2),
(425, NULL, 16, NULL, 14, NULL, '0_30_0_70', 42, 7, 2),
(426, NULL, 12, NULL, 14, NULL, '0_30_0_70', 43, 7, 2),
(427, NULL, 10, NULL, 14, NULL, '0_30_0_70', 44, 7, 2),
(428, NULL, 14, NULL, 14, NULL, '0_30_0_70', 45, 7, 2),
(429, NULL, 10, NULL, 14, NULL, '0_30_0_70', 46, 7, 2),
(430, NULL, 19, NULL, 14, NULL, '0_30_0_70', 47, 7, 2),
(431, NULL, 12, NULL, 14, NULL, '0_30_0_70', 48, 7, 2),
(432, NULL, 13, NULL, 14, NULL, '0_30_0_70', 49, 7, 2),
(433, NULL, 14, NULL, 14, NULL, '0_30_0_70', 50, 7, 2),
(434, NULL, 12, NULL, 14, NULL, '0_30_0_70', 51, 7, 2),
(435, NULL, 14, NULL, 14, NULL, '0_30_0_70', 52, 7, 2),
(436, NULL, 14, NULL, 14, NULL, '0_30_0_70', 53, 7, 2),
(437, NULL, 15, NULL, 14, NULL, '0_30_0_70', 54, 7, 2),
(438, NULL, 10, NULL, 14, NULL, '0_30_0_70', 55, 7, 2),
(439, NULL, 14, NULL, 14, NULL, '0_30_0_70', 56, 7, 2),
(440, NULL, 13, NULL, 14, NULL, '0_30_0_70', 57, 7, 2),
(441, NULL, 15, NULL, 14, NULL, '0_30_0_70', 58, 7, 2),
(442, NULL, 13, NULL, 14, NULL, '0_30_0_70', 59, 7, 2),
(443, NULL, 14, NULL, 14, NULL, '0_30_0_70', 60, 7, 2),
(444, NULL, 18, NULL, 14, NULL, '0_30_0_70', 61, 7, 2),
(445, NULL, 12, NULL, 14, NULL, '0_30_0_70', 62, 7, 2),
(446, NULL, 14, NULL, 14, NULL, '0_30_0_70', 63, 7, 2),
(447, NULL, 10, NULL, 14, NULL, '0_30_0_70', 64, 7, 2),
(448, NULL, 17, NULL, 14, NULL, '0_30_0_70', 65, 7, 2),
(449, NULL, 11, NULL, 14, NULL, '0_30_0_70', 66, 7, 2),
(450, NULL, 12, NULL, 14, NULL, '0_30_0_70', 67, 7, 2),
(451, NULL, 14, NULL, 14, NULL, '0_30_0_70', 68, 7, 2),
(452, NULL, 11, NULL, 14, NULL, '0_30_0_70', 69, 7, 2),
(453, NULL, 13, NULL, 14, NULL, '0_30_0_70', 70, 7, 2),
(454, NULL, 14, NULL, 14, NULL, '0_30_0_70', 71, 7, 2),
(455, NULL, 10, NULL, 14, NULL, '0_30_0_70', 72, 7, 2),
(456, NULL, 6, NULL, 14, NULL, '0_30_0_70', 73, 7, 2),
(457, NULL, 15, NULL, 14, NULL, '0_30_0_70', 74, 7, 2),
(458, NULL, 10, NULL, 14, NULL, '0_30_0_70', 75, 7, 2),
(459, NULL, 14, NULL, 14, NULL, '0_30_0_70', 76, 7, 2),
(460, NULL, 12, NULL, 14, NULL, '0_30_0_70', 77, 7, 2),
(461, NULL, 10, NULL, 14, NULL, '0_30_0_70', 78, 7, 2),
(462, NULL, 15, NULL, 14, NULL, '0_30_0_70', 79, 7, 2),
(463, NULL, 9, NULL, 14, NULL, '0_30_0_70', 80, 7, 2),
(464, NULL, 7, NULL, 14, NULL, '0_30_0_70', 81, 7, 2),
(465, NULL, 12, NULL, 14, NULL, '0_30_0_70', 82, 7, 2),
(466, NULL, 18, NULL, 14, NULL, '0_30_0_70', 83, 7, 2),
(467, NULL, 14, NULL, 14, NULL, '0_30_0_70', 84, 7, 2),
(468, NULL, 12, NULL, 14, NULL, '0_30_0_70', 85, 7, 2),
(469, NULL, 10, NULL, 14, NULL, '0_30_0_70', 86, 7, 2),
(470, NULL, 12, NULL, 14, NULL, '0_30_0_70', 87, 7, 2),
(471, NULL, 10, NULL, 14, NULL, '0_30_0_70', 88, 7, 2),
(472, NULL, 14, NULL, 14, NULL, '0_30_0_70', 89, 7, 2),
(473, NULL, 11, NULL, 14, NULL, '0_30_0_70', 90, 7, 2),
(474, NULL, 13, NULL, 14, NULL, '0_30_0_70', 91, 7, 2),
(475, NULL, 14, NULL, 14, NULL, '0_30_0_70', 92, 7, 2),
(476, NULL, 15, NULL, 14, NULL, '0_30_0_70', 93, 7, 2),
(477, NULL, 10, NULL, 12, 11.4, '0_30_0_70', 7, 6, 2),
(478, NULL, 12, NULL, 14, 13.4, '0_30_0_70', 8, 6, 2),
(479, NULL, 14, NULL, 9, 10.5, '0_30_0_70', 9, 6, 2),
(480, NULL, 13, NULL, 10, 10.9, '0_30_0_70', 10, 6, 2),
(481, NULL, 14, NULL, 15, 14.7, '0_30_0_70', 11, 6, 2),
(482, NULL, 14, NULL, 12, 12.6, '0_30_0_70', 12, 6, 2),
(483, NULL, 10, NULL, 16, 14.2, '0_30_0_70', 13, 6, 2),
(484, NULL, 13, NULL, 18, 16.5, '0_30_0_70', 14, 6, 2),
(485, NULL, 14, NULL, 10, 11.2, '0_30_0_70', 15, 6, 2),
(486, NULL, 10, NULL, 11, 10.7, '0_30_0_70', 16, 6, 2),
(487, NULL, 14, NULL, 12, 12.6, '0_30_0_70', 17, 6, 2),
(488, NULL, 14, NULL, 14, 14, '0_30_0_70', 18, 6, 2),
(489, NULL, 10, NULL, 17, 14.9, '0_30_0_70', 19, 6, 2),
(490, NULL, 11, NULL, 9, 9.6, '0_30_0_70', 20, 6, 2),
(491, NULL, 12, NULL, 7, 8.5, '0_30_0_70', 21, 6, 2),
(492, NULL, 9, NULL, 13, 11.8, '0_30_0_70', 22, 6, 2),
(493, NULL, 8, NULL, 6, 6.6, '0_30_0_70', 23, 6, 2),
(494, NULL, 10, NULL, 15, 13.5, '0_30_0_70', 24, 6, 2),
(495, NULL, 15, NULL, 8, 10.1, '0_30_0_70', 25, 6, 2),
(496, NULL, 10, NULL, 12, 11.4, '0_30_0_70', 26, 6, 2),
(497, NULL, 9, NULL, 13, 11.8, '0_30_0_70', 27, 6, 2),
(498, NULL, 13, NULL, 18, 16.5, '0_30_0_70', 28, 6, 2),
(499, NULL, 14, NULL, 9, 10.5, '0_30_0_70', 29, 6, 2),
(500, NULL, 15, NULL, 15, 15, '0_30_0_70', 30, 6, 2),
(501, NULL, 10, NULL, 8, 8.6, '0_30_0_70', 31, 6, 2),
(502, NULL, 12, NULL, 12, 12, '0_30_0_70', 32, 6, 2),
(503, NULL, 15, NULL, 7, 9.4, '0_30_0_70', 33, 6, 2),
(504, NULL, 10, NULL, 15, 13.5, '0_30_0_70', 34, 6, 2),
(505, NULL, 10, NULL, 12, 11.4, '0_30_0_70', 35, 6, 2),
(506, NULL, 18, NULL, 16, 16.6, '0_30_0_70', 36, 6, 2),
(507, NULL, 14, NULL, 19, 17.5, '0_30_0_70', 37, 6, 2),
(508, NULL, 12, NULL, 15, 14.1, '0_30_0_70', 38, 6, 2),
(509, NULL, 14, NULL, 11, 11.9, '0_30_0_70', 39, 6, 2),
(510, NULL, 12, NULL, 10, 10.6, '0_30_0_70', 40, 6, 2),
(511, NULL, 14, NULL, 12, 12.6, '0_30_0_70', 41, 6, 2),
(512, NULL, 13, NULL, 13, 13, '0_30_0_70', 42, 6, 2),
(513, NULL, 14, NULL, 15, 14.7, '0_30_0_70', 43, 6, 2),
(514, NULL, 12, NULL, 12, 12, '0_30_0_70', 44, 6, 2),
(515, NULL, 14, NULL, 10, 11.2, '0_30_0_70', 45, 6, 2),
(516, NULL, 12, NULL, 14, 13.4, '0_30_0_70', 46, 6, 2),
(517, NULL, 14, NULL, 13, 13.3, '0_30_0_70', 47, 6, 2),
(518, NULL, 15, NULL, 15, 15, '0_30_0_70', 48, 6, 2),
(519, NULL, 10, NULL, 11, 10.7, '0_30_0_70', 49, 6, 2),
(520, NULL, 11, NULL, 14, 13.1, '0_30_0_70', 50, 6, 2),
(521, NULL, 9, NULL, 18, 15.3, '0_30_0_70', 51, 6, 2),
(522, NULL, 15, NULL, 10, 11.5, '0_30_0_70', 52, 6, 2),
(523, NULL, 18, NULL, 13, 14.5, '0_30_0_70', 53, 6, 2),
(524, NULL, 12, NULL, 19, 16.9, '0_30_0_70', 54, 6, 2),
(525, NULL, 12, NULL, 18, 16.2, '0_30_0_70', 55, 6, 2),
(526, NULL, 13, NULL, 17, 15.8, '0_30_0_70', 56, 6, 2),
(527, NULL, 14, NULL, 10, 11.2, '0_30_0_70', 57, 6, 2),
(528, NULL, 10, NULL, 12, 11.4, '0_30_0_70', 58, 6, 2),
(529, NULL, 12, NULL, 16, 14.8, '0_30_0_70', 59, 6, 2),
(530, NULL, 10, NULL, 19, 16.3, '0_30_0_70', 60, 6, 2),
(531, NULL, 14, NULL, 9, 10.5, '0_30_0_70', 61, 6, 2),
(532, NULL, 15, NULL, 15, 15, '0_30_0_70', 62, 6, 2),
(533, NULL, 9, NULL, 18, 15.3, '0_30_0_70', 63, 6, 2),
(534, NULL, 7, NULL, 17, 14, '0_30_0_70', 64, 6, 2),
(535, NULL, 12, NULL, 10, 10.6, '0_30_0_70', 65, 6, 2),
(536, NULL, 8, NULL, 10, 9.4, '0_30_0_70', 66, 6, 2),
(537, NULL, 12, NULL, 12, 12, '0_30_0_70', 67, 6, 2),
(538, NULL, 12, NULL, 16, 14.8, '0_30_0_70', 68, 6, 2),
(539, NULL, 9, NULL, 15, 13.2, '0_30_0_70', 69, 6, 2),
(540, NULL, 12, NULL, 18, 16.2, '0_30_0_70', 70, 6, 2),
(541, NULL, 14, NULL, 13, 13.3, '0_30_0_70', 71, 6, 2),
(542, NULL, 12, NULL, 15, 14.1, '0_30_0_70', 72, 6, 2),
(543, NULL, 14, NULL, 10, 11.2, '0_30_0_70', 73, 6, 2),
(544, NULL, 12, NULL, 12, 12, '0_30_0_70', 74, 6, 2),
(545, NULL, 14, NULL, 15, 14.7, '0_30_0_70', 75, 6, 2),
(546, NULL, 16, NULL, 15, 15.3, '0_30_0_70', 76, 6, 2),
(547, NULL, 12, NULL, 10, 10.6, '0_30_0_70', 77, 6, 2),
(548, NULL, 14, NULL, 16, 15.4, '0_30_0_70', 78, 6, 2),
(549, NULL, 10, NULL, 15, 13.5, '0_30_0_70', 79, 6, 2),
(550, NULL, 9, NULL, 9, 9, '0_30_0_70', 80, 6, 2),
(551, NULL, 12, NULL, 18, 16.2, '0_30_0_70', 81, 6, 2),
(552, NULL, 17, NULL, 15, 15.6, '0_30_0_70', 82, 6, 2),
(553, NULL, 13, NULL, 14, 13.7, '0_30_0_70', 83, 6, 2),
(554, NULL, 14, NULL, 12, 12.6, '0_30_0_70', 84, 6, 2),
(555, NULL, 15, NULL, 16, 15.7, '0_30_0_70', 85, 6, 2),
(556, NULL, 18, NULL, 14, 15.2, '0_30_0_70', 86, 6, 2),
(557, NULL, 19, NULL, 12, 14.1, '0_30_0_70', 87, 6, 2),
(558, NULL, 8, NULL, 10, 9.4, '0_30_0_70', 88, 6, 2),
(559, NULL, 16, NULL, 11, 12.5, '0_30_0_70', 89, 6, 2),
(560, NULL, 17, NULL, 12, 13.5, '0_30_0_70', 90, 6, 2),
(561, NULL, 15, NULL, 16, 15.7, '0_30_0_70', 91, 6, 2),
(562, NULL, 16, NULL, 18, 17.4, '0_30_0_70', 92, 6, 2),
(563, NULL, 15, NULL, 10, 11.5, '0_30_0_70', 93, 6, 2),
(564, NULL, NULL, NULL, 12, NULL, '0_30_0_70', 7, 12, 2),
(565, NULL, NULL, NULL, 12, NULL, '0_30_0_70', 8, 12, 2),
(566, NULL, NULL, NULL, 12, NULL, '0_30_0_70', 9, 12, 2),
(567, NULL, NULL, NULL, 12, NULL, '0_30_0_70', 10, 12, 2),
(568, NULL, NULL, NULL, 12, NULL, '0_30_0_70', 11, 12, 2),
(569, NULL, NULL, NULL, 12, NULL, '0_30_0_70', 12, 12, 2),
(570, NULL, NULL, NULL, 12, NULL, '0_30_0_70', 13, 12, 2),
(571, NULL, NULL, NULL, 12, NULL, '0_30_0_70', 14, 12, 2),
(572, NULL, NULL, NULL, 12, NULL, '0_30_0_70', 15, 12, 2),
(573, NULL, NULL, NULL, 12, NULL, '0_30_0_70', 16, 12, 2),
(574, NULL, NULL, NULL, 12, NULL, '0_30_0_70', 17, 12, 2),
(575, NULL, NULL, NULL, 12, NULL, '0_30_0_70', 18, 12, 2),
(576, NULL, NULL, NULL, 12, NULL, '0_30_0_70', 19, 12, 2),
(577, NULL, NULL, NULL, 12, NULL, '0_30_0_70', 20, 12, 2),
(578, NULL, NULL, NULL, 12, NULL, '0_30_0_70', 21, 12, 2),
(579, NULL, NULL, NULL, 12, NULL, '0_30_0_70', 22, 12, 2),
(580, NULL, NULL, NULL, 12, NULL, '0_30_0_70', 23, 12, 2),
(581, NULL, NULL, NULL, 12, NULL, '0_30_0_70', 24, 12, 2),
(582, NULL, NULL, NULL, 12, NULL, '0_30_0_70', 25, 12, 2),
(583, NULL, NULL, NULL, 12, NULL, '0_30_0_70', 26, 12, 2),
(584, NULL, NULL, NULL, 12, NULL, '0_30_0_70', 27, 12, 2),
(585, NULL, NULL, NULL, 12, NULL, '0_30_0_70', 28, 12, 2),
(586, NULL, NULL, NULL, 12, NULL, '0_30_0_70', 29, 12, 2),
(587, NULL, NULL, NULL, 12, NULL, '0_30_0_70', 30, 12, 2),
(588, NULL, NULL, NULL, 12, NULL, '0_30_0_70', 31, 12, 2),
(589, NULL, NULL, NULL, 12, NULL, '0_30_0_70', 32, 12, 2),
(590, NULL, NULL, NULL, 12, NULL, '0_30_0_70', 33, 12, 2),
(591, NULL, NULL, NULL, 12, NULL, '0_30_0_70', 34, 12, 2),
(592, NULL, NULL, NULL, 12, NULL, '0_30_0_70', 35, 12, 2),
(593, NULL, NULL, NULL, 12, NULL, '0_30_0_70', 36, 12, 2),
(594, NULL, NULL, NULL, 12, NULL, '0_30_0_70', 37, 12, 2),
(595, NULL, NULL, NULL, 12, NULL, '0_30_0_70', 38, 12, 2),
(596, NULL, NULL, NULL, 12, NULL, '0_30_0_70', 39, 12, 2),
(597, NULL, NULL, NULL, 12, NULL, '0_30_0_70', 40, 12, 2),
(598, NULL, NULL, NULL, 12, NULL, '0_30_0_70', 41, 12, 2),
(599, NULL, NULL, NULL, 12, NULL, '0_30_0_70', 42, 12, 2),
(600, NULL, NULL, NULL, 12, NULL, '0_30_0_70', 43, 12, 2),
(601, NULL, NULL, NULL, 12, NULL, '0_30_0_70', 44, 12, 2),
(602, NULL, NULL, NULL, 12, NULL, '0_30_0_70', 45, 12, 2),
(603, NULL, NULL, NULL, 12, NULL, '0_30_0_70', 46, 12, 2),
(604, NULL, NULL, NULL, 12, NULL, '0_30_0_70', 47, 12, 2),
(605, NULL, NULL, NULL, 12, NULL, '0_30_0_70', 48, 12, 2),
(606, NULL, NULL, NULL, 12, NULL, '0_30_0_70', 49, 12, 2),
(607, NULL, NULL, NULL, 12, NULL, '0_30_0_70', 50, 12, 2),
(608, NULL, NULL, NULL, 10, NULL, '0_30_0_70', 51, 12, 2),
(609, NULL, NULL, NULL, 10, NULL, '0_30_0_70', 52, 12, 2),
(610, NULL, NULL, NULL, 10, NULL, '0_30_0_70', 53, 12, 2),
(611, NULL, NULL, NULL, 10, NULL, '0_30_0_70', 54, 12, 2),
(612, NULL, NULL, NULL, 10, NULL, '0_30_0_70', 55, 12, 2),
(613, NULL, NULL, NULL, 10, NULL, '0_30_0_70', 56, 12, 2),
(614, NULL, NULL, NULL, 10, NULL, '0_30_0_70', 57, 12, 2),
(615, NULL, NULL, NULL, 10, NULL, '0_30_0_70', 58, 12, 2),
(616, NULL, NULL, NULL, 10, NULL, '0_30_0_70', 59, 12, 2),
(617, NULL, NULL, NULL, 10, NULL, '0_30_0_70', 60, 12, 2),
(618, NULL, NULL, NULL, 10, NULL, '0_30_0_70', 61, 12, 2),
(619, NULL, NULL, NULL, 10, NULL, '0_30_0_70', 62, 12, 2),
(620, NULL, NULL, NULL, 10, NULL, '0_30_0_70', 63, 12, 2),
(621, NULL, NULL, NULL, 10, NULL, '0_30_0_70', 64, 12, 2),
(622, NULL, NULL, NULL, 10, NULL, '0_30_0_70', 65, 12, 2),
(623, NULL, NULL, NULL, 10, NULL, '0_30_0_70', 66, 12, 2),
(624, NULL, NULL, NULL, 10, NULL, '0_30_0_70', 67, 12, 2),
(625, NULL, NULL, NULL, 9, NULL, '0_30_0_70', 68, 12, 2),
(626, NULL, NULL, NULL, 9, NULL, '0_30_0_70', 69, 12, 2),
(627, NULL, NULL, NULL, 9, NULL, '0_30_0_70', 70, 12, 2),
(628, NULL, NULL, NULL, 9, NULL, '0_30_0_70', 71, 12, 2),
(629, NULL, NULL, NULL, 9, NULL, '0_30_0_70', 72, 12, 2),
(630, NULL, NULL, NULL, 9, NULL, '0_30_0_70', 73, 12, 2),
(631, NULL, NULL, NULL, 9, NULL, '0_30_0_70', 74, 12, 2),
(632, NULL, NULL, NULL, 9, NULL, '0_30_0_70', 75, 12, 2),
(633, NULL, NULL, NULL, 9, NULL, '0_30_0_70', 76, 12, 2),
(634, NULL, NULL, NULL, 15, NULL, '0_30_0_70', 77, 12, 2),
(635, NULL, NULL, NULL, 15, NULL, '0_30_0_70', 78, 12, 2),
(636, NULL, NULL, NULL, 15, NULL, '0_30_0_70', 79, 12, 2),
(637, NULL, NULL, NULL, 15, NULL, '0_30_0_70', 80, 12, 2),
(638, NULL, NULL, NULL, 15, NULL, '0_30_0_70', 81, 12, 2),
(639, NULL, NULL, NULL, 15, NULL, '0_30_0_70', 82, 12, 2),
(640, NULL, NULL, NULL, 15, NULL, '0_30_0_70', 83, 12, 2),
(641, NULL, NULL, NULL, 15, NULL, '0_30_0_70', 84, 12, 2),
(642, NULL, NULL, NULL, 15, NULL, '0_30_0_70', 85, 12, 2),
(643, NULL, NULL, NULL, 15, NULL, '0_30_0_70', 86, 12, 2),
(644, NULL, NULL, NULL, 13, NULL, '0_30_0_70', 87, 12, 2),
(645, NULL, NULL, NULL, 13, NULL, '0_30_0_70', 88, 12, 2),
(646, NULL, NULL, NULL, 13, NULL, '0_30_0_70', 89, 12, 2),
(647, NULL, NULL, NULL, 13, NULL, '0_30_0_70', 90, 12, 2),
(648, NULL, NULL, NULL, 13, NULL, '0_30_0_70', 91, 12, 2),
(649, NULL, NULL, NULL, 13, NULL, '0_30_0_70', 92, 12, 2),
(650, NULL, NULL, NULL, 13, NULL, '0_30_0_70', 93, 12, 2),
(651, NULL, NULL, NULL, 13, NULL, '0_30_0_70', 94, 12, 2),
(652, NULL, 12, NULL, 14, 13.6, '0_20_0_80', 1, 16, 2),
(653, NULL, 14, NULL, 14, 14, '0_20_0_80', 2, 16, 2),
(654, NULL, 15, NULL, 14, 14.2, '0_20_0_80', 3, 16, 2),
(655, NULL, 11, NULL, 14, 13.4, '0_20_0_80', 4, 16, 2),
(656, NULL, 10, NULL, 14, 13.2, '0_20_0_80', 5, 16, 2),
(657, NULL, 14, NULL, 14, 14, '0_20_0_80', 6, 16, 2),
(658, NULL, 6, NULL, 14, 12.4, '0_20_0_80', 7, 16, 2),
(659, NULL, 7, NULL, 14, 12.6, '0_20_0_80', 8, 16, 2),
(660, NULL, 3, NULL, 14, 11.8, '0_20_0_80', 9, 16, 2),
(661, NULL, 15, NULL, 14, 14.2, '0_20_0_80', 10, 16, 2),
(662, NULL, 11, NULL, 14, 13.4, '0_20_0_80', 11, 16, 2),
(663, NULL, 14, NULL, 14, 14, '0_20_0_80', 12, 16, 2),
(664, NULL, 15, NULL, 14, 14.2, '0_20_0_80', 13, 16, 2),
(665, NULL, 16, NULL, 14, 14.4, '0_20_0_80', 14, 16, 2),
(666, NULL, 15, NULL, 14, 14.2, '0_20_0_80', 15, 16, 2),
(667, NULL, 14, NULL, 14, 14, '0_20_0_80', 16, 16, 2),
(668, NULL, 15, NULL, 14, 14.2, '0_20_0_80', 17, 16, 2),
(669, NULL, 13, NULL, 14, 13.8, '0_20_0_80', 18, 16, 2),
(670, NULL, 13, NULL, 14, 13.8, '0_20_0_80', 19, 16, 2),
(671, NULL, 16, NULL, 14, 14.4, '0_20_0_80', 20, 16, 2),
(672, NULL, 14, NULL, 14, 14, '0_20_0_80', 21, 16, 2),
(673, NULL, 19, NULL, 14, 15, '0_20_0_80', 22, 16, 2),
(674, NULL, 13, NULL, 14, 13.8, '0_20_0_80', 23, 16, 2),
(675, NULL, 13, NULL, 14, 13.8, '0_20_0_80', 24, 16, 2),
(676, NULL, 15, NULL, 14, 14.2, '0_20_0_80', 25, 16, 2),
(677, NULL, 16, NULL, 14, 14.4, '0_20_0_80', 26, 16, 2),
(678, NULL, 13, NULL, 14, 13.8, '0_20_0_80', 27, 16, 2),
(679, NULL, 15, NULL, 14, 14.2, '0_20_0_80', 28, 16, 2),
(680, NULL, 14, NULL, 14, 14, '0_20_0_80', 29, 16, 2),
(681, NULL, 19, NULL, 14, 15, '0_20_0_80', 30, 16, 2),
(682, NULL, 19, NULL, 14, 15, '0_20_0_80', 31, 16, 2),
(683, NULL, 17, NULL, 14, 14.6, '0_20_0_80', 32, 16, 2),
(684, NULL, 14, NULL, 14, 14, '0_20_0_80', 33, 16, 2),
(685, NULL, 14, NULL, 14, 14, '0_20_0_80', 34, 16, 2),
(686, NULL, 18, NULL, 14, 14.8, '0_20_0_80', 35, 16, 2),
(687, NULL, 19, NULL, 14, 15, '0_20_0_80', 36, 16, 2),
(688, NULL, 14, NULL, 14, 14, '0_20_0_80', 37, 16, 2),
(689, NULL, 15, NULL, 14, 14.2, '0_20_0_80', 38, 16, 2),
(690, NULL, 13, NULL, 14, 13.8, '0_20_0_80', 39, 16, 2),
(691, NULL, 15, NULL, 14, 14.2, '0_20_0_80', 40, 16, 2),
(692, NULL, 13, NULL, 14, 13.8, '0_20_0_80', 41, 16, 2),
(693, NULL, 15, NULL, 14, 14.2, '0_20_0_80', 42, 16, 2),
(694, NULL, 15, NULL, 14, 14.2, '0_20_0_80', 43, 16, 2),
(695, NULL, 13, NULL, 14, 13.8, '0_20_0_80', 44, 16, 2),
(696, NULL, 18, NULL, 14, 14.8, '0_20_0_80', 45, 16, 2),
(697, NULL, 15, NULL, 14, 14.2, '0_20_0_80', 46, 16, 2),
(698, NULL, 11, NULL, 14, 13.4, '0_20_0_80', 47, 16, 2),
(699, NULL, 13, NULL, 14, 13.8, '0_20_0_80', 48, 16, 2),
(700, NULL, 14, NULL, 14, 14, '0_20_0_80', 49, 16, 2),
(701, NULL, 15, NULL, 14, 14.2, '0_20_0_80', 50, 16, 2),
(702, NULL, 11, NULL, 14, 13.4, '0_20_0_80', 51, 16, 2),
(703, NULL, 14, NULL, 14, 14, '0_20_0_80', 52, 16, 2),
(704, NULL, 18, NULL, 14, 14.8, '0_20_0_80', 53, 16, 2),
(705, NULL, 11, NULL, 14, 13.4, '0_20_0_80', 54, 16, 2),
(706, NULL, 11, NULL, 14, 13.4, '0_20_0_80', 55, 16, 2),
(707, NULL, 14, NULL, 14, 14, '0_20_0_80', 56, 16, 2),
(708, NULL, 13, NULL, 14, 13.8, '0_20_0_80', 57, 16, 2),
(709, NULL, 14, NULL, 14, 14, '0_20_0_80', 58, 16, 2),
(710, NULL, 14, NULL, 14, 14, '0_20_0_80', 59, 16, 2),
(711, NULL, 13, NULL, 14, 13.8, '0_20_0_80', 60, 16, 2),
(712, NULL, 13, NULL, 14, 13.8, '0_20_0_80', 61, 16, 2),
(713, NULL, 18, NULL, 14, 14.8, '0_20_0_80', 62, 16, 2),
(714, NULL, 16, NULL, 14, 14.4, '0_20_0_80', 63, 16, 2),
(715, NULL, 14, NULL, 14, 14, '0_20_0_80', 64, 16, 2),
(716, NULL, 18, NULL, 14, 14.8, '0_20_0_80', 65, 16, 2),
(717, NULL, 17, NULL, 14, 14.6, '0_20_0_80', 66, 16, 2),
(718, NULL, 14, NULL, 14, 14, '0_20_0_80', 67, 16, 2),
(719, NULL, 15, NULL, 14, 14.2, '0_20_0_80', 68, 16, 2),
(720, NULL, 14, NULL, 14, 14, '0_20_0_80', 69, 16, 2),
(721, NULL, 13, NULL, 14, 13.8, '0_20_0_80', 70, 16, 2),
(722, NULL, 12, NULL, 14, 13.6, '0_20_0_80', 71, 16, 2),
(723, NULL, 15, NULL, 14, 14.2, '0_20_0_80', 72, 16, 2),
(724, NULL, 15, NULL, 14, 14.2, '0_20_0_80', 73, 16, 2),
(725, NULL, 16, NULL, 14, 14.4, '0_20_0_80', 74, 16, 2),
(726, NULL, 12, NULL, 14, 13.6, '0_20_0_80', 75, 16, 2),
(727, NULL, 13, NULL, 14, 13.8, '0_20_0_80', 76, 16, 2),
(728, NULL, 13, NULL, 14, 13.8, '0_20_0_80', 77, 16, 2),
(729, NULL, 14, NULL, 14, 14, '0_20_0_80', 78, 16, 2),
(730, NULL, 11, NULL, 14, 13.4, '0_20_0_80', 79, 16, 2),
(731, NULL, 19, NULL, 14, 15, '0_20_0_80', 80, 16, 2),
(732, NULL, 18, NULL, 14, 14.8, '0_20_0_80', 81, 16, 2),
(733, NULL, 13, NULL, 14, 13.8, '0_20_0_80', 82, 16, 2),
(734, NULL, 15, NULL, 14, 14.2, '0_20_0_80', 83, 16, 2),
(735, NULL, 16, NULL, 14, 14.4, '0_20_0_80', 84, 16, 2),
(736, NULL, 12, NULL, 14, 13.6, '0_20_0_80', 85, 16, 2),
(737, NULL, 15, NULL, 14, 14.2, '0_20_0_80', 86, 16, 2),
(738, NULL, 12, NULL, 14, 13.6, '0_20_0_80', 87, 16, 2);

-- --------------------------------------------------------

--
-- Structure de la table `options`
--

CREATE TABLE `options` (
  `nomAplli` varchar(255) NOT NULL,
  `nomEtab` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `favicon` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `footer` text NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `copyright` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `parametres`
--

CREATE TABLE `parametres` (
  `id_parametre` int(11) NOT NULL,
  `nom_parametre` varchar(50) NOT NULL,
  `abreviation_parametre` varchar(25) NOT NULL,
  `logo_parametre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `parcours`
--

CREATE TABLE `parcours` (
  `id_parcour` int(11) NOT NULL,
  `abreviation_parcour` varchar(50) NOT NULL,
  `nom_parcour` varchar(255) NOT NULL,
  `mention_id` int(11) NOT NULL,
  `departement_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `parcours`
--

INSERT INTO `parcours` (`id_parcour`, `abreviation_parcour`, `nom_parcour`, `mention_id`, `departement_id`) VALUES
(5, 'GIN', 'Genie Informatique', 10, 1),
(6, 'GLO', 'Genie Logiciel', 10, 1),
(7, 'TELECOM', 'Télécommunication', 13, 1),
(8, 'RIN', 'Réseautique et Internet', 10, 1),
(9, 'ABB', 'Analyses Biologiques et Biochimiques', 14, 5),
(10, 'GEN', 'Génie de l’Environnement', 14, 5),
(11, 'IAB', 'Industries Alimentaires et Biotechnologiques', 14, 5),
(12, 'GME', 'Génie Mécanique', 18, 8),
(13, 'GEL', 'Génie Electrique', 18, 7),
(14, 'GTE', 'Génie Thermique et Energétique', 18, 4),
(15, 'MIP', 'Maintenance Industrielle et Productique', 18, 8),
(16, 'GCD', 'Géni Civil et Construction Durable', 27, 8),
(17, 'MEB', 'Maintenance des Équipements Biomédicaux ', 28, 7),
(18, 'GIM', 'Génie Industriel et Maintenance ', 18, 8),
(19, 'GBIO', 'Génie Biologique ', 14, 5);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `pays`
--

CREATE TABLE `pays` (
  `id_pays` int(11) NOT NULL,
  `nom_pays` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `pays`
--

INSERT INTO `pays` (`id_pays`, `nom_pays`) VALUES
(1, 'CAMEROUN'),
(2, 'TCHAD'),
(3, 'FRANCE');

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personnels`
--

CREATE TABLE `personnels` (
  `id_personnel` int(11) NOT NULL,
  `nom_prenom` varchar(100) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `departement_id` int(11) DEFAULT NULL,
  `grade_id` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `picture_url` text NOT NULL,
  `mobile_no` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `fonction_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `personnels`
--

INSERT INTO `personnels` (`id_personnel`, `nom_prenom`, `role_id`, `departement_id`, `grade_id`, `email`, `picture_url`, `mobile_no`, `address`, `fonction_id`) VALUES
(1, 'ADMIN_SIGI', 1, NULL, NULL, NULL, '', '', '', 0),
(2, 'M. Kani Djoulde', 6, 1, 1, 'kaniramand@gmail.com', '', '', '', 0),
(3, 'Dangbe Ezekiel', 6, 1, 2, 'dangbeezekiel@yahoo.fr', '', '', '', 0),
(5, 'Dr  FARIKOU ', 6, 2, 2, 'email@gmail.com', '', '', '', 0),
(6, 'BAKANG', 6, 2, 8, 'email1@gmail.com', '', '', '', 0),
(7, 'YAOUDAM', 6, 2, 5, 'email2@gmail.com', '', '', '', 0),
(9, 'Pr YENKE Blaise Omer', 6, 1, 5, 'email4@gmail.com', '', '', '', 0),
(10, 'TANGUE', 6, 1, 2, 'email5@gmail.com', '', '', '', 0),
(12, 'ABBOUBAKAR Hamadjam', 6, 1, 2, 'email7@gmail.com', '', '', '', 0),
(13, 'BATOURE Apollinaire ', 6, 1, 1, 'email8@gmail.com', '', '', '', 0),
(14, 'KOM KAMSU', 6, 2, 5, 'email9@gmail.com', '', '', '', 0),
(15, 'NDJAYA', 6, 2, 2, 'email10@gmail.com', '', '', '', 0),
(16, 'Pr NGONGANG', 6, 2, 5, 'email11@gmail.com', '', '', '', 0),
(17, 'Dr FENDJI Jean Louis ', 6, 1, 2, 'email12@gmail.com', '', '', '', 0),
(18, 'NDAM Ndjoya', 6, 1, 2, 'email13@gmail.com', '', '', '', 0),
(19, 'DJIDA ', 6, 1, 1, 'email14@gmail.com', '', '', '', 0),
(20, 'SAOUGOUM', 6, 1, 1, 'email15@gmail.com', '', '', '', 0),
(21, 'M. BENGA', 6, 2, 1, 'email16@gmail.com', '', '', '', 0),
(22, 'Mme Gré Marthe', 2, NULL, NULL, 'gre@gmail.com', '', '', '', 0),
(23, 'hassana K', 6, 2, NULL, 'hk@gmail.com', '', '', '', 0),
(24, 'KOGNE Rodrigue', 18, 1, 7, 'kogne@gmail.com', '', '', '', 0),
(32, 'Awoulka', 2, NULL, 7, 'charge@gmail.com', '', '', '', 0),
(36, 'Dompet', 2, 1, 7, 'dompet@gmail.com', '', '', '', 0),
(37, 'Dr NDONO ', 2, 5, 2, 'ndono@gmail.com', '', '', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `pieces_jointes`
--

CREATE TABLE `pieces_jointes` (
  `id_pj` int(11) NOT NULL,
  `nom_pj` varchar(255) NOT NULL,
  `type_pj` varchar(255) NOT NULL,
  `taille_pj` int(11) NOT NULL,
  `doc_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `plages`
--

CREATE TABLE `plages` (
  `id_plage` int(11) NOT NULL,
  `heure_debut` time(6) NOT NULL,
  `heure_fin` time(6) NOT NULL,
  `duree` int(11) NOT NULL,
  `rendu` varchar(100) NOT NULL,
  `type_plage_id` int(11) NOT NULL,
  `num_plage` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `plages`
--

INSERT INTO `plages` (`id_plage`, `heure_debut`, `heure_fin`, `duree`, `rendu`, `type_plage_id`, `num_plage`) VALUES
(8, '08:00:00.000000', '10:00:00.000000', 2, '08h-10h', 1, 1),
(9, '12:00:00.000000', '13:00:00.000000', 1, '12h-13h', 2, 2),
(10, '13:00:00.000000', '15:00:00.000000', 2, '13h-15h', 1, 3),
(11, '15:00:00.000000', '17:00:00.000000', 2, '15h-17h', 1, 4),
(12, '15:00:00.000000', '17:00:00.000000', 2, '15h-17h', 1, 1),
(13, '10:00:00.000000', '12:00:00.000000', 2, '10h-12h', 1, 2),
(14, '12:00:00.000000', '13:00:00.000000', 1, '12h-13h', 2, 3),
(15, '13:00:00.000000', '15:00:00.000000', 2, '13h-15h', 1, 4),
(16, '15:00:00.000000', '17:00:00.000000', 2, '15h-17h', 1, 5),
(17, '22:22:00.000000', '23:00:00.000000', 0, '22h-23h', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `plage_niv`
--

CREATE TABLE `plage_niv` (
  `id_plage_niv` int(11) NOT NULL,
  `niveau_id` int(11) NOT NULL,
  `plage_id` int(11) NOT NULL,
  `niv_par_id` int(11) NOT NULL,
  `num_group` int(11) NOT NULL,
  `etat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `plage_niv`
--

INSERT INTO `plage_niv` (`id_plage_niv`, `niveau_id`, `plage_id`, `niv_par_id`, `num_group`, `etat`) VALUES
(9, 5, 8, 11, 1, 0),
(10, 5, 9, 11, 1, 0),
(11, 5, 10, 11, 1, 0),
(12, 5, 11, 11, 1, 0),
(14, 5, 8, 11, 2, 1),
(15, 5, 13, 11, 2, 1),
(16, 5, 14, 11, 2, 1),
(17, 5, 15, 11, 2, 1),
(18, 5, 16, 11, 2, 1),
(20, 2, 8, 10, 1, 1),
(21, 2, 13, 10, 1, 1),
(22, 2, 14, 10, 1, 1),
(23, 2, 15, 10, 1, 1),
(24, 2, 16, 10, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `plannification`
--

CREATE TABLE `plannification` (
  `id_plannification` int(11) NOT NULL,
  `semaine_id` int(11) NOT NULL,
  `jour_id` int(11) NOT NULL,
  `plage_id` int(11) NOT NULL,
  `salle_id` int(11) NOT NULL,
  `ec_id` int(11) NOT NULL,
  `evolution` int(11) DEFAULT NULL,
  `n_groupe` int(11) NOT NULL,
  `type_planing` varchar(100) NOT NULL,
  `ens_prog` int(11) DEFAULT NULL,
  `groupe` int(11) NOT NULL,
  `heure_definit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `plannification`
--

INSERT INTO `plannification` (`id_plannification`, `semaine_id`, `jour_id`, `plage_id`, `salle_id`, `ec_id`, `evolution`, `n_groupe`, `type_planing`, `ens_prog`, `groupe`, `heure_definit`) VALUES
(811, 119, 1, 8, 1, 7, 2, 1, 'Cour', 2, 0, 0),
(812, 119, 1, 13, 1, 7, 4, 1, 'Cour', 2, 0, 0),
(813, 119, 1, 15, 1, 9, 2, 1, 'Cour', 12, 0, 0),
(814, 119, 1, 16, 1, 9, 4, 1, 'Cour', 12, 0, 0),
(815, 119, 2, 8, 1, 7, 6, 1, 'Cour', 2, 0, 0),
(816, 119, 2, 13, 1, 7, 8, 1, 'Cour', 2, 0, 0),
(817, 119, 2, 15, 1, 3, 0, 1, 'BIBLIOTHEQUE', NULL, 0, 0),
(818, 119, 2, 16, 1, 3, 0, 1, 'BIBLIOTHEQUE', NULL, 0, 0),
(819, 119, 3, 8, 4, 3, 2, 1, 'Cour', NULL, 0, 0),
(820, 119, 3, 13, 4, 3, 4, 1, 'Cour', NULL, 0, 0),
(821, 119, 3, 15, 1, 3, 0, 1, 'BIBLIOTHEQUE', NULL, 0, 0),
(822, 119, 3, 16, 1, 3, 0, 1, 'BIBLIOTHEQUE', NULL, 0, 0),
(823, 119, 4, 8, 4, 3, 6, 1, 'Cour', NULL, 0, 0),
(824, 119, 4, 13, 4, 3, 8, 1, 'Cour', NULL, 0, 0),
(825, 119, 4, 15, 1, 3, 0, 1, 'BIBLIOTHEQUE', NULL, 0, 0),
(826, 119, 4, 16, 1, 3, 0, 1, 'BIBLIOTHEQUE', NULL, 0, 0),
(827, 119, 5, 8, 4, 3, 10, 1, 'Cour', NULL, 0, 0),
(828, 119, 5, 13, 4, 3, 12, 1, 'Cour', NULL, 0, 0),
(829, 119, 5, 15, 1, 3, 0, 1, 'BIBLIOTHEQUE', NULL, 0, 0),
(830, 119, 5, 16, 1, 3, 0, 1, 'BIBLIOTHEQUE', NULL, 0, 0),
(831, 119, 6, 8, 1, 7, 10, 1, 'Cour', 2, 0, 0),
(832, 119, 6, 13, 1, 7, 12, 1, 'Cour', 2, 0, 0),
(837, 120, 1, 8, 1, 3, 14, 1, 'Cour', NULL, 0, 0),
(838, 120, 3, 15, 1, 3, 16, 1, 'Cour', 5, 0, 0),
(839, 120, 4, 8, 1, 3, 18, 1, 'Cour', NULL, 0, 0),
(840, 120, 5, 16, 1, 3, 20, 1, 'Cour', 21, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `posseder`
--

CREATE TABLE `posseder` (
  `id_posseder` int(11) NOT NULL,
  `personnel_id` int(11) DEFAULT NULL,
  `poste_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `posseder`
--

INSERT INTO `posseder` (`id_posseder`, `personnel_id`, `poste_id`) VALUES
(8, 6, 10),
(9, 7, 2),
(12, 10, 10),
(14, 12, 10),
(15, 13, 3),
(16, 14, 10),
(17, 15, 10),
(20, 18, 4),
(21, 19, 10),
(24, 5, 10),
(25, 21, 10),
(26, 17, 10),
(27, 2, 3),
(28, 9, 2),
(30, 22, 9),
(32, 8, 10),
(33, 23, 11),
(34, 3, 6),
(35, 16, 10),
(36, 24, 10),
(37, 27, 12),
(38, 27, 12),
(39, 27, 12),
(40, 27, 12),
(43, 32, 12),
(46, 36, 12),
(47, 37, 7);

-- --------------------------------------------------------

--
-- Structure de la table `postes`
--

CREATE TABLE `postes` (
  `id_poste` int(11) NOT NULL,
  `nom_poste` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `postes`
--

INSERT INTO `postes` (`id_poste`, `nom_poste`) VALUES
(1, 'DR'),
(2, 'CD'),
(3, 'RP'),
(4, 'CS'),
(5, 'DA'),
(6, 'DFI'),
(7, 'SAG'),
(9, 'SCOLARITE'),
(10, 'Aucun poste'),
(11, 'RD'),
(12, 'Cellule_examen');

-- --------------------------------------------------------

--
-- Structure de la table `probleme`
--

CREATE TABLE `probleme` (
  `id_probleme` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `statut` enum('en attente','resolu','non resolu','') NOT NULL DEFAULT 'en attente',
  `etat_urgence` varchar(50) NOT NULL DEFAULT 'pas urgent',
  `salle_id` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `date_modification` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `programme_jury`
--

CREATE TABLE `programme_jury` (
  `id_programme` int(11) NOT NULL,
  `id_plage` int(11) NOT NULL,
  `id_jour` int(11) NOT NULL,
  `id_snpj` int(11) NOT NULL,
  `id_jury` int(11) NOT NULL,
  `date_soutenance` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `prospection`
--

CREATE TABLE `prospection` (
  `id_prospection` int(11) NOT NULL,
  `transport` varchar(50) NOT NULL,
  `montant` int(11) NOT NULL,
  `personnel_id` int(11) NOT NULL,
  `annee_id` int(11) NOT NULL,
  `date_aller` date NOT NULL,
  `date_retour` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `prospection`
--

INSERT INTO `prospection` (`id_prospection`, `transport`, `montant`, `personnel_id`, `annee_id`, `date_aller`, `date_retour`) VALUES
(8, 'Bus', 120000, 2, 2, '2022-07-15', '2022-07-20');

-- --------------------------------------------------------

--
-- Structure de la table `publication`
--

CREATE TABLE `publication` (
  `id_publication` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `contenu` text NOT NULL,
  `date_publication` datetime NOT NULL DEFAULT current_timestamp(),
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `publication`
--

INSERT INTO `publication` (`id_publication`, `titre`, `contenu`, `date_publication`, `image`) VALUES
(1, 'COMMUNIQUE AUX ETUDIANTS DE GIN', 'Les étudiants donc les noms suivent sont priés de  rembourser le matériel emprunté car le délai est défectueux :<div><ol><li>Gonmoga Stephane</li><li>Caleb Sevani</li><li>Ted Bekeolo</li></ol>Ils doivent le rendre au plus tard demain matin pour éviter toutes sanctions. </div>', '2020-10-16 13:36:17', 'esmv.jpg'),
(3, 'COMMUNIQUE AUX ETUDIANTS', 'Bonjour chers etudiants.\r\nVous êtes informez que les élections du président de l\'AEIUT se tiendra <span style=\"font-weight: bold;\">mercredi le 20/12/2020. </span>A cet effet tous les étudiants doivent être présents pour le vote de leur candidat.Tous les étudiants  du niveau 2  sortant de l\'IUT de Ngaoundéré sont informés que la date de paiement des frais d\'adhésion a l\'AEIUT est fixe au 25/10/2020.e l\'IUT de Ngaoundéré sont informés que la date de paiement des frais d\'adhésion a l\'AEIUT est fixe au 25/10/2020.eur candidat.Tous les étudiants  du niveau 2  sortant de l\'IUT de Ngaoundéré sont informés que la date de paiement des frais d\'adhésion a l\'AEIUT es  <div><span style=\"font-weight: bold;\">c\'est obligatoire.</span></div>', '2020-10-15 11:52:23', NULL),
(4, 'COMMUNIQUE AUX ETUDIANTS', 'Tous les étudiants des mentions GBIO, GIM et GIN du niveau 2 de l\'IUT de Ngaoundere sont tenus de participer a un investissement humain qui aura lieu le jeudi 25 juin 2020 a partir de 8 heures precise sous la supervision de la SAG de l\'IUT et des encadreurs:<div><ol><li>M Ismail </li><li>M Um</li><li>M Kale</li></ol>Lieu de rassemblement bloc administratif de l\'IUT. la présence de tous les étudiants est obligatoire.<br></div>', '2020-10-07 14:55:05', 'entrée.jpg'),
(5, 'RATTRAPAGE REPROGRAMME', 'Tous les étudiants  du niveau 2  sortant de l\'IUT de Ngaoundéré sont informés que la date de paiement des frais d\'adhésion a l\'AEIUT est fixe au 25/10/2020.  <div><span style=\"font-weight: bold;\">c\'est obligatoire.</span></div>Tous les étudiants  du niveau 2  sortant de l\'IUT de Ngaoundéré sont informés que la date de paiement des frais d\'adhésion a l\'AEIUT est fixe au 25/10/2020.  <div><span style=\"font-weight: bold;\">c\'est obligatoire.</span></div>', '2020-10-17 17:05:34', NULL),
(6, 'COMMUNIQUE A TOUS LES ETUDIANTS DUT SORTANTS', 'Je tiens a vous informer que le nettoyage dans vos différentes salles de soutenances a déjà débuté et se termine aujourd\'hui <span style=\"font-weight: bold;\">le lundi 19 octobre a 17h</span>.<div>Respectez le temps imparti de travail et rendez l\'environnement propre aux membres et au Jury présents. </div><div><span style=\"font-weight: bold;\">A cet effet, le matériel de nettoyage est disponible dans mon bureau pour tous besoins. </span></div>', '2020-10-19 16:12:51', 'nettoyage.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `qr_code`
--

CREATE TABLE `qr_code` (
  `id_qr_code` int(11) NOT NULL,
  `libelle_qr_code` text NOT NULL,
  `dossier_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `qr_code`
--

INSERT INTO `qr_code` (`id_qr_code`, `libelle_qr_code`, `dossier_id`) VALUES
(1, 'images/qr_code/folder1_15I001IU.png', 1),
(2, 'images/qr_code/folder2_16I001IU.png', 2),
(3, 'images/qr_code/folder3_16I002IU.png', 3),
(4, 'images/qr_code/folder4_17I001IU.png', 4),
(5, 'images/qr_code/folder5_17I002IU.png', 5),
(6, 'images/qr_code/folder6_16I007IU.png', 6),
(7, 'images/qr_code/folder7_16I008IU.png', 7),
(8, 'images/qr_code/folder8_15I011IU.png', 8),
(9, 'images/qr_code/folder9_17I003IU.png', 9),
(10, 'images/qr_code/folder10_17I005IU.png', 10),
(11, 'images/qr_code/folder11_17I006IU.png', 11),
(12, 'images/qr_code/folder12_17I007IU.png', 12),
(13, 'images/qr_code/folder13_17I008IU.png', 13),
(14, 'images/qr_code/folder14_17I010IU.png', 14),
(15, 'images/qr_code/folder15_17I011IU.png', 15),
(16, 'images/qr_code/folder16_17I058IU.png', 16),
(17, 'images/qr_code/folder17_17I012IU.png', 17),
(18, 'images/qr_code/folder18_16I011IU.png', 18),
(19, 'images/qr_code/folder19_17I013IU.png', 19),
(20, 'images/qr_code/folder20_17I014IU.png', 20),
(21, 'images/qr_code/folder21_17I015IU.png', 21),
(22, 'images/qr_code/folder22_17I016IU.png', 22),
(23, 'images/qr_code/folder23_17I017IU.png', 23),
(24, 'images/qr_code/folder24_17I018IU.png', 24),
(25, 'images/qr_code/folder25_17I019IU.png', 25),
(26, 'images/qr_code/folder26_16I013IU.png', 26),
(27, 'images/qr_code/folder27_17I020IU.png', 27),
(28, 'images/qr_code/folder28_16I017IU.png', 28),
(29, 'images/qr_code/folder29_16I018IU.png', 29),
(30, 'images/qr_code/folder30_17I021IU.png', 30),
(31, 'images/qr_code/folder31_16I020IU.png', 31),
(32, 'images/qr_code/folder32_16I021IU.png', 32),
(33, 'images/qr_code/folder33_17I023IU.png', 33),
(34, 'images/qr_code/folder34_17I024IU.png', 34),
(35, 'images/qr_code/folder35_17I026IU.png', 35),
(36, 'images/qr_code/folder36_17I027IU.png', 36),
(37, 'images/qr_code/folder37_15I029IU.png', 37),
(38, 'images/qr_code/folder38_17I028IU.png', 38),
(39, 'images/qr_code/folder39_17I056IU.png', 39),
(40, 'images/qr_code/folder40_17I030IU.png', 40),
(41, 'images/qr_code/folder41_16I059IU.png', 41),
(42, 'images/qr_code/folder42_17I031IU.png', 42),
(43, 'images/qr_code/folder43_17I032IU.png', 43),
(44, 'images/qr_code/folder44_17I033IU.png', 44),
(45, 'images/qr_code/folder45_17I034IU.png', 45),
(46, 'images/qr_code/folder46_17I035IU.png', 46),
(47, 'images/qr_code/folder47_17I036IU.png', 47),
(48, 'images/qr_code/folder48_17I037IU.png', 48),
(49, 'images/qr_code/folder49_17I039IU.png', 49),
(50, 'images/qr_code/folder50_17I057IU.png', 50),
(51, 'images/qr_code/folder51_17I040IU.png', 51),
(52, 'images/qr_code/folder52_17I041IU.png', 52),
(53, 'images/qr_code/folder53_17I042IU.png', 53),
(54, 'images/qr_code/folder54_16I032IU.png', 54),
(55, 'images/qr_code/folder55_17I043IU.png', 55),
(56, 'images/qr_code/folder56_17I044IU.png', 56),
(57, 'images/qr_code/folder57_17I045IU.png', 57),
(58, 'images/qr_code/folder58_16I040IU.png', 58),
(59, 'images/qr_code/folder59_17I046IU.png', 59),
(60, 'images/qr_code/folder60_17I047IU.png', 60),
(61, 'images/qr_code/folder61_17I048IU.png', 61),
(62, 'images/qr_code/folder62_17I049IU.png', 62),
(63, 'images/qr_code/folder63_17I050IU.png', 63),
(64, 'images/qr_code/folder64_17I051IU.png', 64),
(65, 'images/qr_code/folder65_17I052IU.png', 65),
(66, 'images/qr_code/folder66_17I053IU.png', 66),
(67, 'images/qr_code/folder67_17I054IU.png', 67),
(68, 'images/qr_code/folder68_17I055IU.png', 68),
(69, 'images/qr_code/folder69_19I001IU.png', 69),
(70, 'images/qr_code/folder70_19I002IU.png', 70),
(71, 'images/qr_code/folder71_19I003IU.png', 71),
(72, 'images/qr_code/folder72_19I004IU.png', 72),
(73, 'images/qr_code/folder73_19I005IU.png', 73),
(74, 'images/qr_code/folder74_19I006IU.png', 74),
(75, 'images/qr_code/folder75_19I007IU.png', 75),
(76, 'images/qr_code/folder76_19I060IU.png', 76),
(77, 'images/qr_code/folder77_19I008IU.png', 77),
(78, 'images/qr_code/folder78_19I009IU.png', 78),
(79, 'images/qr_code/folder79_19I010IU.png', 79),
(80, 'images/qr_code/folder80_19I011IU.png', 80),
(81, 'images/qr_code/folder81_19I012IU.png', 81),
(82, 'images/qr_code/folder82_19I013IU.png', 82),
(83, 'images/qr_code/folder83_19I052IU.png', 83),
(84, 'images/qr_code/folder84_19I014IU.png', 84),
(85, 'images/qr_code/folder85_19I053IU.png', 85),
(86, 'images/qr_code/folder86_19I015IU.png', 86),
(87, 'images/qr_code/folder87_19I016IU.png', 87),
(88, 'images/qr_code/folder88_19I017IU.png', 88),
(89, 'images/qr_code/folder89_19I061IU.png', 89),
(90, 'images/qr_code/folder90_19I062IU.png', 90),
(91, 'images/qr_code/folder91_19I063IU.png', 91),
(92, 'images/qr_code/folder92_19I018IU.png', 92),
(93, 'images/qr_code/folder93_19I019IU.png', 93),
(94, 'images/qr_code/folder94_19I054IU.png', 94),
(95, 'images/qr_code/folder95_19I020IU.png', 95),
(96, 'images/qr_code/folder96_19I055IU.png', 96),
(97, 'images/qr_code/folder97_19I021IU.png', 97),
(98, 'images/qr_code/folder98_19I022IU.png', 98),
(99, 'images/qr_code/folder99_19I023IU.png', 99),
(100, 'images/qr_code/folder100_19I024IU.png', 100),
(101, 'images/qr_code/folder101_19I025IU.png', 101),
(102, 'images/qr_code/folder102_19I026IU.png', 102),
(103, 'images/qr_code/folder103_19I027IU.png', 103),
(104, 'images/qr_code/folder104_19I028IU.png', 104),
(105, 'images/qr_code/folder105_19I029IU.png', 105),
(106, 'images/qr_code/folder106_19I056IU.png', 106),
(107, 'images/qr_code/folder107_19I030IU.png', 107),
(108, 'images/qr_code/folder108_19I057IU.png', 108),
(109, 'images/qr_code/folder109_19I031IU.png', 109),
(110, 'images/qr_code/folder110_19I058IU.png', 110),
(111, 'images/qr_code/folder111_19I032IU.png', 111),
(112, 'images/qr_code/folder112_19I033IU.png', 112),
(113, 'images/qr_code/folder113_19I034IU.png', 113),
(114, 'images/qr_code/folder114_19I035IU.png', 114),
(115, 'images/qr_code/folder115_19I036IU.png', 115),
(116, 'images/qr_code/folder116_19I037IU.png', 116),
(117, 'images/qr_code/folder117_19I038IU.png', 117),
(118, 'images/qr_code/folder118_19I039IU.png', 118),
(119, 'images/qr_code/folder119_19I040IU.png', 119),
(120, 'images/qr_code/folder120_19I041IU.png', 120),
(121, 'images/qr_code/folder121_19I042IU.png', 121),
(122, 'images/qr_code/folder122_19I043IU.png', 122),
(123, 'images/qr_code/folder123_19I059IU.png', 123),
(124, 'images/qr_code/folder124_19I044IU.png', 124),
(125, 'images/qr_code/folder125_19I045IU.png', 125),
(126, 'images/qr_code/folder126_19I046IU.png', 126),
(127, 'images/qr_code/folder127_19I047IU.png', 127),
(128, 'images/qr_code/folder128_19I048IU.png', 128),
(129, 'images/qr_code/folder129_19I049IU.png', 129),
(130, 'images/qr_code/folder130_19I050IU.png', 130),
(131, 'images/qr_code/folder131_19I051IU.png', 131),
(132, 'images/qr_code/folder132_17B002IU.png', 132),
(133, 'images/qr_code/folder133_17B004IU.png', 133),
(134, 'images/qr_code/folder134_17B005IU.png', 134),
(135, 'images/qr_code/folder135_17B007IU.png', 135),
(136, 'images/qr_code/folder136_17B012IU.png', 136),
(137, 'images/qr_code/folder137_15B009IU.png', 137),
(138, 'images/qr_code/folder138_17B014IU.png', 138),
(139, 'images/qr_code/folder139_17B017IU.png', 139),
(140, 'images/qr_code/folder140_16B097IU.png', 140),
(141, 'images/qr_code/folder141_17B019IU.png', 141),
(142, 'images/qr_code/folder142_17B024IU.png', 142),
(143, 'images/qr_code/folder143_17B032IU.png', 143),
(144, 'images/qr_code/folder144_17B036IU.png', 144),
(145, 'images/qr_code/folder145_17B041IU.png', 145),
(146, 'images/qr_code/folder146_17B091IU.png', 146),
(147, 'images/qr_code/folder147_17B096IU.png', 147),
(148, 'images/qr_code/folder148_17B059IU.png', 148),
(149, 'images/qr_code/folder149_17B061IU.png', 149),
(150, 'images/qr_code/folder150_17B065IU.png', 150),
(151, 'images/qr_code/folder151_17B066IU.png', 151),
(152, 'images/qr_code/folder152_17B098IU.png', 152),
(153, 'images/qr_code/folder153_17B074IU.png', 153),
(154, 'images/qr_code/folder154_17B084IU.png', 154),
(155, 'images/qr_code/folder155_17B085IU.png', 155),
(156, 'images/qr_code/folder156_17B013IU.png', 156),
(157, 'images/qr_code/folder157_17B016IU.png', 157),
(158, 'images/qr_code/folder158_17B021IU.png', 158),
(159, 'images/qr_code/folder159_17B022IU.png', 159),
(160, 'images/qr_code/folder160_17B026IU.png', 160),
(161, 'images/qr_code/folder161_17B028IU.png', 161),
(162, 'images/qr_code/folder162_17B034IU.png', 162),
(163, 'images/qr_code/folder163_17B035IU.png', 163),
(164, 'images/qr_code/folder164_17B038IU.png', 164),
(165, 'images/qr_code/folder165_17B040IU.png', 165),
(166, 'images/qr_code/folder166_17B042IU.png', 166),
(167, 'images/qr_code/folder167_17B043IU.png', 167),
(168, 'images/qr_code/folder168_17B046IU.png', 168),
(169, 'images/qr_code/folder169_17B052IU.png', 169),
(170, 'images/qr_code/folder170_17B055IU.png', 170),
(171, 'images/qr_code/folder171_17B057IU.png', 171),
(172, 'images/qr_code/folder172_17B094IU.png', 172),
(173, 'images/qr_code/folder173_17B089IU.png', 173),
(174, 'images/qr_code/folder174_17B075IU.png', 174),
(175, 'images/qr_code/folder175_17B088IU.png', 175),
(176, 'images/qr_code/folder176_17B009IU.png', 176),
(177, 'images/qr_code/folder177_17B011IU.png', 177),
(178, 'images/qr_code/folder178_17B018IU.png', 178),
(179, 'images/qr_code/folder179_17B092IU.png', 179),
(180, 'images/qr_code/folder180_17B020IU.png', 180),
(181, 'images/qr_code/folder181_17B023IU.png', 181),
(182, 'images/qr_code/folder182_17B025IU.png', 182),
(183, 'images/qr_code/folder183_17B027IU.png', 183),
(184, 'images/qr_code/folder184_17B029IU.png', 184),
(185, 'images/qr_code/folder185_17B031IU.png', 185),
(186, 'images/qr_code/folder186_17B033IU.png', 186),
(187, 'images/qr_code/folder187_17B037IU.png', 187),
(188, 'images/qr_code/folder188_17B039IU.png', 188),
(189, 'images/qr_code/folder189_16B029IU.png', 189),
(190, 'images/qr_code/folder190_17B097IU.png', 190),
(191, 'images/qr_code/folder191_17B044IU.png', 191),
(192, 'images/qr_code/folder192_17B045IU.png', 192),
(193, 'images/qr_code/folder193_17B048IU.png', 193),
(194, 'images/qr_code/folder194_17B049IU.png', 194),
(195, 'images/qr_code/folder195_16B039IU.png', 195),
(196, 'images/qr_code/folder196_17B051IU.png', 196),
(197, 'images/qr_code/folder197_17B053IU.png', 197),
(198, 'images/qr_code/folder198_17B054IU.png', 198),
(199, 'images/qr_code/folder199_17B093IU.png', 199),
(200, 'images/qr_code/folder200_17B058IU.png', 200),
(201, 'images/qr_code/folder201_17B060IU.png', 201),
(202, 'images/qr_code/folder202_17B062IU.png', 202),
(203, 'images/qr_code/folder203_17B063IU.png', 203),
(204, 'images/qr_code/folder204_17B064IU.png', 204),
(205, 'images/qr_code/folder205_17B095IU.png', 205),
(206, 'images/qr_code/folder206_17B067IU.png', 206),
(207, 'images/qr_code/folder207_17B068IU.png', 207),
(208, 'images/qr_code/folder208_17B069IU.png', 208),
(209, 'images/qr_code/folder209_17B070IU.png', 209),
(210, 'images/qr_code/folder210_17B073IU.png', 210),
(211, 'images/qr_code/folder211_17B076IU.png', 211),
(212, 'images/qr_code/folder212_17B077IU.png', 212),
(213, 'images/qr_code/folder213_17B078IU.png', 213),
(214, 'images/qr_code/folder214_17B079IU.png', 214),
(215, 'images/qr_code/folder215_17B081IU.png', 215),
(216, 'images/qr_code/folder216_17B087IU.png', 216),
(217, 'images/qr_code/folder217_19I064IU.png', 217);

-- --------------------------------------------------------

--
-- Structure de la table `quitus_depot`
--

CREATE TABLE `quitus_depot` (
  `id_quitus` tinyint(4) NOT NULL,
  `memoire_id` int(11) NOT NULL,
  `nom_quitus` varchar(255) NOT NULL,
  `chemin_complet` varchar(255) NOT NULL,
  `generer_le` date NOT NULL,
  `taille` int(11) NOT NULL,
  `format` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `rapport_mission`
--

CREATE TABLE `rapport_mission` (
  `id_rapport_mission` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `intro` varchar(255) NOT NULL,
  `conclusion` varchar(255) NOT NULL,
  `mission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `rapport_mission`
--

INSERT INTO `rapport_mission` (`id_rapport_mission`, `titre`, `intro`, `conclusion`, `mission_id`) VALUES
(17, 'Rapport de prospection de stage 2021/2022', '<p>&nbsp; &nbsp; &nbsp; &nbsp;Nous avons effectu&eacute; une mission de prospection de stage et les stages obtenus sont recapitul&eacute;s dans le tableau suivant</p>\r\n', '<p>&nbsp; &nbsp; &nbsp; &nbsp;La mission s&#39;est deroul&eacute;e sans incident</p>\r\n', 3),
(19, 'Rapport encadrement GIN1 2021/2022', '<p>&nbsp; &nbsp; &nbsp; &nbsp; Nous avons effectu&eacute; une mission d&#39;encadrement pour les etudiants de GIN1 et nous avons obtenu les resultats suivant :</p>\r\n', '<p>&nbsp; &nbsp; &nbsp; &nbsp;La mission s&#39;est deroul&eacute;e sans incident</p>\r\n', 4),
(20, '2e Rapport encadrement GIN1 2021/2022', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Nous avons effectu&eacute;</p>\r\n', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;pour conclure</p>\r\n', 5);

-- --------------------------------------------------------

--
-- Structure de la table `rapport_probleme`
--

CREATE TABLE `rapport_probleme` (
  `id_rapport` int(11) NOT NULL,
  `attribuer_id` int(11) NOT NULL,
  `debut_intervention` datetime NOT NULL,
  `fin_intervention` datetime NOT NULL,
  `materiels_utilises` text DEFAULT NULL,
  `anomalies_constatees` text DEFAULT NULL,
  `statut` varchar(20) NOT NULL,
  `date_redigee` datetime NOT NULL DEFAULT current_timestamp(),
  `vue` int(11) NOT NULL DEFAULT 0,
  `soumettre` int(11) NOT NULL DEFAULT 0,
  `date_envoie` datetime DEFAULT NULL,
  `etat_final` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `recuperations`
--

CREATE TABLE `recuperations` (
  `id_recup` int(11) NOT NULL,
  `etudiant_id` int(11) NOT NULL,
  `semestre_an` int(11) NOT NULL,
  `recup` int(11) NOT NULL DEFAULT 0,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `requete`
--

CREATE TABLE `requete` (
  `id_requete` int(255) NOT NULL,
  `matricule` varchar(255) NOT NULL,
  `telephone` varchar(33) NOT NULL,
  `sujet` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(2) NOT NULL DEFAULT 0,
  `etudiant_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `requete`
--

INSERT INTO `requete` (`id_requete`, `matricule`, `telephone`, `sujet`, `message`, `date`, `status`, `etudiant_id`) VALUES
(1, '20I032IU', '+237 655666916', 'ABSENCES', 'BONJOUR, j\'ai pas recu de sms concernant mes absences que j\'ai effectue il y\'a 30 min. ', '2021-10-21 16:04:40', 1, 38),
(2, '20I001IU', '+237655666916', 'Notes de synthese', 'Bonjour monsieur, depuis 2heures de temps que je suis dans l\'attente de mon resultat de l\'EC de programmation en c++', '2021-10-27 15:23:46', 1, 7),
(3, '20I002IU', '+237665669966', 'Notes de cc', 'Bonsoir monsieur ou madame, j\'ai un soucis de notes; je ne sais pas j\'ai demander a savoir ma notes de cc concernant l\'ec de introduction a l\'informatique qui est deja disponible mais j\'ai pas recu de sms depuis. ', '2021-10-27 15:33:35', 1, 8),
(4, '20I001IU', '+237 655666928', 'Notes de synthese', 'Bonjour monsieur, depuis 2heures de temps que je suis dans l\'attente de mon résultat de l\'EC d\'algorithme et programmation.\nje suis toujours dans l\'attente.', '2021-10-28 15:05:02', 1, 7);

-- --------------------------------------------------------

--
-- Structure de la table `retour_materiel`
--

CREATE TABLE `retour_materiel` (
  `id_retour` int(11) NOT NULL,
  `quantite` int(11) NOT NULL,
  `date_retour` datetime NOT NULL DEFAULT current_timestamp(),
  `id_emprunt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

CREATE TABLE `role` (
  `id_role` tinyint(1) NOT NULL,
  `nom_role` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id_role` int(11) NOT NULL,
  `type_role` varchar(50) NOT NULL,
  `code` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id_role`, `type_role`, `code`) VALUES
(1, 'admin', 'adm'),
(2, 'personnel', 'psn'),
(5, 'DFI', 'dfi'),
(6, 'enseignant', 'ensg'),
(7, 'Technicien', 'tch'),
(8, 'Agent d\'entretien', 'agt'),
(9, 'gardien', 'gdn'),
(10, 'aucun role', NULL),
(17, 'responsable discipline', 'RD'),
(18, 'Moniteur', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `role_etudiant`
--

CREATE TABLE `role_etudiant` (
  `id_role_etud` int(11) NOT NULL,
  `designation` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `salles`
--

CREATE TABLE `salles` (
  `id_salle` int(11) NOT NULL,
  `nom_salle` varchar(50) NOT NULL,
  `intitule_salle` varchar(50) NOT NULL,
  `etat_salle` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `capacite` varchar(255) NOT NULL,
  `localisation` text NOT NULL,
  `condition_salle` varchar(100) NOT NULL,
  `id_type_bureau` int(11) DEFAULT NULL,
  `id_typeSalle` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `salles`
--

INSERT INTO `salles` (`id_salle`, `nom_salle`, `intitule_salle`, `etat_salle`, `description`, `capacite`, `localisation`, `condition_salle`, `id_type_bureau`, `id_typeSalle`) VALUES
(1, 'AmphiTech', 'Amphie Tecno', 'utilisable', '', '', '', '', NULL, 1),
(2, 'Amphi1000', 'Amphi 1000', 'utilisable', '', '1000', '', '', NULL, 4),
(3, 'salle  10', 'Salle GIN 2', 'utilisable', '', '50', '', '', NULL, 1),
(4, 'Amphi 1000/Tecno', 'Amphi 1000/Tecno', '', '', '', '', '', NULL, 1),
(5, 'Salle 9', 'Salle GIN 1', 'utilisable', '', '50', '', '', NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `salles_niv_par`
--

CREATE TABLE `salles_niv_par` (
  `id_salle_niv_par` int(11) NOT NULL,
  `id_salle` int(11) NOT NULL,
  `id_niv_par` int(11) NOT NULL,
  `annee_id` int(11) NOT NULL,
  `date_creation` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `salle_filiere`
--

CREATE TABLE `salle_filiere` (
  `id_sf` int(11) NOT NULL,
  `intitule` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `salle_filiere`
--

INSERT INTO `salle_filiere` (`id_sf`, `intitule`) VALUES
(1, 'Salle 1'),
(2, 'Salle 2'),
(3, 'Salle 3'),
(4, 'Salle 4');

-- --------------------------------------------------------

--
-- Structure de la table `salle_niv_par_jury`
--

CREATE TABLE `salle_niv_par_jury` (
  `id_snpj` int(11) NOT NULL,
  `id_salle` int(11) NOT NULL,
  `id_niv_par` int(11) NOT NULL,
  `id_sf` int(11) NOT NULL,
  `id_event` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `semaines`
--

CREATE TABLE `semaines` (
  `id_semaine` int(11) NOT NULL,
  `debut` date NOT NULL,
  `fin` date NOT NULL,
  `numero` int(11) NOT NULL,
  `annee_id` int(11) NOT NULL,
  `semaine_status` int(11) NOT NULL,
  `semestre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `semaines`
--

INSERT INTO `semaines` (`id_semaine`, `debut`, `fin`, `numero`, `annee_id`, `semaine_status`, `semestre_id`) VALUES
(119, '2020-10-10', '2021-10-16', 1, 2, 4, 1),
(120, '2020-01-01', '2020-01-01', 2, 2, 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `semestres`
--

CREATE TABLE `semestres` (
  `id_semestre` int(11) NOT NULL,
  `semestre` varchar(50) NOT NULL,
  `niveau_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `semestres`
--

INSERT INTO `semestres` (`id_semestre`, `semestre`, `niveau_id`) VALUES
(1, '1', 1),
(2, '2', 1),
(3, '3', 2),
(4, '4', 2),
(5, '5', 3),
(6, '6', 3);

-- --------------------------------------------------------

--
-- Structure de la table `semestre_niv`
--

CREATE TABLE `semestre_niv` (
  `niveau_id` int(11) NOT NULL,
  `semestre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `semestre_niv`
--

INSERT INTO `semestre_niv` (`niveau_id`, `semestre_id`) VALUES
(2, 1),
(2, 2),
(5, 3),
(5, 4),
(6, 5),
(6, 6),
(7, 1),
(7, 2),
(8, 3),
(8, 4);

-- --------------------------------------------------------

--
-- Structure de la table `services`
--

CREATE TABLE `services` (
  `id_service` int(11) NOT NULL,
  `nom_service` varchar(255) NOT NULL,
  `description_service` text DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `services`
--

INSERT INTO `services` (`id_service`, `nom_service`, `description_service`, `service_id`) VALUES
(1, 'ARCHIVAGE', '', 1),
(4, 'Direction', 'Direction de l\'iut', 0),
(5, 'Direction_Adjointe', 'service du directeur adjoint de l\'IUT', 4),
(6, 'DFI', 'Division de la Formation Permanante', 5),
(7, 'Division_stage', 'Division des stages , de la foration permanante et des relations avec les milieux proffessionnels', 5),
(8, 'S_stages', 'service des stages et de la formation professionnelle', 7),
(9, 'SFP', 'service de la formation permanante', 7),
(10, 'S_scolarité', 'service de la scolarité et orientation professionnele', 5),
(11, 'SAG', 'service des affaires génerales', 5),
(12, 'S_documentation', 'service de la documentation et de la reprographie', 5),
(13, 'Bibliothèque ', 'service en charge de la bibliotheque de l\'etablissement', 5),
(22, 'aucun service', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `service_message`
--

CREATE TABLE `service_message` (
  `service_id` int(11) NOT NULL,
  `message_id` int(11) NOT NULL,
  `service_rec_id` int(11) NOT NULL,
  `date_envoi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `stage`
--

CREATE TABLE `stage` (
  `id_stage` int(11) NOT NULL,
  `type_stage_id` int(11) NOT NULL,
  `entreprise_id` int(11) NOT NULL,
  `nbre_place` int(11) NOT NULL,
  `renumere` varchar(50) NOT NULL DEFAULT 'Non',
  `remarque` varchar(100) NOT NULL DEFAULT 'Aucune',
  `niv_par_id` int(11) NOT NULL,
  `annee_id` int(11) NOT NULL,
  `visibilite` varchar(100) NOT NULL DEFAULT 'Masqué'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `stage`
--

INSERT INTO `stage` (`id_stage`, `type_stage_id`, `entreprise_id`, `nbre_place`, `renumere`, `remarque`, `niv_par_id`, `annee_id`, `visibilite`) VALUES
(12, 3, 14, 3, 'Non', 'Aucune', 40, 2, 'Masqué'),
(13, 4, 15, 3, 'Non', 'Aucune', 10, 2, 'Publié'),
(14, 1, 13, 1, 'Oui', 'Aucune', 10, 2, 'Publié'),
(15, 3, 15, 2, 'Non', 'Aucune', 42, 2, 'Publié'),
(16, 3, 15, 10, 'Non', 'Aucune', 26, 2, 'Masqué'),
(17, 3, 15, 5, 'Non', 'Aucune', 11, 2, 'Masqué'),
(19, 3, 13, 4, 'Non', 'Aucune', 37, 2, 'Masqué'),
(25, 3, 13, 3, 'Oui', 'Aucune', 40, 2, 'Masqué'),
(26, 3, 13, 4, 'Non', 'Aucune', 42, 2, 'Masqué'),
(27, 3, 13, 10, 'Non', 'Aucune', 30, 2, 'Masqué'),
(28, 5, 13, 15, 'Non', 'Aucune', 41, 2, 'Masqué'),
(33, 3, 13, 4, 'Non', 'Aucune', 17, 2, 'Masqué'),
(34, 3, 13, 4, 'Oui', 'Aucune', 18, 2, 'Masqué'),
(35, 3, 13, 1, 'Oui', 'Aucune', 20, 2, 'Masqué');

-- --------------------------------------------------------

--
-- Structure de la table `stage_par_niveau`
--

CREATE TABLE `stage_par_niveau` (
  `id_stage_par_niveau` int(11) NOT NULL,
  `type_stage` int(11) NOT NULL,
  `niveau` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `suivi`
--

CREATE TABLE `suivi` (
  `id_suivi` int(11) NOT NULL,
  `personnel_id` int(11) NOT NULL,
  `annee_id` int(11) NOT NULL,
  `date_aller` date NOT NULL,
  `date_retour` date NOT NULL,
  `montant` int(11) NOT NULL,
  `transport` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `suivi`
--

INSERT INTO `suivi` (`id_suivi`, `personnel_id`, `annee_id`, `date_aller`, `date_retour`, `montant`, `transport`) VALUES
(3, 2, 2, '2022-07-20', '2022-07-25', 200000, 'Bus'),
(4, 13, 2, '2022-07-23', '2022-07-28', 200000, 'Bus');

-- --------------------------------------------------------

--
-- Structure de la table `suivi_etudiant`
--

CREATE TABLE `suivi_etudiant` (
  `id_suivi` int(11) NOT NULL,
  `personnel_id` int(11) NOT NULL,
  `dossier_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `sujet_forum`
--

CREATE TABLE `sujet_forum` (
  `id_forum` int(11) NOT NULL,
  `sujet` varchar(300) NOT NULL,
  `heure` time NOT NULL,
  `lanceur` varchar(60) NOT NULL,
  `date` date NOT NULL,
  `id_enc` int(11) NOT NULL,
  `id_dossier` int(11) NOT NULL,
  `id_personnel` int(11) NOT NULL,
  `id_dossier_stage` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `surveillant`
--

CREATE TABLE `surveillant` (
  `id_surveillant` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `grade` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `surveiller`
--

CREATE TABLE `surveiller` (
  `id_surveiller` int(11) NOT NULL,
  `examen_id` int(11) NOT NULL,
  `personnel_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `surveiller`
--

INSERT INTO `surveiller` (`id_surveiller`, `examen_id`, `personnel_id`) VALUES
(1, 1, 2),
(2, 1, 18),
(3, 4, 23),
(4, 4, 5),
(5, 7, 20),
(6, 8, 18),
(7, 9, 12),
(9, 10, 24),
(10, 11, 24),
(11, 12, 24),
(12, 13, 24),
(13, 14, 24),
(14, 15, 24),
(15, 16, 24),
(16, 17, 24),
(17, 18, 24),
(18, 19, 24),
(19, 20, 24),
(20, 21, 23),
(21, 22, 23),
(22, 23, 32),
(23, 25, 32),
(24, 26, 32),
(25, 28, 10),
(26, 28, 14),
(27, 3, 2),
(28, 298, 2),
(29, 298, 6),
(30, 299, 37),
(31, 300, 36);

-- --------------------------------------------------------

--
-- Structure de la table `taches`
--

CREATE TABLE `taches` (
  `id_tache` int(11) NOT NULL,
  `tache` int(11) NOT NULL,
  `date_soumission` date NOT NULL,
  `date_limitte` date NOT NULL,
  `affecteur` varchar(60) NOT NULL,
  `Etat` tinyint(1) NOT NULL,
  `id_enc` int(11) NOT NULL,
  `id_personnel` int(11) NOT NULL,
  `id_dossier_stage` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `technicien_probleme`
--

CREATE TABLE `technicien_probleme` (
  `id_attribuer` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `id_probleme` int(11) NOT NULL,
  `id_personnel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `theme`
--

CREATE TABLE `theme` (
  `id_theme` int(11) NOT NULL,
  `nom_theme` text NOT NULL,
  `date_creation` datetime NOT NULL DEFAULT current_timestamp(),
  `date_modification` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `theme`
--

INSERT INTO `theme` (`id_theme`, `nom_theme`, `date_creation`, `date_modification`) VALUES
(1, 'Gestion des Outils et Infrastructures pédagogique', '2021-10-15 15:32:29', '2021-10-15 15:32:29');

-- --------------------------------------------------------

--
-- Structure de la table `typesalles`
--

CREATE TABLE `typesalles` (
  `id_typeSalle` int(11) NOT NULL,
  `designation` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `typesalles`
--

INSERT INTO `typesalles` (`id_typeSalle`, `designation`) VALUES
(1, 'Salle de Classe'),
(2, 'Bureau'),
(3, 'Laboratoire'),
(4, 'Amphi');

-- --------------------------------------------------------

--
-- Structure de la table `type_bureau`
--

CREATE TABLE `type_bureau` (
  `id_type_bureau` int(11) NOT NULL,
  `designation` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `type_bureau`
--

INSERT INTO `type_bureau` (`id_type_bureau`, `designation`) VALUES
(1, 'Enseignant'),
(2, 'Directeur'),
(3, 'Directeur Adjoint'),
(4, 'Chef de Département'),
(5, 'Responsable Pédagogique');

-- --------------------------------------------------------

--
-- Structure de la table `type_encadreur`
--

CREATE TABLE `type_encadreur` (
  `id_type` int(11) NOT NULL,
  `nom_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `type_event`
--

CREATE TABLE `type_event` (
  `id_type_event` int(11) NOT NULL,
  `nom_type_event` varchar(500) NOT NULL,
  `className` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `type_event`
--

INSERT INTO `type_event` (`id_type_event`, `nom_type_event`, `className`) VALUES
(1, 'Réunion', 'fc-event-success'),
(2, 'Assemblée Générale', 'fc-event-warning'),
(3, 'Jury', 'fc-event-info'),
(4, 'Cour', 'fc-event-dark'),
(5, 'Autres', 'fc-event-default'),
(6, 'Examen', 'fc-event-danger');

-- --------------------------------------------------------

--
-- Structure de la table `type_exam`
--

CREATE TABLE `type_exam` (
  `id_type` int(11) NOT NULL,
  `intitule_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `type_exam`
--

INSERT INTO `type_exam` (`id_type`, `intitule_type`) VALUES
(1, 'Synthese'),
(2, 'Rattrapage'),
(3, 'cc'),
(4, 'tp'),
(5, 'tpe');

-- --------------------------------------------------------

--
-- Structure de la table `type_mission`
--

CREATE TABLE `type_mission` (
  `id_type_mission` int(11) NOT NULL,
  `nom_mission` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `type_mission`
--

INSERT INTO `type_mission` (`id_type_mission`, `nom_mission`) VALUES
(1, 'prospection'),
(2, 'encadrement');

-- --------------------------------------------------------

--
-- Structure de la table `type_plage`
--

CREATE TABLE `type_plage` (
  `id_type_plage` int(11) NOT NULL,
  `intitule_plage` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `type_plage`
--

INSERT INTO `type_plage` (`id_type_plage`, `intitule_plage`) VALUES
(1, 'cour'),
(2, 'pause');

-- --------------------------------------------------------

--
-- Structure de la table `type_stage`
--

CREATE TABLE `type_stage` (
  `id_type` int(11) NOT NULL,
  `nom_type` text NOT NULL,
  `desc_type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='la categorie des stages';

--
-- Déchargement des données de la table `type_stage`
--

INSERT INTO `type_stage` (`id_type`, `nom_type`, `desc_type`) VALUES
(1, 'Stage Ouvrier', 'stage de niveau 1'),
(2, 'Projet Tutoré', 'projet d\'integration au niveau 2 et 3'),
(3, 'Stage Fin d\'étude DUT', 'niveau 2'),
(4, 'Stage fin d\'étude Licence Technologique', 'niveau 3'),
(5, 'Stage BTS', 'Stage BTS');

-- --------------------------------------------------------

--
-- Structure de la table `ue`
--

CREATE TABLE `ue` (
  `id_ue` int(11) NOT NULL,
  `code_ue` varchar(20) NOT NULL,
  `intitule_ue` varchar(50) NOT NULL,
  `code_alpha_ue` varchar(10) NOT NULL,
  `num_ue` int(11) NOT NULL,
  `semestre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `ue`
--

INSERT INTO `ue` (`id_ue`, `code_ue`, `intitule_ue`, `code_alpha_ue`, `num_ue`, `semestre_id`) VALUES
(1, 'EG11', 'Humanité 1', 'EG', 1, 1),
(2, 'INF12', 'Exploitation des ordinateurs', 'INF', 2, 1),
(3, 'INF13', 'Mathématiques 1', 'INF', 3, 1),
(4, 'INF14', 'Programmation sur ordinateur', 'INF', 4, 1),
(5, 'EG21', 'Droit et Gestion', 'EG', 1, 2),
(6, 'INF22', 'Algorithmes et outils mathématiques 2', 'INF', 2, 2),
(7, 'IFT23', 'Programmation 1', 'IFT', 3, 2),
(8, 'INF24', 'Modélisation et Bases de Données', 'INF', 4, 2),
(9, 'EG31', 'Humanité II', 'EG', 1, 3),
(10, 'INF32', 'Bases de l’informatique et applications', 'INF', 2, 3),
(11, 'INF33', 'Graphes et réseaux', 'INF', 3, 3),
(12, 'IFT34', 'Algorithmique ', 'IFT', 4, 3),
(13, 'INF35', 'Programmation 2', 'INF', 5, 3),
(14, 'EP41', 'Environnement Professionnel', 'EP', 1, 4),
(15, 'INF42', 'Architecture machine ', 'INF', 2, 4),
(16, 'INF43', 'Compilateur et application Web', 'INF', 3, 4),
(17, 'INF44', 'Automation et calcul probabiliste', 'INF', 4, 4),
(18, 'EG51', 'Entreprenariat', 'EG', 1, 5),
(19, 'EG52', 'Humanité', 'EG', 2, 5),
(20, 'INF53', 'Système d\'exploitation et programmation', 'INF', 3, 5),
(21, 'INF54', 'Multimédia et réseaux', 'INF', 4, 5),
(22, 'EP61', ' Environnement Professionnel', 'EP', 1, 6),
(23, 'INF62', 'Génie logiciel', 'INF', 2, 6),
(24, 'INF63', 'Cloud computing', 'INF', 3, 6),
(25, 'INF64', ' Bases de données orientées objets', 'INF', 4, 6),
(26, 'EG51', 'Entreprenariat', 'EG', 1, 5),
(27, 'EG52', 'Humanité', 'EG', 2, 5),
(28, 'INF53', 'Système d\'exploitation et programmation', 'INF', 3, 5),
(29, 'INF54', 'Multimédia et réseaux', 'INF', 4, 5),
(30, 'EP61', 'Environnement Professionnel', 'EP', 1, 6),
(31, 'INF62', 'Sécurité des Systèmes Informatiques ', 'INF', 2, 6),
(32, 'INF63', 'Cloud computing', 'INF', 3, 6),
(33, 'INF64', 'Technologies Mobiles', 'INF', 4, 6),
(36, 'EG11', 'Humanité 1', 'EG', 1, 1),
(37, 'GBL12', 'Thermodynamiques chimiques et physiques ', 'GBL', 2, 1),
(38, 'GBL13', 'Mathématiques ', 'GBL', 3, 1),
(39, 'GBL14', 'Chimie ', 'GBL', 4, 1),
(40, 'GBL21', 'Informatique et statistiques', 'GBL', 1, 2),
(41, 'GBL22', 'Principe de Biochimie ', 'GBL', 2, 2),
(42, 'GBL23', 'Biochimie appliquée', 'GBL', 3, 2),
(43, 'GBL24', 'Base de al Biologie', 'GBL', 4, 2),
(44, 'GBL25', 'Technologie Industrielle', 'GBL', 5, 2);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ville`
--

CREATE TABLE `ville` (
  `id_ville` int(11) NOT NULL,
  `nom_ville` varchar(255) NOT NULL,
  `pays` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `ville`
--

INSERT INTO `ville` (`id_ville`, `nom_ville`, `pays`) VALUES
(1, 'Ngaoundéré', 1),
(2, 'Douala', 1),
(3, 'Yaounde', 1),
(4, 'Garoua', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `absences`
--
ALTER TABLE `absences`
  ADD PRIMARY KEY (`id_absence`),
  ADD KEY `etudiant_id` (`etudiant_id`),
  ADD KEY `type_exam_id` (`type_exam_id`),
  ADD KEY `annee_id` (`annee_id`),
  ADD KEY `appel_id` (`appel_id`);

--
-- Index pour la table `absences_surprises`
--
ALTER TABLE `absences_surprises`
  ADD PRIMARY KEY (`id_absence_surp`),
  ADD KEY `etudiant_id` (`etudiant_id`),
  ADD KEY `appel_surp_id` (`appel_surp_id`),
  ADD KEY `annee_id` (`annee_id`);

--
-- Index pour la table `acces_bibliotheque`
--
ALTER TABLE `acces_bibliotheque`
  ADD PRIMARY KEY (`id_acces`),
  ADD KEY `dossier_id` (`dossier_id`);

--
-- Index pour la table `acces_examen`
--
ALTER TABLE `acces_examen`
  ADD PRIMARY KEY (`id_acces`),
  ADD KEY `dossier_id` (`dossier_id`);

--
-- Index pour la table `acces_laboratoire`
--
ALTER TABLE `acces_laboratoire`
  ADD PRIMARY KEY (`id_acces`),
  ADD KEY `dossier_id` (`dossier_id`);

--
-- Index pour la table `actions`
--
ALTER TABLE `actions`
  ADD PRIMARY KEY (`id_action`);

--
-- Index pour la table `affecter`
--
ALTER TABLE `affecter`
  ADD PRIMARY KEY (`id_affecter`),
  ADD KEY `personnel_id` (`personnel_id`),
  ADD KEY `service_id` (`service_id`);

--
-- Index pour la table `agent_bloc_nettoyage`
--
ALTER TABLE `agent_bloc_nettoyage`
  ADD PRIMARY KEY (`id_bloc_agent`),
  ADD KEY `id_agent` (`id_agent`),
  ADD KEY `id_bloc` (`id_bloc`);

--
-- Index pour la table `agent_entretien`
--
ALTER TABLE `agent_entretien`
  ADD PRIMARY KEY (`id_agent`),
  ADD KEY `id_personnel` (`id_personnel`);

--
-- Index pour la table `annee_academiques`
--
ALTER TABLE `annee_academiques`
  ADD PRIMARY KEY (`id_annee`);

--
-- Index pour la table `appels`
--
ALTER TABLE `appels`
  ADD PRIMARY KEY (`id_appel`),
  ADD KEY `niv_par_id` (`niv_par_id`),
  ADD KEY `annee_id` (`annee_id`),
  ADD KEY `planning_id` (`planning_id`),
  ADD KEY `enseigne_id` (`enseigne_id`);

--
-- Index pour la table `appels_surprises`
--
ALTER TABLE `appels_surprises`
  ADD PRIMARY KEY (`id_appel_surp`),
  ADD KEY `niv_par_id` (`niv_par_id`),
  ADD KEY `ec_id` (`ec_id`),
  ADD KEY `annee_id` (`annee_id`);

--
-- Index pour la table `associations`
--
ALTER TABLE `associations`
  ADD PRIMARY KEY (`id_association`),
  ADD KEY `id_ue` (`ue_id`),
  ADD KEY `id_niveau` (`niv_par_id`);

--
-- Index pour la table `blocs_nettoyage`
--
ALTER TABLE `blocs_nettoyage`
  ADD PRIMARY KEY (`id_bloc`);

--
-- Index pour la table `bureau_personnel`
--
ALTER TABLE `bureau_personnel`
  ADD PRIMARY KEY (`id_affecter`),
  ADD KEY `id_personnel` (`id_personnel`),
  ADD KEY `id_salle` (`id_salle`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_categorie`),
  ADD KEY `id_categorieE` (`categorie_id`),
  ADD KEY `services_id` (`service_id`),
  ADD KEY `departement_id` (`departement_id`);

--
-- Index pour la table `categorie_materiel`
--
ALTER TABLE `categorie_materiel`
  ADD PRIMARY KEY (`id_categorie_mat`);

--
-- Index pour la table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Index pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD PRIMARY KEY (`id_commentaire`);

--
-- Index pour la table `commentaires`
--
ALTER TABLE `commentaires`
  ADD PRIMARY KEY (`id_commentaite`),
  ADD KEY `dossier_id` (`dossier_id`),
  ADD KEY `ec_id` (`ec_id`),
  ADD KEY `personnel_id` (`personnel_id`);

--
-- Index pour la table `comptes`
--
ALTER TABLE `comptes`
  ADD PRIMARY KEY (`id_compte`),
  ADD UNIQUE KEY `pass` (`pass`),
  ADD KEY `personnel_id` (`personnel_id`);

--
-- Index pour la table `correspondances`
--
ALTER TABLE `correspondances`
  ADD PRIMARY KEY (`id_correspondance`),
  ADD KEY `id_cycle` (`cycle_id`),
  ADD KEY `id_mention` (`mention_id`);

--
-- Index pour la table `correspondance_motcle`
--
ALTER TABLE `correspondance_motcle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mot-cle` (`mot-cle`),
  ADD KEY `memoire` (`memoire`);

--
-- Index pour la table `critere_absence`
--
ALTER TABLE `critere_absence`
  ADD PRIMARY KEY (`id_critere`),
  ADD KEY `annee_id` (`annee_id`);

--
-- Index pour la table `cycles`
--
ALTER TABLE `cycles`
  ADD PRIMARY KEY (`id_cycle`);

--
-- Index pour la table `cycle_mention`
--
ALTER TABLE `cycle_mention`
  ADD KEY `cycle_id` (`cycle_id`),
  ADD KEY `mention_id` (`mention_id`);

--
-- Index pour la table `cycle_parcour`
--
ALTER TABLE `cycle_parcour`
  ADD KEY `cycle_id` (`cycle_id`,`parcour_id`),
  ADD KEY `parcour_id` (`parcour_id`);

--
-- Index pour la table `departements`
--
ALTER TABLE `departements`
  ADD PRIMARY KEY (`id_departement`),
  ADD KEY `service_id` (`service_id`);

--
-- Index pour la table `deroulements`
--
ALTER TABLE `deroulements`
  ADD PRIMARY KEY (`id_deroulement`),
  ADD KEY `id_exam` (`examen_id`),
  ADD KEY `id_salle` (`salle_id`);

--
-- Index pour la table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id_doc`),
  ADD KEY `id_categorieE` (`categorie_id`);

--
-- Index pour la table `document_stage`
--
ALTER TABLE `document_stage`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `dossiers`
--
ALTER TABLE `dossiers`
  ADD PRIMARY KEY (`id_dossier`),
  ADD KEY `id_niveau` (`niv_par_id`),
  ADD KEY `annee_id` (`annee_id`),
  ADD KEY `etudiant_id` (`etudiant_id`);

--
-- Index pour la table `dossier_stage`
--
ALTER TABLE `dossier_stage`
  ADD PRIMARY KEY (`id_dossier_stage`);

--
-- Index pour la table `ec`
--
ALTER TABLE `ec`
  ADD PRIMARY KEY (`id_ec`),
  ADD KEY `cours_ibfk_2` (`ue_id`),
  ADD KEY `id_etat` (`etat_id`);

--
-- Index pour la table `emprunter_materiels`
--
ALTER TABLE `emprunter_materiels`
  ADD PRIMARY KEY (`id_emprunt`),
  ADD KEY `id_etudiant` (`dossier_id`),
  ADD KEY `id_personnel` (`personnel_id`),
  ADD KEY `id_materiel` (`materiel_id`);

--
-- Index pour la table `encadrement`
--
ALTER TABLE `encadrement`
  ADD PRIMARY KEY (`id_encadrement`),
  ADD KEY `id_stage` (`id_stage`),
  ADD KEY `id_personnel` (`id_personnel`);

--
-- Index pour la table `encadreur`
--
ALTER TABLE `encadreur`
  ADD PRIMARY KEY (`id_enc`),
  ADD KEY `encadreur_ibfk_1` (`fonction`),
  ADD KEY `encadreur_ibfk_2` (`type_enc`),
  ADD KEY `entreprise` (`entreprise`);

--
-- Index pour la table `enc_industriel`
--
ALTER TABLE `enc_industriel`
  ADD PRIMARY KEY (`id_enc`);

--
-- Index pour la table `enseignes`
--
ALTER TABLE `enseignes`
  ADD PRIMARY KEY (`id_enseigne`),
  ADD KEY `id_cours` (`ec_id`),
  ADD KEY `enseigner_ibfk_2` (`personnel_id`),
  ADD KEY `annee_id` (`annee_id`);

--
-- Index pour la table `entreprise`
--
ALTER TABLE `entreprise`
  ADD PRIMARY KEY (`id_entreprise`),
  ADD KEY `entreprise_ibfk_1` (`ville`);

--
-- Index pour la table `etablissement`
--
ALTER TABLE `etablissement`
  ADD PRIMARY KEY (`id_etab`);

--
-- Index pour la table `etat`
--
ALTER TABLE `etat`
  ADD PRIMARY KEY (`id_etat`);

--
-- Index pour la table `etats_quitus`
--
ALTER TABLE `etats_quitus`
  ADD PRIMARY KEY (`id_quitus`),
  ADD UNIQUE KEY `dossier_id` (`dossier_id`);

--
-- Index pour la table `etat_materiels`
--
ALTER TABLE `etat_materiels`
  ADD PRIMARY KEY (`id_etat`),
  ADD KEY `id_materiel_salle` (`id_materiel_salle`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `sujet_forum`
--
ALTER TABLE `sujet_forum`
  ADD PRIMARY KEY (`id_forum`);

--
-- Index pour la table `taches`
--
ALTER TABLE `taches`
  ADD PRIMARY KEY (`id_tache`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `commentaire`
--
ALTER TABLE `commentaire`
  MODIFY `id_commentaire` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `document_stage`
--
ALTER TABLE `document_stage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `dossier_stage`
--
ALTER TABLE `dossier_stage`
  MODIFY `id_dossier_stage` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `enc_industriel`
--
ALTER TABLE `enc_industriel`
  MODIFY `id_enc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `sujet_forum`
--
ALTER TABLE `sujet_forum`
  MODIFY `id_forum` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `taches`
--
ALTER TABLE `taches`
  MODIFY `id_tache` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
