REM   Script: Session 02 assessment
REM   sql assessment

CREATE TABLE Users ( 
  userId VARCHAR(10) PRIMARY KEY, 
  name VARCHAR2(15) NOT NULL, 
  emailAddress VARCHAR2(20) NOT NULL, 
  preferenceCode VARCHAR2(3) NOT NULL 
);

INSERT INTO Users (userId, name, emailAddress, preferenceCode) 
VALUES ('kendj3', 'Kenderine, J', 'kendj3@hotmail.co.uk', 'C13');

INSERT INTO Users (userId, name, emailAddress, preferenceCode) 
VALUES ('patel11', 'Patel, F', 'patel11@ntl.co.uk', 'C13');

INSERT INTO Users (userId, name, emailAddress, preferenceCode) 
VALUES ('flak05', 'Flavel, K', 'flak05@freeserve.co.uk', 'C12');

CREATE TABLE Users1 ( 
  userId VARCHAR(10) PRIMARY KEY, 
  name VARCHAR2(30) NOT NULL, 
  emailAddress VARCHAR2(30) NOT NULL, 
  preferenceCode VARCHAR2(3) NOT NULL 
);

INSERT INTO Users1 (userId, name, emailAddress, preferenceCode) 
VALUES ('patel11', 'Patel, F', 'patel11@ntl.co.uk', 'C13');

INSERT INTO Users1 (userId, name, emailAddress, preferenceCode) 
VALUES ('kendj3', 'Kenderine, J', 'kendj3@hotmail.co.uk', 'C13');

INSERT INTO Users1 (userId, name, emailAddress, preferenceCode) 
VALUES ('flak05', 'Flavel, K', 'flak05@freeserve.co.uk', 'C12');

INSERT INTO Users1 (userId, name, emailAddress, preferenceCode) 
VALUES ('keita77', 'Keita, R', 'keita77@hotmail.co.uk', 'C11');

INSERT INTO Users1 (userId, name, emailAddress, preferenceCode) 
VALUES ('johnsj9', 'Johnson, J', 'johnsj9@msn.co.uk', 'C13');

INSERT INTO Users1 (userId, name, emailAddress, preferenceCode) 
VALUES ('Simpb91', 'Simpson, B', 'Simpb91@tesco.co.uk', 'C12');

CREATE TABLE Music ( 
  musicId VARCHAR(5) PRIMARY KEY, 
  title VARCHAR(40), 
  categoryCode VARCHAR(3), 
  costPerDownload DECIMAL(10, 2) 
);

INSERT INTO Music (musicId, title, categoryCode, costPerDownload) 
VALUES ('M001', 'James Bond: Golden Eyes', 'C13', 0.99);

INSERT INTO Music (musicId, title, categoryCode, costPerDownload) 
VALUES ('M002', 'Lake House', 'C13', 1.99);

INSERT INTO Music (musicId, title, categoryCode, costPerDownload) 
VALUES ('M003', 'Dvorak: Symphony No 9', 'C11', 1.49);

INSERT INTO Music (musicId, title, categoryCode, costPerDownload) 
VALUES ('M004', 'Handel: Water Music', 'C11', 1.79);

INSERT INTO Music (musicId, title, categoryCode, costPerDownload) 
VALUES ('M005', 'Sense and Sensibility', 'C13', 1.50);

INSERT INTO Music (musicId, title, categoryCode, costPerDownload) 
VALUES ('M006', 'Beatles: Yesterday', 'C12', 1.10);

INSERT INTO Music (musicId, title, categoryCode, costPerDownload) 
VALUES ('M007', 'Elton John: Your Song', 'C12', 0.89);

INSERT INTO Music1 (musicId, title, categoryCode, costPerDownload) 
VALUES ('M002', 'Lake House', 'C13', 1.99);

INSERT INTO Music1 (musicId, title, categoryCode, costPerDownload) 
VALUES ('M001', 'James Bond: Golden Eyes', 'C13', 0.99);

CREATE TABLE Music1 ( 
  musicId VARCHAR(5) PRIMARY KEY, 
  title VARCHAR(40) NOT NULL, 
  categoryCode VARCHAR(3) NOT NULL, 
  costPerDownload DECIMAL(10, 2) NOT NULL 
);

INSERT INTO Music1 (musicId, title, categoryCode, costPerDownload) 
VALUES ('M001', 'James Bond: Golden Eyes', 'C13', 0.99);

INSERT INTO Music1 (musicId, title, categoryCode, costPerDownload) 
VALUES ('M003', 'Dvorak: Symphony No 9', 'C11', 1.49);

