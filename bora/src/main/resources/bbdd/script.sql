DROP TABLE IF EXISTS VICTORIA;
DROP TABLE IF EXISTS PUESTOMETRO;
DROP TABLE IF EXISTS TEMPORADA_CORREDOR;
DROP TABLE IF EXISTS CORREDOR;
DROP TABLE IF EXISTS CARRERA;
DROP TABLE IF EXISTS TEMPORADA;
DROP TABLE IF EXISTS PAIS;
DROP TABLE IF EXISTS CATEGORIA;

CREATE TABLE PAIS (
    codigo INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

ALTER TABLE pais MODIFY COLUMN codigo INT AUTO_INCREMENT;

INSERT INTO pais VALUES (1, 'Alemania');
INSERT INTO pais VALUES (2, 'Eslovaquia');
INSERT INTO pais VALUES (3, 'Italia');
INSERT INTO pais VALUES (4, 'Austria');
INSERT INTO pais VALUES (5, 'Polonia');
INSERT INTO pais VALUES (6, 'Luxemburgo');
INSERT INTO pais VALUES (7, 'Australia');
INSERT INTO pais VALUES (8, 'Estonia');
INSERT INTO pais VALUES (9, 'Noruega');
INSERT INTO pais VALUES (10, 'Holanda');
INSERT INTO pais VALUES (11, 'Francia');
INSERT INTO pais VALUES (12, 'Bélgica');
INSERT INTO pais VALUES (13, 'Suiza');
INSERT INTO pais VALUES (14, 'España');
INSERT INTO pais VALUES (15, 'Portugal');
INSERT INTO pais VALUES (16, 'Gran Bretaña');
INSERT INTO pais VALUES (17, 'Canadá');
INSERT INTO pais VALUES (18, 'Arcobaleno');
INSERT INTO pais VALUES (19, 'UAE');
INSERT INTO pais VALUES (20, 'China');

CREATE TABLE CORREDOR (
    id INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    fotoURL VARCHAR(300),
    pais INT NOT NULL,
    FOREIGN KEY (pais) REFERENCES PAIS(codigo) 
);

ALTER TABLE corredor MODIFY COLUMN id INT AUTO_INCREMENT;

INSERT INTO corredor VALUES (1, 'Pascal Ackermann', 'https://www.bora.com/fileadmin/website_content/Rezepte/Cooking/myBora_Integration_2018/Meister_Edition/Ackermann/BORA_Ansicht_1010_Meister_Ackermann_3.jpg', 1);
INSERT INTO corredor VALUES (2, 'Erik Baška', 'https://pbs.twimg.com/media/FDSg8DvWEAQJ_ml.jpg', 2);
INSERT INTO corredor VALUES (3, 'Cesare Benedetti', 'https://upload.wikimedia.org/wikipedia/commons/3/30/Rund_um_K%C3%B6ln_2018_011.jpg', 3);
INSERT INTO corredor VALUES (4, 'Maciej Bodnar', 'https://www.bora.com/fileadmin/website_content/Rezepte/Cooking/myBora_Integration_2018/Meister_Edition/Bodnar/BORA_Ansicht_1010_Meister_Bodnar_4.jpg', 5);
INSERT INTO corredor VALUES (5, 'Emanuel Buchmann', 'https://www.bora.com/fileadmin/website_content/Rezepte/Cooking/myBora_Integration_2018/Meister_Edition/Buchmann/BORA_Ansicht_1010_Meister_Buchmann_2.jpg', 1);
INSERT INTO corredor VALUES (6, 'Marcus Burghardt', 'https://www.bora.com/fileadmin/website_content/Rezepte/Cooking/myBora_Integration_2018/Meister_Edition/Burghardt/BORA_Ansicht_1010_Meister_Burghardt_2.jpg', 1);
INSERT INTO corredor VALUES (7, 'Jempy Drucker', 'https://img.wort.lu/public/luxemburg/cttzky-jempy-drucker-uberzeugt-vor-allem-stets-bei-den-eintagesrennen-in-flandern./alternates/BASE_SIXTEEN_NINE/Jempy%20Drucker%20%C3%BCberzeugt%20vor%20allem%20stets%20bei%20den%20Eintagesrennen%20in%20Flandern.', 6);
INSERT INTO corredor VALUES (8, 'Matteo Fabbro', 'https://www.feltet.dk/octo_cms/files/Feltet.dk/Billeder/2020/Hold/BORA-hansgrohe_2020/2020_Bora_hansgrohe_profilbillede_Matteo_Fabbro_Headshot.JPG', 3);
INSERT INTO corredor VALUES (9, 'Patrick Gamper', 'https://r.testifier.nl/Acbs8526SDKI/resizing_type:fit/watermark:Picture%3A%20Sirotti/width:1080/height:720/plain/https://s3-newsifier.ams3.digitaloceanspaces.com/ciclismoaldia.newsifier.com/images/2024-08/patrickgamper.jpg@webp', 4);
INSERT INTO corredor VALUES (10, 'Oscar Gatto', 'https://pbs.twimg.com/media/EauoG0IU8AI0X6e?format=jpg&name=large', 3);
INSERT INTO corredor VALUES (11, 'Felix Großschartner', 'https://live.staticflickr.com/65535/52189211365_7a0651ab9e_b.jpg', 4);
INSERT INTO corredor VALUES (12, 'Lennard Kämna', 'https://racing.trekbikes.com/wp-content/uploads/2024/08/GettyImages-1490072275-scaled-1600x0-c-default.jpg?x26896', 1);
INSERT INTO corredor VALUES (13, 'Patrick Konrad', 'https://estaticos-cdn.prensaiberica.es/clip/d6d49b82-c192-4b28-809b-ccd0e8cfe484_16-9-discover-aspect-ratio_default_0.jpg', 4);
INSERT INTO corredor VALUES (14, 'Martin Laas', 'https://imgresizer.eurosport.com/unsafe/1200x0/filters:format(jpeg)/origin-imgresizer.eurosport.com/2021/08/06/3196552-65486308-2560-1440.jpg', 8);
INSERT INTO corredor VALUES (15, 'Rafał Majka', 'https://www.bora.com/fileadmin/website_content/Rezepte/Cooking/myBora_Integration_2018/Meister_Edition/Majka/BORA_Ansicht_1010_Meister_Majka_2.jpg', 5);
INSERT INTO corredor VALUES (17, 'Jay McCarthy', 'https://bicyclingaustralia.com.au/wp-content/uploads/2017/06/Jay4.jpg', 7);
INSERT INTO corredor VALUES (18, 'Gregor Mühlberger', 'https://www.bora.com/fileadmin/_processed_/7/4/csm_BORA_Ansicht_1010_Meister_Muehlberger_3_5d48bf13a6.jpg', 4);
INSERT INTO corredor VALUES (19, 'Daniel Oss', 'https://todaycycling.com/wp-content/uploads/2020/05/daniel-oss.jpg', 3);
INSERT INTO corredor VALUES (20, 'Paweł Poljański', 'https://naszosie.pl/wp-content/uploads/2019/08/67454340_2613022578734687_722565863152025600_o-e1564824008204.jpg', 5);
INSERT INTO corredor VALUES (21, 'Lukas Pöstlberger', 'https://www.bora.com/fileadmin/website_content/Rezepte/Cooking/myBora_Integration_2018/Meister_Edition/Poestlberger/BORA_Ansicht_1010_Meister_Poestlberger_2.jpg', 4);
INSERT INTO corredor VALUES (22, 'Juraj Sagan', 'https://www.feltet.dk/octo_cms/files/Feltet.dk/Billeder/2020/Hold/BORA-hansgrohe_2020/2020_Bora_hansgrohe_profilbillede_Juraj_Sagan_Headshot.JPG', 2);
INSERT INTO corredor VALUES (23, 'Peter Sagan', 'https://www.iberobike.com/wp-content/uploads/2021/07/Peter-Sagan-abandona-su-familia-ciclista-de-los-ultimos-cinco-anos-bora-hansgrohe.jpg', 2);
INSERT INTO corredor VALUES (24, 'Maximilian Schachmann', 'https://cyclingfantasy.cc/_next/image?url=https%3A%2F%2Fd3g42de5vbfx19.cloudfront.net%2Frider%2Favatars%2Fsquare%2Fmedium%2F5xZM3L_SCHACHMANN-Maximilian.jpeg&w=384&q=75', 1);
INSERT INTO corredor VALUES (25, 'Ide Schelling', 'https://www.shutterstock.com/editorial/image-editorial/M5TbMe55O4DbE534NDk3NTY=/dutch-rider-ide-schelling-bora-hansgrohe-team-celebrates-440nw-13857869i.jpg', 10);
INSERT INTO corredor VALUES (26, 'Andreas Schillinger', 'https://ciclista.net/wp-content/uploads/2016/04/Andreas-Schillinger-Paris-Roubaix.jpg', 1);
INSERT INTO corredor VALUES (27, 'Michael Schwarzmann', 'https://img.gva.be/KvDQRoNViAXvkxt06UAyuV0MvBo=/fit-in/960x640/https%3A%2F%2Fstatic.gva.be%2FAssets%2FImages_Upload%2F2021%2F09%2F27%2Fb355a048-d504-4f0d-9c64-caaa818a21a7.jpg', 1);
INSERT INTO corredor VALUES (28, 'Rüdiger Selig', 'https://www.radsportkompakt.de/wp-content/uploads/2017/05/Selig_2017_bora-hansgrohe_veloimages.jpg', 1);
INSERT INTO corredor VALUES (29, 'Alberto Bettiol', NULL, 3);
INSERT INTO corredor VALUES (31, 'Matteo Fabro', NULL, 3);
INSERT INTO corredor VALUES (32, 'Andreas Leknessund', NULL, 9);
INSERT INTO corredor VALUES (33, 'Fausto Masnada', NULL, 3);
INSERT INTO corredor VALUES (34, 'Chris Scheunert', NULL, 1);
INSERT INTO corredor VALUES (35, 'Ben Zwiehoff', NULL, 1);
INSERT INTO corredor VALUES (36, 'Luis-Joe Lührs', NULL, 1);
INSERT INTO corredor VALUES (37, 'Giovanni Aleotti', NULL, 3);
INSERT INTO corredor VALUES (38, 'Matteo Moschetti', NULL, 3);
INSERT INTO corredor VALUES (39, 'Jasha Sütterlin', NULL, 1);
INSERT INTO corredor VALUES (40, 'Emil Herzog', NULL, 1);
INSERT INTO corredor VALUES (41, 'Adrian Banaszek', NULL, 5);
INSERT INTO corredor VALUES (42, 'Thymen Arensman', NULL, 10);

CREATE TABLE CATEGORIA (
    id INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
); 
ALTER TABLE categoria MODIFY COLUMN id INT AUTO_INCREMENT;

INSERT INTO categoria VALUES (1, 'UWT-TDF');
INSERT INTO categoria VALUES (2, 'UWT-GT');
INSERT INTO categoria VALUES (3, 'UWT-Monument');
INSERT INTO categoria VALUES (4, 'WorldChampionship');
INSERT INTO categoria VALUES (5, 'UWT-Major');
INSERT INTO categoria VALUES (6, 'UWT-Classic-1');
INSERT INTO categoria VALUES (7, 'UWT-Minor');
INSERT INTO categoria VALUES (8, 'UWT-Classic-2');
INSERT INTO categoria VALUES (9, 'UWT-GT-StageRace');
INSERT INTO categoria VALUES (10, 'UWT-Major-StageRace');
INSERT INTO categoria VALUES (11, 'UWT-Minor-StageRace');
INSERT INTO categoria VALUES (12, '2.Pro');
INSERT INTO categoria VALUES (13, '1.Pro');
INSERT INTO categoria VALUES (14, 'NC');
INSERT INTO categoria VALUES (15, '2.1');
INSERT INTO categoria VALUES (16, '1.1');
INSERT INTO categoria VALUES (17, '2.Pro-StageRace');
INSERT INTO categoria VALUES (18, '2.1-StageRace');

CREATE TABLE CARRERA (
    id INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    categoria INT NOT NULL,
    FOREIGN KEY (categoria) REFERENCES CATEGORIA (id), 
    worldtour BOOLEAN NOT NULL,
    pais INT NOT NULL,
    FOREIGN KEY (pais) REFERENCES PAIS (codigo)
); 

ALTER TABLE carrera MODIFY COLUMN id INT AUTO_INCREMENT;

INSERT INTO carrera VALUES (1, 'Tour de Francia', 1, TRUE, 11);
INSERT INTO carrera VALUES (2, 'Giro de Italia', 2, TRUE, 3);
INSERT INTO carrera VALUES (3, 'Vuelta a España', 2, TRUE, 14);
INSERT INTO carrera VALUES (4, 'Campeonato del Mundo', 4, FALSE, 18);
INSERT INTO carrera VALUES (5, 'Milán-San Remo', 3, TRUE, 3);
INSERT INTO carrera VALUES (6, 'Tour de Flandes', 3, TRUE, 12);
INSERT INTO carrera VALUES (7, 'París-Roubaix', 3, TRUE, 11);
INSERT INTO carrera VALUES (8, 'Lieja-Bastoña-Lieja', 3, TRUE, 12);
INSERT INTO carrera VALUES (9, 'Giro de Lombardía', 3, TRUE, 3);
INSERT INTO carrera VALUES (10, 'París-Niza', 5, TRUE, 11);
INSERT INTO carrera VALUES (11, 'Tirreno-Adriático', 5, TRUE, 3);
INSERT INTO carrera VALUES (12, 'Tour de Romandía', 5, TRUE, 13);
INSERT INTO carrera VALUES (13, 'Tour de Suiza', 5, TRUE, 13);
INSERT INTO carrera VALUES (14, 'Criterium de Dauphine', 5, TRUE, 11);
INSERT INTO carrera VALUES (15, 'Itzulia', 5, TRUE, 14);
INSERT INTO carrera VALUES (16, 'Volta a Cataluña', 5, TRUE, 14);
INSERT INTO carrera VALUES (17, 'Omloop Nieuwsblad', 6, TRUE, 12);
INSERT INTO carrera VALUES (18, 'Strade Bianche', 6, TRUE, 3);
INSERT INTO carrera VALUES (19, 'Gante-Wevelgem', 6, TRUE, 12);
INSERT INTO carrera VALUES (20, 'Flecha Valona', 6, TRUE, 12);
INSERT INTO carrera VALUES (21, 'Brugge-De Panne', 6, TRUE, 12);
INSERT INTO carrera VALUES (22, 'E3 Saxo Classic', 6, TRUE, 12);
INSERT INTO carrera VALUES (23, 'Dwars door Vlaanderen - A travers la Flandre', 6, TRUE, 12);
INSERT INTO carrera VALUES (24, 'Gran Premio de Quebec', 6, TRUE, 17);
INSERT INTO carrera VALUES (25, 'Gran Premio de Montreal', 6, TRUE, 17);
INSERT INTO carrera VALUES (26, 'Bretagne Classic', 6, TRUE, 11);
INSERT INTO carrera VALUES (27, 'Clásica de San Sebastián', 6, TRUE, 14);
INSERT INTO carrera VALUES (28, 'Amstel Gold Race', 6, TRUE, 12);
INSERT INTO carrera VALUES (29, 'Eschborn-Frankfurt', 6, TRUE, 1);
INSERT INTO carrera VALUES (30, 'BEMER Cyclassics', 6, TRUE, 1);
INSERT INTO carrera VALUES (31, 'Cadel Evans Great Ocean Road Race', 8, TRUE, 7);
INSERT INTO carrera VALUES (32, 'London Classic', 8, TRUE, 16);
INSERT INTO carrera VALUES (33, 'Santos Tour Down Under', 7, TRUE, 7);
INSERT INTO carrera VALUES (34, 'UAE Tour', 7, TRUE, 15);
INSERT INTO carrera VALUES (35, 'Tour de Polonia', 7, TRUE, 5);
INSERT INTO carrera VALUES (36, 'Renewi Tour', 7, TRUE, 6);
INSERT INTO carrera VALUES (37, 'Gree-Tour of Guangxi', 7, TRUE, 6);

CREATE TABLE TEMPORADA (
    id INT PRIMARY KEY
);

INSERT INTO temporada VALUES (2020);
INSERT INTO temporada VALUES (2021);
INSERT INTO temporada VALUES (2022);
INSERT INTO temporada VALUES (2023);
INSERT INTO temporada VALUES (2024);
INSERT INTO temporada VALUES (2025);
INSERT INTO temporada VALUES (2026);
INSERT INTO temporada VALUES (2027);
INSERT INTO temporada VALUES (2028);

CREATE TABLE TEMPORADA_CORREDOR (
    id INT PRIMARY KEY,
    corredor INT NOT NULL,
    FOREIGN KEY (corredor) REFERENCES CORREDOR(id),
    temporada INT NOT NULL,
    FOREIGN KEY (temporada) REFERENCES TEMPORADA(id)
);

ALTER TABLE temporada_corredor MODIFY COLUMN id INT AUTO_INCREMENT;

CREATE TABLE PUESTOMETRO (
    id INT PRIMARY KEY,
    puesto INT NOT NULL,
    carrera INT NOT NULL,
    FOREIGN KEY (carrera) REFERENCES CARRERA(id),
    temporada_corredor INT NOT NULL,
    FOREIGN KEY (temporada_corredor) REFERENCES TEMPORADA_CORREDOR(id)
);

ALTER TABLE puestometro MODIFY COLUMN id INT AUTO_INCREMENT;

CREATE TABLE VICTORIA (
    id INT PRIMARY KEY,
    carrera INT NOT NULL,
    FOREIGN KEY (carrera) REFERENCES CARRERA(id),
    temporada_corredor INT NOT NULL,
    FOREIGN KEY (temporada_corredor) REFERENCES TEMPORADA_CORREDOR(id),
    etapa BOOLEAN NOT NULL,
    tt BOOLEAN NOT NULL
);

ALTER TABLE victoria MODIFY COLUMN id INT AUTO_INCREMENT;

