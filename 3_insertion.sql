-- -----------------------------------------------
-- 1. Tables sans dépendances (aucune FK)
-- -----------------------------------------------

-- Table Salle
INSERT INTO Salle (id_salle, nom_salle, adresse_salle, ville_salle, code_postal_salle, capacite_salle, horaire_salle) VALUES
(1, 'Salle Alpha', '12 rue de Paris', 'Paris', 75001, 50, '08:00-22:00'),
(2, 'Salle Beta', '34 avenue Lyon', 'Lyon', 69003, 30, '09:00-21:00'),
(3, 'Salle Gamma', '56 boulevard Marseille', 'Marseille', 13001, 40, '07:00-23:00'),
(4, 'Salle Delta', '78 rue Lille', 'Lille', 59000, 60, '08:00-22:00'),
(5, 'Salle Epsilon', '90 avenue Bordeaux', 'Bordeaux', 33000, 35, '09:00-20:00'),
(6, 'Salle Zeta', '23 rue Nantes', 'Nantes', 44000, 45, '07:00-22:00'),
(7, 'Salle Eta', '45 avenue Toulouse', 'Toulouse', 31000, 55, '08:00-21:00'),
(8, 'Salle Theta', '67 rue Strasbourg', 'Strasbourg', 67000, 40, '10:00-22:00'),
(9, 'Salle Iota', '89 boulevard Nice', 'Nice', 06000, 50, '08:00-23:00'),
(10, 'Salle Kappa', '12 avenue Rennes', 'Rennes', 35000, 35, '09:00-21:00');

-- Table Client
INSERT INTO Client (id_client, nom_client, prenom_client, email_client) VALUES
(1, 'Dupont', 'Alice', 'alice.dupont@mail.com'),
(2, 'Martin', 'Bob', 'bob.martin@mail.com'),
(3, 'Bernard', 'Chloe', 'chloe.bernard@mail.com'),
(4, 'Durand', 'David', 'david.durand@mail.com'),
(5, 'Leroy', 'Eva', 'eva.leroy@mail.com'),
(6, 'Moreau', 'Franck', 'franck.moreau@mail.com'),
(7, 'Rousseau', 'Gina', 'gina.rousseau@mail.com'),
(8, 'Fournier', 'Hugo', 'hugo.fournier@mail.com'),
(9, 'Blanc', 'Isabelle', 'isabelle.blanc@mail.com'),
(10, 'Garnier', 'Julien', 'julien.garnier@mail.com');

-- Table Employe
INSERT INTO Employe (id_employe, nom_employe, prenom_employe, role_employe, id_employe_1) VALUES
(1, 'Petit', 'Laura', 'Manager', NULL),
(2, 'Richard', 'Marc', 'Coach', 1),
(3, 'Henry', 'Sophie', 'Coach', 1),
(4, 'Renaud', 'Paul', 'Technicien', 2),
(5, 'Vidal', 'Claire', 'Technicien', 2),
(6, 'Fabre', 'Lucas', 'Coach', 1),
(7, 'Collet', 'Emma', 'Manager', NULL),
(8, 'Marchand', 'Julien', 'Technicien', 6),
(9, 'Perrin', 'Alice', 'Coach', 6),
(10, 'Guillot', 'Nina', 'Coach', 7);

-- Table Prise
INSERT INTO Prise (id_prise, couleur_prise, type_prise, matiere_prise, quantite_prise, date_prise) VALUES
(1, 'Rouge', 'Standard', 'Plastique', 10, 20230101),
(2, 'Bleu', 'USB', 'Metal', 15, 20230201),
(3, 'Vert', 'Standard', 'Plastique', 12, 20230301),
(4, 'Jaune', 'USB-C', 'Metal', 8, 20230401),
(5, 'Noir', 'Standard', 'Plastique', 20, 20230501),
(6, 'Blanc', 'Type-C', 'Metal', 25, 20230601),
(7, 'Orange', 'Standard', 'Plastique', 10, 20230701),
(8, 'Violet', 'USB', 'Metal', 5, 20230801),
(9, 'Rose', 'Standard', 'Plastique', 18, 20230901),
(10, 'Gris', 'USB-C', 'Metal', 12, 20231001);