INSERT INTO Music1 (musicId, title, categoryCode, costPerDownload) 
VALUES ('M002', 'Lake House', 'C13', 1.99);

INSERT INTO Music1 (musicId, title, categoryCode, costPerDownload) 
VALUES ('M004', 'Handel: Water Music', 'C11', 1.79);

INSERT INTO Music1 (musicId, title, categoryCode, costPerDownload) 
VALUES ('M005', 'Sense and Sensibility', 'C13', 1.50);

INSERT INTO Music (musicId, title, categoryCode, costPerDownload) 
VALUES ('M006', 'Beatles: Yesterday', 'C12', 1.10);

INSERT INTO Music1 (musicId, title, categoryCode, costPerDownload) 
VALUES ('M006', 'Beatles: Yesterday', 'C12', 1.10);

INSERT INTO Music1 (musicId, title, categoryCode, costPerDownload) 
VALUES ('M007', 'Elton John: Your Song', 'C12', 0.89);

CREATE TABLE MusicDownload ( 
  userId VARCHAR(10), 
  musicId VARCHAR(5), 
  downloadDate DATE, 
  FOREIGN KEY (userId) REFERENCES Users(userId), 
  FOREIGN KEY (musicId) REFERENCES Music(musicId) 
);

CREATE TABLE MusicDownload1 ( 
  userId VARCHAR(10) NOT NULL, 
  musicId VARCHAR(5) NOT NULL, 
  downloadDate DATE NOT NULL, 
  FOREIGN KEY (userId) REFERENCES Users(userId), 
  FOREIGN KEY (musicId) REFERENCES Music(musicId) 
);

INSERT INTO MusicDownload1 (userId, musicId, downloadDate) 
VALUES ('kendj3', 'M002', TO_DATE('03-May-22', 'DD-Mon-YY'));

INSERT INTO MusicDownload1 (userId, musicId, downloadDate) 
VALUES ('johnsj9', 'M005', TO_DATE('01-May-23', 'DD-Mon-YY'));

CREATE TABLE MusicDownload1 ( 
  userId VARCHAR(10) NOT NULL, 
  musicId VARCHAR(5) NOT NULL, 
  downloadDate DATE NOT NULL, 
  FOREIGN KEY (userId) REFERENCES Users1(userId), 
  FOREIGN KEY (musicId) REFERENCES Music1(musicId) 
);

INSERT INTO MusicDownload1 (userId, musicId, downloadDate) 
VALUES ('kendj3', 'M002', TO_DATE('03-May-22', 'DD-Mon-YY'));

INSERT INTO MusicDownload1 (userId, musicId, downloadDate) 
VALUES ('johnsj9', 'M005', TO_DATE('01-May-23', 'DD-Mon-YY'));

INSERT INTO MusicDownload1 (userId, musicId, downloadDate) 
VALUES ('patel11', 'M002', TO_DATE('06-May-23', 'DD-Mon-YY'));

INSERT INTO MusicDownload1 (userId, musicId, downloadDate) 
VALUES ('johnsj9', 'M001', TO_DATE('06-May-22', 'DD-Mon-YY'));

INSERT INTO MusicDownload (userId, musicId, downloadDate) 
VALUES ('kendj3', 'M003', TO_DATE('01-Aug-22', 'DD-Mon-YY'));

INSERT INTO MusicDownload (userId, musicId, downloadDate) 
VALUES ('Keita77', 'M004', TO_DATE('02-Aug-23', 'DD-Mon-YY'));

INSERT INTO MusicDownload (userId, musicId, downloadDate) 
VALUES ('Simpb91', 'M007', TO_DATE('05-Sep-22', 'DD-Mon-YY'));

INSERT INTO MusicDownload1 (userId, musicId, downloadDate) 
VALUES ('johnsj9', 'M001', TO_DATE('06-May-22', 'DD-Mon-YY'));

CREATE TABLE MusicDownload2 ( 
  userId VARCHAR(10), 
  musicId VARCHAR(5), 
  downloadDate DATE NOT NULL, 
  FOREIGN KEY (userId) REFERENCES Users1(userId), 
  FOREIGN KEY (musicId) REFERENCES Music1(musicId) 
);

INSERT INTO MusicDownload2 (userId, musicId, downloadDate) 
VALUES ('johnsj9', 'M005', TO_DATE('01-May-23', 'DD-Mon-YY'));

INSERT INTO MusicDownload2 (userId, musicId, downloadDate) 
VALUES ('kendj3', 'M002', TO_DATE('03-May-22', 'DD-Mon-YY'));

