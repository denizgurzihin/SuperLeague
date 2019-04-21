
CREATE TABLE LEAGUE(       
	name varchar(50) primary key,
);
INSERT INTO LEAGUE(name) VALUES ('Turkish Super League');


CREATE TABLE MANAGER(
	managerID int primary key,
	firstName varchar(50),
	lastName varchar(50),
	birthDate date,
	nationality varchar(50),
);
--insertion to manager table--
INSERT INTO MANAGER(managerID, firstName, lastName,	birthDate, nationality) VALUES (1, 'Fatih', 'Terim', '1953-09-04', 'Turkey');
INSERT INTO MANAGER(managerID, firstName, lastName,	birthDate, nationality) VALUES (2, 'Senol', 'Gunes', '1952-06-01', 'Turkey');
INSERT INTO MANAGER(managerID, firstName, lastName,	birthDate, nationality) VALUES (3, 'Erwin', 'Koeman', '1961-10-20', 'Netherland');
INSERT INTO MANAGER(managerID, firstName, lastName,	birthDate, nationality) VALUES (4, 'Abdullah', 'Avci', '1963-07-31', 'Turkey');
INSERT INTO MANAGER(managerID, firstName, lastName,	birthDate, nationality) VALUES (5, 'Unal', 'Karaman', '1966-06-29', 'Turkey');
INSERT INTO MANAGER(managerID, firstName, lastName,	birthDate, nationality) VALUES (6, 'Samet', 'Aybaba', '1955-09-03', 'Turkey');
INSERT INTO MANAGER(managerID, firstName, lastName,	birthDate, nationality) VALUES (7, 'Bayram', 'Bektas', '1974-02-10', 'Turkey');
INSERT INTO MANAGER(managerID, firstName, lastName,	birthDate, nationality) VALUES (8, 'Aykut', 'Kocaman', '1965-04-05', 'Turkey');
INSERT INTO MANAGER(managerID, firstName, lastName,	birthDate, nationality) VALUES (9, 'Sergen', 'Yalcin', '1972-10-05', 'Turkey');
INSERT INTO MANAGER(managerID, firstName, lastName,	birthDate, nationality) VALUES (10, 'Ertugrul', 'Saglam', '1969-11-19', 'Turkey');
INSERT INTO MANAGER(managerID, firstName, lastName,	birthDate, nationality) VALUES (11, 'Mustafa', 'Denizli', '1949-11-10', 'Turkey');
INSERT INTO MANAGER(managerID, firstName, lastName,	birthDate, nationality) VALUES (12, 'Hakan', 'Keles', '1972-01-08', 'Turkey');
INSERT INTO MANAGER(managerID, firstName, lastName,	birthDate, nationality) VALUES (13, 'Okan', 'Buruk', '1973-09-19', 'Turkey');
INSERT INTO MANAGER(managerID, firstName, lastName,	birthDate, nationality) VALUES (14, 'Bülent', 'Korkmaz', '1968-11-24', 'Turkey');
INSERT INTO MANAGER(managerID, firstName, lastName,	birthDate, nationality) VALUES (15, 'Erol', 'Bulut', '1975-01-31', 'Turkey');
INSERT INTO MANAGER(managerID, firstName, lastName,	birthDate, nationality) VALUES (16, 'Ismail', 'Kartal', '1961-06-15', 'Turkey');
INSERT INTO MANAGER(managerID, firstName, lastName,	birthDate, nationality) VALUES (17, 'Cihat', 'Arslan', '1970-02-09', 'Turkey');
INSERT INTO MANAGER(managerID, firstName, lastName,	birthDate, nationality) VALUES (18, 'Mehmet', 'Ozdilek', '1966-04-01', 'Turkey');

CREATE TABLE STADIUM(
	stadiumName VARCHAR(50) PRIMARY KEY,
	capacity INT,
	adress VARCHAR(50)
);
--insertion to stadium table--
INSERT INTO STADIUM(stadiumName, capacity, adress) VALUES ('Ali Sami Yen Spor Kompleksi Turk Telekom Stadyumu', 52600, 'Turkey, Istanbul');
INSERT INTO STADIUM(stadiumName, capacity, adress) VALUES ('Vodafone Park', 41.903, 'Turkey, Istanbul');
INSERT INTO STADIUM(stadiumName, capacity, adress) VALUES ('Ulker Stadyumu FB Sukru Saracoglu Spor Kompleksi', 50509, 'Turkey, Istanbul');
INSERT INTO STADIUM(stadiumName, capacity, adress) VALUES ('3.Istanbul Basaksehir Fatih Terim', 17300, 'Turkey, Istanbul');
INSERT INTO STADIUM(stadiumName, capacity, adress) VALUES ('Medical Park Stadyumu', 52600, 'Turkey, Trabzon');
INSERT INTO STADIUM(stadiumName, capacity, adress) VALUES ('Bursa Buyuksehir Belediye Stadyumu', 43331, 'Turkey, Bursa');
INSERT INTO STADIUM(stadiumName, capacity, adress) VALUES ('Bornova Stadi', 12500, 'Turkey, Izmir');
INSERT INTO STADIUM(stadiumName, capacity, adress) VALUES ('Konya Buyuksehir Belediye Stadyumu ', 41981, 'Turkey, Konya');
INSERT INTO STADIUM(stadiumName, capacity, adress) VALUES ('Bahcesehir Okullarý Arena', 10.842, 'Turkey, Antalya');
INSERT INTO STADIUM(stadiumName, capacity, adress) VALUES ('Büyüksehir Belediyesi Kadir Has', 32864, 'Turkey, Kayseri');
INSERT INTO STADIUM(stadiumName, capacity, adress) VALUES ('Recep Tayyip Erdogan Stadyumu', 14234, 'Turkey, Istanbul');
INSERT INTO STADIUM(stadiumName, capacity, adress) VALUES ('Yeni 4 Eylül Stadi', 27532, 'Turkey, Sivas');
INSERT INTO STADIUM(stadiumName, capacity, adress) VALUES ('Caykur Didi', 15332, 'Turkey, Rize');
INSERT INTO STADIUM(stadiumName, capacity, adress) VALUES ('Antalya Stadyumu', 32539, 'Turkey, Antalya');
INSERT INTO STADIUM(stadiumName, capacity, adress) VALUES ('Yeni Malatya Stadyumu', 27044, 'Turkey, Malatya');
INSERT INTO STADIUM(stadiumName, capacity, adress) VALUES ('Ankara 19 Mayis Stadyumu', 19209, 'Turkey, Ankara');
INSERT INTO STADIUM(stadiumName, capacity, adress) VALUES ('Spor Toto Akhisar Stadyumu', 12139, 'Turkey, Manisa');
INSERT INTO STADIUM(stadiumName, capacity, adress) VALUES ('Erzurum Kazim Karabekir ', 23700, 'Turkey, Erzurum');


CREATE TABLE TEAM(
	name varchar(50) primary key,
	yearOfEstablish varchar(4),
	colors varchar(25),
	city varchar(25),
	manager_id int,
	stadium_name varchar(50),
	league_name varchar(50),
	FOREIGN KEY (manager_id) REFERENCES MANAGER(managerID), 
	FOREIGN KEY (stadium_name) REFERENCES STADIUM(stadiumName),
	FOREIGN KEY (league_name) REFERENCES LEAGUE(name),
);
INSERT INTO TEAM(name, yearOfEstablish, colors, city, manager_id, stadium_name, league_name) VALUES ('Galatasaray', 1905, 'yellow-red', 'Istanbul', 1, 'Ali Sami Yen Spor Kompleksi Turk Telekom Stadyumu', 'Turkish Super League');
INSERT INTO TEAM(name, yearOfEstablish, colors, city, manager_id, stadium_name, league_name) VALUES ('Besiktas', 1903, 'black-white', 'Istanbul', 2, 'Vodafone Park', 'Turkish Super League');
INSERT INTO TEAM(name, yearOfEstablish, colors, city, manager_id, stadium_name, league_name) VALUES ('Fenerbahce', 1907, 'yellow-navy blue', 'Istanbul', 3, 'Ulker Stadyumu FB Sukru Saracoglu Spor Kompleksi', 'Turkish Super League');
INSERT INTO TEAM(name, yearOfEstablish, colors, city, manager_id, stadium_name, league_name) VALUES ('Basaksehir', 1990, 'yellow-black', 'Istanbul', 4, '3.Istanbul Basaksehir Fatih Terim', 'Turkish Super League');
INSERT INTO TEAM(name, yearOfEstablish, colors, city, manager_id, stadium_name, league_name) VALUES ('Trabzonspor', 1967, 'claret red-blue', 'Trabzon', 5, 'Medical Park Stadyumu', 'Turkish Super League');
INSERT INTO TEAM(name, yearOfEstablish, colors, city, manager_id, stadium_name, league_name) VALUES ('Bursaspor', 1963, 'green-white', 'Bursa', 6, 'Bursa Buyuksehir Belediye Stadyumu', 'Turkish Super League');
INSERT INTO TEAM(name, yearOfEstablish, colors, city, manager_id, stadium_name, league_name) VALUES ('Goztepe', 1925, 'yellow-red', 'Izmýr', 7, 'Bornova Stadi', 'Turkish Super League');
INSERT INTO TEAM(name, yearOfEstablish, colors, city, manager_id, stadium_name, league_name) VALUES ('Konyaspor', 1981, 'green-white', 'Konya', 8, 'Konya Buyuksehir Belediye Stadyumu', 'Turkish Super League');
INSERT INTO TEAM(name, yearOfEstablish, colors, city, manager_id, stadium_name, league_name) VALUES ('Alanyaspor', 1948, 'yellow-red', 'Antalya', 9, 'Bahcesehir Okullarý Arena', 'Turkish Super League');
INSERT INTO TEAM(name, yearOfEstablish, colors, city, manager_id, stadium_name, league_name) VALUES ('Kayserispor', 1966, 'yellow-red', 'Kayseri', 10, 'Büyüksehir Belediyesi Kadir Has', 'Turkish Super League');
INSERT INTO TEAM(name, yearOfEstablish, colors, city, manager_id, stadium_name, league_name) VALUES ('Kasýmpasa', 1921, 'white-navy blue', 'Istanbul', 11, 'Recep Tayyip Erdogan Stadyumu', 'Turkish Super League');
INSERT INTO TEAM(name, yearOfEstablish, colors, city, manager_id, stadium_name, league_name) VALUES ('Sivasspor', 1967, 'red-white', 'Sivas', 12, 'Yeni 4 Eylül Stadi', 'Turkish Super League');
INSERT INTO TEAM(name, yearOfEstablish, colors, city, manager_id, stadium_name, league_name) VALUES ('Caykur Rizespor', 1953, 'blue-green', 'Rize', 13, 'Caykur Didi', 'Turkish Super League');
INSERT INTO TEAM(name, yearOfEstablish, colors, city, manager_id, stadium_name, league_name) VALUES ('Antalyaspor', 1966, 'red-white', 'Antalya', 14, 'Antalya Stadyumu', 'Turkish Super League');
INSERT INTO TEAM(name, yearOfEstablish, colors, city, manager_id, stadium_name, league_name) VALUES ('Yeni Malatyaspor', 1986, 'yellow-red', 'Malatya', 15, 'Yeni Malatya Stadyumu', 'Turkish Super League');
INSERT INTO TEAM(name, yearOfEstablish, colors, city, manager_id, stadium_name, league_name) VALUES ('Ankaragucu', 1910, 'yellow-navy blue', 'Ankara', 16, 'Ankara 19 Mayis Stadyumu', 'Turkish Super League');
INSERT INTO TEAM(name, yearOfEstablish, colors, city, manager_id, stadium_name, league_name) VALUES ('Akhisarspor', 1970, 'green-black', 'Manisa', 17, 'Spor Toto Akhisar Stadyumu', 'Turkish Super League');
INSERT INTO TEAM(name, yearOfEstablish, colors, city, manager_id, stadium_name, league_name) VALUES ('BB Erzurumspor', 1905, 'blue-white', 'Erzurum', 18, 'Erzurum Kazim Karabekir', 'Turkish Super League');




