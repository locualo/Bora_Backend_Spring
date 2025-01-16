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
INSERT INTO pais VALUES (21, 'República Checa');
INSERT INTO pais VALUES (22, 'Malasia');
INSERT INTO pais VALUES (23, 'Turquía');
INSERT INTO pais VALUES (24, 'Arabia Saudí');
INSERT INTO pais VALUES (25, 'Croacia');
INSERT INTO pais VALUES (26, 'Eslovenia');

CREATE TABLE CORREDOR (
    id INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    fotoURL VARCHAR(300),
    pais INT NOT NULL,
    FOREIGN KEY (pais) REFERENCES PAIS(codigo),
    se_ha_dopado_alguna_vez BOOLEAN DEFAULT FALSE 
);

ALTER TABLE corredor MODIFY COLUMN id INT AUTO_INCREMENT;
INSERT INTO corredor VALUES (1, 'Pascal Ackermann', 'https://www.bora.com/fileadmin/website_content/Rezepte/Cooking/myBora_Integration_2018/Meister_Edition/Ackermann/BORA_Ansicht_1010_Meister_Ackermann_3.jpg', 1, FALSE);
INSERT INTO corredor VALUES (2, 'Erik Baška', 'https://pbs.twimg.com/media/FDSg8DvWEAQJ_ml.jpg', 2, FALSE);
INSERT INTO corredor VALUES (3, 'Cesare Benedetti', 'https://upload.wikimedia.org/wikipedia/commons/3/30/Rund_um_K%C3%B6ln_2018_011.jpg', 3, FALSE);
INSERT INTO corredor VALUES (4, 'Maciej Bodnar', 'https://www.bora.com/fileadmin/website_content/Rezepte/Cooking/myBora_Integration_2018/Meister_Edition/Bodnar/BORA_Ansicht_1010_Meister_Bodnar_4.jpg', 5, FALSE);
INSERT INTO corredor VALUES (5, 'Emanuel Buchmann', 'https://www.bora.com/fileadmin/website_content/Rezepte/Cooking/myBora_Integration_2018/Meister_Edition/Buchmann/BORA_Ansicht_1010_Meister_Buchmann_2.jpg', 1, FALSE);
INSERT INTO corredor VALUES (6, 'Marcus Burghardt', 'https://www.bora.com/fileadmin/website_content/Rezepte/Cooking/myBora_Integration_2018/Meister_Edition/Burghardt/BORA_Ansicht_1010_Meister_Burghardt_2.jpg', 1, FALSE);
INSERT INTO corredor VALUES (7, 'Jempy Drucker', 'https://img.wort.lu/public/luxemburg/cttzky-jempy-drucker-uberzeugt-vor-allem-stets-bei-den-eintagesrennen-in-flandern./alternates/BASE_SIXTEEN_NINE/Jempy%20Drucker%20%C3%BCberzeugt%20vor%20allem%20stets%20bei%20den%20Eintagesrennen%20in%20Flandern.', 6, FALSE);
INSERT INTO corredor VALUES (8, 'Matteo Fabbro', 'https://www.feltet.dk/octo_cms/files/Feltet.dk/Billeder/2020/Hold/BORA-hansgrohe_2020/2020_Bora_hansgrohe_profilbillede_Matteo_Fabbro_Headshot.JPG', 3, FALSE);
INSERT INTO corredor VALUES (9, 'Patrick Gamper', 'https://r.testifier.nl/Acbs8526SDKI/resizing_type:fit/watermark:Picture%3A%20Sirotti/width:1080/height:720/plain/https://s3-newsifier.ams3.digitaloceanspaces.com/ciclismoaldia.newsifier.com/images/2024-08/patrickgamper.jpg@webp', 4, FALSE);
INSERT INTO corredor VALUES (10, 'Oscar Gatto', 'https://pbs.twimg.com/media/EauoG0IU8AI0X6e?format=jpg&name=large', 3, FALSE);
INSERT INTO corredor VALUES (11, 'Felix Großschartner', 'https://live.staticflickr.com/65535/52189211365_7a0651ab9e_b.jpg', 4, FALSE);
INSERT INTO corredor VALUES (12, 'Lennard Kämna', 'https://racing.trekbikes.com/wp-content/uploads/2024/08/GettyImages-1490072275-scaled-1600x0-c-default.jpg?x26896', 1, FALSE);
INSERT INTO corredor VALUES (13, 'Patrick Konrad', 'https://estaticos-cdn.prensaiberica.es/clip/d6d49b82-c192-4b28-809b-ccd0e8cfe484_16-9-discover-aspect-ratio_default_0.jpg', 4, FALSE);
INSERT INTO corredor VALUES (14, 'Martin Laas', 'https://imgresizer.eurosport.com/unsafe/1200x0/filters:format(jpeg)/origin-imgresizer.eurosport.com/2021/08/06/3196552-65486308-2560-1440.jpg', 8, FALSE);
INSERT INTO corredor VALUES (15, 'Rafał Majka', 'https://www.bora.com/fileadmin/website_content/Rezepte/Cooking/myBora_Integration_2018/Meister_Edition/Majka/BORA_Ansicht_1010_Meister_Majka_2.jpg', 5, FALSE);
INSERT INTO corredor VALUES (17, 'Jay McCarthy', 'https://bicyclingaustralia.com.au/wp-content/uploads/2017/06/Jay4.jpg', 7, FALSE);
INSERT INTO corredor VALUES (18, 'Gregor Mühlberger', 'https://www.bora.com/fileadmin/_processed_/7/4/csm_BORA_Ansicht_1010_Meister_Muehlberger_3_5d48bf13a6.jpg', 4, FALSE);
INSERT INTO corredor VALUES (19, 'Daniel Oss', 'https://todaycycling.com/wp-content/uploads/2020/05/daniel-oss.jpg', 3, FALSE);
INSERT INTO corredor VALUES (20, 'Paweł Poljański', 'https://naszosie.pl/wp-content/uploads/2019/08/67454340_2613022578734687_722565863152025600_o-e1564824008204.jpg', 5, FALSE);
INSERT INTO corredor VALUES (21, 'Lukas Pöstlberger', 'https://www.bora.com/fileadmin/website_content/Rezepte/Cooking/myBora_Integration_2018/Meister_Edition/Poestlberger/BORA_Ansicht_1010_Meister_Poestlberger_2.jpg', 4, FALSE);
INSERT INTO corredor VALUES (22, 'Juraj Sagan', 'https://www.feltet.dk/octo_cms/files/Feltet.dk/Billeder/2020/Hold/BORA-hansgrohe_2020/2020_Bora_hansgrohe_profilbillede_Juraj_Sagan_Headshot.JPG', 2, FALSE);
INSERT INTO corredor VALUES (23, 'Peter Sagan', 'https://www.iberobike.com/wp-content/uploads/2021/07/Peter-Sagan-abandona-su-familia-ciclista-de-los-ultimos-cinco-anos-bora-hansgrohe.jpg', 2, FALSE);
INSERT INTO corredor VALUES (24, 'Maximilian Schachmann', 'https://cyclingfantasy.cc/_next/image?url=https%3A%2F%2Fd3g42de5vbfx19.cloudfront.net%2Frider%2Favatars%2Fsquare%2Fmedium%2F5xZM3L_SCHACHMANN-Maximilian.jpeg&w=384&q=75', 1, FALSE);
INSERT INTO corredor VALUES (25, 'Ide Schelling', 'https://www.shutterstock.com/editorial/image-editorial/M5TbMe55O4DbE534NDk3NTY=/dutch-rider-ide-schelling-bora-hansgrohe-team-celebrates-440nw-13857869i.jpg', 10, FALSE);
INSERT INTO corredor VALUES (26, 'Andreas Schillinger', 'https://ciclista.net/wp-content/uploads/2016/04/Andreas-Schillinger-Paris-Roubaix.jpg', 1, FALSE);
INSERT INTO corredor VALUES (27, 'Michael Schwarzmann', 'https://img.gva.be/KvDQRoNViAXvkxt06UAyuV0MvBo=/fit-in/960x640/https%3A%2F%2Fstatic.gva.be%2FAssets%2FImages_Upload%2F2021%2F09%2F27%2Fb355a048-d504-4f0d-9c64-caaa818a21a7.jpg', 1, FALSE);
INSERT INTO corredor VALUES (28, 'Rüdiger Selig', 'https://www.radsportkompakt.de/wp-content/uploads/2017/05/Selig_2017_bora-hansgrohe_veloimages.jpg', 1, FALSE);
INSERT INTO corredor VALUES (29, 'Alberto Bettiol', NULL, 3, FALSE);
INSERT INTO corredor VALUES (32, 'Andreas Leknessund', NULL, 9, FALSE);
INSERT INTO corredor VALUES (33, 'Fausto Masnada', NULL, 3, FALSE);
INSERT INTO corredor VALUES (34, 'Chris Scheunert', NULL, 1, FALSE);
INSERT INTO corredor VALUES (35, 'Ben Zwiehoff', NULL, 1, FALSE);
INSERT INTO corredor VALUES (36, 'Luis-Joe Lührs', NULL, 1, FALSE);
INSERT INTO corredor VALUES (37, 'Giovanni Aleotti', NULL, 3, FALSE);
INSERT INTO corredor VALUES (38, 'Matteo Moschetti', NULL, 3, FALSE);
INSERT INTO corredor VALUES (39, 'Jasha Sütterlin', NULL, 1, FALSE);
INSERT INTO corredor VALUES (40, 'Emil Herzog', NULL, 1, FALSE);
INSERT INTO corredor VALUES (41, 'Adrian Banaszek', NULL, 5, FALSE);
INSERT INTO corredor VALUES (42, 'Thymen Arensman', NULL, 10, FALSE);
INSERT INTO corredor VALUES (43, 'Gianni Moscon', NULL, 3, FALSE);
INSERT INTO corredor VALUES (44, 'Nils Politt', NULL, 1, FALSE);
INSERT INTO corredor VALUES (45, 'Jasha Sütterlin', NULL, 1, FALSE);
INSERT INTO corredor VALUES (46, 'Phil Bauhaus', NULL, 1, FALSE);
INSERT INTO corredor VALUES (47, 'Kevin Colleoni', NULL, 3, FALSE);

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
INSERT INTO carrera VALUES (38, 'Vuelta a Asturias', 15, FALSE, 14);
INSERT INTO carrera VALUES (39, 'La Classique du Ventoux', 16, FALSE, 11);
INSERT INTO carrera VALUES (40, 'Czech Tour', 15, FALSE, 21);
INSERT INTO carrera VALUES (41, 'GP Stad Zottegem', 16, FALSE, 10);
INSERT INTO carrera VALUES (42, 'Overisje Classic', 16, FALSE, 12);
INSERT INTO carrera VALUES (43, 'Nacional Alemania', 14, FALSE, 1);
INSERT INTO carrera VALUES (44, 'Nacional Alemania ITT', 14, FALSE, 1);
INSERT INTO carrera VALUES (45, 'Vuelta a Burgos', 12, FALSE, 14);
INSERT INTO carrera VALUES (46, 'Clásica Ordizia', 16, FALSE, 14);
INSERT INTO carrera VALUES (47, 'Vuelta a Andalucia', 12, FALSE, 14);
INSERT INTO carrera VALUES (48, 'Tour Malasia', 12, FALSE, 22);
INSERT INTO carrera VALUES (49, 'Nacional Polonia', 14, FALSE, 5);
INSERT INTO carrera VALUES (50, 'Tour Yorkshire', 12, FALSE, 16);
INSERT INTO carrera VALUES (51, 'GP Van Limburg', 16, FALSE, 10);
INSERT INTO carrera VALUES (52, 'Norway Tour', 12, FALSE, 9);
INSERT INTO carrera VALUES (53, 'Baloise Belgium Tour', 12, FALSE, 12);
INSERT INTO carrera VALUES (54, 'Vuelta a Madrid', 15, FALSE, 14);
INSERT INTO carrera VALUES (55, 'Tour of Turkey', 12, FALSE, 23);
INSERT INTO carrera VALUES (56, 'Circuit Wallonie', 16, FALSE, 12);
INSERT INTO carrera VALUES (57, 'Tour Austria', 15, FALSE, 4);
INSERT INTO carrera VALUES (58, 'Bredene Koksidje', 16, FALSE, 12);
INSERT INTO carrera VALUES (59, 'Tour de Alemania', 12, FALSE, 1);
INSERT INTO carrera VALUES (61, 'La Route Wallonne', 12, FALSE, 12);
INSERT INTO carrera VALUES (62, 'Britain Tour', 12, FALSE, 16);
INSERT INTO carrera VALUES (63, 'GP Vitré', 16, FALSE, 11);
INSERT INTO carrera VALUES (64, 'GP Ciremi', 16, FALSE, 12);
INSERT INTO carrera VALUES (65, 'Saudi Tour', 15, FALSE, 24);
INSERT INTO carrera VALUES (66, 'Skoda Tour de Luxembourg', 12, FALSE, 6);
INSERT INTO carrera VALUES (67, 'Flecha Brabanzona', 13, FALSE, 12);
INSERT INTO carrera VALUES (68, 'Route du Finistere', 16, FALSE, 11);
INSERT INTO carrera VALUES (69, 'Challenge Mallorca', 15, FALSE, 14);
INSERT INTO carrera VALUES (70, 'Tour Provence', 15, FALSE, 11);
INSERT INTO carrera VALUES (71, 'Tour de los Alpes', 12, FALSE, 3);
INSERT INTO carrera VALUES (72, 'Vuelta a CyL', 15, FALSE, 14);
INSERT INTO carrera VALUES (73, 'Artic Race Norway', 12, FALSE, 9);
INSERT INTO carrera VALUES (74, 'GP Sud Ardeche', 16, FALSE, 11);
INSERT INTO carrera VALUES (75, 'Halle - Ingooigem', 16, FALSE, 12);
INSERT INTO carrera VALUES (76, 'Tour de la Sarthe', 15, FALSE, 11);
INSERT INTO carrera VALUES (77, 'GP Gippingen', 16, FALSE, 13);
INSERT INTO carrera VALUES (78, 'GP Primavera', 16, FALSE, 14);
INSERT INTO carrera VALUES (79, 'GP Navarra', 16, FALSE, 14);
INSERT INTO carrera VALUES (80, 'Tour de Croacia', 15, FALSE, 25);
INSERT INTO carrera VALUES (81, 'Nacional Italia', 14, FALSE, 3);
INSERT INTO carrera VALUES (82, 'Nacional Australia', 14, FALSE, 7);
INSERT INTO carrera VALUES (83, 'Nacional Italia ITT', 14, FALSE, 3);
INSERT INTO carrera VALUES (84, 'GP Van Nokere', 13, FALSE, 12);
INSERT INTO carrera VALUES (85, 'Scheldetour Vlaanderen', 16, FALSE, 12);
INSERT INTO carrera VALUES (86, 'Vuelta al Algarve', 12, FALSE, 15);
INSERT INTO carrera VALUES (87, 'GP Hageland', 16, FALSE, 12);
INSERT INTO carrera VALUES (88, 'Etoile de Bessèges', 15, FALSE, 11);
INSERT INTO carrera VALUES (90, 'Brakel - Haacht', 16, FALSE, 12);
INSERT INTO carrera VALUES (91, 'Tour du Var', 15, FALSE, 11);
INSERT INTO carrera VALUES (92, 'Star Elektratoer', 15, FALSE, 10);
INSERT INTO carrera VALUES (93, 'Veenendal Clasic', 16, FALSE, 10);
INSERT INTO carrera VALUES (94, 'GP L Aulne', 16, FALSE, 11);
INSERT INTO carrera VALUES (95, 'Tour de Eslovenia', 12, FALSE, 26);
INSERT INTO carrera VALUES (97, 'World Championship ITT', 4, TRUE, 18);
INSERT INTO carrera VALUES (103, 'Route Poitou-Charentes', 15, FALSE, 11);
INSERT INTO carrera VALUES (104, 'SUPER 8 Classic', 16, FALSE, 12);
INSERT INTO carrera VALUES (105, 'Chrono des Nations', 16, FALSE, 11);
INSERT INTO carrera VALUES (106, 'Volta a la Comunitat Valenciana', 15, FALSE, 14);
INSERT INTO carrera VALUES (107, 'Tour Colombia', 15, FALSE, 13);
INSERT INTO carrera VALUES (108, 'Trofeo Laigueglia', 13, FALSE, 3);
INSERT INTO carrera VALUES (109, 'Kuurne-Brussel-Kuurne', 13, FALSE, 12);
INSERT INTO carrera VALUES (110, 'Le Samyn', 16, FALSE, 12);
INSERT INTO carrera VALUES (111, 'GP Denain - Porte du Hainaut', 13, FALSE, 11);
INSERT INTO carrera VALUES (112, 'Tro-Bro Léon', 13, FALSE, 11);
INSERT INTO carrera VALUES (113, 'Nacional Holanda', 14, FALSE, 10);
INSERT INTO carrera VALUES (114, 'Nacional Holanda ITT', 14, FALSE, 10);
INSERT INTO carrera VALUES (115, 'Gran Piemonte', 13, FALSE, 3);
INSERT INTO carrera VALUES (116, '4 Jours de Dunkerque', 12, FALSE, 11);

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

