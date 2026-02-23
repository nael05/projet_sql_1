SELECT modele -- selection du modele
FROM vehicule -- depuis la table vehicule
ORDER BY autonomie_km DESC --trié dans l'ordre décroissant

SELECT modele -- selection du modele
FROM vehicule -- depuis la table vehicule
WHERE etat IS "Disponible" --condition de disponibilité
ORDER BY ville, marque --trié par marque et par ville

SELECT id_client, nom, prenom -- selection de l'id, nom et prenom des clients
FROM client -- depuis la table client
ORDER BY nom --trié par nom



