-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 22 oct. 2020 à 14:48
-- Version du serveur :  8.0.21
-- Version de PHP : 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `village_green`
--

CREATE DATABASE village_green;
USE village_green;

DELIMITER $$
--
-- Procédures
--
DROP PROCEDURE IF EXISTS `MoyenneFacturation`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `MoyenneFacturation` ()  BEGIN
    SELECT AVG(DATEDIFF(ord_settlement_date, ord_date))
    FROM orders;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `cat_id` int NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(50) NOT NULL,
  `cat_cat_id` int DEFAULT NULL,
  PRIMARY KEY (`cat_id`),
  KEY `cat_cat_id` (`cat_cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_name`, `cat_cat_id`) VALUES
(1, 'Vents', NULL),
(2, 'Cordes', NULL),
(3, 'Percussions', NULL),
(4, 'Guitare', 1),
(5, 'Violon', 1),
(6, 'Violoncelle', 1),
(7, 'Harpe', 1),
(8, 'Piano', 1),
(9, 'Trompette', 2),
(10, 'Saxophone', 2),
(11, 'Flûte', 2),
(12, 'Harmonica', 2),
(13, 'Batterie', 3),
(14, 'Tambour', 3),
(15, 'Xylophone', 3);

-- --------------------------------------------------------

--
-- Structure de la table `countries`
--