INSERT INTO temporada_corredor VALUES (1, 1, 2020);
INSERT INTO temporada_corredor VALUES (3, 1, 2021);
INSERT INTO temporada_corredor VALUES (4, 1, 2022);
INSERT INTO temporada_corredor VALUES (5, 1, 2023);
INSERT INTO temporada_corredor VALUES (6, 1, 2024);
INSERT INTO temporada_corredor VALUES (7, 1, 2025);
INSERT INTO temporada_corredor VALUES (8, 1, 2026);
INSERT INTO temporada_corredor VALUES (9, 1, 2027);
INSERT INTO temporada_corredor VALUES (10, 1, 2028);
INSERT INTO temporada_corredor VALUES (11, 2, 2020);
INSERT INTO temporada_corredor VALUES (12, 2, 2021);
INSERT INTO temporada_corredor VALUES (13, 2, 2022);
INSERT INTO temporada_corredor VALUES (14, 2, 2023);
INSERT INTO temporada_corredor VALUES (15, 2, 2024);
INSERT INTO temporada_corredor VALUES (16, 2, 2025);
INSERT INTO temporada_corredor VALUES (17, 2, 2026);
INSERT INTO temporada_corredor VALUES (18, 2, 2027);
INSERT INTO temporada_corredor VALUES (19, 2, 2028);
INSERT INTO temporada_corredor VALUES (211, 15, 2020);
INSERT INTO temporada_corredor VALUES (20, 15, 2021);
INSERT INTO temporada_corredor VALUES (21, 15, 2022);
INSERT INTO temporada_corredor VALUES (22, 15, 2023);
INSERT INTO temporada_corredor VALUES (23, 15, 2024);
INSERT INTO temporada_corredor VALUES (24, 15, 2025);
INSERT INTO temporada_corredor VALUES (25, 15, 2026);
INSERT INTO temporada_corredor VALUES (26, 15, 2027);
INSERT INTO temporada_corredor VALUES (27, 21, 2020);
INSERT INTO temporada_corredor VALUES (28, 21, 2021);
INSERT INTO temporada_corredor VALUES (29, 21, 2022);
INSERT INTO temporada_corredor VALUES (30, 21, 2023);
INSERT INTO temporada_corredor VALUES (31, 21, 2024);
INSERT INTO temporada_corredor VALUES (32, 21, 2025);
INSERT INTO temporada_corredor VALUES (33, 21, 2026);
INSERT INTO temporada_corredor VALUES (34, 21, 2027);
INSERT INTO temporada_corredor VALUES (35, 5, 2020);
INSERT INTO temporada_corredor VALUES (36, 5, 2021);
INSERT INTO temporada_corredor VALUES (37, 5, 2022);
INSERT INTO temporada_corredor VALUES (38, 5, 2023);
INSERT INTO temporada_corredor VALUES (39, 5, 2024);
INSERT INTO temporada_corredor VALUES (40, 5, 2025);
INSERT INTO temporada_corredor VALUES (41, 5, 2026);
INSERT INTO temporada_corredor VALUES (42, 5, 2027);
INSERT INTO temporada_corredor VALUES (43, 5, 2028);
INSERT INTO temporada_corredor VALUES (44, 8, 2020);
INSERT INTO temporada_corredor VALUES (45, 8, 2021);
INSERT INTO temporada_corredor VALUES (46, 8, 2022);
INSERT INTO temporada_corredor VALUES (47, 8, 2023);
INSERT INTO temporada_corredor VALUES (48, 8, 2024);
INSERT INTO temporada_corredor VALUES (49, 8, 2025);
INSERT INTO temporada_corredor VALUES (50, 8, 2026);
INSERT INTO temporada_corredor VALUES (51, 8, 2027);
INSERT INTO temporada_corredor VALUES (52, 8, 2028);
INSERT INTO temporada_corredor VALUES (53, 9, 2020);
INSERT INTO temporada_corredor VALUES (54, 9, 2021);
INSERT INTO temporada_corredor VALUES (55, 9, 2022);
INSERT INTO temporada_corredor VALUES (56, 9, 2023);
INSERT INTO temporada_corredor VALUES (57, 9, 2024);
INSERT INTO temporada_corredor VALUES (58, 9, 2025);
INSERT INTO temporada_corredor VALUES (59, 9, 2026);
INSERT INTO temporada_corredor VALUES (60, 9, 2027);
INSERT INTO temporada_corredor VALUES (61, 9, 2028);
INSERT INTO temporada_corredor VALUES (62, 11, 2020);
INSERT INTO temporada_corredor VALUES (63, 11, 2021);
INSERT INTO temporada_corredor VALUES (64, 11, 2022);
INSERT INTO temporada_corredor VALUES (65, 11, 2023);
INSERT INTO temporada_corredor VALUES (66, 11, 2024);
INSERT INTO temporada_corredor VALUES (67, 11, 2025);
INSERT INTO temporada_corredor VALUES (68, 11, 2026);
INSERT INTO temporada_corredor VALUES (69, 11, 2027);
INSERT INTO temporada_corredor VALUES (70, 11, 2028);
INSERT INTO temporada_corredor VALUES (71, 12, 2020);
INSERT INTO temporada_corredor VALUES (72, 12, 2021);
INSERT INTO temporada_corredor VALUES (73, 12, 2022);
INSERT INTO temporada_corredor VALUES (74, 12, 2023);
INSERT INTO temporada_corredor VALUES (75, 12, 2024);
INSERT INTO temporada_corredor VALUES (76, 12, 2025);
INSERT INTO temporada_corredor VALUES (77, 12, 2026);
INSERT INTO temporada_corredor VALUES (78, 12, 2027);
INSERT INTO temporada_corredor VALUES (79, 12, 2028);
INSERT INTO temporada_corredor VALUES (80, 13, 2020);
INSERT INTO temporada_corredor VALUES (81, 13, 2021);
INSERT INTO temporada_corredor VALUES (82, 13, 2022);
INSERT INTO temporada_corredor VALUES (83, 13, 2023);
INSERT INTO temporada_corredor VALUES (84, 13, 2024);
INSERT INTO temporada_corredor VALUES (85, 13, 2025);
INSERT INTO temporada_corredor VALUES (86, 13, 2026);
INSERT INTO temporada_corredor VALUES (87, 13, 2027);
INSERT INTO temporada_corredor VALUES (88, 13, 2028);
INSERT INTO temporada_corredor VALUES (89, 14, 2020);
INSERT INTO temporada_corredor VALUES (90, 14, 2021);
INSERT INTO temporada_corredor VALUES (91, 14, 2022);
INSERT INTO temporada_corredor VALUES (92, 14, 2023);
INSERT INTO temporada_corredor VALUES (93, 14, 2024);
INSERT INTO temporada_corredor VALUES (94, 14, 2025);
INSERT INTO temporada_corredor VALUES (95, 14, 2026);
INSERT INTO temporada_corredor VALUES (96, 14, 2027);
INSERT INTO temporada_corredor VALUES (97, 14, 2028);
INSERT INTO temporada_corredor VALUES (98, 17, 2020);
INSERT INTO temporada_corredor VALUES (99, 17, 2021);
INSERT INTO temporada_corredor VALUES (100, 17, 2022);
INSERT INTO temporada_corredor VALUES (101, 17, 2023);
INSERT INTO temporada_corredor VALUES (102, 17, 2024);
INSERT INTO temporada_corredor VALUES (103, 17, 2025);
INSERT INTO temporada_corredor VALUES (104, 17, 2026);
INSERT INTO temporada_corredor VALUES (105, 17, 2027);
INSERT INTO temporada_corredor VALUES (106, 17, 2028);
INSERT INTO temporada_corredor VALUES (107, 18, 2020);
INSERT INTO temporada_corredor VALUES (108, 18, 2021);
INSERT INTO temporada_corredor VALUES (109, 18, 2022);
INSERT INTO temporada_corredor VALUES (110, 18, 2023);
INSERT INTO temporada_corredor VALUES (111, 18, 2024);
INSERT INTO temporada_corredor VALUES (112, 18, 2025);
INSERT INTO temporada_corredor VALUES (113, 18, 2026);
INSERT INTO temporada_corredor VALUES (114, 18, 2027);
INSERT INTO temporada_corredor VALUES (115, 18, 2028);
INSERT INTO temporada_corredor VALUES (116, 24, 2020);
INSERT INTO temporada_corredor VALUES (117, 24, 2021);
INSERT INTO temporada_corredor VALUES (118, 24, 2022);
INSERT INTO temporada_corredor VALUES (119, 24, 2023);
INSERT INTO temporada_corredor VALUES (120, 24, 2024);
INSERT INTO temporada_corredor VALUES (121, 24, 2025);
INSERT INTO temporada_corredor VALUES (122, 24, 2026);
INSERT INTO temporada_corredor VALUES (123, 24, 2027);
INSERT INTO temporada_corredor VALUES (124, 24, 2028);
INSERT INTO temporada_corredor VALUES (125, 20, 2020);
INSERT INTO temporada_corredor VALUES (126, 20, 2021);
INSERT INTO temporada_corredor VALUES (127, 20, 2022);
INSERT INTO temporada_corredor VALUES (128, 20, 2023);
INSERT INTO temporada_corredor VALUES (129, 20, 2024);
INSERT INTO temporada_corredor VALUES (130, 20, 2025);
INSERT INTO temporada_corredor VALUES (131, 20, 2026);
INSERT INTO temporada_corredor VALUES (132, 7, 2020);
INSERT INTO temporada_corredor VALUES (133, 7, 2021);
INSERT INTO temporada_corredor VALUES (134, 7, 2022);
INSERT INTO temporada_corredor VALUES (135, 7, 2023);
INSERT INTO temporada_corredor VALUES (136, 7, 2024);
INSERT INTO temporada_corredor VALUES (137, 7, 2025);
INSERT INTO temporada_corredor VALUES (138, 19, 2020);
INSERT INTO temporada_corredor VALUES (139, 19, 2021);
INSERT INTO temporada_corredor VALUES (140, 19, 2022);
INSERT INTO temporada_corredor VALUES (141, 19, 2023);
INSERT INTO temporada_corredor VALUES (142, 19, 2024);
INSERT INTO temporada_corredor VALUES (143, 4, 2020);
INSERT INTO temporada_corredor VALUES (144, 4, 2021);
INSERT INTO temporada_corredor VALUES (145, 26, 2020);
INSERT INTO temporada_corredor VALUES (146, 37, 2027);
INSERT INTO temporada_corredor VALUES (147, 42, 2026);
INSERT INTO temporada_corredor VALUES (148, 42, 2027);
INSERT INTO temporada_corredor VALUES (149, 41, 2027);
INSERT INTO temporada_corredor VALUES (150, 41, 2026);
INSERT INTO temporada_corredor VALUES (151, 41, 2025);
INSERT INTO temporada_corredor VALUES (152, 41, 2024);
INSERT INTO temporada_corredor VALUES (153, 41, 2023);
INSERT INTO temporada_corredor VALUES (154, 41, 2022);
INSERT INTO temporada_corredor VALUES (155, 41, 2021);
INSERT INTO temporada_corredor VALUES (156, 40, 2027);
INSERT INTO temporada_corredor VALUES (157, 39, 2024);
INSERT INTO temporada_corredor VALUES (158, 39, 2025);
INSERT INTO temporada_corredor VALUES (159, 39, 2026);
INSERT INTO temporada_corredor VALUES (160, 39, 2027);
INSERT INTO temporada_corredor VALUES (161, 38, 2021);
INSERT INTO temporada_corredor VALUES (162, 38, 2022);
INSERT INTO temporada_corredor VALUES (163, 38, 2023);
INSERT INTO temporada_corredor VALUES (164, 38, 2024);
INSERT INTO temporada_corredor VALUES (165, 38, 2025);
INSERT INTO temporada_corredor VALUES (166, 38, 2026);
INSERT INTO temporada_corredor VALUES (167, 38, 2027);
INSERT INTO temporada_corredor VALUES (168, 36, 2027);
INSERT INTO temporada_corredor VALUES (169, 35, 2027);
INSERT INTO temporada_corredor VALUES (170, 34, 2021);
INSERT INTO temporada_corredor VALUES (171, 34, 2022);
INSERT INTO temporada_corredor VALUES (172, 34, 2023);
INSERT INTO temporada_corredor VALUES (173, 34, 2024);
INSERT INTO temporada_corredor VALUES (174, 34, 2025);
INSERT INTO temporada_corredor VALUES (175, 34, 2026);
INSERT INTO temporada_corredor VALUES (176, 34, 2027);
INSERT INTO temporada_corredor VALUES (177, 33, 2021);
INSERT INTO temporada_corredor VALUES (178, 33, 2022);
INSERT INTO temporada_corredor VALUES (179, 33, 2023);
INSERT INTO temporada_corredor VALUES (180, 33, 2024);
INSERT INTO temporada_corredor VALUES (181, 33, 2025);
INSERT INTO temporada_corredor VALUES (182, 33, 2026);
INSERT INTO temporada_corredor VALUES (183, 33, 2027);
INSERT INTO temporada_corredor VALUES (184, 29, 2021);
INSERT INTO temporada_corredor VALUES (185, 29, 2022);
INSERT INTO temporada_corredor VALUES (186, 29, 2023);
INSERT INTO temporada_corredor VALUES (187, 29, 2024);
INSERT INTO temporada_corredor VALUES (188, 29, 2025);
INSERT INTO temporada_corredor VALUES (189, 29, 2026);
INSERT INTO temporada_corredor VALUES (190, 29, 2027);
INSERT INTO temporada_corredor VALUES (191, 32, 2022);
INSERT INTO temporada_corredor VALUES (192, 32, 2023);
INSERT INTO temporada_corredor VALUES (193, 25, 2020);
INSERT INTO temporada_corredor VALUES (194, 25, 2021);
INSERT INTO temporada_corredor VALUES (195, 27, 2020);
INSERT INTO temporada_corredor VALUES (196, 27, 2021);
INSERT INTO temporada_corredor VALUES (197, 27, 2022);
INSERT INTO temporada_corredor VALUES (198, 23, 2020);
INSERT INTO temporada_corredor VALUES (199, 6, 2020);
INSERT INTO temporada_corredor VALUES (200, 10, 2021);
INSERT INTO temporada_corredor VALUES (201, 10, 2020);
INSERT INTO temporada_corredor VALUES (202, 22, 2020);
INSERT INTO temporada_corredor VALUES (203, 22, 2021);
INSERT INTO temporada_corredor VALUES (204, 22, 2022);
INSERT INTO temporada_corredor VALUES (205, 28, 2020);
INSERT INTO temporada_corredor VALUES (206, 28, 2021);
INSERT INTO temporada_corredor VALUES (207, 28, 2022);
INSERT INTO temporada_corredor VALUES (208, 3, 2022);
INSERT INTO temporada_corredor VALUES (209, 3, 2021);
INSERT INTO temporada_corredor VALUES (210, 3, 2020);
INSERT INTO temporada_corredor VALUES (212, 43, 2024);
INSERT INTO temporada_corredor VALUES (213, 43, 2025);
INSERT INTO temporada_corredor VALUES (214, 43, 2026);
INSERT INTO temporada_corredor VALUES (215, 43, 2027);
INSERT INTO temporada_corredor VALUES (216, 44, 2021);
INSERT INTO temporada_corredor VALUES (217, 44, 2022);
INSERT INTO temporada_corredor VALUES (218, 44, 2023);
INSERT INTO temporada_corredor VALUES (219, 44, 2024);
INSERT INTO temporada_corredor VALUES (220, 44, 2025);
INSERT INTO temporada_corredor VALUES (221, 44, 2026);
INSERT INTO temporada_corredor VALUES (222, 44, 2027);
INSERT INTO temporada_corredor VALUES (223, 45, 2024);
INSERT INTO temporada_corredor VALUES (224, 45, 2025);
INSERT INTO temporada_corredor VALUES (225, 45, 2026);
INSERT INTO temporada_corredor VALUES (226, 45, 2027);
INSERT INTO temporada_corredor VALUES (227, 47, 2027);

