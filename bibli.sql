CREATE DATABASE bibliotheque;

USE bibliotheque;

CREATE TABLE emprunteur (
    id INT primary key auto_increment not null,
    nom VARCHAR(255) not null
);

CREATE TABLE livre (
    id INT primary key auto_increment,
    auteur VARCHAR(255) not null,
    quantite INT not null
);

CREATE TABLE emprunteur_livre (
    id INT primary key auto_increment,
    id_livre INT,
    id_emprunteur INT,
    date_emprunt TIMESTAMP,
    date_retour TIMESTAMP,
    CONSTRAINT FK_id_livre FOREIGN KEY (id_livre) REFERENCES livre(id),
    CONSTRAINT FK_id_emprunteur FOREIGN KEY (id_emprunteur) REFERENCES emprunteur(id)
);

INSERT INTO emprunteur ( nom ) VALUES ( 'titi');
INSERT INTO livre ( auteur, quantite ) VALUES ( 'tito', 2);
INSERT INTO emprunteur_livre ( id_livre, id_emprunteur, date_emprunt, date_retour ) VALUES ( '1', '2', "2022-10-12", "2022-10-12");
INSERT INTO emprunteur_livre (id_livre, id_emprunteur, date_emprunt, date_retour) VALUES (1,2, "2022-10-03 12:25:09", CURRENT_TIMESTAMP);

