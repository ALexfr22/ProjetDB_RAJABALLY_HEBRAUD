# ProjetDB_RAJABALLY_HEBRAUD
Dans le cadre du module TI404 – Bases de données 1, nous devons concevoir une base de données en appliquant la méthode MERISE.

Le domaine choisi est la gestion d’un réseau de salles d’escalade de bloc en France, inspiré d’enseignes existantes (Arkose, Climbing District, Climb Up).

L’objectif est de :
- Analyser les besoins métier
- Identifier les données à stocker
- Construire un MCD respectant :
- la 3ème forme normale (3FN)
- des éléments avancés de modélisation

**Partie 1 :**

## Prompt utilisé :
Agis comme une analyste de données spécialisée en conception de systèmes d’information travaillant dans le domaine de l’escalade de bloc au sein d’une entreprise qui gère plusieurs salles en France. L’entreprise souhaite appliquer la méthode MERISE pour concevoir son système d’information et tu es chargée de la phase d’analyse des besoins. Tu dois d’abord établir les règles de gestion des données sous forme d’une liste à puces, exprimées comme le ferait une personne connaissant parfaitement le fonctionnement de l’entreprise mais sans connaissances techniques en base de données. Ensuite, à partir de ces règles, tu dois produire un dictionnaire de données brutes sous forme de tableau comportant les colonnes suivantes : signification de la donnée, type (entier, texte, date, décimal, etc.) et taille (nombre de caractères ou de chiffres). Le dictionnaire doit contenir entre 25 et 35 données maximum, sans doublons, et les informations fournies doivent permettre la construction ultérieure d’un MCD respectant la troisième forme normale (3FN) ainsi que l’intégration d’éléments avancés de modélisation tels qu’une association n-aire, une association récursive et éventuellement une entité faible. L’entreprise gère plusieurs salles situées principalement en milieu urbain, inspirées d’enseignes comme Arkose, Climbing District ou Climb Up ; chaque salle propose des blocs d’escalade sans assurage classés par code couleur (jaune, vert, bleu, rouge, noir, violet), plusieurs secteurs de grimpe, des sessions d’ouverture réalisées par des ouvreurs, ainsi qu’un espace restauration et une boutique. Les clients peuvent acheter des produits, souscrire à des abonnements et fréquenter différentes salles du réseau. Les règles doivent être cohérentes, non redondantes, strictement limitées à la phase d’analyse des besoins (sans produire de MCD ni de modèle relationnel) et la réponse doit contenir uniquement deux sections intitulées « Règles de gestion » et « Dictionnaire de données », sans commentaire supplémentaire.

Le prompt a été structuré selon le framework RICARDO afin d’obtenir :

- Les règles de gestion

- Un dictionnaire de données (25 à 35 données)

- Un format structuré exploitable pour la modélisation

## Résultat de l’IAG :

Règles de gestion de l’entreprise (Bloc d’escalade)

Les règles suivantes décrivent le fonctionnement réel de l’entreprise, sans considération technique liée au système d’information.

🎯 Gestion des salles

L’entreprise gère plusieurs salles d’escalade situées dans différentes villes de France.

Chaque salle possède un nom, une adresse, une ville, un code postal, une capacité d’accueil et des horaires d’ouverture.

Chaque salle est organisée en plusieurs secteurs de grimpe (ex : dalle, dévers, pan Güllich, espace enfant).

Chaque session d’ouverture se déroule dans une seule salle.

Une salle peut organiser plusieurs sessions d’ouverture.

🧗 Gestion des blocs

Chaque secteur contient plusieurs blocs.

Un bloc appartient à un seul secteur.

Chaque bloc est identifié par une couleur correspondant à un niveau de difficulté interne.

Les niveaux suivent une progression interne : jaune → vert → bleu → rouge → noir → violet.

Un bloc possède une date de création et éventuellement une date de retrait.

Chaque bloc est créé lors d’une unique session d’ouverture.

Chaque bloc est créé par un seul ouvreur responsable.

Un bloc est composé de plusieurs prises.

Les blocs sont renouvelés régulièrement.

