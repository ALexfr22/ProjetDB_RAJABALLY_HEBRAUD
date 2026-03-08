CREATE TABLE Salle (
    id_salle INT PRIMARY KEY,
    nom_salle VARCHAR(50),
    adresse_salle VARCHAR(50),
    ville_salle VARCHAR(50),
    code_postal_salle INT,
    capacite_salle INT,
    horaire_salle VARCHAR(50)
);

CREATE TABLE Secteur (
    id_secteur INT PRIMARY KEY,
    nom_secteur VARCHAR(50),
    id_salle INT,
    FOREIGN KEY (id_salle)
        REFERENCES Salle(id_salle)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE session_ouverture (
    id_salle INT,
    id_session INT,
    date_session INT,
    PRIMARY KEY (id_salle, id_session),
    FOREIGN KEY (id_salle)
        REFERENCES Salle(id_salle)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE Prise (
    id_prise INT PRIMARY KEY,
    couleur_prise VARCHAR(50),
    type_prise VARCHAR(50),
    matiere_prise VARCHAR(50),
    quantite_prise INT,
    date_prise INT
);

CREATE TABLE Client (
    id_client INT PRIMARY KEY,
    nom_client VARCHAR(50),
    prenom_client VARCHAR(50),
    email_client VARCHAR(50)
);

CREATE TABLE abonnement (
    id_abonnement VARCHAR(50) PRIMARY KEY,
    types_abonnement VARCHAR(50),
    date_debut INT,
    date_fin INT,
    id_salle INT,
    id_client INT,
    FOREIGN KEY (id_salle)
        REFERENCES Salle(id_salle)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (id_client)
        REFERENCES Client(id_client)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE produit (
    id_produit INT PRIMARY KEY,
    categorie_produit VARCHAR(50),
    quantite_produit INT,
    prix_produit VARCHAR(50)
);

CREATE TABLE Employe (
    id_employe INT PRIMARY KEY,
    nom_employe VARCHAR(50),
    prenom_employe VARCHAR(50),
    role_employe VARCHAR(50),
    id_employe_1 INT,
    FOREIGN KEY (id_employe_1)
        REFERENCES Employe(id_employe)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);

CREATE TABLE Bloc (
    id_bloc INT PRIMARY KEY,
    couleur_bloc VARCHAR(50),
    date_creation_bloc INT,
    date_retrait_bloc VARCHAR(50),
    id_salle INT,
    id_session INT,
    id_employe INT,
    id_secteur INT,
    FOREIGN KEY (id_salle, id_session)
        REFERENCES session_ouverture(id_salle, id_session)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (id_employe)
        REFERENCES Employe(id_employe)
        ON DELETE SET NULL
        ON UPDATE CASCADE,
    FOREIGN KEY (id_secteur)
        REFERENCES Secteur(id_secteur)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE composer (
    id_bloc INT,
    id_prise INT,
    PRIMARY KEY (id_bloc, id_prise),
    FOREIGN KEY (id_bloc)
        REFERENCES Bloc(id_bloc)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (id_prise)
        REFERENCES Prise(id_prise)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE achat (
    id_client INT,
    id_produit INT,
    date_achat INT,
    quantite INT,
    PRIMARY KEY (id_client, id_produit, date_achat),
    FOREIGN KEY (id_client)
        REFERENCES Client(id_client)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (id_produit)
        REFERENCES produit(id_produit)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);