CREATE TABLE MATCH(
	matchID int primary key,
	homeTeam varchar(50),
	opposingTeam varchar(50),
	week int,
	score varchar(5),
	date date
);
--hafta bazlý maç insert--
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (1, 'Ankaragucu', 'Galatasaray', 1, '1-3', '2018-08-10');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (2, 'Sivasspor', 'Alanyaspor ', 1, '1-0', '2018-08-11');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (3, 'Caykur Rizespor', 'Kasýmpasa', 1, '2-3', '2018-08-11');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (4, 'Fenerbahce', 'Bursaspor', 1, '2-1', '2018-08-11');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (5, 'Basaksehir', 'Trabzonspor', 1, '2-0', '2018-08-11');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (6, 'Konyaspor', 'BB Erzurumspor', 1, '3-2', '2018-08-12');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (7, 'Besiktas', 'Akhisarspor', 1, '2-1', '2018-08-12');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (8, 'Goztepe', 'Yeni Malatyaspor', 1, '1-3', '2018-08-12');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (9, 'Kayserispor', 'Antalyaspor', 1, '2-0', '2018-08-13');

INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (10, 'Trabzonspor', 'Sivasspor', 2, '3-1', '2018-08-17');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (11, 'Bursasor', 'Kayserispor', 2, '0-0', '2018-08-18');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (12, 'Antalysapor', 'Konyaspor', 2, '3-3', '2018-08-18');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (13, 'Yeni Malatyaspor', 'Fenerbahce', 2, '1-0', '2018-08-18');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (14, 'BB Erzurumspor', 'Besiktas', 2, '1-3', '2018-08-19');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (15, 'Akhisarspor', 'Caykur Rizespor', 2, '1-1', '2018-08-19');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (16, 'Galatasaray', 'Goztepe', 2, '1-0', '2018-08-19');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (17, 'Alanyaspor', 'Ankaragucu', 2, '0-2', '2018-08-19');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (18, 'Kasýmpasa', 'Basaksehir', 2, '2-1', '2018-08-20');


INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (19, 'Caykur Rizespor', 'BB Erzurumspor', 3, '0-0', '2018-08-24');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (20, 'Ankaragucu', 'Trabzonspor', 3, '2-2', '2018-08-25');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (21, 'Goztepe', 'Fenerbahce', 3, '1-0', '2018-08-25');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (22, 'Kayserispor', 'Yeni Malatyaspor', 3, '0-0', '2018-08-25');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (23, 'Sivasspor', 'Kasýmpasa', 3, '0-3', '2018-08-26');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (24, 'Besiktas', 'Antalyaspor', 3, '2-3', '2018-08-26');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (25, 'Konyaspor', 'Bursaspor ', 3, '1-1', '2018-08-26');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (26, 'Basaksehir', 'Akhisarspor', 3, '3-1', '2018-08-27');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (27, 'Galatasaray', 'Alanyaspor', 3, '6-0', '2018-08-27');

INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (28, 'Yeni Malatyaspor', 'Konyaspor', 4, '0-1', '2018-08-31');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (29, 'Akhisarspor', 'Sivasspor', 4, '1-1', '2018-09-01');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (30, 'Fenerbahce', 'Kayserispor', 4, '2-3', '2018-09-01');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (31, 'Trabzonspor', 'Galatasaray', 4, '4-0', '2018-09-01');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (32, 'Alanyaspor', 'Goztepe', 4, '1-0', '2018-09-01');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (33, 'Kasýmpasa', 'Ankaragucu', 4, '2-1', '2018-09-02');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (34, 'BB Erzurumspor', 'Basaksehir', 4, '0-1', '2018-09-02');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (35, 'Bursaspor', 'Besiktas', 4, '1-1', '2018-09-02');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (36, 'Antalyaspor', 'Caykur Rizespor', 4, '2-1', '2018-09-02');

INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (37, 'Galatasaray', 'Kasýmpasa', 5, '4-1', '2018-09-14');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (38, 'Ankaragucu', 'Akhisarspor', 5, '1-0', '2018-09-15');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (39, 'Goztepe', 'Kayserispor', 5, '2-0', '2018-09-15');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (40, 'Besiktas', 'Yeni Malatyaspor', 5, '2-1', '2018-09-15');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (41, 'Basaksehir', 'Antalyaspor', 5, '4-0', '2018-09-16');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (42, 'Sivasspor', 'BB Erzurumspor', 5, '2-2', '2018-09-16');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (43, 'Konyaspor', 'Fenerbahce', 5, '0-1', '2018-09-16');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (44, 'Caykur Rizespor', 'Bursaspor', 5, '1-1', '2018-09-16');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (45, 'Alanyaspor', 'Trabzonspor', 5, '1-0', '2018-09-17');

INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (46, 'Bursaspor', 'Basaksehir', 6, '0-0', '2018-09-21');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (47, 'BB Erzurumspor', 'Ankaragucu', 6, '0-1', '2018-09-21');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (48, 'Yeni Malatyaspor', 'Caykur Rizespor', 6, '1-0', '2018-09-22');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (49, 'Kayserispor', 'Konyaspor', 6, '0-2', '2018-09-22');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (50, 'Trabzonspor', 'Goztepe', 6, '1-2', '2018-09-22');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (51, 'Kasýmpasa', 'Alanyaspor', 6, '1-2', '2018-09-23');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (52, 'Antalyaspor', 'Sivasspor', 6, '2-1', '2018-09-23');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (53, 'Akhisarspor', 'Galatasaray', 6, '3-0', '2018-09-23');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (54, 'Fenerbahce', 'Besiktas', 6, '1-1', '2018-09-24');

INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (55, 'Galatasaray', 'BB Erzurumspor', 7, '1-0', '2018-09-28');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (56, 'Alanyaspor', 'Akhisarspor', 7, '2-1', '2018-09-29');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (57, 'Trabzonspor', 'Kasýmpasa', 7, '4-2', '2018-09-29');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (58, 'Besiktas', 'Kayserispor', 7, '2-0', '2018-09-29');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (59, 'Sivassspor', 'Bursaspor', 7, '2-0', '2018-09-30');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (60, 'Goztepe', 'Konyaspor', 7, '3-2', '2018-09-30');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (61, 'Caykur Rizespor', 'Fenerbahce', 7, '3-0', '2018-09-30');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (62, 'Ankaragucu', 'Antalyaspor', 7, '0-1', '2018-10-01');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (63, 'Basaksehir', 'Yeni Malatyaspor', 7, '1-1', '2018-10-01');

INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (64, 'Kasýmpasa', 'Goztepe', 8, '3-1', '2018-10-05');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (65, 'Kayserispor', 'Caykur Rizespor', 8, '2-2', '2018-10-06');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (66, 'BB Erzurumspor', 'Alanyaspor', 8, '1-0', '2018-10-06');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (67, 'Bursaspor', 'Ankaragucu', 8, '1-0', '2018-10-06');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (68, 'Antalyaspor', 'Galatasaray', 8, '0-1', '2018-10-06');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (69, 'Yeni Malatyaspor', 'Sivasspor', 8, '4-4', '2018-10-07');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (70, 'Fenerbahce', 'Basaksehir', 8, '0-0', '2018-10-07');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (71, 'Akhisarspor', 'Trabzonspor', 8, '1-3', '2018-10-07');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (72, 'Konyaspor', 'Besiktas', 8, '2-2', '2018-10-07');

INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (73, 'Galatasaray', 'Bursaspor', 9, '1-1', '2018-10-19');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (74, 'Kasýmpasa', 'Akhisarspor', 9, '5-0', '2018-10-20');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (75, 'Basaksehir', 'Kayserispor', 9, '1-0', '2018-10-20');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (76, 'Sivasspor', 'Fenerbahce', 9, '0-0', '2018-10-20');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (77, 'Caykur Rizespor', 'Konyaspor', 9, '1-1', '2018-10-21');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (78, 'Ankaragucu', 'Yeni Malatyaspor', 9, '1-0', '2018-10-21');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (79, 'Alanyaspor', 'Antalyaspor', 9, '0-1', '2018-10-21');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (80, 'Goztepe', 'Besiktas', 9, '2-0', '2018-10-21');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (81, 'Trabzonspor', 'BB Erzurumspor', 9, '0-0', '2018-10-22');

INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (82, 'Bursaspor', 'Alanyaspor', 10, '2-0', '2018-10-26');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (83, 'BB Erzurumspor', 'Kasýmpasa', 10, '1-1', '2018-10-27');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (84, 'Konyaspor', 'Basaksehir', 10, '0-1', '2018-10-27');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (85, 'Antalyaspor', 'Trabzonspor', 10, '1-1', '2018-10-27');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (86, 'Kayserispor', 'Sivasspor', 10, '2-0', '2018-10-28');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (87, 'Yeni Malatyaspor', 'Galatasaray', 10, '2-0', '2018-10-28');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (88, 'Fenerbahce', 'Ankaragucu', 10, '1-3', '2018-10-28');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (89, 'Besiktas', 'Caykur Rizespor', 10, '4-1', '2018-10-29');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (90, 'Akhisarspor', 'Goztepe', 10, '1-0', '2018-10-29');

INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (91, 'Galatasaray', 'Fenerbahce', 11, '2-2', '2018-11-02');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (92, 'Kasýmpasa', 'Antalyaspor', 11, '1-2', '2018-11-03');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (93, 'Akhisarspor', 'BB Erzurumspor', 11, '1-1', '2018-11-03');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (94, 'Basaksehir', 'Besiktas', 11, '1-0', '2018-11-03');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (95, 'Ankaragucu', 'Kayserispor', 11, '3-1', '2018-11-04');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (96, 'Alanyaspor', 'Yeni Malatyaspor', 11, '0-1', '2018-11-04');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (97, 'Trabzonspor', 'Bursaspor', 11, '1-1', '2018-11-04');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (98, 'Sivasspor', 'Konyaspor', 11, '0-0', '2018-11-05');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (99, 'Goztepe', 'Caykur Rizespor', 11, '2-0', '2018-11-05');


INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (100, 'Yeni Malatyaspor', 'Trabzonspor', 12, '5-0', '2018-11-09');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (101, 'Konyaspor', 'Ankaragucu', 12, '2-0', '2018-11-10');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (102, 'BB Erzurumspor', 'Goztepe', 12, '2-1', '2018-11-10');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (103, 'Caykur Rizespor', 'Basaksehir', 12, '1-2', '2018-11-10');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (104, 'Kayserispor', 'Galatasaray', 12, '0-3', '2018-11-10');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (105, 'Bursaspor', 'Kasýmpasa', 12, '1-2', '2018-11-11');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (106, 'Fenerbahce', 'Alanyaspor', 12, '2-0', '2018-11-11');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (107, 'Antalyaspor', 'Akhisarspor', 12, '1-2', '2018-11-11');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (108, 'Besiktas', 'Sivasspor', 12, '1-2', '2018-11-11');

INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (109, 'Galatasaray', 'Konyaspor', 13, '1-1', '2018-11-23');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (110, 'BB Erzurumspor', 'Antalyaspor', 13, '1-0', '2018-11-24');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (111, 'Alanyaspor', 'Kayserispor', 13, '5-0', '2018-11-24');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (112, 'Ankaragucu', 'Besiktas', 13, '1-4', '2018-11-24');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (113, 'Sivasspor', 'Caykur Rizespor', 13, '1-1', '2018-11-25');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (114, 'Akhisarspor', 'Bursaspor', 13, '2-4', '2018-11-25');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (115, 'Trabzonspor', 'Fenerbahce', 13, '2-1', '2018-11-25');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (116, 'Kasýmpasa', 'Yeni Malatyaspor', 13, '3-0', '2018-11-25');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (117, 'Goztepe', 'Basaksehir', 13, '0-2', '2018-11-26');

INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (118, 'Konyaspor', 'Alanyaspor', 14, 'x-x', '2018-11-30');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (119, 'Caykur Rizespor', 'Ankaragucu', 14, 'x-x', '2018-11-30');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (120, 'Basaksehir', 'Sivasspor', 14, 'x-x', '2018-12-01');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (121, 'Antalyaspor', 'Goztepe', 14, 'x-x', '2018-12-01');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (122, 'Kayseripor', 'Trabzonspor', 14, 'x-x', '2018-12-01');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (123, 'Bursaspor', 'BB Erzurumspor', 14, 'x-x', '2018-12-02');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (124, 'Besiktas', 'Galatasaray', 14, 'x-x', '2018-12-02');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (125, 'Yeni Malatyaspor', 'Akhisarspor', 14, 'x-x', '2018-12-03');
INSERT INTO MATCH(matchID, homeTeam, opposingTeam, week, score, date) VALUES (126, 'Fenerbahce', 'Kasýmpasa', 14, 'x-x', '2018-12-03');



