ALTER TABLE Salle
ADD CONSTRAINT chk_capacite_positive
CHECK (capacite_salle > 0);

ALTER TABLE Prise
ADD CONSTRAINT chk_quantite_prise
CHECK (quantite_prise >= 0);

ALTER TABLE produit
ADD CONSTRAINT chk_quantite_produit
CHECK (quantite_produit >= 0);

ALTER TABLE achat
ADD CONSTRAINT chk_quantite_achat
CHECK (quantite > 0);

ALTER TABLE abonnement
ADD CONSTRAINT chk_dates_abonnement
CHECK (date_fin > date_debut);

ALTER TABLE Client
ADD CONSTRAINT chk_email_format
CHECK (email_client LIKE '%@%.%');

ALTER TABLE Salle
ADD CONSTRAINT chk_code_postal
CHECK (code_postal_salle BETWEEN 1000 AND 99999);

ALTER TABLE Bloc
ADD CONSTRAINT chk_date_bloc
CHECK (date_retrait_bloc IS NULL OR date_creation_bloc IS NOT NULL);