ALTER TABLE temporada_corredor MODIFY COLUMN id INT AUTO_INCREMENT;
ALTER TABLE temporada_corredor ADD UNIQUE (corredor, temporada);

CREATE TABLE PUESTOMETRO (
    id INT PRIMARY KEY,
    puesto TINYINT NOT NULL,
    carrera INT NOT NULL,
    FOREIGN KEY (carrera) REFERENCES CARRERA(id),
    temporada_corredor INT NOT NULL,
    FOREIGN KEY (temporada_corredor) REFERENCES TEMPORADA_CORREDOR(id)
);

ALTER TABLE puestometro MODIFY COLUMN id INT AUTO_INCREMENT;
ALTER TABLE puestometro ADD UNIQUE (puesto, carrera, temporada_corredor);

INSERT INTO `puestometro` (`id`, `puesto`, `carrera`, `temporada_corredor`) VALUES
(197, 1, 1, 121),
(181, 1, 2, 36),
(182, 1, 2, 38),
(183, 1, 2, 39),
(198, 1, 2, 118),
(611, 1, 2, 148),
(175, 1, 3, 36),
(570, 1, 3, 122),
(215, 1, 5, 121),
(268, 1, 6, 184),
(269, 1, 6, 187),
(270, 1, 6, 188),
(597, 1, 6, 215),
(272, 1, 7, 188),
(216, 1, 8, 116),
(425, 1, 9, 80),
(221, 1, 9, 119),
(581, 1, 10, 123),
(417, 1, 11, 84),
(203, 1, 11, 119),
(204, 1, 11, 121),
(420, 1, 12, 81),
(329, 1, 13, 65),
(613, 1, 13, 123),
(532, 1, 14, 122),
(600, 1, 15, 42),
(206, 1, 15, 116),
(521, 1, 16, 122),
(462, 1, 21, 1),
(463, 1, 21, 4),
(586, 1, 21, 190),
(275, 1, 22, 186),
(590, 1, 22, 190),
(293, 1, 23, 187),
(594, 1, 23, 190),
(441, 1, 23, 198),
(288, 1, 24, 186),
(549, 1, 26, 189),
(365, 1, 27, 102),
(295, 1, 28, 188),
(442, 1, 29, 198),
(461, 1, 30, 6),
(318, 1, 31, 13),
(504, 1, 31, 189),
(317, 1, 32, 11),
(503, 1, 33, 122),
(262, 1, 33, 184),
(305, 1, 34, 170),
(332, 1, 35, 62),
(560, 1, 35, 122),
(265, 1, 36, 185),
(266, 1, 36, 187),
(563, 1, 36, 189),
(449, 1, 37, 5),
(225, 1, 37, 117),
(341, 1, 37, 212),
(471, 1, 43, 1),
(474, 1, 43, 5),
(475, 1, 43, 6),
(629, 1, 43, 168),
(259, 1, 44, 36),
(389, 1, 44, 76),
(619, 1, 44, 78),
(247, 1, 44, 116),
(250, 1, 44, 120),
(536, 1, 44, 122),
(413, 1, 44, 218),
(448, 1, 49, 22),
(542, 1, 49, 150),
(543, 1, 49, 152),
(626, 1, 81, 183),
(298, 1, 81, 185),
(300, 1, 81, 188),
(535, 1, 114, 147),
(179, 2, 1, 35),
(180, 2, 1, 37),
(176, 2, 3, 37),
(177, 2, 3, 38),
(489, 2, 3, 40),
(453, 2, 5, 6),
(585, 2, 5, 123),
(433, 2, 6, 198),
(342, 2, 6, 213),
(525, 2, 7, 214),
(496, 2, 9, 121),
(582, 2, 10, 148),
(186, 2, 11, 36),
(513, 2, 11, 122),
(190, 2, 12, 39),
(530, 2, 12, 147),
(610, 2, 12, 148),
(192, 2, 13, 36),
(214, 2, 13, 120),
(534, 2, 13, 147),
(209, 2, 14, 121),
(418, 2, 16, 83),
(508, 2, 17, 221),
(361, 2, 18, 107),
(580, 2, 18, 123),
(281, 2, 19, 186),
(436, 2, 19, 198),
(234, 2, 20, 117),
(464, 2, 21, 5),
(316, 2, 21, 16),
(587, 2, 21, 18),
(435, 2, 22, 198),
(595, 2, 23, 215),
(522, 2, 23, 221),
(237, 2, 24, 119),
(438, 2, 26, 198),
(241, 2, 27, 116),
(482, 2, 27, 121),
(467, 2, 29, 4),
(468, 2, 29, 5),
(375, 2, 29, 102),
(376, 2, 29, 103),
(483, 2, 30, 7),
(394, 2, 30, 163),
(320, 2, 31, 15),
(573, 2, 33, 176),
(222, 2, 34, 119),
(223, 2, 34, 120),
(578, 2, 34, 148),
(224, 2, 35, 119),
(561, 2, 35, 147),
(488, 2, 36, 7),
(396, 2, 36, 218),
(334, 2, 37, 66),
(568, 2, 37, 113),
(243, 2, 43, 116),
(246, 2, 43, 121),
(627, 2, 43, 176),
(258, 2, 44, 35),
(388, 2, 44, 74),
(617, 2, 44, 123),
(411, 2, 44, 216),
(412, 2, 44, 217),
(414, 2, 44, 219),
(431, 2, 49, 126),
(545, 2, 81, 189),
(500, 2, 82, 104),
(546, 2, 113, 147),
(199, 3, 2, 119),
(443, 3, 2, 211),
(174, 3, 3, 35),
(178, 3, 3, 39),
(452, 3, 5, 5),
(523, 3, 6, 214),
(399, 3, 6, 220),
(271, 3, 7, 185),
(515, 3, 7, 212),
(218, 3, 8, 119),
(273, 3, 8, 188),
(416, 3, 11, 83),
(355, 3, 11, 111),
(210, 3, 12, 117),
(446, 3, 12, 211),
(191, 3, 13, 35),
(524, 3, 15, 122),
(382, 3, 16, 72),
(408, 3, 17, 220),
(360, 3, 18, 111),
(459, 3, 19, 4),
(233, 3, 20, 116),
(518, 3, 21, 17),
(276, 3, 22, 187),
(277, 3, 22, 188),
(591, 3, 22, 215),
(292, 3, 23, 186),
(596, 3, 23, 222),
(289, 3, 24, 187),
(552, 3, 24, 189),
(379, 3, 25, 100),
(346, 3, 26, 212),
(550, 3, 26, 214),
(633, 3, 27, 227),
(465, 3, 29, 1),
(466, 3, 29, 3),
(529, 3, 29, 8),
(460, 3, 30, 1),
(368, 3, 31, 99),
(505, 3, 31, 214),
(484, 3, 32, 16),
(366, 3, 32, 100),
(364, 3, 33, 101),
(502, 3, 33, 113),
(331, 3, 34, 65),
(263, 3, 35, 188),
(264, 3, 36, 184),
(567, 3, 37, 68),
(473, 3, 43, 4),
(260, 3, 44, 37),
(620, 3, 44, 42),
(387, 3, 44, 72),
(251, 3, 44, 121),
(309, 3, 44, 172),
(310, 3, 44, 173),
(539, 3, 44, 225),
(395, 3, 81, 165),
(370, 3, 82, 99),
(371, 3, 82, 100),
(353, 3, 83, 212),
(354, 3, 83, 213),
(229, 3, 97, 116),
(572, 4, 1, 41),
(531, 4, 2, 147),
(571, 4, 3, 41),
(200, 4, 3, 117),
(450, 4, 5, 1),
(584, 4, 5, 9),
(517, 4, 5, 122),
(601, 4, 7, 190),
(528, 4, 8, 68),
(547, 4, 9, 122),
(583, 4, 11, 42),
(189, 4, 12, 37),
(612, 4, 14, 42),
(208, 4, 15, 121),
(343, 4, 22, 213),
(392, 4, 23, 32),
(409, 4, 23, 217),
(479, 4, 23, 223),
(384, 4, 24, 74),
(555, 4, 25, 189),
(284, 4, 26, 186),
(285, 4, 26, 187),
(609, 4, 29, 105),
(314, 4, 30, 14),
(283, 4, 30, 185),
(319, 4, 31, 14),
(577, 4, 31, 146),
(296, 4, 31, 188),
(506, 4, 31, 221),
(367, 4, 32, 102),
(306, 4, 32, 171),
(422, 4, 34, 82),
(340, 4, 35, 213),
(564, 4, 36, 214),
(569, 4, 37, 86),
(245, 4, 43, 120),
(248, 4, 44, 117),
(249, 4, 44, 119),
(537, 4, 44, 221),
(480, 4, 44, 223),
(447, 4, 49, 20),
(623, 4, 49, 26),
(328, 4, 81, 179),
(297, 4, 81, 184),
(625, 4, 81, 227),
(373, 4, 82, 103),
(621, 4, 83, 51),
(304, 4, 83, 188),
(615, 4, 114, 148),
(455, 5, 4, 4),
(226, 5, 4, 116),
(454, 5, 5, 7),
(432, 5, 5, 198),
(398, 5, 6, 218),
(434, 5, 7, 198),
(337, 5, 9, 66),
(185, 5, 10, 40),
(419, 5, 14, 80),
(187, 5, 16, 37),
(338, 5, 18, 67),
(242, 5, 18, 120),
(509, 5, 18, 122),
(588, 5, 21, 9),
(287, 5, 21, 188),
(405, 5, 22, 220),
(427, 5, 25, 81),
(290, 5, 25, 186),
(349, 5, 25, 212),
(558, 5, 27, 214),
(351, 5, 28, 213),
(548, 5, 30, 8),
(282, 5, 30, 184),
(437, 5, 30, 198),
(576, 5, 31, 78),
(559, 5, 32, 189),
(501, 5, 33, 68),
(497, 5, 37, 112),
(472, 5, 43, 3),
(244, 5, 43, 119),
(261, 5, 44, 38),
(540, 5, 44, 77),
(481, 5, 44, 224),
(299, 5, 81, 186),
(372, 5, 82, 101),
(541, 5, 83, 182),
(301, 5, 83, 184),
(302, 5, 83, 185),
(303, 5, 83, 187),
(230, 5, 97, 117),
(321, 6, 2, 181),
(381, 6, 3, 74),
(201, 6, 3, 118),
(445, 6, 3, 211),
(456, 6, 4, 5),
(227, 6, 4, 117),
(397, 6, 5, 217),
(335, 6, 9, 62),
(512, 6, 11, 68),
(205, 6, 11, 120),
(325, 6, 12, 181),
(213, 6, 13, 119),
(188, 6, 15, 37),
(207, 6, 15, 117),
(593, 6, 16, 42),
(278, 6, 17, 184),
(430, 6, 18, 85),
(510, 6, 18, 175),
(279, 6, 19, 184),
(605, 6, 20, 69),
(439, 6, 21, 198),
(589, 6, 21, 215),
(291, 6, 23, 185),
(240, 6, 25, 119),
(440, 6, 25, 198),
(236, 6, 26, 119),
(485, 6, 26, 188),
(604, 6, 28, 227),
(369, 6, 31, 101),
(507, 6, 31, 147),
(362, 6, 32, 111),
(311, 6, 44, 174),
(616, 6, 44, 176),
(352, 6, 81, 213),
(490, 7, 3, 24),
(451, 7, 5, 4),
(514, 7, 5, 214),
(400, 7, 7, 216),
(478, 7, 7, 223),
(253, 7, 8, 36),
(219, 7, 8, 120),
(336, 7, 9, 63),
(511, 7, 10, 182),
(211, 7, 12, 118),
(326, 7, 13, 181),
(470, 7, 18, 1),
(579, 7, 18, 69),
(606, 7, 20, 105),
(235, 7, 20, 119),
(526, 7, 20, 122),
(286, 7, 21, 184),
(592, 7, 22, 222),
(378, 7, 24, 100),
(491, 7, 24, 174),
(554, 7, 25, 77),
(257, 7, 27, 37),
(428, 7, 28, 82),
(363, 7, 31, 108),
(312, 7, 33, 15),
(574, 7, 33, 146),
(566, 7, 36, 8),
(487, 7, 36, 213),
(544, 7, 49, 25),
(624, 7, 81, 215),
(231, 7, 97, 119),
(195, 8, 1, 117),
(598, 8, 6, 222),
(217, 8, 8, 118),
(184, 8, 10, 35),
(193, 8, 13, 37),
(330, 8, 13, 67),
(323, 8, 14, 178),
(322, 8, 16, 178),
(313, 8, 19, 16),
(254, 8, 20, 36),
(380, 8, 20, 102),
(347, 8, 21, 213),
(426, 8, 24, 81),
(492, 8, 24, 121),
(348, 8, 24, 212),
(494, 8, 25, 32),
(256, 8, 25, 37),
(385, 8, 25, 74),
(239, 8, 25, 116),
(556, 8, 25, 214),
(603, 8, 28, 69),
(377, 8, 28, 102),
(469, 8, 29, 6),
(294, 8, 29, 185),
(307, 8, 32, 172),
(252, 8, 34, 36),
(383, 8, 35, 72),
(565, 8, 36, 175),
(499, 8, 37, 85),
(393, 8, 37, 91),
(628, 8, 43, 123),
(401, 8, 97, 219),
(632, 9, 1, 215),
(228, 9, 4, 119),
(267, 9, 5, 186),
(527, 9, 8, 122),
(495, 9, 9, 85),
(415, 9, 10, 82),
(202, 9, 10, 116),
(324, 9, 12, 180),
(614, 9, 13, 78),
(406, 9, 17, 218),
(407, 9, 17, 219),
(386, 9, 18, 76),
(280, 9, 19, 185),
(607, 9, 20, 123),
(315, 9, 21, 14),
(519, 9, 22, 214),
(402, 9, 22, 216),
(403, 9, 22, 217),
(404, 9, 22, 218),
(391, 9, 23, 28),
(476, 9, 23, 132),
(410, 9, 23, 218),
(551, 9, 26, 17),
(486, 9, 26, 121),
(477, 9, 26, 132),
(557, 9, 27, 41),
(359, 9, 28, 111),
(424, 9, 33, 82),
(357, 9, 33, 107),
(631, 9, 35, 114),
(327, 9, 35, 180),
(498, 9, 37, 67),
(308, 9, 43, 174),
(538, 9, 44, 175),
(618, 9, 44, 222),
(194, 10, 1, 116),
(196, 10, 1, 120),
(444, 10, 2, 20),
(457, 10, 4, 6),
(599, 10, 6, 190),
(602, 10, 7, 215),
(220, 10, 9, 117),
(516, 10, 9, 212),
(212, 10, 12, 119),
(421, 10, 13, 84),
(533, 10, 14, 25),
(356, 10, 14, 107),
(390, 10, 17, 31),
(344, 10, 17, 213),
(429, 10, 18, 80),
(458, 10, 19, 1),
(520, 10, 19, 214),
(358, 10, 20, 111),
(345, 10, 20, 213),
(608, 10, 20, 227),
(232, 10, 22, 121),
(274, 10, 22, 185),
(350, 10, 23, 213),
(255, 10, 24, 35),
(553, 10, 24, 175),
(493, 10, 24, 220),
(634, 10, 27, 87),
(238, 10, 28, 117),
(374, 10, 29, 100),
(339, 10, 31, 63),
(575, 10, 31, 69),
(423, 10, 34, 83),
(630, 10, 35, 42),
(333, 10, 35, 65),
(562, 10, 35, 77),
(622, 10, 83, 215);


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

