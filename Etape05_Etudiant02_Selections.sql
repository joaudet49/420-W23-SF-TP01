/* 
 Travail pratique 1
 Jonathan Audet
 --> Simon Bergeron-Girard
 
 Date  30-07-2021                                             
*/

USE PosteClientDFC;
-- -----------------------------------------------------
-- Étape 5 : Requêtes de sélections                   --
-- -----------------------------------------------------

SELECT nom_local AS 'No. local',
nb_bureau AS 'Nb. bureau',
nb_prise_ethernet AS 'Nb. prise ethernet',
imprimante AS 'No. Imprimante'
FROM local;

SELECT CONCAT(nom_usager, ', ', prenom_usager) AS "Nom d'usager",
nom_local AS 'Local',
desc_poste AS'Description du poste'
FROM usager AS u
INNER JOIN local AS l
ON u.local_id_local = l.id_local
INNER JOIN usager_has_poste AS up
ON u.id_usager = up.id_usager
INNER JOIN poste AS p
ON up.id_poste = p.id_poste
ORDER BY nom_usager;
