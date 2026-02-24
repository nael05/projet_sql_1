SELECT COUNT(*) AS nombre_de_vehicule -- Compter toutes les lignes
FROM vehicule;-- depuis la table des véhicules

SELECT ville, COUNT(*) AS nombre_de_vehicule_par_ville-- Sélectionner la ville et compter
FROM vehicule -- depuis la table des véhicules
GROUP BY ville; -- Regrouper les résultats par ville

SELECT AVG(autonomie_km) AS moyenne_autonomie_km -- Calculer la moyenne de l'autonomie
FROM vehicule; -- depuis la table des véhicules

SELECT id_client, COUNT(*) nombre_de_loc_par_client-- Sélectionner le client et compter
FROM location -- depuis la table des locations
GROUP BY id_client; -- Regrouper par client