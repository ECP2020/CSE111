
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
WHERE nine_ts_title> 1;

SELECT *
FROM Global_TS;

SELECT *
FROM USA_TS;

SELECT * 
FROM Eightteen_TS;

SELECT TS_title
FROM Global_TS