-- Table Produit
INSERT INTO Produit (id_produit, categorie_produit, quantite_produit, prix_produit) VALUES
(1, 'Boisson', 100, '2.50'),
(2, 'Snack', 50, '1.20'),
(3, 'Accessoire', 30, '15.00'),
(4, 'Boisson', 200, '3.00'),
(5, 'Snack', 70, '2.00'),
(6, 'Accessoire', 15, '25.00'),
(7, 'Boisson', 80, '2.80'),
(8, 'Snack', 60, '1.50'),
(9, 'Accessoire', 20, '18.00'),
(10, 'Boisson', 90, '3.50');

-- -----------------------------------------------
-- 2. Tables dépendantes (avec FK)
-- -----------------------------------------------

-- Table Secteur
INSERT INTO Secteur (id_secteur, nom_secteur, id_salle) VALUES
(1, 'Secteur A', 1),
(2, 'Secteur B', 1),
(3, 'Secteur C', 2),
(4, 'Secteur D', 3),
(5, 'Secteur E', 4),
(6, 'Secteur F', 5),
(7, 'Secteur G', 6),
(8, 'Secteur H', 7),
(9, 'Secteur I', 8),
(10, 'Secteur J', 9);

-- Table session_ouverture
INSERT INTO session_ouverture (id_salle, id_session, date_session) VALUES
(1, 1, 20260101),
(2, 2, 20260102),
(3, 3, 20260103),
(4, 4, 20260104),
(5, 5, 20260105),
(6, 6, 20260106),
(7, 7, 20260107),
(8, 8, 20260108),
(9, 9, 20260109),
(10, 10, 20260110);

-- Table abonnement
INSERT INTO abonnement (id_abonnement, types_abonnement, date_debut, date_fin, id_salle, id_client) VALUES
('A1', 'Mensuel', 20260101, 20261231, 1, 1),
('A2', 'Annuel', 20260101, 20271231, 2, 2),
('A3', 'Mensuel', 20260105, 20260205, 3, 3),
('A4', 'Trimestriel', 20260101, 20260331, 4, 4),
('A5', 'Annuel', 20260101, 20271231, 5, 5),
('A6', 'Mensuel', 20260110, 20260210, 6, 6),
('A7', 'Trimestriel', 20260101, 20260331, 7, 7),
('A8', 'Annuel', 20260101, 20271231, 8, 8),
('A9', 'Mensuel', 20260101, 20260201, 9, 9),
('A10','Annuel', 20260101, 20271231, 10, 10);

-- Table Bloc
INSERT INTO Bloc (id_bloc, couleur_bloc, date_creation_bloc, date_retrait_bloc, id_salle, id_session, id_employe, id_secteur) VALUES
(1, 'Rouge', 20260101, '20261231', 1, 1, 2, 1),
(2, 'Bleu', 20260102, '20261231', 2, 2, 3, 2),
(3, 'Vert', 20260103, '20261231', 3, 3, 4, 3),
(4, 'Jaune', 20260104, '20261231', 4, 4, 5, 4),
(5, 'Noir', 20260105, '20261231', 5, 5, 6, 5),
(6, 'Blanc', 20260106, '20261231', 6, 6, 7, 6),
(7, 'Orange', 20260107, '20261231', 7, 7, 8, 7),
(8, 'Violet', 20260108, '20261231', 8, 8, 9, 8),
(9, 'Rose', 20260109, '20261231', 9, 9, 10, 9),
(10, 'Gris', 20260110, '20261231', 10, 10, 2, 10);

-- Table composer
INSERT INTO composer (id_bloc, id_prise) VALUES
(1, 1),(1, 2),(2, 3),(2, 4),(3, 5),
(3, 6),(4, 7),(4, 8),(5, 9),(5, 10);

-- Table achat
INSERT INTO achat (id_client, id_produit, date_achat, quantite) VALUES
(1, 1, 20260101, 2),
(2, 2, 20260102, 3),
(3, 3, 20260103, 1),
(4, 4, 20260104, 5),
(5, 5, 20260105, 2),
(6, 6, 20260106, 1),
(7, 7, 20260107, 3),
(8, 8, 20260108, 2),
(9, 9, 20260109, 1),
(10, 10, 20260110, 4);