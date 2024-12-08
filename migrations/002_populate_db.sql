-- désactiver les contraintes de clé étrangère pour la migration (réactivé en fin de script)
SET FOREIGN_KEY_CHECKS=0;

-- -----------------------------------------------------
-- Peupler la table `Role`
-- -----------------------------------------------------
INSERT INTO `etudeclinique`.`Role` (`idRole`, `libelle`) VALUES
(1, 'Admin'),
(2, 'Chirurgien'),
(3, 'Commmanditaire'),
(4, 'Patient');

-- -----------------------------------------------------
-- Peupler la table `Utilisateur`
-- -----------------------------------------------------
INSERT INTO `etudeclinique`.`Utilisateur` (`idUtilisateur`, `Role_idRole`, `nom`, `prenom`, `email`, `dateCreation`, `derniereConnexion`) VALUES
(1, 1, 'Doe', 'John', 'john.doe@example.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(2, 2, 'Smith', 'Jane', 'jane.smith@example.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(3, 3, 'Will', 'Son', 'will.son@example.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(4, 4, 'Marty', 'Nicaise', 'marti.nicaise@example.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);


-- -----------------------------------------------------
-- Peupler la table `TypeVisite`
-- -----------------------------------------------------
INSERT INTO `etudeclinique`.`TypeVisite` (`idTypeVisite`, `libelle`) VALUES
(1, 'Consultation'),
(2, 'Follow-up 1 mois'),
(3, 'Follow-up 3 mois'),
(4, 'Follow-up 6 mois'),
(5, 'Follow-up 12 mois'),
(6, 'Chirurgie'),
(7, 'Urgence');



-- -----------------------------------------------------
-- Peupler la table `etudeclinique`
-- -----------------------------------------------------
INSERT INTO `etudeclinique`.`etudeclinique` (`idEtudeClinique`, `nomEtude`, `description`, `dateDebut`, `dateFin`) VALUES
(1, 'Etude A', 'Description A', '2024-01-01', '2025-01-01'),
(2, 'Etude B', 'Description B', '2024-02-01', '2025-02-01'),
(3, 'Etude C', 'Description C', '2024-03-01', '2025-03-01'),
(4, 'Etude D', 'Description D', '2024-04-01', '2025-04-01'),
(5, 'Etude E', 'Description E', '2024-05-01', '2025-05-01'),
(6, 'Etude F', 'Description F', '2024-06-01', '2025-06-01'),
(7, 'Etude G', 'Description G', '2024-07-01', '2025-07-01'),
(8, 'Etude H', 'Description H', '2024-08-01', '2025-08-01'),
(9, 'Etude I', 'Description I', '2024-09-01', '2025-09-01'),
(10, 'Etude J', 'Description J', '2024-10-01', '2025-10-01');

-- -----------------------------------------------------
-- Peupler la table `Implant`
-- -----------------------------------------------------
INSERT INTO `etudeclinique`.`Implant` (`idImplant`, `libelle`, `fabricant`, `modele`) VALUES
(1, 'Implant A', 'Fabricant 1', 'Modèle 1'),
(2, 'Implant B', 'Fabricant 2', 'Modèle 2'),
(3, 'Implant C', 'Fabricant 3', 'Modèle 3'),
(4, 'Implant D', 'Fabricant 4', 'Modèle 4'),
(5, 'Implant E', 'Fabricant 5', 'Modèle 5'),
(6, 'Implant F', 'Fabricant 6', 'Modèle 6'),
(7, 'Implant G', 'Fabricant 7', 'Modèle 7'),
(8, 'Implant H', 'Fabricant 8', 'Modèle 8'),
(9, 'Implant I', 'Fabricant 9', 'Modèle 9'),
(10, 'Implant J', 'Fabricant 10', 'Modèle 10');


-- -----------------------------------------------------
-- Peupler la table `Visite`
-- -----------------------------------------------------
INSERT INTO `etudeclinique`.`Visite` (`idVisite`, `dateVisite`, `TypeVisite_idTypeVisite`, `Utilisateur_idUtilisateur`, `EtudeClinique_idEtudeClinique`, `Implant_idImplant`) VALUES

(1, '2024-01-01', 1, 2, 1, 1),
(2, '2024-02-01', 2, 2, 1, 2),
(3, '2024-03-01', 3, 2, 1, 3),
(4, '2024-04-01', 4, 2, 1, 1),
(5, '2024-05-01', 5, 2, 1, 2),
(6, '2024-06-01', 6, 2, 1, 3),
(7, '2024-07-01', 7, 2, 1, 1),
(8, '2024-08-01', 1, 2, 2, 2),
(9, '2024-09-01', 2, 2, 2, 3),
(10, '2024-10-01', 3, 2, 2, 1),
(11, '2024-11-01', 4, 2, 2, 2),
(12, '2024-12-01', 5, 2, 2, 3),
(13, '2023-01-01', 6, 2, 2, 1),
(14, '2023-02-01', 7, 2, 2, 2);


-- -----------------------------------------------------
-- Peupler la table `Complication`
-- -----------------------------------------------------
INSERT INTO `etudeclinique`.`Complication` (`idComplication`, `Visite_idVisite`, `description`) VALUES
(1, 1, 'Description de la complication A'),
(2, 2, 'Description de la complication B'),
(3, 1, 'Description de la complication C'),
(4, 2, 'Description de la complication D'),
(5, 1, 'Description de la complication E'),
(6, 2, 'Description de la complication F'),
(7, 1, 'Description de la complication G'),
(8, 2, 'Description de la complication H'),
(9, 1, 'Description de la complication I'),
(10, 2, 'Description de la complication J');


-- -----------------------------------------------------
-- Peupler la table `Mesure`
-- -----------------------------------------------------
INSERT INTO `etudeclinique`.`Mesure` (`idMesure`, `Visite_idVisite`, `TypeMesure_idTypeMesure`, `valeur`, `unite`) VALUES
(1, 1, 1, 10, 'mmHg'),
(2, 2, 2, 20, 'mmHg'),
(3, 1, 3, 30, 'mmHg'),
(4, 2, 1, 40, 'mmHg'),
(5, 1, 2, 50, 'mmHg'),
(6, 2, 3, 60, 'mmHg'),
(7, 1, 1, 70, 'mmHg'),
(8, 2, 2, 80, 'mmHg'),
(9, 1, 3, 90, 'mmHg'),
(10, 2, 1, 100, 'mmHg');


-- -----------------------------------------------------
-- Peupler la table `TypeMesure`
-- -----------------------------------------------------
INSERT INTO `etudeclinique`.`TypeMesure` (`idTypeMesure`, `libelle`) VALUES
(1, 'TypeMesure A'),
(2, 'TypeMesure B'),
(3, 'TypeMesure C'),
(4, 'TypeMesure D'),
(5, 'TypeMesure E'),
(6, 'TypeMesure F'),
(7, 'TypeMesure G'),
(8, 'TypeMesure H'),
(9, 'TypeMesure I'),
(10, 'TypeMesure J');

-- -----------------------------------------------------
-- Peupler la table `Chirurgie`
-- -----------------------------------------------------
INSERT INTO `etudeclinique`.`Chirurgie` (`idChirurgie`, `Visite_idVisite`, `Utilisateur_idUtilisateur`, `dateChirurgie`) VALUES
(1, 1, 2, '2024-01-01'),
(2, 2, 2, '2024-02-01'),
(3, 1, 2, '2024-03-01'),
(4, 2, 2, '2024-04-01'),
(5, 1, 2, '2024-05-01'),
(6, 2, 2, '2024-06-01'),
(7, 1, 2, '2024-07-01'),
(8, 2, 2, '2024-08-01'),
(9, 1, 2, '2024-09-01'),
(10, 2, 2, '2024-10-01'),
(11, 1, 2, '2024-11-01'),
(12, 2, 2, '2024-12-01'),
(13, 1, 2, '2023-01-01'),
(14, 2, 2, '2023-02-01');

-- -----------------------------------------------------
-- Peupler la table `Authentification`
-- -----------------------------------------------------
INSERT INTO `etudeclinique`.`Auth` (`idAuth`, `Utilisateur_idUtilisateur`, `hashedPassword`, `sel`, `dateDerniereModification`) VALUES
(1, 1, 'hashedPassword1', 'sel1', '2024-01-01'),
(2, 2, 'hashedPassword2', 'sel2', '2024-02-01'),
(3, 1, 'hashedPassword3', 'sel3', '2024-03-01'),
(4, 2, 'hashedPassword4', 'sel4', '2024-04-01'),
(5, 1, 'hashedPassword5', 'sel5', '2024-05-01'),
(6, 2, 'hashedPassword6', 'sel6', '2024-06-01'),
(7, 1, 'hashedPassword7', 'sel7', '2024-07-01'),
(8, 2, 'hashedPassword8', 'sel8', '2024-08-01'),
(9, 1, 'hashedPassword9', 'sel9', '2024-09-01'),
(10, 2, 'hashedPassword10', 'sel10', '2024-10-01');

-- -----------------------------------------------------
-- Peupler la table `Token`
-- -----------------------------------------------------
INSERT INTO `etudeclinique`.`Token` (`idToken`, `Utilisateur_idUtilisateur`, `token`, `dateExpiration`) VALUES
(1, 1, 'token1', '2024-12-31'),
(2, 2, 'token2', '2024-12-31'),
(3, 1, 'token3', '2024-12-31'),
(4, 2, 'token4', '2024-12-31'),
(5, 1, 'token5', '2024-12-31'),
(6, 2, 'token6', '2024-12-31'),
(7, 1, 'token7', '2024-12-31'),
(8, 2, 'token8', '2024-12-31'),
(9, 1, 'token9', '2024-12-31'),
(10, 2, 'token10', '2024-12-31');

-- -----------------------------------------------------
-- Peupler la table `Log`
-- -----------------------------------------------------
INSERT INTO `etudeclinique`.`Log` (`idLog`, `Utilisateur_idUtilisateur`, `dateAction`, `action`, `description`) VALUES
(1, 1, '2024-01-01', 'action1', 'description1'),
(2, 2, '2024-02-01', 'action2', 'description2'),
(3, 1, '2024-03-01', 'action3', 'description3'),
(4, 2, '2024-04-01', 'action4', 'description4'),
(5, 1, '2024-05-01', 'action5', 'description5'),
(6, 2, '2024-06-01', 'action6', 'description6'),
(7, 1, '2024-07-01', 'action7', 'description7'),
(8, 2, '2024-08-01', 'action8', 'description8'),
(9, 1, '2024-09-01', 'action9', 'description9'),
(10, 2, '2024-10-01', 'action10', 'description10');


-- Rétablir les contraintes de clé étrangère

SET FOREIGN_KEY_CHECKS=1; 