DROP TABLE IF EXISTS `countries`;
CREATE TABLE IF NOT EXISTS `countries` (
  `cou_id` char(2) NOT NULL,
  `cou_name` varchar(50) NOT NULL,
  PRIMARY KEY (`cou_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `countries`
--

INSERT INTO `countries` (`cou_id`, `cou_name`) VALUES
('AD', 'Andorre'),
('AE', 'Émirats Arabes Unis'),
('AF', 'Afghanistan'),
('AG', 'Antigua-et-Barbuda'),
('AI', 'Anguilla'),
('AL', 'Albanie'),
('AM', 'Arménie'),
('AN', 'Antilles Néerlandaises'),
('AO', 'Angola'),
('AQ', 'Antarctique'),
('AR', 'Argentine'),
('AS', 'Samoa Américaines'),
('AT', 'Autriche'),
('AU', 'Australie'),
('AW', 'Aruba'),
('AX', 'Îles Åland'),
('AZ', 'Azerbaïdjan'),
('BA', 'Bosnie-Herzégovine'),
('BB', 'Barbade'),
('BD', 'Bangladesh'),
('BE', 'Belgique'),
('BF', 'Burkina Faso'),
('BG', 'Bulgarie'),
('BH', 'Bahreïn'),
('BI', 'Burundi'),
('BJ', 'Bénin'),
('BM', 'Bermudes'),
('BN', 'Brunéi Darussalam'),
('BO', 'Bolivie'),
('BR', 'Brésil'),
('BS', 'Bahamas'),
('BT', 'Bhoutan'),
('BV', 'Île Bouvet'),
('BW', 'Botswana'),
('BY', 'Bélarus'),
('BZ', 'Belize'),
('CA', 'Canada'),
('CC', 'Îles Cocos (Keeling)'),
('CD', 'République Démocratique du Congo'),
('CF', 'République Centrafricaine'),
('CG', 'République du Congo'),
('CH', 'Suisse'),
('CI', 'Côte d\'Ivoire'),
('CK', 'Îles Cook'),
('CL', 'Chili'),
('CM', 'Cameroun'),
('CN', 'Chine'),
('CO', 'Colombie'),
('CR', 'Costa Rica'),
('CS', 'Serbie-et-Monténégro'),
('CU', 'Cuba'),
('CV', 'Cap-vert'),
('CX', 'Île Christmas'),
('CY', 'Chypre'),
('CZ', 'République Tchèque'),
('DE', 'Allemagne'),
('DJ', 'Djibouti'),
('DK', 'Danemark'),
('DM', 'Dominique'),
('DO', 'République Dominicaine'),
('DZ', 'Algérie'),
('EC', 'Équateur'),
('EE', 'Estonie'),
('EG', 'Égypte'),
('EH', 'Sahara Occidental'),
('ER', 'Érythrée'),
('ES', 'Espagne'),
('ET', 'Éthiopie'),
('FI', 'Finlande'),
('FJ', 'Fidji'),
('FK', 'Îles (malvinas) Falkland'),
('FM', 'États Fédérés de Micronésie'),
('FO', 'Îles Féroé'),
('FR', 'France'),
('GA', 'Gabon'),
('GB', 'Royaume-Uni'),
('GD', 'Grenade'),
('GE', 'Géorgie'),
('GF', 'Guyane Française'),
('GH', 'Ghana'),
('GI', 'Gibraltar'),
('GL', 'Groenland'),
('GM', 'Gambie'),
('GN', 'Guinée'),
('GP', 'Guadeloupe'),
('GQ', 'Guinée Équatoriale'),
('GR', 'Grèce'),
('GS', 'Géorgie du Sud et les Îles Sandwich du Sud'),
('GT', 'Guatemala'),
('GU', 'Guam'),
('GW', 'Guinée-Bissau'),
('GY', 'Guyana'),
('HK', 'Hong-Kong'),
('HM', 'Îles Heard et Mcdonald'),
('HN', 'Honduras'),
('HR', 'Croatie'),
('HT', 'Haïti'),
('HU', 'Hongrie'),
('ID', 'Indonésie'),
('IE', 'Irlande'),
('IL', 'Israël'),
('IM', 'Île de Man'),
('IN', 'Inde'),
('IO', 'Territoire Britannique de l\'Océan Indien'),
('IQ', 'Iraq'),
('IR', 'République Islamique d\'Iran'),
('IS', 'Islande'),
('IT', 'Italie'),
('JM', 'Jamaïque'),
('JO', 'Jordanie'),
('JP', 'Japon'),
('KE', 'Kenya'),
('KG', 'Kirghizistan'),
('KH', 'Cambodge'),
('KI', 'Kiribati'),
('KM', 'Comores'),
('KN', 'Saint-Kitts-et-Nevis'),
('KP', 'République Populaire Démocratique de Corée'),
('KR', 'République de Corée'),
('KW', 'Koweït'),
('KY', 'Îles Caïmanes'),
('KZ', 'Kazakhstan'),
('LA', 'République Démocratique Populaire Lao'),
('LB', 'Liban'),
('LC', 'Sainte-Lucie'),
('LI', 'Liechtenstein'),
('LK', 'Sri Lanka'),
('LR', 'Libéria'),
('LS', 'Lesotho'),
('LT', 'Lituanie'),
('LU', 'Luxembourg'),
('LV', 'Lettonie'),
('LY', 'Jamahiriya Arabe Libyenne'),
('MA', 'Maroc'),
('MC', 'Monaco'),
('MD', 'République de Moldova'),
('MG', 'Madagascar'),
('MH', 'Îles Marshall'),
('MK', 'L\'ex-République Yougoslave de Macédoine'),
('ML', 'Mali'),
('MM', 'Myanmar'),
('MN', 'Mongolie'),
('MO', 'Macao'),
('MP', 'Îles Mariannes du Nord'),
('MQ', 'Martinique'),
('MR', 'Mauritanie'),
('MS', 'Montserrat'),
('MT', 'Malte'),
('MU', 'Maurice'),
('MV', 'Maldives'),
('MW', 'Malawi'),
('MX', 'Mexique'),
('MY', 'Malaisie'),
('MZ', 'Mozambique'),
('NA', 'Namibie'),
('NC', 'Nouvelle-Calédonie'),
('NE', 'Niger'),
('NF', 'Île Norfolk'),
('NG', 'Nigéria'),
('NI', 'Nicaragua'),
('NL', 'Pays-Bas'),
('NO', 'Norvège'),
('NP', 'Népal'),
('NR', 'Nauru'),
('NU', 'Niué'),
('NZ', 'Nouvelle-Zélande'),
('OM', 'Oman'),
('PA', 'Panama'),
('PE', 'Pérou'),
('PF', 'Polynésie Française'),
('PG', 'Papouasie-Nouvelle-Guinée'),
('PH', 'Philippines'),
('PK', 'Pakistan'),
('PL', 'Pologne'),
('PM', 'Saint-Pierre-et-Miquelon'),
('PN', 'Pitcairn'),
('PR', 'Porto Rico'),
('PS', 'Territoire Palestinien Occupé'),
('PT', 'Portugal'),
('PW', 'Palaos'),
('PY', 'Paraguay'),
('QA', 'Qatar'),
('RE', 'Réunion'),
('RO', 'Roumanie'),
('RU', 'Fédération de Russie'),
('RW', 'Rwanda'),
('SA', 'Arabie Saoudite'),
('SB', 'Îles Salomon'),
('SC', 'Seychelles'),
('SD', 'Soudan'),
('SE', 'Suède'),
('SG', 'Singapour'),
('SH', 'Sainte-Hélène'),
('SI', 'Slovénie'),
('SJ', 'Svalbard etÎle Jan Mayen'),
('SK', 'Slovaquie'),
('SL', 'Sierra Leone'),
('SM', 'Saint-Marin'),
('SN', 'Sénégal'),
('SO', 'Somalie'),
('SR', 'Suriname'),
('ST', 'Sao Tomé-et-Principe'),
('SV', 'El Salvador'),
('SY', 'République Arabe Syrienne'),
('SZ', 'Swaziland'),
('TC', 'Îles Turks et Caïques'),
('TD', 'Tchad'),
('TF', 'Terres Australes Françaises'),
('TG', 'Togo'),
('TH', 'Thaïlande'),
('TJ', 'Tadjikistan'),
('TK', 'Tokelau'),
('TL', 'Timor-Leste'),
('TM', 'Turkménistan'),
('TN', 'Tunisie'),
('TO', 'Tonga'),
('TR', 'Turquie'),
('TT', 'Trinité-et-Tobago'),
('TV', 'Tuvalu'),
('TW', 'Taïwan'),
('TZ', 'République-Unie de Tanzanie'),
('UA', 'Ukraine'),
('UG', 'Ouganda'),
('UM', 'Îles Mineures Éloignées des États-Unis'),
('US', 'États-Unis'),
('UY', 'Uruguay'),
('UZ', 'Ouzbékistan'),
('VA', 'Saint-Siège (état de la Cité du Vatican)'),
('VC', 'Saint-Vincent-et-les Grenadines'),
('VE', 'Venezuela'),
('VG', 'Îles Vierges Britanniques'),
('VI', 'Îles Vierges des États-Unis'),
('VN', 'Viet Nam'),
('VU', 'Vanuatu'),
('WF', 'Wallis et Futuna'),
('WS', 'Samoa'),
('YE', 'Yémen'),
('YT', 'Mayotte'),
('ZA', 'Afrique du Sud'),
('ZM', 'Zambie'),
('ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Structure de la table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `cus_id` int NOT NULL AUTO_INCREMENT,
  `cus_lastname` varchar(50) NOT NULL,
  `cus_firstname` varchar(50) NOT NULL,
  `cus_sexe` varchar(1) NOT NULL,
  `cus_birthdate` date NOT NULL,
  `cus_billing_address` varchar(255) NOT NULL,
  `cus_shipping_address` varchar(255) NOT NULL,
  `cus_zipcode` varchar(10) NOT NULL,
  `cus_city` varchar(50) NOT NULL,
  `cus_phone` varchar(10) NOT NULL,
  `cus_mail` varchar(50) NOT NULL,
  `cus_password` varchar(50) NOT NULL,
  `cus_login` varchar(50) NOT NULL,
  `cus_type` tinyint(1) NOT NULL,
  `cus_coeff` decimal(4,2) NOT NULL,
  `cus_ref` varchar(10) NOT NULL,
  `cus_cou_id` char(2) NOT NULL,
  `cus_emp_id` int NOT NULL,
  PRIMARY KEY (`cus_id`),
  KEY `cus_cou_id` (`cus_cou_id`),
  KEY `cus_emp_id` (`cus_emp_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `customers`
--

INSERT INTO `customers` (`cus_id`, `cus_lastname`, `cus_firstname`, `cus_sexe`, `cus_birthdate`, `cus_billing_address`, `cus_shipping_address`, `cus_zipcode`, `cus_city`, `cus_phone`, `cus_mail`, `cus_password`, `cus_login`, `cus_type`, `cus_coeff`, `cus_ref`, `cus_cou_id`, `cus_emp_id`) VALUES
(1, 'Richardson', 'Reece', 'F', '1973-06-06', '456-6073 Dui. St.', '222 Pede. Ave', '44079', 'Wolfville', '0303578240', 'Duis.risus@risus.edu', 'GUN79QII6QZ', 'diam.', 2, '4.00', 'LDB56DPW6A', 'FR', 3),
(2, 'Avery', 'Hiroko', 'F', '1993-05-28', 'Ap #541-1300 Orci Rd.', 'P.O. Box 692, 9577 Vulputate, Ave', '1099', 'San Luis Río Colorado', '0243460500', 'sem.molestie@duinec.ca', 'JUL75GNX5KO', 'ante', 1, '9.00', 'WQM78CIB3Z', 'FR', 8),
(3, 'Owens', 'Hayfa', '', '1960-09-25', 'P.O. Box 327, 7517 Adipiscing, Av.', '7474 Non, Avenue', 'G0H 2V9', 'Giardinello', '0239107209', 'neque.sed@molestiepharetranibh.com', 'KLF31AAU9SW', 'eu', 1, '4.00', 'SNB52XHC1C', 'FR', 6),
(4, 'Molina', 'Cassady', 'M', '1958-09-24', '7337 Nec Av.', '2028 Ornare St.', '06-240', 'Torella del Sannio', '0954807361', 'neque@elitpretiumet.net', 'UMF46JKN1OX', 'vulputate', 2, '7.00', 'CIP86VOZ4B', 'FR', 7),
(5, 'Santos', 'Lareina', 'F', '1994-05-04', 'P.O. Box 282, 8167 Ac Road', '777-4630 Dapibus Ave', '32157', 'Augusta', '0752935002', 'mauris@pharetrafeliseget.com', 'EFJ57TOC7QL', 'aliquet', 2, '1.00', 'UDU74EJY7L', 'GA', 2),
(6, 'Reed', 'Savannah', 'F', '1969-12-30', '284-9568 Phasellus Rd.', 'P.O. Box 367, 181 At, Ave', '59381', 'San Fabián', '0799880926', 'parturient@etultricesposuere.co.uk', 'CGV85FFF6VZ', 'in', 2, '3.00', 'PYA49ZWE1H', 'BE', 1),
(7, 'Dickerson', 'Jeanette', 'F', '1970-02-15', '2640 Vulputate Road', 'P.O. Box 286, 5958 Ac Rd.', '2473', 'Bègles', '0580889460', 'magnis.dis.parturient@semperetlacinia.org', 'ROY43CDT3LZ', 'Curabitur', 1, '9.00', 'QIV44DRY9I', 'FR', 2),
(8, 'Maynard', 'Madonna', 'F', '1979-01-04', 'Ap #615-3582 Augue Ave', 'Ap #743-3090 Luctus Avenue', 'H3X 4P3', 'Wha Ti', '0877485038', 'mauris.ut.mi@facilisis.ca', 'KCD49QOK3BZ', 'lorem', 1, '5.00', 'OCN79MXB4D', 'CH', 3),
(9, 'Hall', 'Malachi', 'F', '1999-05-26', '641-821 Eu Av.', 'P.O. Box 494, 3691 Lobortis Ave', '5074', 'Voronezh', '0512711142', 'a.nunc@gravidasagittisDuis.net', 'QTS52CSE4EI', 'nisi.', 2, '7.00', 'KIF00VSD5X', 'CA', 5),
(10, 'Knight', 'Phelan', 'M', '1986-03-21', '190-8737 Vel Street', '3038 Erat St.', '40534', 'Alix', '0660889183', 'egestas.a.scelerisque@arcueu.net', 'DAL41UQY7CT', 'sem', 2, '8.00', 'LWI32SCN6H', 'CA', 9),
(11, 'Smith', 'John', 'M', '1990-08-02', '3 Avenue des Fleurs', '3 Avenue des Fleurs', '25896', 'Bourges', '0685297843', 'salut@gmail.com', '11Hudbu45dDF', 'J.Smith', 1, '0.00', 'dsqhghjgkj', 'GB', 3);

-- --------------------------------------------------------

--
-- Structure de la table `delivery`
--

DROP TABLE IF EXISTS `delivery`;
CREATE TABLE IF NOT EXISTS `delivery` (
  `del_id` int NOT NULL AUTO_INCREMENT,
  `del_real_date` date NOT NULL,
  `del_preparation_date` date DEFAULT NULL,
  `del_shipment_date` date DEFAULT NULL,
  `del_address` varchar(255) NOT NULL,
  `del_ord_id` int NOT NULL,
  PRIMARY KEY (`del_id`),
  KEY `del_ord_id` (`del_ord_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `delivery`
--

INSERT INTO `delivery` (`del_id`, `del_real_date`, `del_preparation_date`, `del_shipment_date`, `del_address`, `del_ord_id`) VALUES
(1, '0000-00-00', '2020-12-10', '2021-02-15', 'P.O. Box 213, 7114 Elementum, St.', 4),
(2, '0000-00-00', '2021-09-01', '0000-00-00', 'P.O. Box 851, 2001 Varius Rd.', 8),
(3, '0000-00-00', '2020-04-15', '0000-00-00', 'Ap #196-3054 Risus. Rd.', 3),
(4, '0000-00-00', '2020-02-07', '2020-09-19', 'P.O. Box 971, 6543 Dictum. Street', 2),
(5, '0000-00-00', '2020-09-28', '2021-03-19', '3460 Eleifend, Ave', 5),
(6, '0000-00-00', '2020-12-30', '0000-00-00', 'Ap #570-4530 Odio, St.', 6),
(7, '2020-04-10', '2020-06-24', '2020-11-18', '5247 Est. Rd.', 7),
(8, '0000-00-00', '2020-02-18', '0000-00-00', '388-2016 Ligula. Rd.', 1),
(9, '2019-10-26', '2021-08-22', '2021-06-21', '2231 Mauris Av.', 9),
(10, '2021-03-22', '2019-10-13', '2019-10-05', 'P.O. Box 594, 8140 Pellentesque Avenue', 10);

-- --------------------------------------------------------

--
-- Structure de la table `employees`
--

DROP TABLE IF EXISTS `employees`;
CREATE TABLE IF NOT EXISTS `employees` (
  `emp_id` int NOT NULL AUTO_INCREMENT,
  `emp_lastname` varchar(50) NOT NULL,
  `emp_firstname` varchar(50) NOT NULL,
  `emp_enter_date` date NOT NULL,
  `emp_leaving_date` date DEFAULT NULL,
  `emp_num_secu_social` int NOT NULL,
  `emp_sexe` varchar(1) NOT NULL,
  `emp_birthdate` date NOT NULL,
  `emp_address` varchar(255) NOT NULL,
  `emp_zipcode` varchar(10) NOT NULL,
  `emp_city` varchar(50) NOT NULL,
  `emp_phone` varchar(10) NOT NULL,
  `emp_mail` varchar(50) NOT NULL,
  `emp_password` varchar(50) NOT NULL,
  `emp_login` varchar(50) NOT NULL,
  `emp_client_type` int NOT NULL,
  `emp_emp_id` int DEFAULT NULL,
  `emp_pos_id` int NOT NULL,
  PRIMARY KEY (`emp_id`),
  KEY `emp_emp_id` (`emp_emp_id`),
  KEY `emp_pos_id` (`emp_pos_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `employees`
--

INSERT INTO `employees` (`emp_id`, `emp_lastname`, `emp_firstname`, `emp_enter_date`, `emp_leaving_date`, `emp_num_secu_social`, `emp_sexe`, `emp_birthdate`, `emp_address`, `emp_zipcode`, `emp_city`, `emp_phone`, `emp_mail`, `emp_password`, `emp_login`, `emp_client_type`, `emp_emp_id`, `emp_pos_id`) VALUES
(1, 'Fitzpatrick', 'Wyatt', '2020-05-03', '0000-00-00', 2147483647, 'F', '1964-06-08', '596-1570 Enim. Av.', '1353', 'Greenlaw', '0519723746', 'risus@erat.ca', 'SJV79NQV7ID', 'vulputate', 1, 6, 8),
(2, 'Logan', 'Jelani', '2021-09-05', '0000-00-00', 2147483647, 'M', '1994-05-19', 'Ap #822-3538 Aliquet Rd.', '64916', 'Bridlington', '0363888841', 'vestibulum.neque.sed@ullamcorper.ca', 'XWB54DWF9MP', 'fringilla', 1, 6, 7),
(3, 'Scott', 'Carolyn', '2020-02-14', '0000-00-00', 2147483647, 'M', '1964-02-19', 'Ap #537-5921 Justo Av.', '41470', 'Jecheon', '0811649854', 'justo.Proin@Quisqueornaretortor.org', 'LOL18UIH4JV', 'Donec', 1, 4, 5),
(4, 'Curry', 'Ciaran', '2019-10-16', '0000-00-00', 2147483647, 'F', '1997-04-12', 'Ap #825-8380 Diam Street', '28149', 'Zuccarello', '0226459623', 'cursus.Integer.mollis@pede.net', 'VRK48KXI5UC', 'mauris,', 1, 3, 4),
(5, 'Burks', 'Lee', '2019-10-16', '0000-00-00', 2147483647, 'M', '1978-02-22', 'P.O. Box 334, 4510 Sed Rd.', '3304', 'Issy-les-Moulineaux', '0877671823', 'ornare.lectus.justo@orcilobortisaugue.net', 'JQG55NYK3BS', 'quis,', 2, 6, 8),
(6, 'Monroe', 'Fiona', '2020-09-26', '2020-05-16', 2147483647, 'F', '1965-04-17', 'Ap #848-9339 Curae; St.', '11718', 'Kent', '0379311765', 'pharetra.felis.eget@eros.edu', 'PXH93EIQ7DT', 'sem', 1, 85, 5),
(7, 'Acevedo', 'Slade', '2021-08-16', '0000-00-00', 2147483647, 'M', '1996-02-06', 'Ap #118-1314 Nisi Road', '52487', 'Siverek', '0695364693', 'erat.neque.non@id.edu', 'IAZ65CDR1TL', 'egestas', 2, 8, 9),
(8, 'Lowery', 'Renee', '2020-12-30', '0000-00-00', 2147483647, 'F', '1985-04-17', 'Ap #646-2051 Quisque Rd.', '1666', 'Boston', '0200318356', 'vitae.mauris.sit@Praesenteunulla.edu', 'ZOI92XNV6PQ', 'ipsum.', 1, 4, 6),
(9, 'Hines', 'Joelle', '2020-08-25', '0000-00-00', 2147483647, 'M', '1984-11-21', 'Ap #885-1084 Nibh St.', '05538', 'Krishnanagar', '0217060397', 'at@pellentesque.org', 'XAL93CYR7YJ', 'at,', 1, 6, 7),
(10, 'Herring', 'Troy', '2021-05-17', '0000-00-00', 2147483647, 'F', '1972-08-04', 'P.O. Box 245, 7136 Enim. Road', '74446-4365', 'Colwood', '0627365065', 'Vivamus.rhoncus.Donec@euismodest.org', 'LBF78NNM6KS', 'tempus', 1, 1, 2);

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `ord_id` int NOT NULL AUTO_INCREMENT,
  `ord_ref` varchar(50) NOT NULL,
  `ord_discount` decimal(7,2) DEFAULT NULL,
  `ord_date` date NOT NULL,
  `ord_method_payment` varchar(50) DEFAULT NULL,
  `ord_settlement_date` date NOT NULL,
  `ord_payment_date` date DEFAULT NULL,
  `ord_status` varchar(50) NOT NULL,
  `ord_billing_address` varchar(255) DEFAULT NULL,
  `ord_lateness_cost` decimal(4,2) DEFAULT NULL,
  `ord_cus_id` int DEFAULT NULL,
  PRIMARY KEY (`ord_id`),
  KEY `ord_cus_id` (`ord_cus_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `orders` (`ord_id`, `ord_ref`, `ord_discount`, `ord_date`, `ord_method_payment`, `ord_settlement_date`, `ord_payment_date`, `ord_status`, `ord_billing_address`, `ord_lateness_cost`, `ord_cus_id`) VALUES
(1, 'QEU75HHU3ET', '9.00', '2020-04-13', 'Espèce', '2020-01-29', '2020-04-30', 'En préparation', '2640 Vulputate Road', '2.00', 7),
(2, 'DIC97WHZ6RG', '10.00', '2021-06-29', 'Espèce', '2020-12-11', '2019-12-17', 'Envoyé', '456-6073 Dui. St.', '6.00', 1),
(3, 'WVE09MFV4SF', '0.00', '2021-01-28', 'Espèce', '2019-10-20', '2020-01-03', 'En préparation', 'Ap #541-1300 Orci Rd.', '7.00', 2),
(4, 'IQS96LVJ3ND', '0.00', '2021-07-09', 'Carte bancaire', '2020-09-15', '2020-12-23', 'Envoyé', '190-8737 Vel Street', '7.00', 10),
(5, 'ABK93ZBI4WU', '3.00', '2021-02-10', 'Carte bancaire', '2020-05-13', '2020-12-26', 'Envoyé', '2640 Vulputate Road', '7.00', 7),
(6, 'IDR43VYR4QP', '9.00', '2020-07-07', 'Chèque', '2021-07-04', '2021-09-11', 'En préparation', '284-9568 Phasellus Rd.', '1.00', 6),
(7, 'PID99JPL8DY', '9.00', '2021-07-27', 'Carte bancaire', '2021-03-26', '2021-03-06', 'Livré', 'P.O. Box 327, 7517 Adipiscing, Av.', '9.00', 3),
(8, 'ZHC73TKR8PE', '2.00', '2020-01-07', 'Espèce', '2019-11-09', '2021-01-08', 'En préparation', 'Ap #541-1300 Orci Rd.', '4.00', 2),
(9, 'JDH21ZIX3NA', '6.00', '2020-10-13', 'Chèque', '2021-06-01', '2021-08-01', 'Livré', '641-821 Eu Av.', '6.00', 9),
(10, 'VAM76FSI5BW', '5.00', '2020-05-07', 'Carte bancaire', '2020-06-10', '2019-11-23', 'Livré', '456-6073 Dui. St.', '8.00', 1);

-- --------------------------------------------------------

--
-- Structure de la table `orders_details`
--

DROP TABLE IF EXISTS `orders_details`;
CREATE TABLE IF NOT EXISTS `orders_details` (
  `ode_id` int NOT NULL AUTO_INCREMENT,
  `ode_quantity` int NOT NULL,
  `ode_unit_price` float NOT NULL,
  `ode_discount` float DEFAULT NULL,
  `ode_ord_id` int NOT NULL,
  `ode_del_id` int NOT NULL,
  `ode_pro_id` int NOT NULL,
  PRIMARY KEY (`ode_id`),
  KEY `ode_ord_id` (`ode_ord_id`),
  KEY `ode_del_id` (`ode_del_id`),
  KEY `ode_pro_id` (`ode_pro_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `orders_details`
--

INSERT INTO `orders_details` (`ode_id`, `ode_quantity`, `ode_unit_price`, `ode_discount`, `ode_ord_id`, `ode_del_id`, `ode_pro_id`) VALUES
(1, 5, 311.47, 2, 9, 6, 7),
(2, 3, 311.47, 4, 2, 7, 7),
(3, 3, 55.56, 5, 2, 3, 2),
(4, 2, 79.99, 2, 3, 6, 4),
(5, 7, 79.99, 6, 1, 10, 4),
(6, 5, 55.56, 5, 7, 10, 2),
(7, 9, 83.99, 3, 1, 4, 10),
(8, 10, 261, 6, 10, 10, 3),
(9, 8, 6, 6, 4, 1, 8),
(10, 10, 781, 1, 3, 3, 9);

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `pos_id` int NOT NULL AUTO_INCREMENT,
  `pos_libelle` varchar(50) NOT NULL,
  `pos_description` varchar(255) NOT NULL,
  PRIMARY KEY (`pos_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`pos_id`, `pos_libelle`, `pos_description`) VALUES
(1, 'Prédident Directeur Général', ''),
(2, 'Manager', ''),
(3, 'Commercial', ''),
(4, 'Responsable des ventes', ''),
(5, 'Assistant commercial', ''),
(6, 'Assistant RH', ''),
(7, 'Directeur financier', ''),
(8, 'Comptable', ''),
(9, 'Préparateur de commandes', '');

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `pro_id` int NOT NULL AUTO_INCREMENT,
  `pro_name` varchar(50) NOT NULL,
  `pro_desc` text NOT NULL,
  `pro_price` decimal(7,2) NOT NULL,
  `pro_ref` varchar(50) NOT NULL,
  `pro_stock` int NOT NULL,
  `pro_stock_alert` int NOT NULL,
  `pro_color` varchar(50) NOT NULL,
  `pro_picture` varchar(50) NOT NULL,
  `pro_add_date` date NOT NULL,
  `pro_update_date` date DEFAULT NULL,
  `pro_blocked` tinyint(1) NOT NULL,
  `pro_sup_id` int NOT NULL,
  `pro_cat_id` int NOT NULL,
  PRIMARY KEY (`pro_id`),
  KEY `pro_sup_id` (`pro_sup_id`),
  KEY `pro_cat_id` (`pro_cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`pro_id`, `pro_name`, `pro_desc`, `pro_price`, `pro_ref`, `pro_stock`, `pro_stock_alert`, `pro_color`, `pro_picture`, `pro_add_date`, `pro_update_date`, `pro_blocked`, `pro_sup_id`, `pro_cat_id`) VALUES
(1, 'Guitare Électrique LA, Red + Pack Ampli', 'Le plus beau des cadeaux pour des premier pas dans la musique. La guitare électrique 3/4 LA est linstrument parfait pour débuter dans le monde du Rock n Roll. \r\nSes micros à simple bobinage vous permettent de remplir lair de sonorités délicates et nettes ou de sons puissants pleins de distorsion. Un pack offrant un excellent rapport qualité/prix avec un ampli de guitare \r\nélectrique 10 W un câble une sangle et un accordeur électronique. Profitez des mêmes caractéristiques que notre guitare électrique LA la plus vendue - mais dans une taille plus petite. Tout ce dont un guitariste \r\nen herbe a besoin.', '143.50', 'TRH45TOZ9HF', 3, 8, 'orange', 'https://images-na.ssl-images-amazon.com/images/I/4', '2021-01-10', '2021-01-07', 2, 6, 4),
(2, 'Martin Smith Kit de Guitare Acoustique avec Médiat', 'La guitare acoustique Martin Smith W100 est le choix préféré pour des milliers de guitaristes \r\npour les ges 11+ Conçu spécialement pour les étudiants cette pleine grandeur guitare acoustique est livré avec des cordes en acier sangle de guitare cordes de guitare de rechange et médiators de guitare \r\nCe W-100 guitare acoustique a une taille complète 39\'\' corps parfaitement profilée pour une position de lecture confortable et avait une cheville en bas singulier pour attacher \r\nvotre sangle de guitare', '55.56', 'SZT98BVB4TL', 10, 2, 'red', 'https://images-na.ssl-images-amazon.com/images/I/7', '2019-12-05', '2021-02-13', 1, 10, 4),
(3, 'BDK-1 Kit de Batterie pour Debutant de Taille Stan', 'Faites votre entrée dans le monde de la batterie. Idéale pour le jeu à domicile, cette batterie vous permet de jouer dans tous \r\nles styles : rock, pop et bien plus encore. La batterie pour débutant BDK-2 comprend tout ce dont vous aurez besoin pour devenir un meilleur batteur. ', '261.00', 'FIT04OWL9SR', 1, 5, 'green', 'https://images-na.ssl-images-amazon.com/images/I/4', '2019-12-29', '2020-10-07', 2, 2, 13),
(4, 'Eastar Flute Traversiere EFL-1 Nickel Plaqué 16 Tr', 'Eastar propose un pack à prix intéressant pour toutes les personnes qui souhaitent apprendre la flûte traversière. Il comprend tout le nécessaire \r\npour démarrer sur de bonnes bases dont une flûte traversière EFL-1, un étui, un socle, un tournevis ainsi que des accessoires nécessaires à son entretien, tels qu\'un gant à polir, un tige de nettoyage et un \r\nchiffon de nettoyage. ', '79.99', 'EJJ89BUI1EN', 4, 5, 'violet', 'dapibus', '2021-02-20', '2020-06-04', 1, 9, 11),
(5, 'East Top 10 Hole 20 Tones Professional Diatonic Ha', 'L\'harmonica diatonique à 10 trous est au format de poche avec des extrémités entièrement fermées. Le format de poche est facile à transporter et facile à apprendre. Vous pouvez jouer une variété de morceaux \r\nde musique: blues, folk, rock, country, jazz. Convient aux activités de plein air telles que la fête, la performance et les voyages. ', '24.99', 'KWY33EKC6KN', 7, 3, 'violet', 'https://images-na.ssl-images-amazon.com/images/I/7', '2019-09-19', '2021-08-14', 2, 9, 12),
(6, 'Harpe irlandaise 12 cordes en bois de Sheesham / H', 'Harpe irlandaise 12 cordes en bois de Sheesham/rose. Étui de transport inclus. Harpe celtique \r\nirlandaise 12 cordes en bois de rose/Sheesham Cette harpe est fabriquée en bois de rose massif/bois de Sheesham, avec un bois de bouleau contreplaqué et de la frêne au dos. 12 cordes en nylon mono tech 100 % \r\njouables ', '146.23', 'EJD86CDN7UB', 10, 10, 'indigo', 'https://images-na.ssl-images-amazon.com/images/I/6', '2021-05-05', '2020-08-13', 1, 10, 7),
(7, 'Yinfente Violoncelle électrique acoustique 4/4 en ', 'Violoncelle de la marque Yinfente. Entièrement fabriqué à la main. \r\nvioloncelle électrique acoustique Bois d\'érable et d\'épicéa. Avec raccords en ébène. Son doux et charmant. Notre qualité de violoncelle est très bien. Vendre à beaucoup de pays, Tant de clients aiment \r\nbeaucoup ', '311.47', 'UDC34OGJ9FR', 1, 6, 'blue', 'https://images-na.ssl-images-amazon.com/images/I/7', '2021-07-16', '2019-11-29', 1, 4, 6),
(8, 'A-Star REC01BE Flûte à bec soprano/Enregistreur De', 'La flûte à bec soprano A-Star est l\'instrument idéal pour les jeunes qui débutent dans l\'apprentissage de la musique. \r\nCet instrument au son exceptionnel est accompagné d\'une housse de protection et bénéficie d\'un rapport qualité/prix très avantageux. Extrêmement populaire et hautement recommandée, la flûte à bec soprano A-Star \r\nest fabriquée en plastique très résistant couleur crème et munie d\'un système de doigté baroque. ', '6.00', 'QVY72AVX6OG', 7, 7, 'red', 'https://images-na.ssl-images-amazon.com/images/I/7', '2019-11-06', '2020-12-02', 2, 6, 11),
(9, 'Vangoa Clavier électronique 88 touches avec suppor', 'Le piano à clavier pleine taille à 88 touches sensibles à la vélocité vous permet de jouer de nombreux niveaux de volume différents, de \r\ndoux à fort. Équipé d\'un double haut-parleur stéréo, vous plongez dans le merveilleux monde de la musique, adapté aux artistes de différents niveaux, en particulier pour les débutants, les intermédiaires, les \r\nmélomanes et plus encore. ', '781.00', 'XTX77EUD2OP', 8, 9, 'orange', 'Maecenas', '2021-08-26', '2019-12-18', 2, 6, 8),
(10, 'Eastar Violon 3/4 avec Etui, Accordeur, Epaulière,', 'Sa table est en épicéa, son dos et ses éclisses sont en érable. Sa touche, sa mentonnière et ses chevilles sont quant à eux en ébène. \r\nPour un accordage simplifié et fiable, des tendeurs de précision sont présents sur le cordier. Le violon est totalement fabriqué à la main. Ce très bel instrument possède une belle finition antique avec un vernis \r\nappliqué semi-manuellement et de jolis filets incrustés. Ce violon est basé sur une conception sérieuse et robuste.', '83.99', 'CUX73ZDA3DG', 8, 7, 'orange', 'https://images-na.ssl-images-amazon.com/images/I/8', '2020-04-22', '2020-02-02', 1, 4, 5);

-- --------------------------------------------------------

--
-- Structure de la table `quantity`
--

DROP TABLE IF EXISTS `quantity`;
CREATE TABLE IF NOT EXISTS `quantity` (
  `qua_ode_id` int NOT NULL,
  `qua_del_id` int NOT NULL,
  `qua_quantity` int NOT NULL,
  PRIMARY KEY (`qua_ode_id`,`qua_del_id`),
  KEY `qua_del_id` (`qua_del_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `quantity`
--

INSERT INTO `quantity` (`qua_ode_id`, `qua_del_id`, `qua_quantity`) VALUES
(7, 2, 8),
(6, 2, 4),
(2, 7, 4),
(10, 8, 7),
(8, 2, 10),
(6, 10, 7),
(1, 2, 10),
(1, 1, 6),
(9, 6, 6),
(9, 2, 2);

-- --------------------------------------------------------

--
-- Structure de la table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
CREATE TABLE IF NOT EXISTS `suppliers` (
  `sup_id` int NOT NULL AUTO_INCREMENT,
  `sup_name` varchar(50) NOT NULL,
  `sup_address` varchar(255) NOT NULL,
  `sup_zipcode` varchar(10) NOT NULL,
  `sup_city` varchar(50) NOT NULL,
  `sup_phone` varchar(10) NOT NULL,
  `sup_mail` varchar(50) NOT NULL,
  `sup_cou_id` char(2) NOT NULL,
  PRIMARY KEY (`sup_id`),
  KEY `sup_cou_id` (`sup_cou_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `suppliers`
--

INSERT INTO `suppliers` (`sup_id`, `sup_name`, `sup_address`, `sup_zipcode`, `sup_city`, `sup_phone`, `sup_mail`, `sup_cou_id`) VALUES
(1, 'Pede Institute', '7424 Ante Av.', '77866-7621', 'Buckingham', '0333912771', 'a@aodiosemper.org', 'FR'),
(2, 'Nam Interdum Incorporated', '154 A, Ave', '66335', 'Łódź', '0131109232', 'imperdiet@In.edu', 'FR'),
(3, 'Risus LLC', '1446 Vulputate Avenue', 'Z5877', 'Rodì Milici', '0574248792', 'congue.In.scelerisque@laciniaSedcongue.net', 'CA'),
(4, 'Vel Pede Blandit PC', '545-4414 Nec, Rd.', '289400', 'Sapele', '0675868438', 'sed@scelerisquedui.co.uk', 'BE'),
(5, 'Velit Cras Lorem Industries', '4845 Nascetur Avenue', '7355', 'Opheylissem', '0286007631', 'Etiam.ligula.tortor@ante.com', 'BE'),
(6, 'Enim Corp.', '515-2132 Cum Street', 'Z0782', 'Sachs Harbour', '0838828762', 'Donec.nibh.Quisque@semmolestiesodales.net', 'CA'),
(7, 'Turpis Egestas LLC', '183-3900 Phasellus Ave', '882411', 'Lago Verde', '0811196271', 'feugiat.Sed@aliquet.com', 'CH'),
(8, 'Felis Donec Tempor Incorporated', '927-1035 Quis Street', '474790', 'Cottbus', '0137836966', 'tortor@Donec.net', 'FR'),
(9, 'Aliquam Eros Turpis Corp.', '476 Non St.', '24918', 'Cap-de-la-Madeleine', '0603139476', 'lectus@anteMaecenasmi.ca', 'CH'),
(10, 'Arcu Iaculis Enim Corp.', '858-1453 Cum Ave', '1283', 'Buggenhout', '0624070976', 'Aliquam.erat.volutpat@eunulla.ca', 'CA');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