INSERT INTO `victoria` (`id`, `carrera`, `temporada_corredor`, `etapa`, `tt`) VALUES
(1, 46, 116, 0, 0),
(2, 46, 120, 0, 0),
(3, 14, 121, 1, 0),
(4, 67, 121, 0, 0),
(5, 2, 118, 0, 0),
(6, 2, 118, 1, 0),
(7, 2, 118, 1, 0),
(8, 2, 118, 1, 0),
(9, 2, 119, 1, 0),
(10, 9, 119, 0, 0),
(11, 37, 117, 0, 0),
(12, 37, 117, 1, 0),
(13, 37, 119, 1, 0),
(14, 37, 119, 1, 0),
(15, 15, 116, 0, 0),
(16, 15, 116, 1, 0),
(17, 15, 117, 1, 0),
(18, 15, 117, 1, 0),
(19, 8, 116, 0, 0),
(20, 5, 121, 0, 0),
(21, 44, 116, 0, 0),
(22, 44, 120, 0, 0),
(23, 11, 119, 0, 0),
(24, 11, 121, 0, 0),
(25, 11, 118, 1, 0),
(26, 11, 119, 1, 0),
(27, 11, 119, 1, 0),
(28, 11, 120, 1, 0),
(29, 11, 121, 1, 0),
(30, 1, 120, 1, 0),
(31, 1, 120, 1, 0),
(32, 1, 120, 1, 0),
(33, 1, 120, 1, 0),
(34, 1, 121, 0, 0),
(35, 35, 119, 1, 0),
(36, 13, 116, 1, 0),
(37, 13, 116, 1, 0),
(38, 13, 119, 1, 0),
(39, 13, 119, 1, 0),
(40, 13, 120, 1, 0),
(41, 13, 120, 1, 0),
(42, 48, 120, 1, 0),
(43, 12, 117, 1, 0),
(44, 34, 120, 1, 0),
(45, 47, 118, 1, 0),
(46, 45, 116, 1, 0),
(47, 3, 117, 1, 0),
(48, 3, 118, 1, 0),
(49, 3, 118, 1, 0),
(50, 103, 121, 0, 0),
(51, 105, 121, 0, 0),
(52, 33, 122, 1, 0),
(53, 33, 122, 0, 0),
(54, 69, 122, 1, 0),
(55, 69, 122, 0, 0),
(56, 108, 122, 0, 0),
(57, 47, 122, 1, 0),
(58, 47, 122, 0, 0),
(59, 11, 122, 1, 0),
(60, 16, 122, 0, 0),
(61, 14, 122, 1, 0),
(62, 14, 122, 1, 0),
(63, 14, 122, 0, 0),
(64, 44, 122, 0, 0),
(65, 35, 122, 1, 0),
(66, 35, 122, 1, 0),
(67, 35, 122, 0, 0),
(68, 3, 122, 1, 0),
(69, 3, 122, 1, 0),
(70, 3, 122, 0, 0),
(71, 90, 6, 0, 0),
(72, 21, 1, 0, 0),
(73, 21, 4, 0, 0),
(74, 14, 5, 1, 0),
(75, 30, 6, 0, 0),
(76, 88, 3, 1, 0),
(77, 88, 3, 1, 0),
(78, 88, 3, 0, 0),
(79, 88, 7, 1, 0),
(80, 88, 7, 1, 0),
(81, 88, 7, 1, 0),
(82, 87, 1, 0, 0),
(83, 51, 3, 0, 0),
(84, 37, 3, 1, 0),
(85, 37, 3, 1, 0),
(86, 37, 5, 1, 0),
(87, 37, 5, 1, 0),
(88, 37, 5, 0, 0),
(89, 43, 1, 0, 0),
(90, 43, 5, 0, 0),
(91, 43, 6, 0, 0),
(92, 10, 3, 1, 0),
(93, 10, 7, 1, 0),
(94, 33, 4, 1, 0),
(95, 65, 4, 1, 0),
(96, 65, 4, 1, 0),
(97, 65, 4, 1, 0),
(98, 65, 4, 0, 0),
(99, 85, 4, 0, 0),
(100, 53, 5, 1, 0),
(101, 59, 6, 1, 0),
(102, 59, 6, 1, 0),
(103, 59, 6, 1, 0),
(104, 59, 6, 1, 0),
(105, 59, 6, 0, 0),
(106, 1, 1, 1, 0),
(107, 1, 5, 1, 0),
(108, 1, 6, 1, 0),
(109, 1, 6, 1, 0),
(110, 76, 6, 1, 0),
(111, 76, 6, 1, 0),
(112, 48, 6, 1, 0),
(113, 48, 6, 1, 0),
(114, 48, 6, 1, 0),
(115, 48, 6, 1, 0),
(116, 48, 6, 1, 0),
(117, 48, 6, 1, 0),
(118, 34, 4, 1, 0),
(119, 16, 7, 1, 0),
(120, 16, 7, 1, 0),
(121, 45, 6, 1, 0),
(122, 45, 6, 1, 0),
(123, 45, 6, 1, 0),
(124, 72, 7, 1, 0),
(125, 72, 7, 1, 0),
(126, 72, 7, 1, 0),
(127, 72, 7, 0, 0),
(128, 3, 4, 1, 0),
(129, 3, 4, 1, 0),
(130, 3, 4, 1, 0),
(131, 3, 4, 1, 0),
(132, 3, 4, 1, 0),
(133, 86, 1, 1, 0),
(134, 86, 1, 1, 0),
(135, 59, 7, 1, 0),
(136, 59, 7, 1, 0),
(137, 59, 7, 1, 0),
(138, 59, 7, 0, 0),
(139, 36, 7, 1, 0),
(140, 107, 8, 1, 0),
(141, 107, 8, 1, 0),
(142, 109, 8, 0, 0),
(143, 110, 8, 0, 0),
(144, 10, 8, 1, 0),
(145, 2, 8, 1, 0),
(146, 2, 8, 1, 0),
(147, 53, 8, 1, 0),
(148, 59, 8, 1, 0),
(149, 59, 8, 1, 0),
(150, 59, 8, 0, 0),
(151, 36, 8, 1, 0),
(152, 36, 8, 1, 0),
(153, 28, 188, 0, 0),
(154, 36, 184, 1, 0),
(155, 36, 185, 1, 0),
(156, 36, 185, 0, 0),
(157, 36, 187, 0, 0),
(158, 56, 188, 0, 0),
(159, 14, 187, 1, 0),
(160, 22, 186, 0, 0),
(161, 94, 188, 0, 0),
(162, 84, 187, 0, 0),
(163, 23, 187, 0, 0),
(164, 24, 186, 0, 0),
(165, 81, 185, 0, 0),
(166, 10, 186, 1, 0),
(167, 7, 188, 0, 0),
(168, 33, 184, 1, 0),
(169, 33, 184, 0, 0),
(170, 85, 187, 0, 0),
(171, 85, 188, 0, 0),
(172, 57, 188, 1, 0),
(173, 53, 188, 1, 0),
(174, 59, 184, 1, 0),
(175, 59, 184, 1, 0),
(176, 59, 184, 0, 0),
(177, 6, 184, 0, 0),
(178, 6, 187, 0, 0),
(179, 6, 188, 0, 0),
(180, 35, 185, 1, 0),
(181, 91, 188, 1, 0),
(182, 81, 188, 0, 0),
(183, 31, 189, 0, 0),
(184, 95, 189, 1, 0),
(185, 95, 189, 1, 0),
(186, 45, 189, 1, 0),
(187, 26, 189, 0, 0),
(188, 36, 189, 1, 0),
(189, 36, 189, 0, 0),
(190, 73, 162, 1, 0),
(191, 40, 163, 1, 0),
(192, 40, 163, 0, 0),
(193, 74, 162, 0, 0),
(194, 75, 163, 0, 0),
(195, 57, 161, 1, 0),
(196, 59, 163, 1, 0),
(197, 59, 163, 1, 0),
(198, 59, 163, 1, 0),
(199, 59, 163, 1, 0),
(200, 59, 163, 0, 0),
(201, 76, 164, 1, 0),
(202, 76, 164, 1, 0),
(203, 48, 162, 1, 0),
(204, 48, 162, 1, 0),
(205, 48, 162, 1, 0),
(206, 48, 162, 1, 0),
(207, 34, 165, 1, 0),
(208, 16, 163, 1, 0),
(209, 16, 164, 1, 0),
(210, 45, 163, 1, 0),
(211, 72, 161, 1, 0),
(212, 3, 164, 1, 0),
(213, 59, 165, 1, 0),
(214, 66, 165, 1, 0),
(215, 69, 166, 1, 0),
(216, 47, 166, 1, 0),
(217, 59, 166, 1, 0),
(218, 115, 166, 0, 0),
(219, 40, 36, 1, 0),
(220, 40, 36, 0, 0),
(221, 2, 36, 1, 0),
(222, 2, 36, 1, 0),
(223, 2, 36, 0, 0),
(224, 2, 38, 1, 0),
(225, 2, 38, 1, 0),
(226, 2, 38, 0, 0),
(227, 2, 39, 1, 0),
(228, 2, 39, 1, 0),
(229, 2, 39, 0, 0),
(230, 71, 39, 1, 0),
(231, 71, 39, 1, 0),
(232, 44, 36, 0, 0),
(233, 1, 35, 1, 0),
(234, 1, 35, 1, 0),
(235, 13, 36, 1, 0),
(236, 45, 35, 1, 0),
(237, 45, 35, 0, 0),
(238, 3, 36, 1, 0),
(239, 3, 36, 1, 0),
(240, 3, 36, 1, 0),
(241, 3, 36, 0, 0),
(242, 3, 37, 1, 0),
(243, 3, 39, 1, 0),
(244, 3, 39, 1, 0),
(245, 34, 41, 1, 0),
(246, 45, 41, 1, 0),
(247, 62, 11, 1, 0),
(248, 40, 15, 1, 0),
(249, 31, 13, 0, 0),
(250, 64, 12, 0, 0),
(251, 66, 15, 1, 0),
(252, 51, 14, 0, 0),
(253, 63, 12, 0, 0),
(254, 61, 11, 1, 0),
(255, 61, 15, 1, 0),
(256, 32, 11, 0, 0),
(257, 33, 15, 1, 0),
(258, 65, 13, 1, 0),
(259, 59, 11, 1, 0),
(260, 59, 11, 0, 0),
(261, 48, 11, 1, 0),
(262, 48, 11, 1, 0),
(263, 48, 11, 1, 0),
(264, 48, 11, 1, 0),
(265, 48, 11, 1, 0),
(266, 48, 11, 1, 0),
(267, 48, 11, 1, 0),
(268, 35, 16, 1, 0),
(269, 54, 16, 1, 0),
(270, 66, 16, 1, 0),
(271, 104, 16, 0, 0),
(272, 52, 17, 1, 0),
(273, 62, 80, 1, 0),
(274, 62, 80, 1, 0),
(275, 62, 80, 1, 0),
(276, 62, 80, 0, 0),
(277, 14, 81, 1, 0),
(278, 9, 80, 0, 0),
(279, 11, 84, 1, 0),
(280, 11, 84, 0, 0),
(281, 57, 81, 1, 0),
(282, 57, 81, 1, 0),
(283, 57, 81, 0, 0),
(284, 1, 83, 1, 0),
(285, 1, 84, 1, 0),
(286, 12, 81, 0, 0),
(287, 34, 84, 1, 0),
(288, 47, 81, 1, 0),
(289, 45, 81, 1, 0),
(290, 3, 81, 1, 0),
(291, 3, 81, 1, 0),
(292, 3, 82, 1, 0),
(293, 54, 81, 1, 0),
(294, 54, 81, 0, 0),
(295, 106, 86, 1, 0),
(296, 106, 86, 0, 0),
(297, 107, 86, 1, 0),
(298, 67, 98, 0, 0),
(299, 67, 100, 0, 0),
(300, 2, 98, 1, 0),
(301, 37, 102, 1, 0),
(302, 15, 98, 1, 0),
(303, 68, 98, 0, 0),
(304, 33, 103, 1, 0),
(305, 1, 103, 1, 0),
(306, 1, 102, 1, 0),
(307, 70, 102, 1, 0),
(308, 16, 98, 1, 0),
(309, 16, 101, 1, 0),
(310, 16, 101, 1, 0),
(311, 3, 101, 1, 0),
(312, 69, 100, 1, 0),
(313, 27, 102, 0, 0),
(314, 66, 103, 1, 0),
(315, 16, 104, 1, 0),
(316, 15, 104, 1, 0),
(317, 55, 104, 1, 0),
(318, 50, 104, 1, 0),
(319, 50, 104, 0, 0),
(320, 52, 104, 1, 0),
(321, 52, 104, 0, 0),
(322, 1, 104, 1, 0),
(323, 14, 107, 1, 0),
(324, 14, 109, 1, 0),
(325, 2, 112, 1, 0),
(326, 2, 112, 1, 0),
(327, 79, 109, 0, 0),
(328, 78, 108, 0, 0),
(329, 15, 110, 1, 0),
(330, 33, 110, 1, 0),
(331, 13, 112, 1, 0),
(332, 3, 110, 1, 0),
(333, 3, 110, 1, 0),
(334, 54, 107, 1, 0),
(335, 54, 107, 1, 0),
(336, 54, 107, 0, 0),
(337, 69, 107, 0, 0),
(338, 69, 107, 1, 0),
(339, 45, 112, 1, 0),
(340, 40, 112, 1, 0),
(341, 40, 112, 0, 0),
(342, 55, 113, 1, 0),
(343, 37, 113, 1, 0),
(344, 46, 64, 0, 0),
(345, 2, 65, 1, 0),
(346, 2, 67, 1, 0),
(347, 77, 65, 0, 0),
(348, 10, 66, 1, 0),
(349, 35, 62, 1, 0),
(350, 35, 62, 0, 0),
(351, 13, 65, 0, 0),
(352, 3, 62, 1, 0),
(353, 38, 68, 1, 0),
(354, 59, 68, 1, 0),
(355, 66, 68, 1, 0),
(356, 66, 68, 1, 0),
(357, 66, 68, 0, 0),
(358, 36, 198, 1, 0),
(359, 36, 198, 1, 0),
(360, 40, 198, 1, 0),
(361, 40, 198, 1, 0),
(362, 29, 198, 0, 0),
(363, 2, 198, 1, 0),
(364, 41, 198, 0, 0),
(365, 23, 198, 0, 0),
(366, 37, 198, 1, 0),
(367, 37, 198, 1, 0),
(368, 10, 198, 1, 0),
(369, 42, 198, 0, 0),
(370, 40, 172, 1, 0),
(371, 2, 171, 1, 0),
(372, 15, 174, 1, 0),
(373, 59, 171, 1, 0),
(374, 59, 171, 1, 0),
(375, 59, 171, 0, 0),
(376, 1, 170, 1, 0),
(377, 55, 174, 1, 0),
(378, 34, 170, 0, 0),
(379, 48, 175, 1, 0),
(380, 48, 175, 1, 0),
(381, 95, 175, 1, 0),
(382, 40, 71, 1, 0),
(383, 40, 73, 1, 0),
(384, 71, 75, 1, 0),
(385, 66, 75, 1, 0),
(386, 66, 75, 0, 0),
(387, 44, 76, 0, 0),
(388, 95, 76, 0, 0),
(389, 38, 74, 0, 0),
(390, 3, 71, 1, 0),
(391, 3, 72, 1, 0),
(392, 3, 77, 1, 0),
(393, 51, 89, 0, 0),
(394, 37, 91, 1, 0),
(395, 37, 91, 1, 0),
(396, 52, 90, 1, 0),
(397, 53, 90, 1, 0),
(398, 55, 91, 1, 0),
(399, 50, 89, 1, 0),
(400, 45, 90, 1, 0),
(401, 54, 90, 1, 0),
(402, 112, 95, 0, 0),
(403, 37, 212, 1, 0),
(404, 37, 212, 0, 0),
(405, 80, 212, 1, 0),
(406, 80, 212, 1, 0),
(407, 103, 213, 0, 0),
(408, 88, 214, 1, 0),
(409, 91, 214, 1, 0),
(410, 1, 214, 1, 0),
(411, 1, 214, 1, 0),
(412, 1, 214, 1, 0),
(413, 2, 180, 1, 0),
(414, 2, 181, 1, 0),
(415, 1, 177, 1, 0),
(416, 16, 178, 1, 0),
(417, 47, 181, 1, 0),
(418, 45, 180, 1, 0),
(419, 40, 206, 1, 0),
(420, 92, 206, 1, 0),
(421, 93, 206, 0, 0),
(422, 33, 205, 1, 0),
(423, 69, 205, 1, 0),
(424, 49, 22, 0, 0),
(425, 12, 23, 1, 0),
(426, 10, 24, 1, 0),
(427, 16, 24, 1, 0),
(428, 56, 27, 0, 0),
(429, 57, 29, 1, 0),
(430, 58, 31, 0, 0),
(431, 70, 33, 1, 0),
(432, 53, 216, 1, 0),
(433, 44, 218, 0, 0),
(434, 70, 221, 1, 0),
(435, 111, 221, 0, 0),
(436, 14, 125, 1, 0),
(437, 2, 128, 1, 0),
(438, 47, 130, 1, 0),
(439, 55, 46, 0, 0),
(440, 55, 46, 1, 0),
(441, 3, 48, 1, 0),
(442, 2, 147, 1, 0),
(443, 3, 147, 1, 0),
(444, 114, 147, 0, 0),
(445, 39, 192, 0, 0),
(446, 38, 192, 1, 0),
(447, 49, 152, 0, 0),
(448, 49, 150, 0, 0),
(449, 88, 59, 1, 0),
(450, 33, 176, 1, 0),
(451, 48, 18, 1, 0),
(452, 48, 9, 1, 0),
(453, 48, 9, 1, 0),
(454, 48, 18, 1, 0),
(455, 48, 9, 1, 0),
(456, 48, 167, 1, 0),
(457, 48, 9, 0, 0),
(458, 48, 190, 1, 0),
(459, 34, 148, 1, 0),
(460, 109, 9, 0, 0),
(461, 10, 148, 1, 0),
(462, 10, 176, 1, 0),
(463, 10, 123, 0, 0),
(464, 11, 114, 1, 0),
(465, 84, 222, 0, 0),
(466, 111, 18, 0, 0),
(467, 16, 87, 1, 0),
(468, 21, 190, 0, 0),
(469, 22, 190, 0, 0),
(470, 23, 190, 0, 0),
(471, 6, 215, 0, 0),
(472, 15, 78, 1, 0),
(473, 85, 60, 0, 0),
(474, 15, 42, 0, 0),
(475, 67, 227, 0, 0),
(476, 112, 167, 0, 0),
(477, 71, 51, 1, 0),
(478, 12, 123, 1, 0),
(479, 38, 42, 1, 0),
(480, 38, 42, 0, 0),
(481, 116, 215, 1, 0),
(482, 116, 167, 1, 0),
(483, 116, 167, 1, 0),
(484, 116, 9, 1, 0),
(485, 2, 148, 1, 0),
(486, 2, 148, 1, 0),
(487, 2, 78, 1, 0),
(488, 2, 148, 1, 0),
(489, 2, 148, 0, 0),
(490, 39, 42, 0, 0),
(491, 13, 176, 1, 0),
(492, 53, 222, 1, 0),
(493, 53, 222, 0, 0),
(494, 13, 123, 0, 0),
(495, 44, 78, 0, 0),
(496, 81, 183, 0, 0),
(497, 43, 168, 0, 0),
(498, 1, 9, 1, 0),
(499, 1, 167, 1, 0),
(500, 1, 215, 1, 0),
(501, 35, 18, 1, 0),
(502, 35, 18, 1, 0),
(503, 1, 167, 1, 0),
(504, 35, 18, 1, 0),
(505, 45, 114, 1, 0),
(506, 45, 42, 1, 0),
(507, 45, 146, 1, 0),
(508, 45, 42, 0, 0);