CREATE TABLE vehicule (
    id_vehicule INT AUTO_INCREMENT PRIMARY KEY,
    marque VARCHAR(100) NOT NULL,
    modele VARCHAR(100) NOT NULL,
    type_vehicule VARCHAR(50) NOT NULL,
    autonomie_km INT,
    etat VARCHAR(50) NOT NULL,
    ville VARCHAR(100) NOT NULL
);

CREATE TABLE station (
    id_station INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    ville VARCHAR(100) NOT NULL
);

CREATE TABLE client (
    id_client INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    prenom VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL
);

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


-- INSERTION VALEURS
-- STATION

INSERT INTO station (id_station, nom, ville) VALUES
(1,'Station 1','Paris'), (2,'Station 2','Paris'), (3,'Station 3','Lyon'),
(4,'Station 4','Marseille'), (5,'Station 5','Lille'), (6,'Station 6','Bordeaux'),
(7,'Station 7','Nice'), (8,'Station 8','Toulouse'), (9,'Station 9','Nantes'),
(10,'Station 10','Strasbourg'), (11,'Station 11','Montpellier'),
(12,'Station 12','Paris'), (13,'Station 13','Lyon'),
(14,'Station 14','Marseille'), (15,'Station 15','Lille'),
(16,'Station 16','Bordeaux'), (17,'Station 17','Nice'),
(18,'Station 18','Toulouse'), (19,'Station 19','Nantes'),
(20,'Station 20','Strasbourg'), (21,'Station 21','Montpellier'),
(22,'Station 22','Paris'), (23,'Station 23','Lyon'),
(24,'Station 24','Marseille'), (25,'Station 25','Lille'),
(26,'Station 26','Bordeaux'), (27,'Station 27','Nice'),
(28,'Station 28','Toulouse'), (29,'Station 29','Nantes'),
(30,'Station 30','Strasbourg');

-- CLIENT

INSERT INTO client (id_client, nom, prenom, email) VALUES
(1,'Dupont','Lucas','lucas1@email.com'),
(2,'Martin','Emma','emma2@email.com'),
(3,'Bernard','Hugo','hugo3@email.com'),
(4,'Thomas','Lea','lea4@email.com'),
(5,'Petit','Nathan','nathan5@email.com'),
(6,'Robert','Chloe','chloe6@email.com'),
(7,'Richard','Louis','louis7@email.com'),
(8,'Durand','Ines','ines8@email.com'),
(9,'Dubois','Gabriel','gabriel9@email.com'),
(10,'Moreau','Manon','manon10@email.com'),
(11,'Laurent','Adam','adam11@email.com'),
(12,'Simon','Camille','camille12@email.com'),
(13,'Michel','Tom','tom13@email.com'),
(14,'Lefebvre','Sarah','sarah14@email.com'),
(15,'Leroy','Arthur','arthur15@email.com'),
(16,'Roux','Jade','jade16@email.com'),
(17,'David','Noah','noah17@email.com'),
(18,'Bertrand','Zoe','zoe18@email.com'),
(19,'Morel','Ethan','ethan19@email.com'),
(20,'Fournier','Lina','lina20@email.com'),
(21,'Girard','Mathis','mathis21@email.com'),
(22,'Bonnet','Alice','alice22@email.com'),
(23,'Andre','Sacha','sacha23@email.com'),
(24,'Mercier','Mila','mila24@email.com'),
(25,'Blanc','Paul','paul25@email.com'),
(26,'Guerin','Eva','eva26@email.com'),
(27,'Boyer','Maxime','maxime27@email.com'),
(28,'Garnier','Clara','clara28@email.com'),
(29,'Chevalier','Theo','theo29@email.com'),
(30,'Francois','Louise','louise30@email.com');

-- VEHICULE

