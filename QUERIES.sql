
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

SELECT *
FROM Global_TS;

SELECT *
FROM USA_TS;

SELECT * 
FROM Eightteen_TS;

