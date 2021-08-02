/* 
 Travail pratique 1
 --> Jonathan Audet
  Simon Bergeron-Girard
 
 Date  31-07-2021                                             
*/

USE PosteClientDFC;
-- -----------------------------------------------------
-- Étape 4 : Mise à jour des données (Clause UPDATE)  --
-- -----------------------------------------------------
UPDATE local
SET
	nb_bureau = '16',
    nb_prise_ethernet = '16',
    imprimante = 674
WHERE nom_local = 'P-210';

UPDATE local
SET
	nb_bureau = '27',
    nb_prise_ethernet = '27',
    imprimante = 676
WHERE nom_local = 'P-308';

UPDATE local
SET
	nb_bureau = '27',
    nb_prise_ethernet = '27',
    imprimante = 677
WHERE nom_local = 'P-309';

UPDATE usager
SET id_type_usager = 1
WHERE id_usager BETWEEN 1 AND 9;

UPDATE usager
SET id_type_usager = 2
WHERE id_usager BETWEEN 100 AND 999;

UPDATE usager
SET id_type_usager = 3
WHERE id_usager>=1000 ;


