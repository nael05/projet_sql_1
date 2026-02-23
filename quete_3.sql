SELECT location.id_vehicule, client.nom, client.prenom -- selection de l'id de la location ainsi que le nom et prenom du locataire
FROM client -- depuis la table client
INNER JOIN location --jointure avec la table location 
ON client.id_client = location.id_client --jointure depuis "id_client"

SELECT location.id_vehicule, vehicule.marque, vehicule.modele -- selection de l'id de la location ainsi que la marque et le modele
FROM vehicule -- depuis la table client
INNER JOIN location --jointure avec la table location 
ON vehicule.id_vehicule = location.id_vehicule --jointure depuis "id_vehicule"

SELECT 
    location.id_vehicule, -- récupérer l'ID du véhicule depuis location
    station.nom AS station_depart, -- récupérer le nom de la station de départ
    station_1.nom AS station_arrivee -- récupérer le nom de la station d'arrivée
FROM location --depuis la table location
INNER JOIN station -- joindre la table station pour la station de départ
    ON location.id_station_depart = station.id_station --jointure depuis "id_station"
INNER JOIN station AS station_1  -- joindre de nouveau la table station pour la station d'arrivée
    ON location.id_station_arrivee = station_1.id_station; --jointure depuis "id_station"