INSERT INTO MusicDownload2 (userId, musicId, downloadDate) 
VALUES ('johnsj9', 'M001', TO_DATE('06-May-22', 'DD-Mon-YY'));

INSERT INTO MusicDownload2 (userId, musicId, downloadDate) 
VALUES ('kendj3', 'M003', TO_DATE('01-Aug-22', 'DD-Mon-YY'));

INSERT INTO MusicDownload2 (userId, musicId, downloadDate) 
VALUES ('Keita77', 'M004', TO_DATE('02-Aug-23', 'DD-Mon-YY'));

CREATE TABLE MusicDownload3 ( 
  userId VARCHAR(10), 
  musicId VARCHAR(5), 
  downloadDate DATE, 
  FOREIGN KEY (userId) REFERENCES Users1(userId), 
  FOREIGN KEY (musicId) REFERENCES Music1(musicId) 
);

INSERT INTO MusicDownload2 (userId, musicId, downloadDate) 
VALUES ('kendj3', 'M003', TO_DATE('01-Aug-22', 'DD-Mon-YY'));

INSERT INTO MusicDownload2 (userId, musicId, downloadDate) 
VALUES ('Keita77', 'M004', TO_DATE('02-Aug-23', 'DD-Mon-YY'));

INSERT INTO MusicDownload2 (userId, musicId, downloadDate) 
VALUES ('Simpb91', 'M007', TO_DATE('05-Sep-22', 'DD-Mon-YY'));

INSERT INTO MusicDownload2 (userId, musicId, downloadDate) 
VALUES ('kendj3', 'M002', TO_DATE('03-May-22', 'DD-Mon-YY'));

INSERT INTO MusicDownload2 (userId, musicId, downloadDate) 
VALUES ('johnsj9', 'M005', TO_DATE('01-May-23', 'DD-Mon-YY'));

INSERT INTO MusicDownload2 (userId, musicId, downloadDate) 
VALUES ('patel11', 'M002', TO_DATE('06-May-23', 'DD-Mon-YY'));

INSERT INTO MusicDownload2 (userId, musicId, downloadDate) 
VALUES ('johnsj9', 'M001', TO_DATE('06-May-22', 'DD-Mon-YY'));

INSERT INTO MusicDownload2 (userId, musicId, downloadDate) 
VALUES ('kendj3', 'M003', TO_DATE('01-Aug-22', 'DD-Mon-YY'));

INSERT INTO MusicDownload2 (userId, musicId, downloadDate) 
VALUES ('Keita77', 'M004', TO_DATE('02-Aug-23', 'DD-Mon-YY'));

INSERT INTO MusicDownload2 (userId, musicId, downloadDate) 
VALUES ('keita77', 'M004', TO_DATE('02-Aug-23', 'DD-Mon-YY'));

INSERT INTO MusicDownload2 (userId, musicId, downloadDate) 
VALUES ('Simpb91', 'M007', TO_DATE('05-Sep-22', 'DD-Mon-YY'));

CREATE TABLE Category ( 
  categoryCode VARCHAR(3) PRIMARY KEY, 
  title VARCHAR(50) 
);

INSERT INTO Category (categoryCode, title) 
VALUES ('C11', 'Classics');

INSERT INTO Category (categoryCode, title) 
VALUES ('C12', 'Pop-Rock');

INSERT INTO Category (categoryCode, title) 
VALUES ('C13', 'Movie Soundtrack');

SELECT musicId, title, categoryCode 
FROM Music 
ORDER BY title;

SELECT COUNT(DISTINCT userId) AS numberOfUsers 
FROM MusicDownload md 
JOIN Music m ON md.musicId = m.musicId 
JOIN Category c ON m.categoryCode = c.categoryCode 
WHERE c.title = 'Pop-Rock';

SELECT c.title AS categoryTitle 
FROM MusicDownload md 
JOIN Music m ON md.musicId = m.musicId 
JOIN Category c ON m.categoryCode = c.categoryCode 
GROUP BY c.title 
HAVING COUNT(*) > 1;

CREATE TABLE MusicDownload3 ( 
  userId VARCHAR(10), 
  musicId VARCHAR(5), 
  downloadDate DATE, 
  FOREIGN KEY (userId) REFERENCES Users1(userId), 
  FOREIGN KEY (musicId) REFERENCES Music1(musicId) 
);

INSERT INTO MusicDownload3 (userId, musicId, downloadDate) 
VALUES ('kendj3', 'M002', TO_DATE('03-May-22', 'DD-Mon-YY'));

