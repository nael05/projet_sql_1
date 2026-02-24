SELECT marque, modele, autonomie_km -- affiche les infos sélectionnées
FROM vehicule -- depuis la table des voitures
ORDER BY autonomie_km DESC -- On trie du plus grand au plus petit
LIMIT 3;-- On ne garde que les 3 premiers

SELECT ville, COUNT(*) AS total_voiture-- On prend la ville et on compte les voitures
FROM vehicule -- depuis la table vehicule
WHERE etat = 'Disponible' -- Uniquement celles qui sont libres
GROUP BY ville -- On regroupe par ville
ORDER BY total DESC -- On met le plus grand nombre en haut
LIMIT 1; -- On garde la première ville

SELECT location.id_client, client.nom, client.prenom, COUNT(*) AS total -- Choisir le client et compter ses lignes
FROM location -- Regarder dans la table des locations
LEFT JOIN client --jointure avec table client pour recuper nom et prenom
ON location.id_client = client.id_client --jointure sur id_client
GROUP BY location.id_client -- Regrouper les lignes pour chaque client
HAVING total >= 2; -- Garder seulement ceux qui en ont 2 ou plus

SELECT * FROM vehicule -- Sélectionner toutes les infos des voitures
WHERE id_vehicule NOT IN (-- Où l'identifiant n'apparaît pas
    SELECT id_vehicule FROM location -- Dans la liste des voitures déjà louées
);