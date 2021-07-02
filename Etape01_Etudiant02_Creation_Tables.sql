/* 
 Travail pratique 1
 Jonathan Audet
 --> Simon Bergeron-Girard
 
 Date  02-07-2021                                             
*/
-- DROP DATABASE IF EXISTS PosteClientDFC;
-- CREATE DATABASE IF NOT EXISTS PosteClientDFC;

USE PosteClientDFC;
-- -----------------------------------------------------
-- Étape 1 : Création des tables                      --
-- -----------------------------------------------------
SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS logiciel;
CREATE TABLE logiciel (
id_logiciel INT PRIMARY KEY,
nom_logiciel VARCHAR(45) NOT NULL,
nb_licence INT,
id_editeur INT NOT NULL,
FOREIGN KEY (id_editeur) REFERENCES editeur(id_editeur)
)ENGINE=InnoDB;

DROP TABLE IF EXISTS editeur;
CREATE TABLE editeur (
id_editeur INT PRIMARY KEY,
nom_editeur VARCHAR(45) NOT NULL
)ENGINE=InnoDB;

DROP TABLE IF EXISTS poste_has_logiciel;
CREATE TABLE poste_has_logiciel (
id_poste INT,
id_logiciel INT,
PRIMARY KEY (id_poste, id_logiciel),
CONSTRAINT fk_poste_has_logiciel_id_poste FOREIGN KEY (id_poste) REFERENCES poste(id_poste),
CONSTRAINT fk_poste_has_logiciel_id_logiciel FOREIGN KEY (id_logiciel) REFERENCES logiciel(id_logiciel)
)ENGINE=InnoDB;

DROP TABLE IF EXISTS usager;
CREATE TABLE usager (
id_usager INT PRIMARY KEY,
nom_usager VARCHAR(45) NOT NULL,
prenom_usager VARCHAR(45) NOT NULL,
telephone_usager VARCHAR(45),
local_id_local INT,
FOREIGN KEY (local_id_local) REFERENCES usager_has_poste(id_poste)
)ENGINE=InnoDB;

DROP TABLE IF EXISTS usager_has_poste;
CREATE TABLE usager_has_poste (
id_usager INT,
id_poste INT,
PRIMARY KEY (id_usager, id_poste),
CONSTRAINT fk_usager_has_poste_id_usager FOREIGN KEY (id_usager) REFERENCES usager(id_usager),
CONSTRAINT fk_usager_has_poste_id_poste FOREIGN KEY (id_poste) REFERENCES poste(id_poste)
)ENGINE=InnoDB;