🛠️ Gestion des ouvreurs

Les ouvreurs sont des employés spécialisés dans la création des blocs.

Un ouvreur peut créer plusieurs blocs.

Un ouvreur peut participer à plusieurs sessions d’ouverture.

Un ouvreur peut superviser d’autres ouvreurs.

Un ouvreur peut être supervisé par un seul ouvreur.

🧩 Gestion des prises

Les prises sont achetées auprès de fournisseurs externes.

Chaque prise possède un type (bac, pince, volume, micro…), une couleur et une matière.

Une prise peut être utilisée dans plusieurs blocs au cours de sa durée de vie.

Un bloc est composé d’une ou plusieurs prises.

Une prise possède une date d’achat.

👥 Gestion des clients

Les clients peuvent accéder à toutes les salles du réseau.

Un client peut souscrire à un abonnement.

Un client peut acheter un ou plusieurs produits en boutique.

Les achats sont enregistrés avec une date et une quantité.

🧾 Gestion des abonnements

Un abonnement est associé à un seul client.

Un client peut posséder plusieurs abonnements au cours du temps.

Un abonnement possède un type (mensuel, annuel, étudiant).

Un abonnement possède une date de début et une date de fin.

🛍️ Gestion de la boutique

Chaque salle dispose d’une boutique.

Les produits vendus en boutique appartiennent à une catégorie (textile, chaussons, accessoires).

Un produit possède un prix.

Le stock d’un produit est géré par salle.

Les ventes peuvent être associées à un client identifié

Dictionnaire de données

| Signification de la donnée   | Type   | Taille |
| ---------------------------- | ------ | ------ |
| Identifiant salle            | Entier | 10     |
| Nom salle                    | Texte  | 50     |
| Adresse salle                | Texte  | 120    |
| Ville salle                  | Texte  | 50     |
| Code postal                  | Texte  | 5      |
| Capacité d’accueil           | Entier | 5      |
| Horaire ouverture            | Texte  | 20     |
| Horaire fermeture            | Texte  | 20     |
| Identifiant zone             | Entier | 10     |
| Nom zone                     | Texte  | 50     |
| Identifiant bloc             | Entier | 10     |
| Couleur bloc                 | Texte  | 20     |
| Niveau difficulté interne    | Texte  | 20     |
| Date création bloc           | Date   | —      |
| Date retrait bloc            | Date   | —      |
| Identifiant ouvreur          | Entier | 10     |
| Nom ouvreur                  | Texte  | 50     |
| Prénom ouvreur               | Texte  | 50     |
| Identifiant prise            | Entier | 10     |
| Couleur prise                | Texte  | 20     |
| Type prise                   | Texte  | 30     |
| Matière prise                | Texte  | 20     |
| Date achat prise             | Date   | —      |
| Identifiant client           | Entier | 10     |
| Nom client                   | Texte  | 50     |
| Prénom client                | Texte  | 50     |
| Email client                 | Texte  | 80     |
| Type produit                 | Texte  | 30     |
| Identifiant abonnement       | Entier | 10     |
| Type abonnement              | Texte  | 20     |
| Date début abonnement        | Date   | —      |
| Date fin abonnement          | Date   | —      |
| Identifiant produit boutique | Entier | 10     |
| Nom produit                  | Texte  | 50     |
| Catégorie produit            | Texte  | 30     |
| Stock produit                | Entier | 5      |

## Analyse critique du résultat

Le résultat obtenu à partir du prompt a été vérifié afin de s’assurer qu’il respecte les consignes du sujet.

Le nombre de données du dictionnaire est conforme à la contrainte imposée (entre 25 et 35). Le dictionnaire contient 34 données.

Les règles de gestion ont été reformulées lorsque nécessaire afin d’assurer leur cohérence avec le MCD final. En particulier, des précisions ont été apportées concernant :

l’unicité de l’ouvreur responsable d’un bloc,

le lien obligatoire entre une session d’ouverture et une salle,

la dépendance de la session d’ouverture vis-à-vis de la salle.

