/*
    Exemple de fichier avec désactivation des contraintes d'intégrité référentielle
    Auteur : Jean-Pierre Duchesneau, 1er mars 2021

 Création d'une base de données pour notre démonstration :
 */

DROP DATABASE IF EXISTS Exemple;
CREATE DATABASE Exemple;

USE Exemple;

-- Ici je désactive les contraintes d'intégrité référetielle 
SET FOREIGN_KEY_CHECKS = 0;

-- Ajout du code de création des tables et ce, même si je fais référence à une table non existante.
CREATE TABLE IF NOT EXISTS cours(
    idCours CHAR(10) NOT NULL,
    nomCours VARCHAR(100) NOT NULL,
    nbHeure TINYINT UNSIGNED NOT NULL,
    idProgramme CHAR(6) NULL DEFAULT NULL,
    -- Contraintes de table
    PRIMARY KEY (idCours),
    CONSTRAINT fkCoursProgramme  FOREIGN KEY (idProgramme)
    REFERENCES programme(idProgramme)
    )ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS etudiant(
    idEtudiant INT NOT NULL AUTO_INCREMENT,
    nomEtudiant VARCHAR(45) NOT NULL,
    prenomEtudiant VARCHAR(45) NOT NULL,
    idProgramme CHAR(6) NULL,
    
    -- contraintes de table
    PRIMARY KEY (idEtudiant),
    CONSTRAINT fk_etudiant_programme1 FOREIGN KEY (idProgramme) REFERENCES programme (idProgramme)
    )ENGINE = InnoDB;

  /* 
  Ces deux requêtes sont acceptées malgré que la table programme et l'idProgramme n'existe pas encore.
  Nous la créons après  : 
  */
  CREATE TABLE IF NOT EXISTS programme(
    idProgramme CHAR(6) NOT NULL,
    nomProgramme VARCHAR(100) NOT NULL,
    
    -- Contrainte de table
    PRIMARY KEY (idProgramme)
    )ENGINE = InnoDB;
  
  
  
-- Ici je réactive les contraintes d'intégrité référenciel et tous fonctionne
SET FOREIGN_KEY_CHECKS = 1;