INSERT INTO vehicule (id_vehicule, marque, modele, type_vehicule, autonomie_km, etat, ville) VALUES
(1,'Tesla','Model 3','Electrique',491,'Disponible','Paris'),
(2,'Tesla','Model Y','Electrique',533,'Loué','Lyon'),
(3,'Renault','Zoe','Electrique',395,'En recharge','Marseille'),
(4,'Peugeot','e-208','Electrique',362,'Disponible','Lille'),
(5,'Nissan','Leaf','Electrique',385,'Maintenance','Bordeaux'),
(6,'BMW','i3','Electrique',310,'Disponible','Nice'),
(7,'Audi','Q4 e-tron','Electrique',520,'Loué','Toulouse'),
(8,'Hyundai','Kona Electric','Electrique',484,'Disponible','Nantes'),
(9,'Kia','EV6','Electrique',528,'Disponible','Strasbourg'),
(10,'Mercedes','EQC','Electrique',417,'Loué','Montpellier'),
(11,'Toyota','Corolla','Hybride',900,'Disponible','Paris'),
(12,'Toyota','Prius','Hybride',850,'Disponible','Lyon'),
(13,'Honda','Civic','Essence',700,'Loué','Marseille'),
(14,'Volkswagen','Golf','Diesel',800,'Disponible','Lille'),
(15,'Ford','Focus','Essence',650,'Disponible','Bordeaux'),
(16,'Opel','Corsa','Essence',600,'Disponible','Nice'),
(17,'Fiat','500','Essence',500,'Loué','Toulouse'),
(18,'Citroen','C3','Diesel',750,'Disponible','Nantes'),
(19,'Dacia','Sandero','Essence',700,'Disponible','Strasbourg'),
(20,'Seat','Ibiza','Diesel',780,'Disponible','Montpellier'),
(21,'Tesla','Model S','Electrique',652,'Disponible','Paris'),
(22,'Tesla','Model X','Electrique',580,'Disponible','Lyon'),
(23,'Renault','Clio','Essence',650,'Disponible','Marseille'),
(24,'Peugeot','308','Diesel',820,'Disponible','Lille'),
(25,'BMW','X1','Diesel',900,'Disponible','Bordeaux'),
(26,'Audi','A3','Essence',720,'Disponible','Nice'),
(27,'Mercedes','Classe A','Diesel',850,'Disponible','Toulouse'),
(28,'Hyundai','i20','Essence',630,'Disponible','Nantes'),
(29,'Kia','Sportage','Hybride',1000,'Disponible','Strasbourg'),
(30,'Volkswagen','T-Roc','Essence',700,'Disponible','Montpellier');

-- LOCATION

INSERT INTO location (id_location, date_debut, date_fin, id_client, id_vehicule, id_station_depart, id_station_arrivee) VALUES
(1,'2026-01-01 09:00:00','2026-01-02 18:00:00',1,1,1,2),
(2,'2026-01-02 09:00:00','2026-01-03 18:00:00',2,2,3,4),
(3,'2026-01-03 09:00:00','2026-01-04 18:00:00',3,3,5,6),
(4,'2026-01-04 09:00:00','2026-01-05 18:00:00',4,4,7,8),
(5,'2026-01-05 09:00:00','2026-01-06 18:00:00',5,5,9,10),
(6,'2026-01-06 09:00:00','2026-01-07 18:00:00',6,6,11,12),
(7,'2026-01-07 09:00:00','2026-01-08 18:00:00',7,7,13,14),
(8,'2026-01-08 09:00:00','2026-01-09 18:00:00',8,8,15,16),
(9,'2026-01-09 09:00:00','2026-01-10 18:00:00',9,9,17,18),
(10,'2026-01-10 09:00:00','2026-01-11 18:00:00',10,10,19,20),
(11,'2026-01-11 09:00:00','2026-01-12 18:00:00',11,11,21,22),
(12,'2026-01-12 09:00:00','2026-01-13 18:00:00',12,12,23,24),
(13,'2026-01-13 09:00:00','2026-01-14 18:00:00',13,13,25,26),
(14,'2026-01-14 09:00:00','2026-01-15 18:00:00',14,14,27,28),
(15,'2026-01-15 09:00:00','2026-01-16 18:00:00',15,15,29,30),
(16,'2026-01-16 09:00:00','2026-01-17 18:00:00',16,16,1,3),
(17,'2026-01-17 09:00:00','2026-01-18 18:00:00',17,17,2,4),
(18,'2026-01-18 09:00:00','2026-01-19 18:00:00',18,18,5,7),
(19,'2026-01-19 09:00:00','2026-01-20 18:00:00',19,19,6,8),
(20,'2026-01-20 09:00:00','2026-01-21 18:00:00',20,20,9,11),
(21,'2026-01-21 09:00:00','2026-01-22 18:00:00',21,21,12,14),
(22,'2026-01-22 09:00:00','2026-01-23 18:00:00',22,22,13,15),
(23,'2026-01-23 09:00:00','2026-01-24 18:00:00',23,23,16,18),
(24,'2026-01-24 09:00:00','2026-01-25 18:00:00',24,24,17,19),
(25,'2026-01-25 09:00:00','2026-01-26 18:00:00',25,25,20,22),
(26,'2026-01-26 09:00:00','2026-01-27 18:00:00',26,26,21,23),
(27,'2026-01-27 09:00:00','2026-01-28 18:00:00',27,27,24,26),
(28,'2026-01-28 09:00:00','2026-01-29 18:00:00',28,28,25,27),
(29,'2026-01-29 09:00:00','2026-01-30 18:00:00',29,29,28,29),
(30,'2026-01-30 09:00:00','2026-01-31 18:00:00',30,30,30,1);