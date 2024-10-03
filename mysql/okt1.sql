
use tall;

INSERT INTO `töötajad` (`nimi`) VALUES
('Aadu Laid'),
('Ester Teeveer'),
('Raul Väli'),
('Mihkel Soo'),
('Paavo Neihaus'),
('Oskar Vallik'),
('Reet Romanjuk'),
('Karin Hallas'),
('Carina Romana Ciaro');


INSERT INTO `omanikud` (`omanik`, `Aadress`, `telefon`) VALUES
('Aadu Laid', 'Tallinn', 55231231),
('Ester Teeveer', 'Kuressaare', 5832325),
('Raul Väli', 'Paide', 123456789),     
('Mihkel Soo', 'Lehtse', 987654321),   
('Paavo Neihaus', 'Aruküla', 555555555),
('Oskar Vallik', 'Tartu', 654321987),  
('Reet Romanjuk', 'Pärnu', 52377),
('Karin Hallas', 'Mooste', 557877667),
('Carina Romana Ciaro', 'Ikla', 53242342);

INSERT INTO `tall` (`nimi`, `aadress`) VALUES
('Tallinn Stable', 55231231);

INSERT INTO `talliboksid` (`num`, `töötaja`) VALUES
('Box 1', 1),
('Box 2', 2),
('Box 3', 3); 

INSERT INTO `Hobused` (`nimi`, `omanikID`, `vanus`, `talliboksID`, `tallID`) VALUES
('Horse 1', 1, 5, 1, 1),  
('Horse 2', 2, 7, 2, 1), 
('Horse 3', 3, 4, 3, 1);  

-- Insert into `treeningud`
INSERT INTO `treeningud` (`TöötajaID`, `kuupäev`, `HobuseID`, `kirjeldus`) VALUES
(1, '2024-10-01', 1, 'Basic training for Horse 1'),
(2, '2024-10-02', 2, 'Jumping exercises for Horse 2'),
(3, '2024-10-03', 3, 'Dressage training for Horse 3');


INSERT INTO `töögraafikud` (`nimi`, `kirjeldus`, `kuupäev`, `töötajaID`) VALUES
('Shift 1', 'Morning shift', '2024-10-01', 1),
('Shift 2', 'Afternoon shift', '2024-10-02', 2);


INSERT INTO `talli_varustus` (`id`, `nimi`, `varustus`, `TallID`) VALUES
('1', 'Saddle', 'Leather saddle', 1),
('2', 'Bridle', 'Leather bridle', 1);


INSERT INTO `protsetuuride_ajalugu` (`HobuseNimi`, `protseduur`, `kommentaar`, `kuupäev`, `HobuseID`) VALUES
('Horse 1', 'Vaccination', 'Flu vaccination', '2024-09-15', 1),
('Horse 2', 'Check-up', 'Regular health check', '2024-09-20', 2);


SELECT * FROM `töötajad`;

SELECT * FROM `omanikud`;

SELECT * FROM `omanikud`;

SELECT * FROM `tall`;

SELECT * FROM `talliboksid`;

SELECT * FROM `Hobused`;

SELECT * FROM `treeningud`;

SELECT * FROM `töögraafikud`;

SELECT * FROM `talli_varustus`;

SELECT * FROM `protsetuuride_ajalugu`;



