
CREATE TABLE wojewodztwo (
    id_wojewodztwo INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

INSERT INTO wojewodztwo (name) VALUES
('Dolnoslaskie'),('Kujawsko-Pomorskie'),('Lubelskie'),('Lubuskie'),
('Lodzkie'),('Malopolskie'),('Mazowieckie'),('Opolskie'),
('Podkarpackie'),('Podlaskie'),('Pomorskie'),('Slaskie'),
('Swietokrzyskie'),('Warminsko-Mazurskie'),('Wielkopolskie'),('Zachodniopomorskie');


CREATE TABLE powiat (
    id_powiat INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    wojewodztwo_id INT NOT NULL
);

INSERT INTO powiat (name, wojewodztwo_id) VALUES
('Czestochowski', 12),('Warszawski', 7),('Krakowski', 6),('Gdanski', 11);


CREATE TABLE miasto (
    id_miasto INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    wojewodztwo_id INT NOT NULL,
    powiat_id INT NOT NULL
);

INSERT INTO miasto (name, wojewodztwo_id, powiat_id) VALUES
('Czestochowa', 12, 1),('Warszawa', 7, 2),('Krakow', 6, 3),('Gdansk', 11, 4);


CREATE TABLE osoby (
    id_osoba INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    miasto_id INT NOT NULL
);

INSERT INTO osoby (name, miasto_id) VALUES
('Jan Kowalski', 1),('Anna Nowak', 2),('Piotr Wisniewski', 3),('Katarzyna Zielinska', 4);
