/* 
 Travail pratique 1
 --> Jonathan Audet
  Simon Bergeron-Girard
 
 Date  02-08-2021                                             
*/

USE PosteClientDFC;
-- -----------------------------------------------------
-- Étape 5 : Requêtes de sélections                   --
-- -----------------------------------------------------

SELECT 
nom_local AS 'No. local',
nb_bureau AS 'Nb. bureau',
nb_prise_ethernet AS 'Nb. prise ethernet',
imprimante AS 'No. Imprimante',
nom_peripherique AS "Nom de l'imprimante"
FROM local AS loc
INNER JOIN peripherique AS i
ON loc.imprimante = i.id_peripherique;

SELECT 
nom_logiciel AS 'Logiciel',
COUNT(id_poste) AS "Nb.d'installation sur poste"
FROM logiciel AS log
INNER JOIN poste_has_logiciel AS phs
ON log.id_logiciel = phs.id_logiciel
GROUP BY nom_logiciel
ORDER BY COUNT(id_poste) DESC;
