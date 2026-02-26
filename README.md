Contexte du projet
Ce projet s’inscrit dans le cadre du module SQL B1.
L’objectif est d’évaluer notre capacité à :
- 	comprendre et manipuler une base de données relationnelle,
- 	créer des tables et structurer une base complète,
- 	écrire des requêtes SQL simples puis intermédiaires,
- 	répondre à des besoins métier concrets.
Le thème du projet est basé sur l’entreprise fictive cIAra Mobility, spécialisée dans la location de véhicules électriques partagés dans plusieurs grandes villes françaises.

Objectifs pédagogiques
Ce projet nous a permis de :
- 	découvrir et pratiquer le langage SQL,
- 	créer une base de données complète à partir de zéro,
- 	comprendre les relations entre tables (clés primaires / étrangères),
- 	manipuler les commandes essentielles : SELECT, WHERE , ORDER BY, JOIN, GROUP BY, etc.,
- 	structurer un projet et documenter notre travail dans un dépôt GitHub.

Création de la base de données
Contrairement au projet initial qui proposait une base déjà prête, nous avons dû créer nous‑mêmes toutes les tables, car nous n’avons pas réussi à faire fonctionner PostgreSQL sur notre machine.
Nous avons donc :
- 	créé les tables en SQL (vehicule, station, client, location),
- 	défini les clés primaires et étrangères,
- 	inséré toutes les données manuellement,
- 	vérifié la cohérence des relations entre les tables.
L’ensemble de la structure a été testé et validé dans DB Browser for SQLite, qui nous a permis de visualiser les données en temps réel.

Organisation du travail en binôme
Nous avons choisi une méthode de travail simple et efficace :
Travail sur un seul PC pour le code
Nous avons écrit toutes les requêtes SQL ensemble, sur le même ordinateur.
Cela nous a permis :
- 	de discuter chaque question,
- 	de confronter nos interprétations,
- 	de nous mettre d’accord avant d’écrire une requête,
- 	d’éviter les erreurs de logique.
Un deuxième PC pour la vérification
Le second ordinateur servait à :
- 	tester les requêtes dans DB Browser,
- 	vérifier les résultats en temps réel,
- 	s’assurer que les données correspondaient bien aux attentes.
Travail 100 % collaboratif
Même si un seul PC servait à coder, tout a été fait en commun :
- 	compréhension des consignes,
- 	création des tables,
- 	insertion des données,
- 	écriture des requêtes,
- 	vérification des résultats.
Cette méthode nous a permis d’être efficaces, de mieux comprendre SQL et de valider chaque étape ensemble.

    
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
