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
DROP TABLE IF EXISTS typeusager;
CREATE TABLE typeusager (
id_typeusager INT PRIMARY KEY,
nom_statut VARCHAR(45)
)ENGINE=InnoDB;

INSERT INTO typeusager
VALUES (1,'Professeur'),(2,'Employé'),(3,'Étudiant');

ALTER TABLE usager
ADD COLUMN id_Type_usager INTEGER null;

ALTER TABLE logiciel
ADD CONSTRAINT nom_logiciel_unique UNIQUE (nom_logiciel);

ALTER TABLE editeur
ADD CONSTRAINT nom_editeur_unique UNIQUE (nom_editeur);

ALTER TABLE logiciel
MODIFY nom_logiciel VARCHAR(45) NOT NULL;

ALTER TABLE editeur
MODIFY nom_editeur VARCHAR(45) NOT NULL;