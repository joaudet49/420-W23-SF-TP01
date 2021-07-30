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
