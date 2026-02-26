CREATE TABLE location (
    id_location INT AUTO_INCREMENT PRIMARY KEY,
    date_debut DATETIME NOT NULL,
    date_fin DATETIME NOT NULL,
    id_client INT NOT NULL,
    id_vehicule INT NOT NULL,
    id_station_depart INT NOT NULL,
    id_station_arrivee INT NOT NULL,

    FOREIGN KEY (id_client) REFERENCES client(id_client),
    FOREIGN KEY (id_vehicule) REFERENCES vehicule(id_vehicule),
    FOREIGN KEY (id_station_depart) REFERENCES station(id_station),
    FOREIGN KEY (id_station_arrivee) REFERENCES station(id_station)
);

-- 2. STATIONS
INSERT INTO station (id_station, nom, ville) VALUES 
(1,'Gare du Nord', 'Paris'), (2,'Part-Dieu', 'Lyon'), (3,'Vieux-Port', 'Marseille'), 
(4,'Euralille', 'Lille'), (5,'Place de la Bourse', 'Bordeaux'), (6,'Promenade', 'Nice'), 
(7,'Capitole', 'Toulouse'), (8,'Château des Ducs', 'Nantes'), (9,'Cathédrale', 'Strasbourg'), (10,'Comédie', 'Montpellier');

-- 3. CLIENTS (30 clients)
INSERT INTO client (id_client, nom, prenom, email) VALUES
(1,'Dupont','Lucas','l.dupont@email.com'), (2,'Martin','Emma','e.martin@email.com'), (3,'Bernard','Hugo','h.bernard@email.com'),
(4,'Thomas','Lea','l.thomas@email.com'), (5,'Petit','Nathan','n.petit@email.com'), (6,'Robert','Chloe','c.robert@email.com'),
(7,'Richard','Louis','l.richard@email.com'), (8,'Durand','Ines','i.durand@email.com'), (9,'Dubois','Gabriel','g.dubois@email.com'),
(10,'Moreau','Manon','m.moreau@email.com'), (11,'Laurent','Adam','a.laurent@email.com'), (12,'Simon','Camille','c.simon@email.com'),
(13,'Michel','Tom','t.michel@email.com'), (14,'Lefebvre','Sarah','s.lefebvre@email.com'), (15,'Leroy','Arthur','a.leroy@email.com'),
(16,'Roux','Jade','j.roux@email.com'), (17,'David','Noah','n.david@email.com'), (18,'Bertrand','Zoe','z.bertrand@email.com'),
(19,'Morel','Ethan','e.morel@email.com'), (20,'Fournier','Lina','l.fournier@email.com'), (21,'Girard','Mathis','m.girard@email.com'),
(22,'Bonnet','Alice','a.bonnet@email.com'), (23,'Andre','Sacha','s.andre@email.com'), (24,'Mercier','Mila','m.mercier@email.com'),
(25,'Blanc','Paul','p.blanc@email.com'), (26,'Guerin','Eva','e.guerin@email.com'), (27,'Boyer','Maxime','m.boyer@email.com'),
(28,'Garnier','Clara','c.garnier@email.com'), (29,'Chevalier','Theo','t.chevalier@email.com'), (30,'Francois','Louise','l.francois@email.com');

