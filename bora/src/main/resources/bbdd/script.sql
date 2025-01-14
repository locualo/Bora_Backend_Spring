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
INSERT INTO carrera VALUES (71, 'Giro del Trentino', 12, FALSE, 3);
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
