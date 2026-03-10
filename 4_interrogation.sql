-- 1. Liste des salles triées par capacité
SELECT nom_salle, ville_salle, capacite_salle
FROM Salle
ORDER BY capacite_salle DESC;

-- 2. Clients dont le nom commence par 'D'
SELECT nom_client, prenom_client, email_client
FROM Client
WHERE nom_client LIKE 'D%';

-- 3. Produits dont le prix est compris entre 2 et 3
SELECT id_produit, categorie_produit, prix_produit
FROM produit
WHERE prix_produit BETWEEN 2 AND 3;

-- 4. Employés dont le rôle est Coach ou Manager
SELECT nom_employe, prenom_employe, role_employe
FROM Employe
WHERE role_employe IN ('Coach', 'Manager');

-- 5. Villes des salles sans doublons
SELECT DISTINCT ville_salle
FROM Salle;

-- 6. Nombre de clients par salle
SELECT id_salle, COUNT(*) AS nombre_clients
FROM abonnement
GROUP BY id_salle;

-- 7. Quantité totale achetée pour chaque produit
SELECT id_produit, SUM(quantite) AS total_vendu
FROM achat
GROUP BY id_produit;

-- 8. Nombre de blocs par secteur
SELECT id_secteur, COUNT(id_bloc) AS nombre_blocs
FROM Bloc
GROUP BY id_secteur;

-- 9. Produits vendus plus de 3 fois
SELECT id_produit, SUM(quantite) AS total_vendu
FROM achat
GROUP BY id_produit
HAVING SUM(quantite) > 3;

-- 10. Nombre d’abonnements par client
SELECT id_client, COUNT(*) AS nb_abonnements
FROM abonnement
GROUP BY id_client;

-- 11. Clients avec leur abonnement
SELECT Client.nom_client, Client.prenom_client, abonnement.types_abonnement
FROM Client
INNER JOIN abonnement
ON Client.id_client = abonnement.id_client;

-- 12. Liste des blocs avec le nom de l’employé qui les a créés
SELECT Bloc.id_bloc, Bloc.couleur_bloc, Employe.nom_employe
FROM Bloc
INNER JOIN Employe
ON Bloc.id_employe = Employe.id_employe;

-- 13. Secteurs et leur salle
SELECT Secteur.nom_secteur, Salle.nom_salle
FROM Secteur
INNER JOIN Salle
ON Secteur.id_salle = Salle.id_salle;

-- 14. Achats avec les informations du client
SELECT Client.nom_client, produit.categorie_produit, achat.quantite
FROM achat
INNER JOIN Client ON achat.id_client = Client.id_client
INNER JOIN produit ON achat.id_produit = produit.id_produit;

-- 15. Tous les employés même s’ils ne gèrent aucun bloc
SELECT Employe.nom_employe, Bloc.id_bloc
FROM Employe
LEFT JOIN Bloc
ON Employe.id_employe = Bloc.id_employe;

-- 16. Clients ayant effectué un achat
SELECT nom_client, prenom_client
FROM Client
WHERE id_client IN
(
SELECT id_client
FROM achat
);

-- 17. Clients n’ayant jamais effectué d’achat
SELECT nom_client, prenom_client
FROM Client
WHERE id_client NOT IN
(
SELECT id_client
FROM achat
);

-- 18. Employés qui ont créé au moins un bloc
SELECT nom_employe
FROM Employe
WHERE EXISTS
(
SELECT *
FROM Bloc
WHERE Bloc.id_employe = Employe.id_employe
);

-- 19. Produits plus chers que tous les produits de catégorie Snack
SELECT id_produit, prix_produit
FROM produit
WHERE prix_produit > ALL
(
SELECT prix_produit
FROM produit
WHERE categorie_produit = 'Snack'
);

-- 20. Salles ayant une capacité supérieure à la moyenne
SELECT nom_salle, capacite_salle
FROM Salle
WHERE capacite_salle > 
(
SELECT AVG(capacite_salle)
FROM Salle
);