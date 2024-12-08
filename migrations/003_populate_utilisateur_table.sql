SET FOREIGN_KEY_CHECKS=0;
INSERT INTO `etudeclinique`.`Utilisateur` (`idUtilisateur`, `Role_idRole`, `nom`, `prenom`, `email`, `dateCreation`, `derniereConnexion`) VALUES
(5, 1, 'Myrtle', 'Mccoy', 'mm@example.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(6, 2, 'Honoré', 'Bourgeois', 'HB@example.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(7, 3, 'Marie', 'Curie', 'marie.curie@example.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(8, 4, 'Jean', 'Dupont', 'jdup@example.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
SET FOREIGN_KEY_CHECKS=1;