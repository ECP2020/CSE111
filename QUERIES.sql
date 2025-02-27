
--#1---

SELECT * 
FROM Nineteen_TS,Global_TS
WHERE nine_ts_artist= 
 "Ariana Grande" AND 
TS_artist = "Ariana Grande";

---#2---

SELECT TS_title
FROM Global_TS
WHERE TS_artist = "Maluma";

--#3--

SELECT COUNT(nine_ts_artist)
FROM Nineteen_TS
WHERE nine_ts_title LIKE '%P%';

--#4--

SELECT r_freq 
FROM RadioStations
WHERE r_format LIKE "%S%";

--#5---
SELECT five_ts_artist, five_ts_ISRC
FROM Fifteen_TS
WHERE five_ts_album = "Currents";

--#6---
SELECT five_ts_title
FROM Fifteen_TS
WHERE five_ts_artist = "Justin Bieber";

--#7--

SELECT COUNT(six_ts_album)
FROM Sixteen_TS
WHERE six_ts_ISRC LIKE '%F%'


--#8---
SELECT COUNT(g_name)
FROM Genre
WHERE g_name LIKE "%J%"

--#9-- 
SELECT COUNT(DISTINCT r_location)
FROM RadioStations
WHERE r_freq LIKE "%KY%";

--#10---
SELECT r_freq, r_signal
FROM RadioStations
WHERE r_format = "Regional Mexican";

--#11
--Album of the song Dynamite 
SELECT TS_album from Global_TS
WHERE TS_title = 'Dynamite';

--#12
--Songs by Billie Eilish in 2019
SELECT nine_ts_title
FROM Nineteen_TS
WHERE nine_ts_artist = 'Billie Eilish';

--#13
--Albums by The Weeknd in 2018
SELECT eight_album
FROM Eightteen_TS
WHERE eight_ts_artist = 'The Weeknd'; 

--#14
--First 10 songs from 2017 top hit list 
SELECT seven_ts_title
FROM Seventeen_TS
LIMIT 10;

--#15
--First 10 albums from 2016 top hit list 
SELECT six_ts_album
FROM Sixteen_TS
LIMIT 10;


--#16
--Count how many songs an artist has on Global_TS
SELECT COUNT(six_ts_title)
FROM Sixteen_TS
WHERE six_ts_artist = 'Drake';

--#17
--Prints album name with artist and song 
SELECT five_ts_title, five_ts_artist, five_ts_album
FROM Fifteen_TS
LIMIT 20;

--#18
SELECT *
FROM RadioStations
WHERE r_format= 'Hip Hop'; 

--#19
SELECT eight_ts_title, eight_ts_artist 
FROM Eightteen_TS
WHERE eight_ts_artist LIKE "%a";


--#20
SELECT nine_ts_artist, nine_ts_title
FROM Nineteen_TS
GROUP BY nine_ts_artist
ORDER BY nine_ts_artist;


--#21-- Updating the table year 
UPDATE Global_TS
SET TS_Year = "10-30-2020"
WHERE TS_title = "positions";

--#22-- Updating the artist
UPDATE Global_TS
SET TS_artist = "Ari"
WHERE TS_title = "positions"; 

--#23 deleting the Jazz Genre
DELETE FROM Genre WHERE 
g_name='Jazz';
SELECT *
FROM Global_TS;

--#24 
--Songs Trending Global, and USA 2020 and in 2019
SELECT USA_TS.USA_TS_title, Global_TS.TS_title
FROM USA_TS, Global_TS, Nineteen_TS
WHERE USA_TS.USA_TS_ISRC = Global_TS.TS_ISRC 
AND Nineteen_TS.nine_ISRC = Global_TS.TS_ISRC;

--#25
SELECT U.USA_TS_title,G.TS_title, G.TS_artist, G.TS_ISRC, U.USA_TS_ISRC
FROM Global_TS G, USA_TS U
INNER JOIN USA_TS ON U.USA_TS_ISRC = G.TS_ISRC
GROUP BY G.TS_ISRC;


--#26
--Artist from the 2018, 2019 that match the Global artists trending now 
SELECT Eightteen_TS.eight_ts_artist, Eightteen_TS.eight_ts_title, Nineteen_TS.nine_ts_artist, Nineteen_TS.nine_ts_title
FROM Eightteen_TS, Global_TS, Nineteen_TS
WHERE Eightteen_TS.eight_ts_artist = Global_TS.TS_artist
AND Nineteen_TS.nine_ts_artist = Global_TS.TS_artist;

--#27 
--Artist that match 2016 and in 2020
SELECT Sixteen_TS.six_ts_artist
FROM Sixteen_TS, Global_TS
WHERE Sixteen_TS.six_ts_artist = Global_TS.TS_artist;

--#28 
SELECT F.five_ts_title, S.seven_ts_title
FROM Fifteen_TS F, Seventeen_TS S
INNER JOIN Seventeen_TS ON S.seven_ts_artist = F.five_ts_artist
WHERE F.five_ts_artist = 'Rihanna';

--#29
SELECT S.seven_ts_title, E.eight_ts_title,  U.USA_TS_title
FROM Eightteen_TS E, Seventeen_TS S, USA_TS U
INNER JOIN Seventeen_TS ON S.seven_ts_artist = E.eight_ts_artist
INNER JOIN USA_TS ON U.USA_TS_artist = S.seven_ts_artist
WHERE E.eight_ts_artist = 'Post Malone';

--#30
SELECT U.USA_TS_album,G.TS_album, G.TS_artist
FROM Global_TS G, USA_TS U
INNER JOIN USA_TS ON U.USA_TS_album = G.TS_album
GROUP BY G.TS_album;

SELECT *
FROM USA_TS;

SELECT * 
FROM Eightteen_TS;

SELECT TS_title
FROM Global_TS