-- 4. VEHICULES (45 véhicules)
INSERT INTO vehicule (id_vehicule, marque, modele, type_vehicule, autonomie_km, etat, ville) VALUES
(1,'Tesla','Model S','Electrique',652,'Disponible','Paris'), (2,'Tesla','Model 3','Electrique',491,'Loué','Paris'),
(3,'Lucid','Air','Electrique',830,'Disponible','Paris'), (4,'Renault','Zoe','Electrique',395,'Disponible','Lyon'),
(5,'Peugeot','e-208','Electrique',362,'Disponible','Lyon'), (6,'BMW','i3','Electrique',310,'Loué','Marseille'),
(7,'Audi','Q4 e-tron','Electrique',520,'Disponible','Marseille'), (8,'Hyundai','Kona','Electrique',484,'Disponible','Lille'),
(9,'Kia','EV6','Electrique',528,'Maintenance','Bordeaux'), (10,'Mercedes','EQS','Electrique',770,'Disponible','Paris'),
(11,'Toyota','Corolla','Hybride',900,'Disponible','Nice'), (12,'Volkswagen','Golf','Essence',800,'Disponible','Toulouse'),
(13,'Ford','Focus','Essence',700,'Loué','Nantes'), (14,'Dacia','Sandero','Essence',650,'Disponible','Strasbourg'),
(15,'Citroen','C3','Essence',700,'Disponible','Montpellier'), (16,'Tesla','Model X','Electrique',580,'Disponible','Paris'),
(17,'Porsche','Taycan','Electrique',450,'Disponible','Paris'), (18,'BMW','i4','Electrique',590,'Disponible','Lyon'),
(19,'Nissan','Leaf','Electrique',385,'Disponible','Marseille'), (20,'Fiat','500e','Electrique',320,'Disponible','Lille'),
(21,'Volvo','XC40','Electrique',418,'Disponible','Bordeaux'), (22,'Skoda','Enyaq','Electrique',510,'Disponible','Nice'),
(23,'Honda','e','Electrique',220,'Disponible','Toulouse'), (24,'Mazda','MX-30','Electrique',200,'Disponible','Nantes'),
(25,'Polestar','2','Electrique',540,'Disponible','Strasbourg'), (26,'Mini','Cooper SE','Electrique',230,'Disponible','Montpellier'),
(27,'Toyota','Yaris','Hybride',850,'Disponible','Lyon'), (28,'Hyundai','Ioniq 5','Electrique',507,'Disponible','Marseille'),
(29,'Kia','Niro','Electrique',460,'Disponible','Paris'), (30,'Audi','e-tron GT','Electrique',487,'Disponible','Paris'),
(31,'Peugeot','3008','Hybride',600,'Disponible','Bordeaux'), (32,'Renault','Austral','Hybride',750,'Disponible','Lille'),
(33,'Ford','Mustang Mach-E','Electrique',610,'Disponible','Nice'), (34,'Opel','Mokka-e','Electrique',330,'Disponible','Toulouse'),
(35,'DS','3 E-Tense','Electrique',402,'Disponible','Nantes'), (36,'Jeep','Avenger','Electrique',400,'Disponible','Strasbourg'),
(37,'Cupra','Born','Electrique',420,'Disponible','Montpellier'), (38,'MG','MG4','Electrique',450,'Disponible','Paris'),
(39,'Tesla','Model Y','Electrique',533,'Disponible','Lyon'), (40,'Rimac','Nevera','Electrique',490,'Disponible','Paris'), 
(41,'Lotus','Evija','Electrique',400,'Disponible','Bordeaux'), (42,'Pininfarina','Battista','Electrique',450,'Disponible','Nice'), 
(43,'Rivian','R1S','Electrique',510,'Disponible','Marseille'), (44,'Lucid','Gravity','Electrique',700,'Disponible','Lyon'), 
(45,'Nio','ET7','Electrique',1000,'Disponible','Paris');

