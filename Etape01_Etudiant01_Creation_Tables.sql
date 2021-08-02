/* 
 Travail pratique 1
 --> Jonathan Audet
  Simon Bergeron-Girard
 
 Date  02-07-2021                                              
*/
DROP DATABASE IF EXISTS PosteClientDFC;
CREATE DATABASE IF NOT EXISTS PosteClientDFC;

USE PosteClientDFC;
-- -----------------------------------------------------
-- Étape 1 : Création des tables                      --
-- -----------------------------------------------------
SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS poste;
CREATE TABLE poste (
id_poste INT PRIMARY KEY,
desc_poste VARCHAR(45),
desc_processeur VARCHAR(45),
nb_ram_mo VARCHAR(45),
tail_disque_giga INT,
id_fabricant INT,
id_local INT,
FOREIGN KEY (id_fabricant) REFERENCES fabricant(id_fabricant),
FOREIGN KEY (id_local) REFERENCES local(id_local)
)ENGINE=InnoDB;

DROP TABLE IF EXISTS local;
CREATE TABLE local (
id_local INT PRIMARY KEY,
nom_local VARCHAR(45) NOT NULL
)ENGINE=InnoDB;

DROP TABLE IF EXISTS peripherique;
CREATE TABLE peripherique (
id_peripherique INT PRIMARY KEY,
nom_peripherique VARCHAR(45) NOT NULL,
id_poste INT,
id_fabricant INT,
FOREIGN KEY (id_poste) REFERENCES poste(id_poste),
FOREIGN KEY (id_fabricant) REFERENCES fabricant(id_fabricant)
)ENGINE=InnoDB;
DROP TABLE IF EXISTS fabricant;
CREATE TABLE fabricant (
id_fabricant INT PRIMARY KEY,
nom_fabricant VARCHAR(45) NOT NULL
)ENGINE=InnoDB;
