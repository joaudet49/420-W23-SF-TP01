/* 
Travail pratique 1
 Jonathan Audet
 --> Simon Bergeron-Girard
 
 Date  06-07-2021                                             
*/

USE PosteClientDFC;
-- -----------------------------------------------------
-- Étape 3 : Ajout de tables et de colonnes           --
-- -----------------------------------------------------
DROP TABLE IF EXISTS typeperipherique;
CREATE TABLE typeperipherique (
id_typeperipherique INT PRIMARY KEY,
nom_statut_peripherique VARCHAR(45)
)ENGINE=InnoDB;

INSERT INTO typeperipherique
VALUES (1,'Imprimante'),(2,'Souris'),(3,'Clavier'),(4,'Écran');

ALTER TABLE peripherique
ADD COLUMN id_type_peripherique INT,
ADD FOREIGN KEY (id_type_peripherique) REFERENCES typeperipherique(id_typeperipherique);

ALTER TABLE local
ADD COLUMN nb_bureau VARCHAR(45),
ADD COLUMN nb_prise_ethernet VARCHAR(45),
ADD COLUMN imprimante INT;

ALTER TABLE local
ADD CONSTRAINT nom_local_unique UNIQUE (nom_local);

ALTER TABLE fabricant
ADD CONSTRAINT nom_fabricant_unique UNIQUE (nom_fabricant);

ALTER TABLE local
MODIFY nom_local VARCHAR(45) NOT NULL;

ALTER TABLE fabricant
MODIFY nom_fabricant VARCHAR(45) NOT NULL;