-- 5. LOCATIONS (55 lignes)
INSERT INTO location (id_location, id_client, id_vehicule, id_station_depart, id_station_arrivee, date_debut, date_fin) VALUES
(1,1,1,1,1,'2026-01-01 08:00:00','2026-01-02 18:00:00'),(2,1,2,1,2,'2026-01-10 09:00:00','2026-01-12 17:00:00'),(3,1,3,2,1,'2026-02-01 10:00:00','2026-02-03 19:00:00'),
(4,2,4,3,3,'2026-01-05 08:00:00','2026-01-06 18:00:00'),(5,2,5,3,4,'2026-01-15 09:00:00','2026-01-17 17:00:00'),
(6,3,6,5,5,'2026-01-20 10:00:00','2026-01-22 19:00:00'),(7,3,7,5,6,'2026-02-05 08:00:00','2026-02-07 18:00:00'),(8,3,8,6,5,'2026-02-15 09:00:00','2026-02-17 17:00:00'),
(9,4,9,7,7,'2026-01-10 10:00:00','2026-01-12 19:00:00'),(10,4,10,7,8,'2026-01-25 08:00:00','2026-01-27 18:00:00'),
(11,5,11,9,9,'2026-01-15 09:00:00','2026-01-17 17:00:00'),(12,5,12,9,10,'2026-02-01 10:00:00','2026-02-03 19:00:00'),
(13,6,13,1,1,'2026-01-05 08:00:00','2026-01-06 18:00:00'),(14,6,14,1,2,'2026-01-20 09:00:00','2026-01-22 17:00:00'),
(15,7,15,3,3,'2026-02-05 10:00:00','2026-02-07 19:00:00'),(16,7,16,3,4,'2026-02-15 08:00:00','2026-02-17 18:00:00'),
(17,8,17,5,5,'2026-01-10 09:00:00','2026-01-12 17:00:00'),(18,8,18,5,6,'2026-01-25 10:00:00','2026-01-27 19:00:00'),
(19,9,19,7,7,'2026-01-15 08:00:00','2026-01-16 18:00:00'),(20,9,20,7,8,'2026-02-01 09:00:00','2026-02-03 17:00:00'),
(21,10,21,9,9,'2026-01-20 10:00:00','2026-01-22 19:00:00'),(22,10,22,9,10,'2026-02-05 08:00:00','2026-02-07 18:00:00'),
(23,11,23,1,1,'2026-01-10 09:00:00','2026-01-12 17:00:00'),(24,11,24,1,2,'2026-01-25 10:00:00','2026-01-27 19:00:00'),
(25,12,25,3,3,'2026-01-15 08:00:00','2026-01-16 18:00:00'),(26,12,26,3,4,'2026-02-01 09:00:00','2026-02-03 17:00:00'),
(27,13,27,5,5,'2026-01-20 10:00:00','2026-01-22 19:00:00'),(28,13,28,5,6,'2026-02-05 08:00:00','2026-02-07 18:00:00'),
(29,14,29,7,7,'2026-01-10 09:00:00','2026-01-12 17:00:00'),(30,14,30,7,8,'2026-01-25 10:00:00','2026-01-27 19:00:00'),
(31,15,31,9,9,'2026-01-15 08:00:00','2026-01-16 18:00:00'),(32,15,32,9,10,'2026-02-01 09:00:00','2026-02-03 17:00:00'),
(33,16,33,1,1,'2026-01-20 10:00:00','2026-01-22 19:00:00'),(34,16,34,1,2,'2026-02-05 08:00:00','2026-02-07 18:00:00'),
(35,17,35,3,3,'2026-01-10 09:00:00','2026-01-12 17:00:00'),(36,17,36,3,4,'2026-01-25 10:00:00','2026-01-27 19:00:00'),
(37,18,37,5,5,'2026-01-15 08:00:00','2026-01-16 18:00:00'),(38,18,38,5,6,'2026-02-01 09:00:00','2026-02-03 17:00:00'),
(39,19,39,7,7,'2026-01-20 10:00:00','2026-01-22 19:00:00'),(40,19,1,7,8,'2026-02-05 08:00:00','2026-02-07 18:00:00'),
(41,20,2,9,9,'2026-01-10 09:00:00','2026-01-12 17:00:00'),(42,20,3,9,10,'2026-01-25 10:00:00','2026-01-27 19:00:00'),
(43,21,4,1,1,'2026-01-15 08:00:00','2026-01-16 18:00:00'),(44,21,5,1,2,'2026-02-01 09:00:00','2026-02-03 17:00:00'),
(45,22,6,3,3,'2026-01-20 10:00:00','2026-01-22 19:00:00'),(46,22,7,3,4,'2026-02-05 08:00:00','2026-02-07 18:00:00'),
(47,23,8,5,5,'2026-01-10 09:00:00','2026-01-12 17:00:00'),(48,24,9,7,7,'2026-01-25 10:00:00','2026-01-27 19:00:00'),
(49,25,10,9,9,'2026-01-15 08:00:00','2026-01-16 18:00:00'),(50,26,11,1,1,'2026-02-01 09:00:00','2026-02-03 17:00:00'),
(51,27,12,3,3,'2026-01-20 10:00:00','2026-01-22 19:00:00'),(52,28,13,5,5,'2026-02-05 08:00:00','2026-02-07 18:00:00'),
(53,29,14,7,7,'2026-01-10 09:00:00','2026-01-12 17:00:00'),(54,30,15,9,9,'2026-01-25 10:00:00','2026-01-27 19:00:00'),(55,1,21,1,1,'2026-03-01 08:00:00','2026-03-02 18:00:00');