Ces ajustements ont permis de garantir la cohérence entre les règles métier, le dictionnaire de données et le modèle conceptuel produit.

## Modèle Conceptuel de Données

Le modèle conceptuel de données représente l’organisation et le fonctionnement d’un réseau de salles d’escalade de bloc.

Les principales entités identifiées sont :

Salle, qui représente les différentes salles gérées par l’entreprise.

Zone, qui représente les secteurs de grimpe appartenant à une salle.

Bloc, qui représente les voies d’escalade présentes dans un secteur.

Prise, qui représente les éléments physiques composant les blocs.

Employé (ouvreur), qui représente les ouvreurs responsables de la création des blocs.

Session_ouverture, qui représente les journées planifiées pour créer des blocs.

Client, qui représente les usagers des salles.

Abonnement, qui représente les abonnements souscrits par les clients.

Produit, qui représente les articles vendus en boutique.

Les relations principales sont :

Une salle contient plusieurs zones.

Une zone contient plusieurs blocs.

Un bloc est composé de plusieurs prises (relation plusieurs-à-plusieurs).

Un bloc est créé par un seul ouvreur lors d’une session d’ouverture.

Une session d’ouverture se déroule dans une seule salle.

Un client peut souscrire plusieurs abonnements.

Un client peut acheter plusieurs produits.

Le modèle respecte la 3FN :

Chaque entité possède un identifiant unique.

Les attributs dépendent uniquement de la clé primaire.

Il n’existe pas de dépendance transitive entre attributs.

Le MCD intègre plusieurs éléments avancés conformément aux exigences du sujet.

Association n-aire

L’association OUVERTURE relie trois entités :

Bloc

Employé

Session_ouverture

Elle permet de modéliser qu’un bloc est créé par un ouvreur donné lors d’une session donnée.
Cette association est ternaire car la relation métier nécessite simultanément les trois entités pour être correctement définie.

Association récursive

L’association SUPERVISER_OUVERTURE est une relation récursive sur l’entité Employé.

Elle modélise le fait qu’un ouvreur peut superviser d’autres ouvreurs.
Un employé peut superviser plusieurs employés, et un employé peut être supervisé par un seul employé.

Entité faible

L’entité SESSION_OUVERTURE est une entité faible dépendante de l’entité Salle.

Une session d’ouverture ne peut exister que dans le cadre d’une salle donnée.


Voici notre MCD :
<img width="1123" height="586" alt="image" src="https://github.com/user-attachments/assets/231c8c35-f5dd-467b-9b45-1295914eb026" />

**Partie 2 :**

**MLD correspondant au MCD:**

Salle = (id_salle INT, nom_salle VARCHAR(50), adresse_salle VARCHAR(50), ville_salle VARCHAR(50), code_postal_salle INT, capacite_salle INT, horaire_salle VARCHAR(50));
Secteur = (id_secteur INT, nom_secteur VARCHAR(50), #id_salle);
session_ouverture = (#id_salle, id_session INT, date_session INT);
Prise = (id_prise INT, couleur_prise VARCHAR(50), type_prise VARCHAR(50), matiere_prise VARCHAR(50), quantite_prise INT, date_prise INT);
Client = (id_client INT, nom_client VARCHAR(50), prenom_client VARCHAR(50), email_client VARCHAR(50));
abonnement = (id_abonnement VARCHAR(50), types_abonnement VARCHAR(50), date_debut INT, date_fin INT, #id_salle, #id_client);
produit = (id_produit INT, catégorie_produit VARCHAR(50), quantite_produit INT, prix_produit VARCHAR(50));
Employé = (id_employe INT, nom_employe VARCHAR(50), prenom_employe VARCHAR(50), role_employe VARCHAR(50), #id_employe_1*);
Bloc = (id_bloc INT, couleur_bloc VARCHAR(50), date_creation_bloc INT, date_retrait_bloc VARCHAR(50), #(#id_salle, id_session), #id_employe, #id_secteur);
composer = (#id_bloc, #id_prise);
achat = (#id_client, #id_produit, date_achat INT, quantité INT);



