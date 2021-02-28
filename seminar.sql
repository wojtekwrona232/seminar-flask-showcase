-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 28 Lut 2021, 02:13
-- Wersja serwera: 10.4.17-MariaDB
-- Wersja PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `seminar`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `addresses`
--

CREATE TABLE `addresses` (
  `id` int(11) NOT NULL,
  `address` varchar(512) NOT NULL,
  `city` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `addresses`
--

INSERT INTO `addresses` (`id`, `address`, `city`) VALUES
(1, '2 Celtic Farm Way, Stoke-on-Trent, Moray B1 7TV', 'Walsall'),
(2, '23 Greatdown Road, Putney, Ross NG7 4RB', 'Middlesbrough'),
(3, '5 Westminster Road, Wolverhampton, Essex PR4 2JE', 'Oxford'),
(4, '3-9 Elgin Avenue, Rhyl, Staffordshire WC1 9PR', 'Wolverhampton'),
(5, '3-9 Huron Road, Littleborough, Fife S9 7HP', 'Birmingham'),
(6, '6 Charlton Road, Nottingham, Kinross-shire GL8 6RD', 'Bristol'),
(7, '55-27 Henderson Road, Blantyre, Staffordshire H7 1SY', 'Reading'),
(8, '4-7 Harper Road, Abergavenny, Kinross-shire TD99 3HF', 'Stockport'),
(9, '3-6 Scarborough Road, Nottingham, Dunbartonshire TA3 8YF', 'Kingston upon Hull'),
(10, '14-16 Poppy Close, Brighton, Isle of Wight WD7 6HV', 'Dudley'),
(11, '88 A-B Maplin Harrow, Buntingford, Ayrshire LA80 2PW', 'Rotherham'),
(12, '12-29 Admiral Seymore Road, Reading, West Midlands LL5 1SP', 'Milton Keynes'),
(13, '4 A-E Stanhope Road, Aberdare, Dumfriesshire TW1 6HW', 'Leeds'),
(14, '6 Berkeley Avenue, Willesden, Derbyshire SS9 8NQ', 'Eastbourne'),
(15, '9D Abbey Street, Dudley, Derbyshire SS3 4AT', 'Stoke-on-Trent'),
(16, '65 Robin Hood Way, Waterloo, Argyll BT1 3HU', 'Watford'),
(17, '5 Bedfont Lane, Stockport, Humberside NN4 7YR', 'Sheffield'),
(18, '6 Atlantic Road, Deeside, Dyfed BD2 9PE', 'Peterborough'),
(19, '9 Broadwalk, Lee-on-Solent, Tyrone M6 5SY', 'York'),
(20, '2 Elfwine Road, Great Yarmouth, Cornwall EN4 7AW', 'Newcastle upon Tyne'),
(21, '5-8 Bective Road, Cambridge, Kirkcudbrightshire PR90 5YS', 'Blackburn'),
(22, '822 A-E Boundary Road, Aberaeron, Derbyshire SS17 4WZ', 'Plymouth'),
(23, '1 Albemarle Street, Blackburn, Fermanagh SA4 6JH', 'Sunderland'),
(24, '3-8 George Court, Abbey Wood, Antrim TA37 3JT', 'West Bromwich'),
(25, '3 Bude Close, Birmingham, Kirkcudbrightshire SP8 7FT', 'Cambridge'),
(26, '9 Sidney Place, Fochabers, Leicestershire TN1 3BJ', 'Leicester'),
(27, '31 Meath Crescent, Lewes, Argyll SK56 6NJ', 'Northampton'),
(28, '53-28 Carlton Road, Ambleside, Dorset EH58 7SG', 'Slough'),
(29, '29 York Street, New Cross, Shropshire DH4 9VB', 'Exeter'),
(30, '3-8 Great George Street, Aberdeen, Middlesex DY4 9TY', 'Poole'),
(31, '3-6 Hannover Place, Preston, Wigtownshire MK6 9ET', 'Norwich'),
(32, '2 A-C Abbeville Road, Peterborough, Northumberland RG55 5YE', 'Portsmouth'),
(33, '5 Assembly Walk, Stockport, Lanarkshire NP8 3JJ', 'Blackpool'),
(34, '12-17 Mexfield Road, Abergavenny, Ross SO5 7DG', 'Colchester'),
(35, '1-6 Berne Road, Southampton, Essex KA1 3AU', 'Bolton'),
(36, '4 Abbotsbury Road, Liverpool, Bedfordshire BB84 7YG', 'Liverpool'),
(37, '2-9 Theobalds Road, Mayfield, Perthshire KW4 4UG', 'Nottingham'),
(38, '54-29 Chingford Road, Brighton, Bedfordshire H1 1WD', 'Gloucester'),
(39, '7A Theobold\'s Road, Portsmouth, Shetland IV7 7PA', 'Sutton Coldfield'),
(40, '2 Upper John Street, Blackburn, Shropshire G34 7YQ', 'Preston'),
(41, '31-57 Fairfield Way, Bolton, Cumberland ZE8 6WR', 'London'),
(42, '9 A-D Little Portland Street, Prestwick, Wiltshire BT20 5XB', 'Southampton'),
(43, '53 Clarendon Road, Birmingham, Worcestershire WN40 2XD', 'Swindon'),
(44, '1-9 Amber Close, Ipswich, Caithness LD7 6TD', 'Coventry'),
(45, '5-7 Sackville Close, York, West Lothian WF61 1VA', 'Oldham'),
(46, '31-57 Fernwood Avenue, Steyning, Renfrewshire BB7 6QP', 'Southend-on-Sea'),
(47, '3-9 Britten Street, Blackpool, Inverness-shire H9 1SZ', 'Huddersfield'),
(48, '9 Liberty Bridge Road, Sheffield, Down CR5 2YB', 'Bournemouth'),
(49, '8 South Hill Avenue, Irvine, Kent SM64 4ZF', 'Luton'),
(50, '45-27 Falcon Road, Nethy Bridge, Perthshire SS9 8GQ', 'Crawley'),
(51, '5-7 New Heston Road, Eastbourne, County Durham BD3 4ED', 'Ipswich'),
(52, '34-59 Carolina Close, Henley-on-Thames, Gwent LL28 5PH', 'Telford'),
(53, '2 A-D Flask Walk, Driffield, Wiltshire DE95 6BE', 'Manchester'),
(54, '3-8 Moorfield Road, Aylesford, Down SG8 4JX', 'St Helens'),
(55, '51 A-C Gordon Square, Frizington, Kent CH72 1NY', 'Bradford'),
(56, '1-8 Brent Street, Leeds, Lanarkshire L9 1XQ', 'Derby'),
(57, '9 Grosvenor Road, Bedworth, Leicestershire SE2 5SW', 'Brighton'),
(58, '32-38 North Worple Way, Northampton, Clackmannanshire NN4 6ZA', 'Middlesbrough'),
(59, '6D Hollen Street, Bothwell, Cambridgeshire IM8 4NU', 'Oxford'),
(60, '6 Acton Mews, Ardrishaig, Westmorland B17 7WJ', 'Walsall'),
(61, '53-37 Saint Martin\'s Lane, Coventry, Cromartyshire TD8 8XP', 'Birmingham'),
(62, '13-28 Tamworth Street, Northampton, Gwent EC6 9GV', 'Kingston upon Hull'),
(63, '4-9 Acton Lane, York, Berwickshire TW3 8PW', 'Dudley'),
(64, '576 A-D Elias Place, Ipswich, Moray PO91 2VN', 'Wolverhampton'),
(65, '7 Gower Place, Lampeter, Renfrewshire CB26 3US', 'Reading'),
(66, '11-18 Abbey Road, Colchester, Wiltshire NN9 5EU', 'Bristol'),
(67, '2 Tildesley Road, Peterborough, Cheshire BH9 1AV', 'Blackburn'),
(68, '8 A-B Percy Road, York, Sussex SO34 9PE', 'Cambridge'),
(69, '41-29 St Mary\'s Road, Axminster, Londonderry WV53 8PF', 'Leeds'),
(70, '5-8 Brockley Road, Norwich, Gwynedd CO58 2XU', 'Blackpool'),
(71, '35-38 Loris Road, Newcastle upon Tyne, Midlothian KY2 9GS', 'Watford'),
(72, '5-7 Sweden Gate, Ipswich, Hampshire BL6 9YV', 'Eastbourne'),
(73, '77C Abbotsbury Road, Northampton, West Midlands B31 9AE', 'Stockport'),
(74, '1B Alie Street, Stafford, Powys DY80 6HY', 'Colchester'),
(75, '5 Abbey Road, Ripon, Armagh N3 9EP', 'Bolton'),
(76, '69 A-E Hans Crescent, Eastbourne, Lanarkshire SK7 9UF', 'York'),
(77, '6A Woodford Road, Accrington, Kinross-shire ST7 5ZT', 'West Bromwich'),
(78, '31-46 Brisbane Road, Hemel Hempstead, Shetland WR63 8EQ', 'Rotherham'),
(79, '9A Artillery Row, Andover, Hampshire RH20 1VX', 'Coventry'),
(80, '4-6 Prince Edward Road, Sheffield, Perthshire PR2 1AQ', 'Milton Keynes'),
(81, '30 Camden Lock Place, Exeter, Fife BL4 8UV', 'Leicester'),
(82, '54-38 Ezra Street, Abergele, Cornwall BR18 5QB', 'Exeter'),
(83, '6 Abbey Road, Wimbledon, Dumfriesshire KT23 9DJ', 'Bournemouth'),
(84, '4 Frances Court, Stockport, Ayrshire BA6 5GP', 'Liverpool'),
(85, '142C Mitcham Lane, Wolverhampton, Rutland PE4 7PV', 'Stoke-on-Trent'),
(86, '7E Glebelands Avenue, Bradford on Avon, Dumfriesshire FK6 5ES', 'Gloucester'),
(87, '487D Mitcham Lane, Birmingham, Tyrone BD7 9WR', 'Peterborough'),
(88, '9 Sage Mews, Peterborough, Gloucestershire MK3 8SS', 'Crawley'),
(89, '5A Trebovir Road, Preston, Hampshire M46 4QD', 'London'),
(90, '77B Acre Lane, Liverpool, Cumbria LE95 7QS', 'Bradford'),
(91, '5 Doughty Mews, Dronfield, Greater Manchester SY8 4GD', 'Derby'),
(92, '23-47 Edinburgh Road, Kingston upon Hull, Somerset NP19 7QX', 'Brighton'),
(93, '1-9 New Wharf Road, Ashford, Londonderry SM65 5GR', 'Newcastle upon Tyne'),
(94, '8 Pickwick Walk, Norwich, Gloucestershire WN8 9DR', 'Plymouth'),
(95, '24-18 Wyatts Lane, Sunderland, Isle of Wight ST4 3VJ', 'Sheffield'),
(96, '54-27 Bracewell Avenue, Rotherham, Bedfordshire PR6 1YV', 'Huddersfield'),
(97, '21-48 Redchurch Street, Eastbourne, Derbyshire DN4 8QT', 'Sunderland'),
(98, '3 Frant Road, Aberdeen, Dunbartonshire DN36 4AT', 'Slough'),
(99, '3-7 Tooting Bec Road, Bournemouth, West Lothian BB88 9XT', 'Sutton Coldfield'),
(100, '5 Clifford Street, Preston, Shropshire KT98 1HT', 'Northampton'),
(101, 'aleja Tadeusza Rejtana 16C, 35-310 Rzeszów', 'Rzeszów'),
(105, 'aleja Tadeusza Rejtana 16C, 35-310 Rzeszów', 'Rzeszów'),
(106, 'aleja Tadeusza Rejtana 16C, 35-310 Rzeszów', 'Rzeszów'),
(108, 'Pigonia 1, 35-310 Rzeszów', 'Rzeszów'),
(109, 'test address', 'test city'),
(110, 'Pigonia 1, 35-310 Rzeszów', 'Rzeszów');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(128) NOT NULL,
  `last_name` varchar(128) NOT NULL,
  `address_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `address_id`) VALUES
(6, 'Alfonso', 'Bowens', 49),
(7, 'Jason', 'Stanley', 68),
(9, 'Yasmine', 'Everett', 3),
(10, 'Darcey', 'Lowry', 22),
(11, 'Rodney', 'Wicks', 78),
(12, 'Latoya', 'Abraham', 1),
(13, 'Jesus', 'Pelletier', 44),
(14, 'Olimpia', 'Bower', 56),
(15, 'Aurelia', 'Hutcheson', 81),
(16, 'Freeman', 'Stanton', 97),
(17, 'Brent', 'Handy', 50),
(18, 'Anglea', 'Everhart', 42),
(19, 'Desirae', 'Abrams', 98),
(20, 'Cleo', 'Bowers', 11),
(21, 'Clint', 'Abreu', 34),
(22, 'Patience', 'Wiese', 74),
(23, 'Agustin', 'Loy', 6),
(24, 'Josh', 'Hutchings', 58),
(25, 'Ada', 'Staples', 66),
(26, 'Margherita', 'Wiggins', 18),
(27, 'Carlita', 'Mckeever', 11),
(28, 'Adolph', 'Peltier', 22),
(29, 'Britt', 'Mckenna', 90),
(30, 'Blair', 'Stapleton', 38),
(31, 'Fritz', 'Wilbanks', 33),
(32, 'Maddie', 'Pemberton', 74),
(33, 'Adrianne', 'Loyd', 58),
(34, 'Mittie', 'Hutchins', 52),
(35, 'Ellis', 'Starkey', 49),
(36, 'Roland', 'Wilbur', 95),
(37, 'Samuel', 'Starks', 54),
(38, 'Arthur', 'Hanes', 62),
(39, 'Rebecka', 'Mckenney', 49),
(40, 'Selena', 'Pena', 66),
(41, 'Albertina', 'Wilburn', 62),
(42, 'Kelley', 'Evers', 30),
(43, 'Felicia', 'Haney', 24),
(44, 'Wally', 'Ewing', 11),
(45, 'Oren', 'Starling', 37),
(46, 'Dong', 'Hankins', 22),
(47, 'Cristobal', 'Ezell', 45),
(48, 'Harley', 'Bowie', 56),
(49, 'Cornell', 'Hanks', 96),
(50, 'Glenn', 'Wilcox', 39),
(51, 'Adolfo', 'Faber', 92),
(52, 'Michelina', 'Lozano', 88),
(53, 'Lewis', 'Hutchinson', 63),
(54, 'Devin', 'Mckenzie', 74),
(55, 'Bettye', 'Pence', 72),
(56, 'Arthur', 'Acevedo', 13),
(57, 'Renate', 'Hanley', 65),
(58, 'Delia', 'Lucas', 4),
(59, 'Cleo', 'Bowles', 7),
(60, 'Arden', 'Hutchison', 53),
(61, 'Gloria', 'Starnes', 87),
(62, 'Sun', 'Acker', 86),
(63, 'Abraham', 'Fagan', 8),
(64, 'Refugio', 'Wild', 13),
(65, 'Jacquetta', 'Bowlin', 91),
(66, 'Blaine', 'Hanlon', 87),
(67, 'Devon', 'Mckeown', 86),
(68, 'Glen', 'Starr', 10),
(69, 'Reinaldo', 'Fahey', 98),
(70, 'Jeffrey', 'Wilde', 8),
(71, 'Nicky', 'Pendergrass', 22),
(72, 'Foster', 'Mckinley', 95),
(73, 'Aide', 'Hanna', 50),
(74, 'Minh', 'Luce', 53),
(75, 'Anton', 'Fain', 29),
(76, 'Emilia', 'Ackerman', 44),
(77, 'Benny', 'Bowling', 58),
(78, 'Jerome', 'Hutson', 8),
(79, 'Loise', 'Hannah', 40),
(80, 'Shane', 'Staten', 26),
(81, 'Orville', 'Pendleton', 56),
(82, 'Abel', 'Lucero', 24),
(83, 'Tanja', 'Fairbanks', 39),
(84, 'Aron', 'Hutto', 98),
(85, 'Bernard', 'Acosta', 71),
(86, 'Zora', 'Hannon', 51),
(87, 'Maxwell', 'Bowman', 32),
(88, 'Shira', 'Luciano', 46),
(89, 'Graham', 'Hutton', 82),
(90, 'Kiana', 'Fairchild', 58),
(91, 'Rocky', 'Wilder', 48),
(92, 'Reid', 'Luckett', 77),
(93, 'Aiko', 'Hansen', 31),
(94, 'Adelaide', 'Fairley', 96),
(95, 'Rufus', 'Staton', 52),
(96, 'Jame', 'Hanson', 62),
(97, 'Jerrell', 'Faison', 52),
(98, 'Bart', 'Harbin', 53),
(99, 'Anibal', 'Wiles', 93),
(107, 'John', 'Doe', 110);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_users_address_id` (`address_id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `FK_users_address_id` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
