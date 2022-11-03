CREATE DATABASE commerce; 

USE commerce;

CREATE TABLE article 
(
     id INTEGER primary key auto_increment not null,
     nom VARCHAR(255),
     prix DECIMAL( 5,2),
     quantite DECIMAL( 5,2)
);

INSERT INTO article ( nom, prix, quantite ) VALUES ( 'radis', 2.20, 2 );
...

select nom, quantite, quantiteprix as tt  from article;
select sum(quantiteprix) as total  from article;

CREATE DATABASE commerce; 

USE commerce;

CREATE TABLE article 
(
     id INTEGER primary key auto_increment not null,
     nom VARCHAR(255),
     prix DECIMAL( 5,2),
     quantite DECIMAL( 5,2)
);

INSERT INTO article ( nom, prix, quantite ) VALUES ( 'radis', 2.20, 2 );
...

select nom, quantite, quantiteprix as tt  from article;
select sum(quantiteprix) as total  from article


///// creation des tables
CREATE TABLE article 
(
     id INTEGER primary key auto_increment not null,
     nom VARCHAR(255) NOT NULL,
     prix DECIMAL( 5,2),
     quantite DECIMAL( 5,2)
);

CREATE TABLE client 
(
     id INTEGER primary key auto_increment not null,
     nom VARCHAR(255) NOT NULL
);


CREATE TABLE ligne_achat 
(
     id INTEGER primary key auto_increment not null,
     ID_facture INTEGER NOT NULL,
     ID_article INTEGER NOT NULL,
     quantite DECIMAL( 5,2)
);


CREATE TABLE facture 
(
     id INTEGER primary key auto_increment not null,
     ID_client INTEGER NOT NULL,
     date_creation timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

--insere des informations dans les tables 
INSERT INTO article ( nom, prix, quantite ) VALUES ( 'brouette', 22.22, 11 );
INSERT INTO article ( nom, prix, quantite ) VALUES ( 'fourche', 7.90, 3 );
INSERT INTO article ( nom, prix, quantite ) VALUES ( 'botte', 11.00, 14 );
INSERT INTO article ( nom, prix, quantite ) VALUES ( 'epouvantail', 34.00, 4 );

INSERT INTO client ( nom ) VALUES ( 'sigismond' );
INSERT INTO client ( nom ) VALUES ( 'Charlemagnus' );
INSERT INTO client ( nom ) VALUES ( 'Enguerrand' );
INSERT INTO client ( nom ) VALUES ( 'Napoleon' );

INSERT INTO facture ( ID_client ) VALUES ( 1 );
INSERT INTO facture ( ID_client ) VALUES ( 3 );
INSERT INTO facture ( ID_client ) VALUES ( 2 );
INSERT INTO facture ( ID_client ) VALUES ( 4 );


INSERT INTO ligne_achat (ID_facture, ID_article, quantite) VALUES (1, 3, 2);

--voir les informations suivantes et créer une table de jointure

SELECT nom, date_creation, facture.ID as numDeFacture 
FROM facture, client
WHERE facture.ID_client=client.ID;






////////////////////////////////////////