CREATE TABLE MATCHTEAM(
	team_name varchar(50),
	match_id int,
	FOREIGN KEY (team_name) REFERENCES TEAM(name),
	FOREIGN KEY (match_id) REFERENCES MATCH(matchID),
);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Galatasaray', 1);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Galatasaray', 16);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Galatasaray', 27);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Galatasaray', 31);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Galatasaray', 37);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Galatasaray', 53);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Galatasaray', 55);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Galatasaray', 68);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Galatasaray', 73);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Galatasaray', 87);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Galatasaray', 91);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Galatasaray', 104);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Galatasaray', 109);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Galatasaray', 124);

INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Besiktas', 7);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Besiktas', 14);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Besiktas', 24);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Besiktas', 35);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Besiktas', 40);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Besiktas', 54);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Besiktas', 58);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Besiktas', 72);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Besiktas', 80);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Besiktas', 89);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Besiktas', 94);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Besiktas', 108);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Besiktas', 112);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Besiktas', 124);

INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Fenerbahce', 4);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Fenerbahce', 13);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Fenerbahce', 21);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Fenerbahce', 30);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Fenerbahce', 43);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Fenerbahce', 54);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Fenerbahce', 61);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Fenerbahce', 70);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Fenerbahce', 76);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Fenerbahce', 88);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Fenerbahce', 91);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Fenerbahce', 106);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Fenerbahce', 115);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Fenerbahce', 126);

INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Trabzonspor', 5);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Trabzonspor', 10);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Trabzonspor', 20);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Trabzonspor', 31);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Trabzonspor', 45);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Trabzonspor', 50);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Trabzonspor', 57);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Trabzonspor', 71);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Trabzonspor', 81);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Trabzonspor', 85);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Trabzonspor', 97);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Trabzonspor', 100);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Trabzonspor', 115);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Trabzonspor', 122);


INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Basaksehir', 5);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Basaksehir', 18);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Basaksehir', 26);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Basaksehir', 34);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Basaksehir', 41);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Basaksehir', 46);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Basaksehir', 63);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Basaksehir', 70);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Basaksehir', 75);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Basaksehir', 84);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Basaksehir', 94);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Basaksehir', 103);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Basaksehir', 117);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Basaksehir', 120);


INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Bursaspor', 4);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Bursaspor', 11);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Bursaspor', 25);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Bursaspor', 35);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Bursaspor', 44);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Bursaspor', 46);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Bursaspor', 59);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Bursaspor', 67);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Bursaspor', 73);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Bursaspor', 82);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Bursaspor', 97);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Bursaspor', 105);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Bursaspor', 114);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Bursaspor', 123);

INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Kasýmpasa', 3);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Kasýmpasa', 18);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Kasýmpasa', 23);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Kasýmpasa', 33);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Kasýmpasa', 37);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Kasýmpasa', 51);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Kasýmpasa', 57);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Kasýmpasa', 64);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Kasýmpasa', 74);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Kasýmpasa', 83);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Kasýmpasa', 92);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Kasýmpasa', 105);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Kasýmpasa', 116);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Kasýmpasa', 126);


INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Konyaspor', 6);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Konyaspor', 12);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Konyaspor', 25);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Konyaspor', 28);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Konyaspor', 43);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Konyaspor', 49);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Konyaspor', 60);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Konyaspor', 72);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Konyaspor', 77);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Konyaspor', 84);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Konyaspor', 98);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Konyaspor', 101);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Konyaspor', 109);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Konyaspor', 118);


INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Antalyaspor', 9);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Antalyaspor', 12);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Antalyaspor', 24);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Antalyaspor', 36);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Antalyaspor', 41);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Antalyaspor', 52);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Antalyaspor', 62);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Antalyaspor', 68);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Antalyaspor', 79);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Antalyaspor', 85);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Antalyaspor', 92);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Antalyaspor', 107);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Antalyaspor', 110);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Antalyaspor', 121);

INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Alanyaspor', 2);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Alanyaspor', 17);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Alanyaspor', 27);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Alanyaspor', 32);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Alanyaspor', 45);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Alanyaspor', 51);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Alanyaspor', 56);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Alanyaspor', 66);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Alanyaspor', 79);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Alanyaspor', 82);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Alanyaspor', 96);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Alanyaspor', 106);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Alanyaspor', 111);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Alanyaspor', 118);

INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Ankaragucu', 1);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Ankaragucu', 17);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Ankaragucu', 20);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Ankaragucu', 33);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Ankaragucu', 38);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Ankaragucu', 47);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Ankaragucu', 62);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Ankaragucu', 67);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Ankaragucu', 78);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Ankaragucu', 88);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Ankaragucu', 95);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Ankaragucu', 101);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Ankaragucu', 112);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Ankaragucu', 119);

INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Goztepe', 8);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Goztepe', 16);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Goztepe', 21);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Goztepe', 32);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Goztepe', 39);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Goztepe', 50);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Goztepe', 60);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Goztepe', 64);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Goztepe', 80);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Goztepe', 90);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Goztepe', 99);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Goztepe', 102);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Goztepe', 117);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Goztepe', 121);

INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Akhisarspor', 7);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Akhisarspor', 15);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Akhisarspor', 26);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Akhisarspor', 29);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Akhisarspor', 38);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Akhisarspor', 53);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Akhisarspor', 56);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Akhisarspor', 71);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Akhisarspor', 74);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Akhisarspor', 90);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Akhisarspor', 93);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Akhisarspor', 107);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Akhisarspor', 114);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Akhisarspor', 125);

INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('BB Erzurumspor', 6);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('BB Erzurumspor', 14);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('BB Erzurumspor', 19);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('BB Erzurumspor', 34);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('BB Erzurumspor', 42);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('BB Erzurumspor', 47);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('BB Erzurumspor', 55);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('BB Erzurumspor', 66);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('BB Erzurumspor', 81);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('BB Erzurumspor', 83);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('BB Erzurumspor', 93);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('BB Erzurumspor', 102);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('BB Erzurumspor', 110);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('BB Erzurumspor', 123);

INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Caykur Rizespor', 3);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Caykur Rizespor', 15);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Caykur Rizespor', 19);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Caykur Rizespor', 36);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Caykur Rizespor', 44);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Caykur Rizespor', 48);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Caykur Rizespor', 61);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Caykur Rizespor', 65);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Caykur Rizespor', 77);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Caykur Rizespor', 89);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Caykur Rizespor', 99);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Caykur Rizespor', 103);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Caykur Rizespor', 113);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Caykur Rizespor', 119);

INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Kayserispor', 9);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Kayserispor', 11);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Kayserispor', 22);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Kayserispor', 30);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Kayserispor', 39);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Kayserispor', 49);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Kayserispor', 58);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Kayserispor', 65);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Kayserispor', 75);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Kayserispor', 86);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Kayserispor', 95);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Kayserispor', 104);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Kayserispor', 111);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Kayserispor', 122);

INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Yeni Malatyaspor', 8);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Yeni Malatyaspor', 13);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Yeni Malatyaspor', 22);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Yeni Malatyaspor', 28);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Yeni Malatyaspor', 40);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Yeni Malatyaspor', 48);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Yeni Malatyaspor', 63);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Yeni Malatyaspor', 69);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Yeni Malatyaspor', 78);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Yeni Malatyaspor', 87);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Yeni Malatyaspor', 96);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Yeni Malatyaspor', 100);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Yeni Malatyaspor', 116);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Yeni Malatyaspor', 125);

INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Sivasspor', 2);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Sivasspor', 10);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Sivasspor', 23);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Sivasspor', 29);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Sivasspor', 42);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Sivasspor', 52);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Sivasspor', 59);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Sivasspor', 69);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Sivasspor', 76);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Sivasspor', 86);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Sivasspor', 98);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Sivasspor', 108);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Sivasspor', 113);
INSERT INTO MATCHTEAM(team_name, match_id) VALUES ('Sivasspor', 120);


CREATE TABLE REFEREE(
	refereeID int primary key,
	firtName varchar(50),
	lastName varchar(50),
	nationality varchar(50),
	match_id int,
	FOREIGN KEY (match_id) REFERENCES MATCH(matchID), 
);
CREATE TABLE PLAYER(
	playerID int primary key,
	firstName varchar(50),
	lastName varchar(50),
	nationality varchar(50),
	position varchar(25),
	birthDate date,
	team_name varchar(50),
	FOREIGN KEY (team_name) REFERENCES TEAM(name),
);


INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(1, 'Fernando', 'Muslera', 'Uruguay', 'Goalkeeper', '1986-06-16','Galatasaray');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(2, 'Ismail', 'Cipe', 'Turkey', 'Goalkeeper', '1995-01-05','Galatasaray');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(3, 'Maicon', 'Pereira Roque', 'Brazil', 'Centre-Back', '1988-09-14','Galatasaray');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(4, 'Serdar', 'Aziz', 'Turkey', 'Centre-Back', '1990-10-23','Galatasaray');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(5, 'Ahmet', 'Calik', 'Turkey', 'Centre-Back', '1994-02-26','Galatasaray');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(6, 'Ozan', 'Kabak', 'Turkey', 'Centre-Back', '2000-03-25','Galatasaray');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(7, 'Yuto', 'Nagatomo', 'Japan', 'Left-Back', '1986-09-12','Galatasaray');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(8, 'Omer', 'Bayram', 'Turkey', 'Left-Back', '1991-07-27','Galatasaray');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(9, 'Mariano', 'Ferreira Filho', 'Brazil', 'Right-Back', '1986-06-23','Galatasaray');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(10, 'Martin', 'Linnes', 'Norway', 'Right-Back', '1991-09-20','Galatasaray');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(11, 'Tarik', 'Camdal', 'Norway', 'Right-Back', '1991-03-24','Galatasaray');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(12, 'Fernando', 'Francisco Reges', 'Turkey', 'Defensive Midfield', '1997-07-25','Galatasaray');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(13, 'Ryan', 'Donk', 'Brazil', 'Defensive Midfield', '1986-03-30','Galatasaray');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(14, 'Celil', 'Yuksel', 'Turkey', 'Defensive Midfield', '1998-01-01','Galatasaray');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(15, 'Badou', 'Ndiaye', 'Senegal', 'Central Midfield', '1990-10-27','Galatasaray');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(16, 'Selcuk', 'Inan', 'Turkey', 'Central Midfield', '1985-02-10','Galatasaray');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(17, 'Younes', 'Belhanda', 'Morocco', 'Attacking Midfield', '1990-02-25','Galatasaray');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(18, 'Emre', 'Akbaba', 'Turkey', 'Attacking Midfield', '1992-10-04','Galatasaray');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(19, 'Henry', 'Onyekuru', 'Nigeria', 'Left Winger', '1997-06-05','Galatasaray');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(20, 'Garry', 'Rodrigues', 'Cape Verde', 'Left Winger', '1990-11-27','Galatasaray');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(21, 'Sofiane', 'Feghouli', 'Algeria', 'Right Winger', '1989-12-26','Galatasaray');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(22, 'Sinan', 'Gumus', 'Germany', 'Right Winger', '1994-01-05','Galatasaray');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(23, 'Yunus', 'Akgun', 'Turkey', 'Right Winger', '2000-07-07','Galatasaray');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(24, 'Eren', 'Derdiyok', 'Switzerland', 'Centre-Forward', '1988-06-12','Galatasaray');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(25, 'Mugdat', 'Celik', 'Turkey', 'Centre-Forward', '1990-01-03','Galatasaray');


INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(26, 'Loris', 'Karius', 'Germany', 'Goalkeeper', '1993-01-22','Besiktas');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(27, 'Utku', 'Yuvakuran', 'Turkey', 'Goalkeeper', '1997-11-02','Besiktas');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(28, 'Tolga', 'Zengin', 'Turkey', 'Goalkeeper', '1983-10-10','Besiktas');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(29, 'Ersin', 'Destanoglu', 'Turkey', 'Goalkeeper', '2001-01-01','Besiktas');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(30, 'Domagoj', 'Vida', 'Croatia', 'Centre-Back', '1989-04-29','Besiktas');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(31, 'Pepe', 'Laveran Lima Ferreira', 'Portugal', 'Centre-Back', '1983-02-26','Besiktas');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(32, 'Enzo', 'Roco', 'Chile', 'Centre-Back', '1992-08-16','Besiktas');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(33, 'Fatih', 'Aksoy', 'Turkey', 'Centre-Back', '1997-10-06','Besiktas');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(34, 'Alpay', 'Celebi', 'Turkey', 'Centre-Back', '1999-04-04','Besiktas');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(35, 'Caner', 'Erkin', 'Turkey', 'Left-Back', '1988-10-04','Besiktas');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(36, 'Adriano', 'Correia Claro', 'Brazil', 'Left-Back', '1984-10-26','Besiktas');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(37, 'Gokhan', 'Gonul', 'Turkey', 'Right-Back', '1985-01-04','Besiktas');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(38, 'Gary', 'Medel', 'Chile', 'Defensive Midfield', '1987-08-03','Besiktas');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(39, 'Necip', 'Uysal', 'Turkey', 'Defensive Midfield', '1991-01-24','Besiktas');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(40, 'Atiba', 'Hutchinson', 'Canada', 'Defensive Midfield', '1983-02-08','Besiktas');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(41, 'Dorukhan', 'Tokoz', 'Turkey', 'Defensive Midfield', '1996-05-21','Besiktas');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(42, 'Oguzhan', 'Ozyakup', 'Turkey', 'Central Midfield', '1992-09-23','Besiktas');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(43, 'Tolgay', 'Arslan', 'Germany', 'Central Midfield', '1990-08-16','Besiktas');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(44, 'Mertcan', 'Acikgoz', 'Turkey', 'Right Midfield', '1999-11-18','Besiktas');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(45, 'Adem', 'Ljajic', 'Serbia', 'Attacking Midfield', '1991-09-29','Besiktas');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(46, 'Ryan', 'Babel', 'Netherlands', 'Left Winger', '1986-12-19','Besiktas');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(47, 'Jeremain', 'Lens', 'Netherlands', 'Right Winger', '1987-11-24','Besiktas');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(48, 'Gokhan', 'Tore', 'Turkey', 'Right Winger', '1992-01-20','Besiktas');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(49, 'Ricardo', 'Quaresma', 'Portugal', 'Right Winger', '1983-09-26','Besiktas');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(50, 'Cyle', 'Larin', 'Canada', 'Centre-Forward', '1995-04-17','Besiktas');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(51, 'Vagner', 'Love', 'Brazil', 'Centre-Forward', '1984-06-11','Besiktas');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(52, 'Mustafa', 'Pektemek', 'Turkey', 'Centre-Forward', '1988-08-11','Besiktas');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(53, 'Guven', 'Yalcin', 'Turkey', 'Centre-Forward', '1999-01-18','Besiktas');

INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(54, 'Berke', 'Ozer', 'Turkey', 'Goalkeeper', '2000-05-25','Fenerbahce');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(55, 'Harun', 'Tekin', 'Turkey', 'Goalkeeper', '1989-06-17','Fenerbahce');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(56, 'Volkan', 'Demirel', 'Turkey', 'Goalkeeper', '1981-10-27','Fenerbahce');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(57, 'Carlos', 'Kameni', 'Cameroon', 'Goalkeeper', '1984-02-18','Fenerbahce');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(58, 'Erten', 'Ersu', 'Turkey', 'Goalkeeper', '1994-05-21','Fenerbahce');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(59, 'Diego', 'Reyes', 'Mexico', 'Centre-Back', '1992-09-19','Fenerbahce');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(60, 'Roman', 'Neustadter', 'Russia', 'Centre-Back', '1988-02-18','Fenerbahce');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(61, 'Martin', 'Skrtel', 'Slovakia', 'Centre-Back', '1984-12-15','Fenerbahce');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(62, 'Yigithan', 'Guveli', 'Turkey', 'Centre-Back', '1998-05-16','Fenerbahce');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(63, 'Hasan Ali', 'Kaldýrým', 'Turkey', 'Left-Back', '1989-12-09','Fenerbahce');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(64, 'Ismail', 'Koybasi', 'Turkey', 'Left-Back', '1989-07-10','Fenerbahce');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(65, 'Mauricio', 'Isla', 'Chile', 'Right-Back', '1988-06-12','Fenerbahce');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(66, 'Sener', 'Ozbayrakli', 'Turkey', 'Right-Back', '1990-01-23','Fenerbahce');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(67, 'Jailson', 'Marques Siqueira', 'Brazil', 'Defensive Midfield', '1995-09-07','Fenerbahce');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(68, 'Mehmet', 'Topal', 'Turkey', 'Defensive Midfield', '1986-03-03','Fenerbahce');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(69, 'Oguz Kagan', 'Guctekin', 'Turkey', 'Defensive Midfield', '1999-04-06','Fenerbahce');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(70, 'Tolga', 'Cigerci', 'Turkey', 'Central Midfield', '1992-03-23','Fenerbahce');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(71, 'Eljif', 'Elmas', 'Macedonia', 'Central Midfield', '1999-09-24','Fenerbahce');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(72, 'Baris', 'Alici', 'Turkey', 'Right Midfield', '1997-01-24','Fenerbahce');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(73, 'Nabil', 'Dirar', 'Morocco', 'Right Midfield', '1986-02-25','Fenerbahce');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(74, 'Yassine', 'Benzia', 'Algeria', 'Attacking Midfield', '1994-09-08','Fenerbahce');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(75, 'Alper', 'Potuk', 'Turkey', 'Attacking Midfield', '1991-04-08','Fenerbahce');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(76, 'Mehmet', 'Ekici', 'Turkey', 'Attacking Midfield', '1990-03-25','Fenerbahce');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(77, 'Ferdi', 'Kadioglu', 'Netherlands', 'Attacking Midfield', '1999-10-07','Fenerbahce');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(78, 'Mathieu', 'Valbuena', 'France', 'Left Winger', '1984-09-28','Fenerbahce');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(79, 'Aatif', 'Chahechouhe', 'Morocco', 'Left Winger', '1986-07-02','Fenerbahce');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(80, 'Andre', 'Ayew', 'Ghana', 'Right Winger', '1989-12-17','Fenerbahce');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(81, 'Islam', 'Slimani', 'Algeria', 'Centre-Forward', '1988-01-18','Fenerbahce');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(82, 'Michael', 'Frey', 'Switzerland', 'Centre-Forward', '1994-07-19','Fenerbahce');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(83, 'Roberto', 'Soldado', 'Spain', 'Centre-Forward', '1985-05-27','Fenerbahce');


INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(84, 'Volkan', 'Babacan', 'Turkey', 'Goalkeeper', '1988-08-11','Basaksehir');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(85, 'Mert', 'Gunok', 'Turkey', 'Goalkeeper', '1989-03-01','Basaksehir');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(86, 'Faruk', 'Cakýr', 'Turkey', 'Goalkeeper', '1995-02-08','Basaksehir');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(87, 'Alexandru', 'Epureanu', 'Moldova', 'Centre-Back', '1986-09-27','Basaksehir');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(88, 'Joseph', 'Attamah', 'Ghana', 'Centre-Back', '1994-05-22','Basaksehir');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(89, 'Manuel da', 'Costa', 'Morocco', 'Centre-Back', '1986-05-06','Basaksehir');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(90, 'Yusuf', 'Avcilar', 'Turkey', 'Centre-Back', '1999-02-21','Basaksehir');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(91, 'Gael', 'Clichy', 'France', 'Left-Back', '1985-07-26','Basaksehir');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(92, 'Karim', 'Hafez', 'Egypt', 'Left-Back', '1996-03-12','Basaksehir');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(93, 'Alparslan', 'Erdem', 'Turkey', 'Left-Back', '1988-12-11','Basaksehir');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(94, 'Junior', 'Caicara', 'Brazil', 'Right-Back', '1989-04-27','Basaksehir');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(95, 'Ugur', 'Ucar', 'Turkey', 'Right-Back', '1987-04-05','Basaksehir');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(96, 'Mahmut', 'Tekdemir', 'Turkey', 'Defensive Midfield', '1988-01-20','Basaksehir');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(97, 'Gokhan', 'Inler', 'Switzerland', 'Defensive Midfield', '1984-06-27','Basaksehir');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(98, 'Irfan Can', 'Kahveci', 'Turkey', 'Central Midfield', '1995-07-15','Basaksehir');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(99, 'Milos', 'Jojic', 'Serbia', 'Central Midfield', '1992-03-19','Basaksehir');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(100, 'Soner', 'Aydogdu', 'Turkey', 'Central Midfield', '1991-01-05','Basaksehir');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(101, 'Emre', 'Belozoglu', 'Turkey', 'Central Midfield', '1980-09-07','Basaksehir');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(102, 'Edin', 'Visca', 'Bosnia-Herzegovina', 'Right Midfield', '1990-02-17','Basaksehir');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(103, 'Marcio', 'Mossoro', 'Brazil', 'Attacking Midfield', '1983-07-04','Basaksehir');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(104, 'Arda', 'Turan', 'Turkey', 'Left Winger', '1987-01-30','Basaksehir');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(105, 'Eljero', 'Elia', 'Netherlands', 'Left Winger', '1987-02-13','Basaksehir');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(106, 'Kerim', 'Frei', 'Turkey', 'Left Winger', '1993-11-19','Basaksehir');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(107, 'Stefano', 'Napoleoni', 'Italy', 'Second Striker', '1986-06-26','Basaksehir');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(108, 'Riad', 'Bajic', 'Bosnia-Herzegovina', 'Centre-Forward', '1994-05-06','Basaksehir');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(109, 'Emmanuel', 'Adebayor', 'Togo', 'Centre-Forward', '1984-02-26','Basaksehir');

INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(110, 'Onur', 'Kivrak', 'Turkey', 'Goalkeeper', '1988-01-01','Trabzonspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(111, 'Esteban', 'Alvarado Brown', 'Costa Rica', 'Goalkeeper', '1989-04-28','Trabzonspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(112, 'Ugurcan', 'Cakir', 'Turkey', 'Goalkeeper', '1996-04-05','Trabzonspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(113, 'Arda', 'Akbulut', 'Turkey', 'Goalkeeper', '2001-01-01','Trabzonspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(114, 'Majid', 'Hosseini', 'Iran', 'Centre-Back', '1996-06-20','Trabzonspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(115, 'Zargo', 'Toure', 'Senegal', 'Centre-Back', '1989-11-11','Trabzonspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(116, 'Mustafa', 'Akbas', 'Turkey', 'Centre-Back', '1990-05-30','Trabzonspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(117, 'Huseyin', 'Turkmen', 'Turkey', 'Centre-Back', '1998-01-01','Trabzonspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(118, 'Filip', 'Novak', 'Czech Rebuplic', 'Left-Back', '1990-06-26','Trabzonspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(119, 'Luis', 'Ibanez', 'Argentina', 'Left-Back', '1988-07-15','Trabzonspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(120, 'Joao', 'Pereira', 'Portugal', 'Right-Back', '1984-02-25','Trabzonspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(121, 'Zeki', 'Yavru', 'Turkey', 'Right-Back', '1991-09-05','Trabzonspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(122, 'Kamil', 'Corekci', 'Turkey', 'Right-Back', '1992-02-01','Trabzonspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(123, 'Semih', 'Karadeniz', 'Turkey', 'Right-Back', '1996-07-02','Trabzonspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(124, 'Ogenyi', 'Onazi', 'Nigeria', 'Defensive Midfield', '1992-12-25','Trabzonspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(125, 'Batuhan', 'Artaraslan', 'Turkey', 'Defensive Midfield', '1994-05-25','Trabzonspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(126, 'Jurac', 'Kucka', 'Slovakia', 'Central Midfield', '1987-02-26','Trabzonspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(127, 'Jose', 'Sosa', 'Argentina', 'Central Midfield', '1985-06-19','Trabzonspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(128, 'Murat Cem', 'Akpýnar', 'Turkey', 'Central Midfield', '1999-01-24','Trabzonspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(129, 'Abdulkadir', 'Omur', 'Turkey', 'Right Midfield', '1999-06-25','Trabzonspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(130, 'Yusuf', 'Yazici', 'Turkey', 'Attacking Midfield', '1997-01-29','Trabzonspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(131, 'Abdulkadir', 'Parmak', 'Turkey', 'Attacking Midfield', '1994-12-28','Trabzonspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(132, 'Anthony', 'Nwakaeme', 'Nigeria', 'Left Winger', '1989-03-21','Trabzonspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(133, 'Vahid', 'Amiri', 'Iran', 'Left Winger', '1988-04-02','Trabzonspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(134, 'Olcay', 'Sahan', 'Turkey', 'Right Winger', '1987-05-26','Trabzonspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(135, 'Burak', 'Yilmaz', 'Turkey', 'Centre-Forward', '1985-06-15','Trabzonspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(136, 'Hugo', 'Rodellaga', 'Colombia', 'Centre-Forward', '1985-07-27','Trabzonspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(137, 'Caleb', 'Ekuban', 'Ghana', 'Centre-Forward', '1994-03-23','Trabzonspor');

INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(138, 'Okan', 'Kocuk', 'Turkey', 'Goalkeeper', '1995-07-27','Bursaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(139, 'Muhammed', 'Sengezer', 'Turkey', 'Goalkeeper', '1997-01-05','Bursaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(140, 'Ataberk', 'Dadakdeniz', 'Turkey', 'Goalkeeper', '1999-08-05','Bursaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(141, 'Ertugrul', 'Ersoy', 'Turkey', 'Centre-Back', '1997-02-13','Bursaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(142, 'Santiago', 'Vergini', 'Argentina', 'Centre-Back', '1988-08-03','Bursaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(143, 'Aurelian', 'Chedjou', 'Cameroon', 'Centre-Back', '1985-01-20','Bursaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(144, 'Furkan', 'Unver', 'Turkey', 'Centre-Back', '1997-01-30','Bursaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(145, 'Umut', 'Meras', 'Turkey', 'Left-Back', '1995-12-20','Bursaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(146, 'Onur', 'Atasayar', 'Turkey', 'Left-Back', '1995-01-01','Bursaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(147, 'Iasmin', 'Latovlevici', 'Romenia', 'Left-Back', '1986-05-11','Bursaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(148, 'Baris', 'Yardimci', 'Turkey', 'Right-Back', '1992-08-14','Bursaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(149, 'Boban', 'Jovic', 'Slovenia', 'Right-Back', '1991-07-25','Bursaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(150, 'Burak', 'Kapacak', 'Turkey', 'Right-Back', '1999-12-08','Bursaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(151, 'Muhammed Emin', 'Sarikaya', 'Turkey', 'Right-Back', '2002-01-03','Bursaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(152, 'Abdullahi', 'Shehu', 'Nigeria', 'Defensive Midfield', '1993-03-12','Bursaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(153, 'Jani', 'Atanasov', 'Macedonia', 'Defensive Midfield', '1999-10-31','Bursaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(154, 'Paschal', 'Okoli', 'Nigeria', 'Defensive Midfield', '1997-10-17','Bursaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(155, 'Aytac', 'Kara', 'Turkey', 'Central Midfield', '1993-03-23','Bursaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(156, 'Stephane', 'Badji', 'Senegal', 'Central Midfield', '1990-01-18','Bursaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(157, 'Ramazan', 'Keskin', 'Turkey', 'Central Midfield', '1999-01-04','Bursaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(158, 'Yusuf', 'Erdogan', 'Turkey', 'Left Midfield', '1992-08-07','Bursaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(159, 'Henri', 'Saivet', 'Senegal', 'Attacking Midfield', '1990-10-26','Bursaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(160, 'Furkan', 'Soyalp', 'Turkey', 'Attacking Midfield', '1995-06-12','Bursaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(161, 'Jires', 'Kembo-Ekoko', 'France', 'Left Winger', '1988-01-08','Bursaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(162, 'Joshua', 'John', 'Aruba', 'Left Winger', '1988-10-01','Bursaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(163, 'Cagatay', 'Yilmaz', 'Turkey', 'Left Winger', '2000-01-01','Bursaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(164, 'Allano', 'Lima', 'Brazil', 'Right Winger', '1995-04-24','Bursaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(165, 'Tunay', 'Torun', 'Turkey', 'Right Winger', '1990-04-21','Bursaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(166, 'Diafra', 'Sakho', 'Senegal', 'Centre-Forward', '1989-12-24','Bursaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(167, 'Bogdan', 'Stancu', 'Romania', 'Centre-Forward', '1987-06-28','Bursaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(168, 'Umut', 'Nayir', 'Turkey', 'Centre-Forward', '1993-06-28','Bursaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(169, 'Ali', 'Akman', 'Turkey', 'Centre-Forward', '2002-04-18','Bursaspor');

INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(170, 'Beto', '', 'Portugal', 'Goalkeeper', '1982-05-01','Goztepe');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(171, 'Goktug', 'Bakirbas', 'Turkey', 'Goalkeeper', '1996-06-01','Goztepe');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(172, 'Eren', 'Bilen', 'Turkey', 'Goalkeeper', '2000-12-02','Goztepe');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(173, 'Arda', 'Ozcimen', 'Turkey', 'Goalkeeper', '2002-01-08','Goztepe');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(174, 'Titi', 'Chagas Tarouco', 'Brazil', 'Centre-Back', '1988-03-12','Goztepe');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(175, 'Wallace', 'Reis', 'Brazil', 'Centre-Back', '1987-12-26','Goztepe');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(176, 'Kadu', 'Martins de Aroujo', 'Brazil', 'Centre-Back', '1986-07-20','Goztepe');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(177, 'Fausto', 'Grillo', 'Argentina', 'Centre-Back', '1993-02-20','Goztepe');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(178, 'Hakan', 'Cinemre', 'Turkey', 'Centre-Back', '1994-12-14','Goztepe');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(179, 'Adama', 'Traore', 'Cote Dlvoire', 'Left-Back', '1990-02-03','Goztepe');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(180, 'Berkan', 'Emir', 'Turkey', 'Left-Back', '1988-02-06','Goztepe');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(181, 'Erol Hakan', 'Sepil', 'Turkey', 'Left-Back', '1999-03-15','Goztepe');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(182, 'Lamine', 'Gassama', 'Senegal', 'Right-Back', '1989-10-20','Goztepe');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(183, 'Mahmut', 'Nigiz', 'Turkey', 'Right-Back', '1998-04-02','Goztepe');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(184, 'Andre', 'Poko', 'Gabon', 'Defensive Midfield', '1993-01-01','Goztepe');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(185, 'Alpaslan', 'Ozturk', 'Turkey', 'Defensive Midfield', '1993-07-16','Goztepe');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(186, 'Andre', 'Castro', 'Portugal', 'Central Midfield', '1988-04-02','Goztepe');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(187, 'Celso', 'Borges', 'Costa Rica', 'Central Midfield', '1988-05-27','Goztepe');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(188, 'Kerem Atakan', 'Kesgin', 'Turkey', 'Central Midfield', '2000-10-05','Goztepe');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(189, 'Halil', 'Akbunar', 'Turkey', 'Right Midfield', '1993-11-09','Goztepe');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(190, 'Tayfur', 'Bingol', 'Turkey', 'Right Midfield', '1993-01-11','Goztepe');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(191, 'Yalcin', 'Kayan', 'Turkey', 'Left Midfield', '1999-01-30','Goztepe');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(192, 'Oscar', 'Scarione', 'Argetina', 'Attacking Midfield', '1985-07-14','Goztepe');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(193, 'Axel', 'Ngando', 'France', 'Attacking Midfield', '1993-07-13','Goztepe');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(194, 'Serkan', 'Bakan', 'Turkey', 'Attacking Midfield', '2001-01-01','Goztepe');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(195, 'Yasin', 'Oztekin', 'Turkey', 'Left Winger', '1987-03-19','Goztepe');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(196, 'Yoan', 'Gouffran', 'France', 'Left Winger', '1986-05-25','Goztepe');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(197, 'Samed', 'Kaya', 'Turkey', 'Left Winger', '1995-09-10','Goztepe');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(198, 'Cameron', 'Jerome', 'England', 'Centre-Forward', '1986-08-14','Goztepe');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(199, 'Nabil', 'Ghilas', 'Algeria', 'Centre-Forward', '1990-04-20','Goztepe');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(200, 'Sokol', 'Cikalleshi', 'Albenia', 'Centre-Forward', '1990-07-27','Goztepe');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(201, 'Deniz', 'Kadah', 'Turkey', 'Centre-Forward', '1986-03-02','Goztepe');

INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(202, 'Serkan', 'Kirintili', 'Turkey', 'Goalkeeper', '1985-02-15','Konyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(203, 'Ertugrul', 'Taskiran', 'Turkey', 'Goalkeeper', '1989-11-05','Konyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(204, 'Mucahit', 'Atalay', 'Turkey', 'Goalkeeper', '1991-10-26','Konyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(205, 'Ahmet', 'Colak', 'Turkey', 'Goalkeeper', '2001-05-23','Konyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(206, 'Fallou', 'Diagne', 'Senegal', 'Centre-Back', '1989-08-14','Konyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(207, 'Petar', 'Filipovic', 'Croatia', 'Centre-Back', '1990-09-14','Konyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(208, 'Ugur', 'Demirok', 'Turkey', 'Centre-Back', '1988-07-08','Konyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(209, 'Selim', 'Ay', 'Turkey', 'Centre-Back', '1991-08-31','Konyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(210, 'Ali', 'Turan', 'Turkey', 'Centre-Back', '1983-07-06','Konyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(211, 'Ferhat', 'Oztorun', 'Turkey', 'Left-Back', '1987-05-08','Konyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(212, 'Nejc', 'Skubic', 'Slovenia', 'Right-Back', '1989-06-13','Konyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(213, 'Evgen', 'Opanasenko', 'Ukraine', 'Right-Back', '1990-08-25','Konyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(214, 'Amir', 'Hadziahmetovic', 'Bosna-Herzegovina', 'Defensive Midfield', '1997-03-08','Konyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(215, 'Marko', 'Jevtovic', 'Serbia', 'Defensive Midfield', '1993-07-24','Konyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(216, 'Jens', 'Jonsson', 'Denmark', 'Defensive Midfield', '1993-01-10','Konyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(217, 'Wilfred', 'Moke', 'DR Congo', 'Defensive Midfield', '1988-02-12','Konyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(218, 'Volkan', 'Findikli', 'Turkey', 'Defensive Midfield', '1990-10-13','Konyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(219, 'Vedat', 'Bora', 'Turkey', 'Right Midfield', '1995-01-27','Konyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(220, 'Paolo', 'Hurtado', 'Peru', 'Attacking Midfield', '1990-07-27','Konyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(221, 'Deni', 'Milosevic', 'Bosna-Herzegovina', 'Attacking Midfield', '1995-03-09','Konyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(222, 'Musa', 'Araz', 'Switzerland', 'Attacking Midfield', '1994-01-17','Konyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(223, 'Moryke', 'Fofana', 'Cote Dlvoire', 'Left Winger', '1991-10-23','Konyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(224, 'Omer Ali', 'Sahiner', 'Turkey', 'Right Winger', '1992-02-01','Konyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(225, 'Abdou', 'Traore', 'Burkina Faso', 'Second Striker', '1988-12-28','Konyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(226, 'Adis', 'Jahovic', 'Macedonia', 'Centre-Forward', '1987-03-18','Konyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(227, 'Mustapha', 'Yatabare', 'Mali', 'Centre-Forward', '1986-01-26','Konyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(228, 'Mucahit Can', 'Akcay', 'Turkey', 'Centre-Forward', '1998-04-13','Konyaspor');


INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(229, 'Haydar', 'Yilmaz', 'Turkey', 'Goalkeeper', '1984-01-19','Alanyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(230, 'Ufuk', 'Ceylan', 'Turkey', 'Goalkeeper', '1986-06-23','Alanyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(231, 'Ismail', 'Unal', 'Turkey', 'Goalkeeper', '1997-12-02','Alanyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(232, 'Georgios', 'Tzavellas', 'Greece', 'Centre-Back', '1987-11-26','Alanyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(233, 'Welinton', 'Souza Silva', 'Brazil', 'Centre-Back', '1989-04-10','Alanyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(234, 'Merih', 'Demiral', 'Turkey', 'Centre-Back', '1998-03-05','Alanyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(235, 'Baris', 'Basdas', 'Turkey', 'Centre-Back', '1990-01-17','Alanyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(236, 'Fabrice', 'NSakala', 'DR Congo', 'Left-Back', '1990-07-21','Alanyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(237, 'Kaan', 'Kanak', 'Turkey', 'Left-Back', '1990-10-06','Alanyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(238, 'Baiano', 'Sousa Carneiro', 'Brazil', 'Right-Back', '1987-02-23','Alanyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(239, 'Cenk Ahmet', 'Alkilic', 'Turkey', 'Right-Back', '1987-12-09','Alanyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(240, 'Isaac', 'Sackey', 'Ghana', 'Defensive Midfield', '1994-04-04','Alanyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(241, 'Filipe', 'Augusto', 'Brazil', 'Defensive Midfield', '1993-08-12','Alanyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(242, 'Giannis', 'Maniatis', 'Greece', 'Defensive Midfield', '1986-10-12','Alanyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(243, 'Ceyhun', 'Gulselam', 'Turkey', 'Defensive Midfield', '1987-12-25','Alanyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(244, 'Taha', 'Yalciner', 'Turkey', 'Central Midfield', '1987-01-12','Alanyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(245, 'Efecan', 'Karaca', 'Turkey', 'Attacking Midfield', '1989-11-16','Alanyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(246, 'Hasan', 'Ayaroglu', 'Turkey', 'Attacking Midfield', '1995-03-22','Alanyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(247, 'Junior', 'Fernandes', 'Chile', 'Left Winger', '1988-04-10','Alanyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(248, 'Djalma', 'Campos', 'Angola', 'Right Winger', '1987-05-30','Alanyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(249, 'Lucas', 'Villafanez', 'Argentina', 'Right Winger', '1991-10-04','Alanyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(250, 'Papiss Demba', 'Cisse', 'Senegal', 'Centre-Forward', '1985-06-03','Alanyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(251, 'Bobo', 'da Silva', 'Brazil', 'Centre-Forward', '1985-01-09','Alanyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(252, 'Mbilla', 'Etame', 'Cameroon', 'Centre-Forward', '1988-07-22','Alanyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(253, 'Glynor', 'Plet', 'Netherlands', 'Centre-Forward', '1987-01-30','Alanyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(254, 'Yusuf', 'Coban', 'Germany', 'Centre-Forward', '1996-10-14','Alanyaspor');

INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(255, 'Silviu', 'Lung Jr.', 'Romania', 'Goalkeeper', '1989-06-04','Kayserispor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(256, 'Muammer', 'Yildirim', 'Turkey', 'Goalkeeper', '1990-09-14','Kayserispor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(257, 'Vedat', 'Karakus', 'Turkey', 'Goalkeeper', '1998-02-28','Kayserispor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(258, 'Jean-Armel', 'Kana-Biyik', 'Cameroon', 'Centre-Back', '1989-07-03','Kayserispor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(259, 'Levent', 'Gulen', 'Switzerland', 'Centre-Back', '1994-02-24','Kayserispor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(260, 'Cristian', 'Sapunaru', 'Romania', 'Centre-Back', '1984-04-05','Kayserispor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(261, 'Oleksandr', 'Kucher', 'Ukraine', 'Centre-Back', '1982-10-22','Kayserispor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(262, 'Adem', 'Dogan', 'Turkey', 'Centre-Back', '2001-10-05','Kayserispor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(263, 'Sakib', 'Aytac', 'Turkey', 'Left-Back', '1991-11-24','Kayserispor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(264, 'Atila', 'Turan', 'Turkey', 'Left-Back', '1992-04-10','Kayserispor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(265, 'Oguzhan', 'Berber', 'Turkey', 'Left-Back', '1992-04-10','Kayserispor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(266, 'Tiago', 'Lopes', 'Portugal', 'Right-Back', '1989-01-04','Kayserispor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(267, 'Rajko', 'Rotman', 'Slovenia', 'Defensive Midfield', '1989-03-19','Kayserispor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(268, 'Samil', 'Cinaz', 'Turkey', 'Defensive Midfield', '1986-03-08','Kayserispor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(269, 'Bernard', 'Mensah', 'Ghana', 'Central Midfield', '1994-10-17','Kayserispor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(270, 'Hasan Huseyin', 'Acar', 'Turkey', 'Central Midfield', '1994-12-16','Kayserispor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(271, 'Hakan', 'Citak', 'Turkey', 'Central Midfield', '1999-03-02','Kayserispor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(272, 'Mert', 'Ozyildirim', 'Turkey', 'Central Midfield', '1995-02-28','Kayserispor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(273, 'Deniz', 'Turuc', 'Turkey', 'Right Midfield', '1993-01-29','Kayserispor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(274, 'Tjaronn', 'Chery', 'Netherlands', 'Attacking Midfield', '1988-06-04','Kayserispor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(275, 'Bilal', 'Basacikoglu', 'Turkey', 'Left Winger', '1995-03-26','Kayserispor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(276, 'Silvestre', 'Varela', 'Portugal', 'Left Winger', '1985-02-02','Kayserispor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(277, 'Artem', 'Kravets', 'Ukraine', 'Centre-Forward', '1989-06-03','Kayserispor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(278, 'Asamoah', 'Gyan', 'Ghana', 'Centre-Forward', '1985-10-22','Kayserispor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(279, 'Umut', 'Bulut', 'Turkey', 'Centre-Forward', '1983-03-15','Kayserispor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(280, 'Kazim', 'Celik', 'Turkey', 'Centre-Forward', '2000-01-06','Kayserispor');

INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(281, 'Ramazan', 'Kose', 'Turkey', 'Goalkeeper', '1988-05-12','Kasýmpasa');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(282, 'Eray', 'Birnican', 'Turkey', 'Goalkeeper', '1988-07-20','Kasýmpasa');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(283, 'Murat Can', 'Yildiz', 'Turkey', 'Goalkeeper', '1998-08-03','Kasýmpasa');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(284, 'Mehmet Enes', 'Sari', 'Turkey', 'Goalkeeper', '2000-06-08','Kasýmpasa');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(285, 'Josue', 'Sa', 'Portugal', 'Centre-Back', '1992-06-17','Kasýmpasa');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(286, 'Syam Ben', 'Youssef', 'Tunisia', 'Centre-Back', '1989-03-31','Kasýmpasa');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(287, 'Veysel', 'Sari', 'Turkey', 'Centre-Back', '1988-07-25','Kasýmpasa');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(288, 'Ugurcan', 'Yazgili', 'Turkey', 'Centre-Back', '1999-04-09','Kasýmpasa');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(289, 'Yilmaz', 'Daler', 'Turkey', 'Centre-Back', '1999-05-30','Kasýmpasa');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(290, 'Olivier', 'Veigneau', 'France', 'Left-Back', '1985-07-16','Kasýmpasa');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(291, 'Strahill', 'Popov', 'Bulgaria', 'Right-Back', '1990-08-31','Kasýmpasa');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(292, 'Onur', 'Ural', 'Turkey', 'Right-Back', '1997-02-22','Kasýmpasa');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(293, 'Loret', 'Sadiku', 'Albenia', 'Defensive Midfield', '1991-07-28','Kasýmpasa');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(294, 'Tarkan', 'Serbest', 'Turkey', 'Central Midfield', '1994-05-02','Kasýmpasa');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(295, 'David', 'Pavelka', 'Czech Republic', 'Central Midfield', '1991-05-18','Kasýmpasa');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(296, 'Abdul', 'Khaili', 'Sweden', 'Central Midfield', '1992-07-07','Kasýmpasa');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(297, 'Hakan', 'Demir', 'Turkey', 'Central Midfield', '1998-05-08','Kasýmpasa');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(298, 'Ozgur', 'Cek', 'Turkey', 'Left Midfield', '1991-01-03','Kasýmpasa');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(299, 'Hasan', 'Bilal', 'Turkey', 'Left Midfield', '1998-03-12','Kasýmpasa');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(300, 'Ilhan', 'Depe', 'Turkey', 'Attacking Midfield', '1992-09-10','Kasýmpasa');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(301, 'Trezeguet', '', 'Egypt', 'Left Winger', '1994-10-01','Kasýmpasa');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(302, 'Samuel', 'Eduok', 'Nigeria', 'Right Winger', '1994-01-31','Kasýmpasa');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(303, 'Mbaye', 'Diagne', 'Senegal', 'Centre-Forward', '1991-10-28','Kasýmpasa');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(304, 'Bengali-Fode', 'Koita', 'Guinea', 'Centre-Forward', '1990-10-21','Kasýmpasa');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(305, 'Mustafa Ethem', 'Erboga', 'Turkey', 'Centre-Forward', '1999-01-11','Kasýmpasa');


INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(306, 'Ali Sasal', 'Vural', 'Turkey', 'Goalkeeper', '1990-07-10','Sivasspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(307, 'Tolgahan', 'Acar', 'Turkey', 'Goalkeeper', '1986-06-04','Sivasspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(308, 'Sergio', 'Rochet', 'Uruguay', 'Goalkeeper', '1993-03-23','Sivasspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(309, 'David', 'Braz', 'Brazil', 'Centre-Back', '1987-05-21','Sivasspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(310, 'Mattias', 'Bjarsmyr', 'Sweden', 'Centre-Back', '1986-01-03','Sivasspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(311, 'Ugur', 'Ciftci', 'Turkey', 'Left-Back', '1992-05-04','Sivasspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(312, 'Ziya', 'Erdal', 'Turkey', 'Left-Back', '1988-01-05','Sivasspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(313, 'Douglas', 'dos Santos', 'Brazil', 'Right-Back', '1990-08-06','Sivasspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(314, 'Paul', 'Papp', 'Romania', 'Right-Back', '1989-11-11','Sivasspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(315, 'Sergiy', 'Rybalka', 'Ukraine', 'Defensive Midfield', '1990-04-01','Sivasspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(316, 'Carl', 'Medjani', 'Algeria', 'Defensive Midfield', '1985-05-15','Sivasspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(317, 'Delvin', 'NDinga', 'Congo', 'Defensive Midfield', '1988-03-14','Sivasspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(318, 'Hakan', 'Arslan', 'Turkey', 'Central Midfield', '1988-06-18','Sivasspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(319, 'Emre', 'Kilinc', 'Turkey', 'Left Midfield', '1994-08-23','Sivasspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(320, 'Erdogan', 'Yesilyurt', 'Turkey', 'Left Midfield', '1993-11-06','Sivasspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(321, 'Mert Hakan', 'Yandas', 'Turkey', 'Attacking Midfield', '1994-08-19','Sivasspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(322, 'Cyriac', 'Gohi Bi', 'Cote Dlvoire', 'Left Winger', '1990-08-15','Sivasspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(323, 'Aydin', 'Karabulut', 'Turkey', 'Left Winger', '1988-01-25','Sivasspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(324, 'Gabriel', 'Torje', 'Romania', 'Right Winger', '1989-11-22','Sivasspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(325, 'Ilker', 'Sayan', 'Turkey', 'Right Winger', '1993-05-04','Sivasspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(326, 'Robinho', 'de Souza', 'Brazil', 'Second Striker', '1984-11-25','Sivasspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(327, 'Arouna', 'Kone', 'Cote Dlvoire', 'Centre-Forward', '1983-11-11','Sivasspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(328, 'Muhammet', 'Demir', 'Turkey', 'Centre-Forward', '1992-01-10','Sivasspor');


INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(329, 'Samir', 'Ujkani', 'Kosova', 'Goalkeeper', '1988-07-05','Caykur Rizespor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(330, 'Gokhan', 'Akkan', 'Turkey', 'Goalkeeper', '1995-01-01','Caykur Rizespor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(331, 'Mert', 'Kuleli', 'Turkey', 'Goalkeeper', '1998-06-05','Caykur Rizespor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(332, 'Cihan', 'Topalogu', 'Turkey', 'Goalkeeper', '1992-03-30','Caykur Rizespor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(333, 'Jaroslaw', 'Jach', 'Poland', 'Centre-Back', '1994-02-17','Caykur Rizespor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(334, 'Jakub', 'Brabec', 'Czech Republic', 'Centre-Back', '1992-08-06','Caykur Rizespor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(335, 'Marwane', 'Saadane', 'Morocco', 'Centre-Back', '1992-01-17','Caykur Rizespor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(336, 'Montassar', 'Talbi', 'Tunisia', 'Centre-Back', '1998-05-26','Caykur Rizespor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(337, 'Emir Han', 'Topcu', 'Turkey', 'Centre-Back', '2000-10-11','Caykur Rizespor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(338, 'Armand', 'Traore', 'Senegal', 'Left-Back', '1989-10-08','Caykur Rizespor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(339, 'Mehmet', 'Uslu', 'Turkey', 'Left-Back', '1988-02-25','Caykur Rizespor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(340, 'Dhurgham', 'Ismail', 'Iraq', 'Left-Back', '1994-05-23','Caykur Rizespor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(341, 'Koray', 'Altinel', 'Turkey', 'Right-Back', '1991-10-11','Caykur Rizespor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(342, 'Orhan', 'Ovacikli', 'Turkey', 'Right-Back', '1988-11-23','Caykur Rizespor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(343, 'Matic', 'Fink', 'Slovenia', 'Right-Back', '1990-02-27','Caykur Rizespor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(344, 'Robin', 'Yalcin', 'Germany', 'Defensive Midfield', '1994-01-25','Caykur Rizespor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(345, 'Ali', 'Camdali', 'Turkey', 'Defensive Midfield', '1984-02-22','Caykur Rizespor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(346, 'Musa', 'Cagiran', 'Turkey', 'Central Midfield', '1992-11-17','Caykur Rizespor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(347, 'Davide', 'Petrucci', 'Italy', 'Central Midfield', '1991-10-05','Caykur Rizespor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(348, 'Abdullah', 'Durak', 'Turkey', 'Central Midfield', '1987-04-01','Caykur Rizespor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(349, 'Mustafa', 'Saymak', 'Netherlands', 'Attacking Midfield', '1993-02-11','Caykur Rizespor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(350, 'Fernando', 'Boldrin', 'Brazil', 'Attacking Midfield', '1989-02-23','Caykur Rizespor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(351, 'Cinar', 'Tarhan', 'Turkey', 'Attacking Midfield', '1997-05-20','Caykur Rizespor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(352, 'Aminu', 'Umar', 'Nigeria', 'Left Winger', '1995-03-06','Caykur Rizespor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(353, 'Brain', 'Samudio', 'Paraguay', 'Right Winger', '1995-12-23','Caykur Rizespor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(354, 'Suleyman', 'Koc', 'Germany', 'Right Winger', '1989-06-09','Caykur Rizespor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(355, 'Oleksandr', 'Gladkyy', 'Ukraine', 'Centre-Forward', '1987-08-24','Caykur Rizespor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(356, 'Vedat', 'Muriqi', 'Kosovo', 'Centre-Forward', '1994-04-24','Caykur Rizespor');


INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(357, 'Ruud', 'Boffin', 'Belgium', 'Goalkeeper', '1987-11-05','Antalyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(358, 'Ferhat', 'Kaplan','Turkey', 'Goalkeeper', '1989-01-07','Antalyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(359, 'Ozan', 'Ozenc',  'Turkey', 'Goalkeeper', '1993-01-07','Antalyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(360, 'Ondrej', 'Celustka',  'Czech Republic', 'Centre-Back', '1989-07-18','Antalyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(361, 'Diego', 'Angelo',  'Brazil', 'Centre-Back', '1986-02-12','Antalyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(362, 'Kenan', 'Horic',  'Bosnia-Herzegovina', 'Centre-Back', '1990-09-13','Antalyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(363, 'Bahadir', 'Ozturk',  'Turkey',  'Centre-Back', '1995-10-01','Antalyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(364, 'Aly', 'Cissokho',  'France', 'Left-Back', '1987-09-15','Antalyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(365, 'Musa', 'Nizam',  'Turkey', 'Left-Back', '1990-09-08','Antalyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(366, 'Birkan', 'Oksuz',  'Turkey', 'Left-Back', '1996-03-19','Antalyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(367, 'Nazim', 'Sangare',  'Germany', 'Right-Back', '1994-05-30','Antalyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(368, 'Salih', 'Dursun',  'Turkey', 'Right-Back', '1991-07-12','Antalyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(369, 'William', 'Vainquer',  'France', 'Defensive Midfield',  '1988-11-19','Antalyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(370, 'Chico', 'Grando',  'Brazil', 'Defensive Midfield', '1987-02-02','Antalyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(371, 'Osman', 'Celik',  'Turkey', 'Defensive Midfield', '1991-11-27','Antalyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(372, 'Charles', 'da Silva',  'Brazil', 'Defensive Midfield', '1985-02-14','Antalyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(373, 'Oguz', 'Mataraci',  'Turkey', 'Defensive Midfield', '1994-08-07','Antalyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(374, 'Mustafa', 'Inan',  'Turkey', 'Defensive Midfield', '2000-01-24','Antalyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(375, 'Zeki', 'Yildirim',  'Turkey', 'Central Midfield', '1991-01-15','Antalyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(376, 'Yekta', 'Kurtuluþ',  'Turkey',  'Central Midfield','1985-12-11','Antalyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(377, 'Hakan', 'Ozmert',  'Turkey',  'Central Midfield','1985-07-03','Antalyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(378, 'Olcan', 'Adin',  'Turkey',  'Right Midfield','1985-09-30','Antalyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(379, 'Harun', 'Alpsoy',  'Turkey',  'Right Midfield','1997-03-03','Antalyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(380, 'Dogukan', 'Sinik',  'Turkey',  'Right Midfield','1999-01-21','Antalyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(381, 'Serdar', 'Ozkan',  'Turkey',  'Left Midfield','1987-01-01','Antalyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(382, 'Abdelaziz', 'Barrada',  'Morocco',  'Attacking Midfield','1989-07-19','Antalyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(383, 'Danilo', 'Sousa Campos',  'Belgium', 'Attacking Midfield', '1990-01-13','Antalyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(384, 'Maicon', 'Marques Bitencourt',  'Brazil', 'Left Winger', '1990-02-18','Antalyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(385, 'Jean-Armel', 'Drole',  'Cote Dlvoire', 'Left Winger', '1997-08-18','Antalyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(386, 'Souleymane', 'Doukara',  'Senegal',  'Centre-Forward','1991-09-29','Antalyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(387, 'Mevlut', 'Erdinc',  'Turkey',  'Centre-Forward','1987-02-25','Antalyaspor');


INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(388, 'Ertac', 'Ozbir', 'Turkey', 'Goalkeeper', '1989-10-25','Yeni Malatyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(389, 'Fabien', 'Farnolle', 'Benin', 'Goalkeeper', '1984-09-21','Yeni Malatyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(390, 'Abdulsamed', 'Damlu', 'Turkey', 'Goalkeeper', '1999-07-25','Yeni Malatyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(391, 'Sadik', 'Ciftpinar', 'Turkey', 'Centre-Back', '1993-01-01','Yeni Malatyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(392, 'Arturo', 'Mina', 'Ecuador', 'Centre-Back', '1990-10-08','Yeni Malatyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(393, 'Murat', 'Akca', 'Turkey', 'Centre-Back', '1990-07-13','Yeni Malatyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(394, 'Gokhan', 'Akkan', 'Turkey', 'Centre-Back', '1998-08-30','Yeni Malatyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(395, 'Bugra', 'Cagiran', 'Turkey', 'Left-Back', '1995-01-01','Yeni Malatyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(396, 'Erkan', 'Kas', 'Turkey', 'Left-Back', '1991-09-10','Yeni Malatyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(397, 'Issam', 'Chebake', 'Morocco', 'Right-Back', '1989-10-12','Yeni Malatyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(398, 'Sincere', 'Seth', 'Nigeria', 'Right-Back', '1998-04-28','Yeni Malatyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(399, 'Murat', 'Yildirim', 'Turkey', 'Defensive Midfield', '1987-05-18','Yeni Malatyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(400, 'Ahmed', 'Ildiz', 'Turkey', 'Defensive Midfield', '1996-11-29','Yeni Malatyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(401, 'Guilherme', '', 'Brazil', 'Central Midfield', '1991-05-21','Yeni Malatyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(402, 'Mitchell', 'Donald', 'Netherlands', 'Central Midfield', '1988-12-10','Yeni Malatyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(403, 'Sulley', 'Muniri', 'Ghana', 'Central Midfield', '1992-10-25','Yeni Malatyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(404, 'Michael', 'Pereira', 'France', 'Right Midfield', '1987-12-08','Yeni Malatyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(405, 'Mustafa', 'Eskihellac', 'Turkey', 'Right Midfield', '1997-05-05','Yeni Malatyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(406, 'Danijel', 'Aleksic', 'Serbia', 'Attacking Midfield', '1991-04-30','Yeni Malatyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(407, 'Berkan', 'Durdu', 'Germany', 'Attacking Midfield', '1998-11-26','Yeni Malatyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(408, 'Adem', 'Buyuk', 'Turkey', 'Left Winger', '1987-08-30','Yeni Malatyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(409, 'Issiar', 'Dia', 'Senegal', 'Right Winger', '1987-07-08','Yeni Malatyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(410, 'Khalid', 'Boutaib', 'Morocco', 'Centre-Forward', '1987-04-24','Yeni Malatyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(411, 'Omer', 'Sismanoglu', 'Turkey', 'Centre-Forward', '1989-08-01','Yeni Malatyaspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(412, 'Eren', 'Tozlu', 'Turkey', 'Centre-Forward', '1991-12-27','Yeni Malatyaspor');


INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(413, 'Johannes', 'Hopf', 'Sweden', 'Goalkeeper', '1987-06-16','Ankaragucu');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(414, 'Altay', 'Bayindir', 'Turkey', 'Goalkeeper', '1998-04-14','Ankaragucu');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(415, 'Korcan', 'Celikay', 'Turkey', 'Goalkeeper', '1987-12-31','Ankaragucu');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(416, 'Thomas', 'Heurtaux', 'France', 'Centre-Back', '1988-07-03','Ankaragucu');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(417, 'Bakary', 'Kone', 'Burkina Faso', 'Centre-Back', '1988-04-27','Ankaragucu');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(418, 'Alihan', 'Kubalas', 'Turkey', 'Centre-Back', '1991-10-26','Ankaragucu');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(419, 'Yalcin', 'Ayhan', 'Turkey', 'Centre-Back', '1982-05-01','Ankaragucu');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(420, 'Lukasz', 'Szukala', 'Poland', 'Centre-Back', '1984-05-26','Ankaragucu');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(421, 'Tiago', 'Pinto', 'Portugal', 'Left-Back', '1988-02-01','Ankaragucu');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(422, 'Mehmet', 'Sak', 'Turkey', 'Left-Back', '1990-04-04','Ankaragucu');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(423, 'Mahmut', 'Akan', 'Turkey', 'Left-Back', '1994-07-14','Ankaragucu');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(424, 'Erdem', 'Ozgenc', 'Turkey', 'Right-Back', '1984-08-22','Ankaragucu');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(425, 'Erdem', 'Sen', 'Turkey', 'Defensive Midfield', '1989-01-05','Ankaragucu');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(426, 'Brice Dja', 'Djedje', 'Cote Dlvoire', 'Defensive Midfield', '1990-12-23','Ankaragucu');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(427, 'Ricardo', 'Faty', 'Senegal', 'Defensive Midfield', '1986-08-04','Ankaragucu');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(428, 'Sedat', 'Agcay', 'Turkey', 'Defensive Midfield', '1981-09-22','Ankaragucu');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(429, 'Thibault', 'Moulin', 'France', 'Central Midfield', '1990-01-13','Ankaragucu');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(430, 'Kenan', 'Ozer', 'Turkey', 'Right Midfield', '1987-08-16','Ankaragucu');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(431, 'Nduka', 'Ozokwo', 'Nigeria', 'Right Midfield', '1988-12-25','Ankaragucu');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(432, 'Anton', 'Putsila', 'Belarus', 'Attacking Midfield', '1987-06-10','Ankaragucu');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(433, 'Youness', 'Mokhtar', 'Morocco', 'Left Winger', '1991-08-29','Ankaragucu');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(434, 'Alessio', 'Cerci', 'Italy', 'Right Winger', '1987-07-23','Ankaragucu');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(435, 'Thievy', 'Bifouma', 'Congo', 'Right Winger', '1992-05-13','Ankaragucu');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(436, 'Kubilay', 'Kanatsizku', 'Turkey', 'Centre-Forward', '1997-03-28','Ankaragucu');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(437, 'Mostapha', 'El Kabir', 'Morocco', 'Centre-Forward', '1988-10-05','Ankaragucu');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(438, 'Ilhan', 'Parlak', 'Turkey', 'Centre-Forward', '1987-01-18','Ankaragucu');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(439, 'Lanre', 'Kehinde', 'Nigeria', 'Centre-Forward', '1994-05-07','Ankaragucu');

INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(440, 'Milan', 'Lukac', 'Serbia', 'Goalkeeper', '1985-10-04','Akhisarspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(441, 'Fatih', 'Ozturk', 'Turkey', 'Goalkeeper', '1986-12-22','Akhisarspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(442, 'Bora', 'Kork', 'Turkey', 'Goalkeeper', '1980-06-09','Akhisarspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(443, 'Halil', 'Yeral', 'Turkey', 'Goalkeeper', '2000-01-01','Akhisarspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(444, 'Caner', 'Osmanpasa', 'Turkey', 'Centre-Back', '1988-01-15','Akhisarspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(445, 'Mustafa', 'Yumlu', 'Turkey', 'Centre-Back', '1987-09-25','Akhisarspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(446, 'Dany', 'Nounkeu', 'Cameroon', 'Centre-Back', '1986-04-11','Akhisarspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(447, 'Goksu', 'Mutlu', 'Turkey', 'Centre-Back', '1999-02-17','Akhisarspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(448, 'Kadir', 'Keles', 'Turkey', 'Left-Back', '1988-01-01','Akhisarspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(449, 'Miguel', 'Lopes', 'Portugal', 'Right-Back', '1986-12-19','Akhisarspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(450, 'Avdija', 'Vrsajevic', 'Bosnia-Herzegovina', 'Right-Back', '1986-03-06','Akhisarspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(451, 'Abdoul', 'Sissoko', 'Mali', 'Defensive Midfield', '1990-03-20','Akhisarspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(452, 'Serginho', 'Borges Junior', 'Brazil', 'Defensive Midfield', '1986-08-04','Akhisarspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(453, 'Eray', 'Ataseven', 'Turkey', 'Defensive Midfield', '1993-07-29','Akhisarspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(454, 'Aykut', 'Ceviker', 'Turkey', 'Defensive Midfield', '1990-01-03','Akhisarspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(455, 'Hasan Ali', 'Adiguzel', 'Turkey', 'Central Midfield', '2000-04-03','Akhisarspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(456, 'Ali Kaan', 'Guneren', 'Turkey', 'Central Midfield', '2000-04-08','Akhisarspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(457, 'Adrien', 'Regattin', 'Morocco', 'Right Midfield', '1991-08-22','Akhisarspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(458, 'Guray', 'Vural', 'Turkey', 'Left Midfield', '1988-07-11','Akhisarspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(459, 'Josue', 'Pesqueira', 'Portugal', 'Attacking Midfield', '1990-09-17','Akhisarspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(460, 'Bilal', 'Kisa', 'Turkey', 'Attacking Midfield', '1983-07-22','Akhisarspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(461, 'Onurcan', 'Guler', 'Turkey', 'Attacking Midfield', '1995-03-24','Akhisarspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(462, 'Daniel', 'Larsson', 'Sweden', 'Left Winger', '1987-01-25','Akhisarspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(463, 'Elvis', 'Manu', 'Netherlands', 'Left Winger', '1993-08-13','Akhisarspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(464, 'Helder', 'Barbosa', 'Portugal', 'Left Winger', '1987-05-25','Akhisarspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(465, 'Onur', 'Ayik', 'Turkey', 'Right Winger', '1990-01-28','Akhisarspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(466, 'Yevgen', 'Seleznov', 'Ukraine', 'Centre-Forward', '1985-07-20','Akhisarspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(467, 'Jeremy', 'Bokila', 'DR Congo', 'Centre-Forward', '1088-11-14','Akhisarspor');


INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(468, 'Ibrahim', 'Sehic', 'Bosnia-Herzegovinia', 'Goalkeeper', '1988-09-02','BB Erzurumspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(469, 'Hakan', 'Canbazoglu', 'Turkey', 'Goalkeeper', '1987-11-28','BB Erzurumspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(470, 'Kerem', 'Civelek', 'Turkey', 'Goalkeeper', '1998-03-07','BB Erzurumspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(471, 'Stephane', 'Acka', 'Cote Dlvoire', 'Centre-Back', '1990-10-11','BB Erzurumspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(472, 'Lokman', 'Gor', 'Turkey', 'Centre-Back', '1990-12-15','BB Erzurumspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(473, 'Egemen', 'Korkmaz', 'Turkey', 'Centre-Back', '1982-11-03','BB Erzurumspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(474, 'Leo', 'Schwechlen', 'France', 'Left-Back', '1989-06-05','BB Erzurumspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(475, 'Hakan', 'Arslan', 'Turkey', 'Left-Back', '1989-03-12','BB Erzurumspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(476, 'Auremir', '', 'Brazil', 'Right-Back', '1991-09-10','BB Erzurumspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(477, 'Tolga', 'Unlu', 'Turkey', 'Right-Back', '1989-09-10','BB Erzurumspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(478, 'Jasmin', 'Scuk', 'Bosnia-Herzegovinia', 'Defensive Midfield', '1990-07-14','BB Erzurumspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(479, 'Moussa', 'Kone', 'Cote Dlvoire', 'Central Midfield', '1990-02-12','BB Erzurumspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(480, 'Taylan', 'Antalyali', 'Turkey', 'Central Midfield', '1995-01-08','BB Erzurumspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(481, 'Ibrahim', 'Akdag', 'Turkey', 'Central Midfield', '1991-07-21','BB Erzurumspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(482, 'Sefa', 'Akgun', 'Turkey', 'Central Midfield', '2000-06-30','BB Erzurumspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(483, 'Emrah', 'Bassan', 'Turkey', 'Right Midfield', '1992-04-17','BB Erzurumspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(484, 'Osman', 'Sahin', 'Turkey', 'Right Midfield', '1998-01-13','BB Erzurumspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(485, 'Ozer', 'Hurmaci', 'Turkey', 'Left Midfield', '1986-11-20','BB Erzurumspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(486, 'Erhan', 'Celenk', 'Turkey', 'Left Midfield', '1989-03-16','BB Erzurumspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(487, 'Siphiwe', 'Tshabalala', 'South Africa', 'Left Winger', '1984-09-25','BB Erzurumspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(488, 'Arsen', 'Khubulov', 'Russia', 'Right Winger', '1990-12-13','BB Erzurumspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(489, 'Gilles', 'Sunu', 'Togo', 'Centre-Forward', '1991-03-30','BB Erzurumspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(490, 'Lennart', 'Thy', 'Germany', 'Centre-Forward', '1992-02-25','BB Erzurumspor');
INSERT INTO PLAYER(playerID, firstName, lastName, nationality, position, birthDate, team_name) VALUES(491, 'Ridge', 'Munsy', 'Switzerland', 'Centre-Forward', '1989-07-09','BB Erzurumspor');




CREATE TABLE GOAL(
	number int,
	player_id int,
	FOREIGN KEY (player_id) REFERENCES PLAYER(playerID),
);


INSERT INTO GOAL(number, player_id) VALUES( 14, 303 );
INSERT INTO GOAL(number, player_id) VALUES( 7, 195 );
INSERT INTO GOAL(number, player_id) VALUES( 6, 136 );
INSERT INTO GOAL(number, player_id) VALUES( 6,  437);
INSERT INTO GOAL(number, player_id) VALUES( 6, 386 );
INSERT INTO GOAL(number, player_id) VALUES( 5, 227 );
INSERT INTO GOAL(number, player_id) VALUES( 5, 135 );
INSERT INTO GOAL(number, player_id) VALUES( 5, 406 );
INSERT INTO GOAL(number, player_id) VALUES( 5 , 302 );
INSERT INTO GOAL(number, player_id) VALUES( 5, 301 );
INSERT INTO GOAL(number, player_id) VALUES( 5, 274 );
INSERT INTO GOAL(number, player_id) VALUES( 5, 250 );
INSERT INTO GOAL(number, player_id) VALUES( 4, 24 );
INSERT INTO GOAL(number, player_id) VALUES( 4, 19 );
INSERT INTO GOAL(number, player_id) VALUES( 4, 108 );
INSERT INTO GOAL(number, player_id) VALUES( 4, 102 );
INSERT INTO GOAL(number, player_id) VALUES( 4, 356 );
INSERT INTO GOAL(number, player_id) VALUES( 4, 326 );
INSERT INTO GOAL(number, player_id) VALUES(4, 46 );
INSERT INTO GOAL(number, player_id) VALUES( 3, 224 );
INSERT INTO GOAL(number, player_id) VALUES( 3, 226 );
INSERT INTO GOAL(number, player_id) VALUES( 3, 155 );
INSERT INTO GOAL(number, player_id) VALUES( 3, 147 );
INSERT INTO GOAL(number, player_id) VALUES( 3, 118  );
INSERT INTO GOAL(number, player_id) VALUES( 3, 89 );
INSERT INTO GOAL(number, player_id) VALUES( 3, 80 );
INSERT INTO GOAL(number, player_id) VALUES( 3, 82 );
INSERT INTO GOAL(number, player_id) VALUES( 3, 327  );
INSERT INTO GOAL(number, player_id) VALUES( 3, 319 );
INSERT INTO GOAL(number, player_id) VALUES( 3, 377 );
INSERT INTO GOAL(number, player_id) VALUES( 3, 361 );
INSERT INTO GOAL(number, player_id) VALUES( 3, 427 );
INSERT INTO GOAL(number, player_id) VALUES( 3, 401 );
INSERT INTO GOAL(number, player_id) VALUES( 3, 408 );
INSERT INTO GOAL(number, player_id) VALUES(3, 52 );
INSERT INTO GOAL(number, player_id) VALUES( 3, 51 );
INSERT INTO GOAL(number, player_id) VALUES( 3, 31 );
INSERT INTO GOAL(number, player_id) VALUES( 3, 466 );
INSERT INTO GOAL(number, player_id) VALUES( 3, 463 );
INSERT INTO GOAL(number, player_id) VALUES( 2, 137 );
INSERT INTO GOAL(number, player_id) VALUES( 2, 132 );
INSERT INTO GOAL(number, player_id) VALUES( 2, 53 );
INSERT INTO GOAL(number, player_id) VALUES( 2, 402 );
INSERT INTO GOAL(number, player_id) VALUES( 2, 387 );
INSERT INTO GOAL(number, player_id) VALUES( 2,  328);
INSERT INTO GOAL(number, player_id) VALUES( 2, 247 );
INSERT INTO GOAL(number, player_id) VALUES( 2, 168 );
INSERT INTO GOAL(number, player_id) VALUES( 2, 18 );
INSERT INTO GOAL(number, player_id) VALUES( 2, 13 );
INSERT INTO GOAL(number, player_id) VALUES( 2, 109 );




CREATE TABLE ASSIST(
	number int,
	player_id int,
	FOREIGN KEY (player_id) REFERENCES PLAYER(playerID) 
);


INSERT INTO ASSIST(number, player_id) VALUES(8, 49);
INSERT INTO ASSIST(number, player_id) VALUES(7, 102);
INSERT INTO ASSIST(number, player_id) VALUES(6, 401);
INSERT INTO ASSIST(number, player_id) VALUES(5, 120);
INSERT INTO ASSIST(number, player_id) VALUES(4, 298);
INSERT INTO ASSIST(number, player_id) VALUES(4, 483);
INSERT INTO ASSIST(number, player_id) VALUES(4, 301);
INSERT INTO ASSIST(number, player_id) VALUES(4, 245);
INSERT INTO ASSIST(number, player_id) VALUES(3, 433);
INSERT INTO ASSIST(number, player_id) VALUES(3, 17);