INSERT INTO MusicDownload3 (userId, musicId, downloadDate) 
VALUES ('johnsj9', 'M005', TO_DATE('01-May-23', 'DD-Mon-YY'));

INSERT INTO MusicDownload2 (userId, musicId, downloadDate) 
VALUES ('patel11', 'M002', TO_DATE('06-May-23', 'DD-Mon-YY'));

INSERT INTO MusicDownload2 (userId, musicId, downloadDate) 
VALUES ('johnsj9', 'M001', TO_DATE('06-May-22', 'DD-Mon-YY'));

INSERT INTO MusicDownload2 (userId, musicId, downloadDate) 
VALUES ('kendj3', 'M003', TO_DATE('01-Aug-22', 'DD-Mon-YY'));

INSERT INTO MusicDownload2 (userId, musicId, downloadDate) 
VALUES ('keita77', 'M004', TO_DATE('02-Aug-23', 'DD-Mon-YY'));

INSERT INTO MusicDownload2 (userId, musicId, downloadDate) 
VALUES ('Simpb91', 'M007', TO_DATE('05-Sep-22', 'DD-Mon-YY'));

INSERT INTO MusicDownload2 (userId, musicId, downloadDate) 
VALUES ('johnsj9', 'M001', TO_DATE('06-May-22', 'DD-Mon-YY'));

INSERT INTO MusicDownload3 (userId, musicId, downloadDate) 
VALUES ('patel11', 'M002', TO_DATE('06-May-23', 'DD-Mon-YY'));

INSERT INTO MusicDownload3 (userId, musicId, downloadDate) 
VALUES ('keita77', 'M004', TO_DATE('02-Aug-23', 'DD-Mon-YY'));

INSERT INTO MusicDownload3 (userId, musicId, downloadDate) 
VALUES ('kendj3', 'M003', TO_DATE('01-Aug-22', 'DD-Mon-YY'));

INSERT INTO MusicDownload3 (userId, musicId, downloadDate) 
VALUES ('Simpb91', 'M007', TO_DATE('05-Sep-22', 'DD-Mon-YY'));

INSERT INTO MusicDownload3 (userId, musicId, downloadDate) 
VALUES ('kendj3', 'M006', TO_DATE('01-Jun-23', 'DD-MON-YY'));

INSERT INTO MusicDownload3 (userId, musicId, downloadDate) 
VALUES ('patel11', 'M006', TO_DATE('02-Jun-23', 'DD-Mon-YY'));

INSERT INTO MusicDownload3 (userId, musicId, downloadDate) 
VALUES ('flak05', 'M007', TO_DATE('03-Jun-23', 'DD-Mon-YY')),;

INSERT INTO MusicDownload3 (userId, musicId, downloadDate) 
VALUES ('flak05', 'M007', TO_DATE('03-Jun-23', 'DD-Mon-YY'));

SELECT COUNT(DISTINCT userId) AS numUsers 
FROM MusicDownload 
WHERE musicId IN ( 
  SELECT musicId 
  FROM Music 
  WHERE categoryCode = 'C12' 
);

SELECT COUNT(DISTINCT userId) AS numUsers 
FROM MusicDownload3 
WHERE musicId IN ( 
  SELECT musicId 
  FROM Music1 
  WHERE categoryCode = 'C12' 
);

SELECT musicId, title, categoryCode 
FROM Music1 
ORDER BY title;

SELECT COUNT(DISTINCT userId) AS numberOfUsers 
FROM MusicDownload3 md 
JOIN Music1 m ON md.musicId = m.musicId 
JOIN Category c ON m.categoryCode = c.categoryCode 
WHERE c.title = 'Pop-Rock';

SELECT c.title AS categoryTitle 
FROM MusicDownload3 md 
JOIN Music1 m ON md.musicId = m.musicId 
JOIN Category c ON m.categoryCode = c.categoryCode 
GROUP BY c.title 
HAVING COUNT(*) > 1;

SELECT c.title AS categoryTitle, COUNT(*) AS numDownloads 
FROM MusicDownload md 
JOIN Music m ON md.musicId = m.musicId 
JOIN Category c ON m.categoryCode = c.categoryCode 
GROUP BY c.title;

SELECT c.title AS categoryTitle, COUNT(*) AS numDownloads 
FROM MusicDownload3 md 
JOIN Music1 m ON md.musicId = m.musicId 
JOIN Category c ON m.categoryCode = c.categoryCode 
GROUP BY c.title;

