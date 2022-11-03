create database zoo;

CREATE TABLE animal 
(
     id INTEGER primary key auto_increment not null,
     nom VARCHAR(255),
     id_espece INTEGER
);

CREATE TABLE espece 
(
     id INTEGER primary key auto_increment not null,
     nom VARCHAR(255)
);

CREATE TABLE nourriture 
(
     id INTEGER primary key auto_increment not null,
     nom VARCHAR(255)
);

CREATE TABLE pays 
(
     id INTEGER primary key auto_increment not null,
     nom VARCHAR(255)
);


CREATE TABLE animal_nourriture 
(
     id INTEGER primary key auto_increment not null,
     id_animal INTEGER,
     id_nourriture INTEGER
);


CREATE TABLE animal_pays 
(
     id INTEGER primary key auto_increment not null,
     id_animal INTEGER,
     id_pays INTEGER
);

    CREATE TABLE animal 
(
     id INTEGER primary key auto_increment not null,
     nom VARCHAR(255),
     id_espece INTEGER
);


INSERT INTO animal ( nom ) VALUES 
( 'pirhana' ), ('pangolin'), ('python'), ('paon'),
('chat'), ('cochon'), ('corbeau'),  ('carpe'), ('caméléon'),  ('cigale'), 
('fourmis'),  ('souris'),  ('fourmilier'),  ('ornythorinque'),
('polatouche'),  ('chien');

INSERT INTO espece ( nom ) VALUES ('mammifère'), ('insecte'), 
('reptile'), ('poisson'), ('amphibien'), ('oiseau') ;

INSERT INTO nourriture ( nom ) VALUES 
('viande'), ('herbe'), ('graine'), ('croquette'), ('fruit'), ('vers'), 
('insectes'), ('fourmis'), ('os');

INSERT INTO pays ( nom ) VALUES 
 ('france'), ('australie'), ('indes'), ('chine'), ('congo'), 
 ('italie'), ('espagne'), ('afrique du sud'), ('brésil'), ('USA');

--montre le tableau animal avec les valeurs inseré 
 select*from animal; 

--créer un tableau avec le nom de l'animal et son id-espece
 SELECT 
 animal.nom as nom,
 espece.nom as espece
FROM 
 animal,
 espece,
WHERE
animal.id

-- pas sur à verifier
SELECT 
    espece.nom as espece,
    animal.nom as nom
FROM
    espece 
LEFT JOIN animal ON espece.id=animaux.id_espece;

-- info du prof
SELECT 
    espece.nom as espece,
    animal.nom as nom
FROM
    espece 
LEFT JOIN animal ON animal.id_espece=espece.id;



INSERT INTO animal_nourriture ( id_animal, id_nourriture ) VALUES 
( 1, 1), (2, 2), (3, 1), (3,7), (5,1), (4,3), (4,2), (5,4), (5,2), 
(7,1), (7,5), (7,3), (8,1), (9,6), (10,1), (10,2), (11,2),
 (11, 8), (14,1), (15, 2), (16, 1), (16, 9), (16, 4);


 SELECT
    animal.nom,
    nourriture.nom as bouffe 
FROM animal
LEFT JOIN animal_nourriture ON animal_nourriture.id_animal=animal.ID
LEFT JOIN nourriture ON animal_nourriture.id_nourriture=nourriture.ID;

-- affichier une 3e colonne espece
SELECT
    animal.nom as animal,
    nourriture.nom as bouffe,
    espece.nom as espece
FROM animal
LEFT JOIN animal_nourriture ON animal_nourriture.id_animal=animal.ID
LEFT JOIN nourriture ON animal_nourriture.id_nourriture=nourriture.ID
LEFT JOIN espece ON animal.id_espece=espece.ID;



--ajouter des infos à la table animal_pays

INSERT INTO animal_pays (id_animal, id_pays) VALUES (1, 9), (2, 4), (3, 3), (3, 4), (4, 1), (5, 1), (5, 2), (5, 5), (5, 6), (5, 10), (6, 1), (6, 3), (6, 8),
(7, 1), (7, 5), (7, 9), (8, 9), (8, 5), (9, 9), (10, 1), (11, 1), (11, 2), (11, 3), (11, 4), (12, 1), (12, 10), (13, 8), (14, 2), (15, 10), (16, 1), (16, 2),
(16, 3), (16, 5), (16, 8), (16, 10);

--ajout de colonne à un tableau
ALTER TABLE nom_table
ADD nom_colonne type_donnees

ALTER TABLE animal_nourriture ADD note INTEGER;



--ajouter des valeurs à la colonne note

update animal_nourriture  SET note=9   where id=1;
update animal_nourriture  SET note=6   where id=2;
update animal_nourriture  SET note=2   where id=3;
update animal_nourriture  SET note=1   where id=4;
update animal_nourriture  SET note=9   where id=5;
update animal_nourriture  SET note=5   where id=6;
update animal_nourriture  SET note=8   where id=7;
update animal_nourriture  SET note=9   where id=8;
update animal_nourriture  SET note=6   where id=9;
update animal_nourriture  SET note=7   where id=10;
update animal_nourriture  SET note=7   where id=11;
update animal_nourriture  SET note=8   where id=12;
update animal_nourriture  SET note=9   where id=13;
update animal_nourriture  SET note=1   where id=14;
update animal_nourriture  SET note=1   where id=15;
update animal_nourriture  SET note=3   where id=16;
update animal_nourriture  SET note=2   where id=17;
update animal_nourriture  SET note=4   where id=18;
update animal_nourriture  SET note=5   where id=19;
update animal_nourriture  SET note=9   where id=20;
update animal_nourriture  SET note=9   where id=21;
update animal_nourriture  SET note=6   where id=22;
update animal_nourriture  SET note=2   where id=23;
update animal_nourriture  SET note=1   where id=24;
update animal_nourriture  SET note=9   where id=25;
update animal_nourriture  SET note=5   where id=26;
update animal_nourriture  SET note=8   where id=27;
update animal_nourriture  SET note=9   where id=28;
update animal_nourriture  SET note=6   where id=29;

