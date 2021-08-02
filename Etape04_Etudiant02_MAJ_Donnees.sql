/* 
 Travail pratique 1
Jonathan Audet
 --> Simon Bergeron-Girard
 
 Date  30-07-2021                                             
*/

USE PosteClientDFC;
-- -----------------------------------------------------
-- Étape 4 : Mise à jour des données (Clause UPDATE)  --
-- -----------------------------------------------------

UPDATE local
SET
	nb_bureau = '27',
    nb_prise_ethernet = '27',
    imprimante = 678
WHERE nom_local = 'P-409';

UPDATE local
SET
	nb_bureau = '5',
    nb_prise_ethernet = '6',
    imprimante = 673
WHERE nom_local = 'P-416';

UPDATE local
SET
	nb_bureau = '27',
    nb_prise_ethernet = '27',
    imprimante = 679
WHERE nom_local = 'P-418';

SET SQL_SAFE_UPDATES = 0;

UPDATE peripherique
SET id_type_peripherique = 1
WHERE nom_peripherique LIKE 'Imprimante%';

UPDATE peripherique
SET id_type_peripherique = 2
WHERE nom_peripherique LIKE 'Souris%';

UPDATE peripherique
SET id_type_peripherique = 3
WHERE nom_peripherique LIKE 'Clavier%';

UPDATE peripherique
SET id_type_peripherique = 4
WHERE nom_peripherique LIKE 'Écran%';

SET SQL_SAFE_UPDATES = 1;
