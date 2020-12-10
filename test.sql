SELECT *
FROM Person;

SELECT * 
FROM Fifteen_TS;

SELECT * 
FROM Nineteen_TS;

SELECT *
FROM Seventeen_TS;

SELECT * 
FROM Sixteen_TS;

SELECT * 
FROM Eightteen_TS;

SELECT *
FROM RadioStations;

SELECT * FROM USA_TS;

SELECT TS_title, TS_artist, TS_album FROM Global_TS, USA_TS WHERE TS_title LIKE '%p%' OR TS_artist LIKE '%p%'
    
    OR TS_album LIKE '%p%' AND  USA_TS_album LIKE '%p' OR USA_TS_artist LIKE '%p' AND USA_TS.USA_TS_ISRC = Global_TS.TS_ISRC GROUP BY TS_album

    UNION 


SELECT USA_TS_title, USA_TS_artist, USA_TS_album FROM Global_TS, USA_TS WHERE TS_title LIKE '%p%' OR TS_artist LIKE '%p%'
    
    OR TS_album LIKE '%p%' AND  USA_TS_album LIKE '%p' OR USA_TS_artist LIKE '%p' AND USA_TS.USA_TS_ISRC = Global_TS.TS_ISRC GROUP BY TS_album;

SELECT * 
FROM GLOBAL_TS;

SELECT *
FROM USA_TS;

SELECT *
FROM SelectedItems;

DROP TABLE SelectedItems;


CREATE TABLE SelectedItems(
                    checked varchar(25) null
                );



ALTER TABLE USA_TS
ADD USA_TS_Spotify varchar(255) not null;

UPDATE USA_TS
SET USA_TS_Spotify ='https://open.spotify.com/track/35mvY5S1H3J2QZyna3TFe0'
WHERE USA_TS_title = 'positions';


UPDATE USA_TS
SET USA_TS_Spotify ='https://open.spotify.com/track/3tjFYV6RSFtuktYl3ZtYcq'
WHERE USA_TS_title LIKE '%Mood%';

--Need to change songs from here 
UPDATE USA_TS
SET USA_TS_Spotify ='https://open.spotify.com/track/02kDW379Yfd5PzW5A6vuGt'
WHERE USA_TS_title = 'Lemonade (feat. Gunna, Don Toliver & NAV)';

UPDATE USA_TS
SET USA_TS_Spotify ='https://open.spotify.com/track/6IBcOGPsniK3Pso1wHIhew'
WHERE USA_TS_title = 'Forever After All';

UPDATE USA_TS
SET USA_TS_Spotify ='https://open.spotify.com/track/0PvFJmanyNQMseIFrU708S'
WHERE USA_TS_title LIKE '%For%the%Night%';

UPDATE USA_TS
SET USA_TS_Spotify ='https://open.spotify.com/track/4Oun2ylbjFKMPTiaSbbCih'
WHERE USA_TS_title LIKE '%WAP%';

UPDATE USA_TS
SET USA_TS_Spotify ='https://open.spotify.com/track/2SAqBLGA283SUiwJ3xOUVI'
WHERE USA_TS_title LIKE '%Laugh%Now%Cry%';

UPDATE USA_TS
SET USA_TS_Spotify ='https://open.spotify.com/track/4g7ErSF4oImNnITtyiFowz'
WHERE USA_TS_title LIKE '%What%you%know%bout%love';

UPDATE USA_TS
SET USA_TS_Spotify ='https://open.spotify.com/track/4DuUwzP4ALMqpquHU0ltAB'
WHERE USA_TS_title = 'Tyler Herro';

UPDATE USA_TS
SET USA_TS_Spotify ='https://open.spotify.com/track/5u1n1kITHCxxp8twBcZxWy'
WHERE USA_TS_title LIKE '%Holy%';

UPDATE USA_TS
SET USA_TS_Spotify ='https://open.spotify.com/track/4y4spB9m0Q6026KfkAvy9Q'
WHERE USA_TS_title = 'Lonely (with benny blanco)';

UPDATE USA_TS
SET USA_TS_Spotify ='https://open.spotify.com/track/0VjIjW4GlUZAMYd2vXMi3b'
WHERE USA_TS_title LIKE '%Blinding%';

UPDATE USA_TS
SET USA_TS_Spotify ='https://open.spotify.com/track/2Y0wPrPQBrGhoLn14xRYCG'
WHERE USA_TS_title LIKE '%Come%Go%';

UPDATE USA_TS
SET USA_TS_Spotify ='https://open.spotify.com/track/6AGOKlMZWLCaEJGnaROtF9'
WHERE USA_TS_title LIKE '%Put%Your%Records%On%';

UPDATE USA_TS
SET USA_TS_Spotify ='https://open.spotify.com/track/7ytR5pFWmSjzHJIeQkgog4'
WHERE USA_TS_title LIKE '%ROCKSTAR%';

UPDATE USA_TS
SET USA_TS_Spotify ='https://open.spotify.com/track/2U5WueTLIK5WJLD7mvDODv'
WHERE USA_TS_title LIKE '%Wishing%Well%';

UPDATE USA_TS
SET USA_TS_Spotify ='https://open.spotify.com/track/4xqrdfXkTW4T0RauPLv3WA'
WHERE USA_TS_title LIKE '%Heather%';

UPDATE USA_TS
SET USA_TS_Spotify ='https://open.spotify.com/track/0ofHAoxe9vBkTCp2UQIavz'
WHERE USA_TS_title LIKE '%Dreams%';

UPDATE USA_TS
SET USA_TS_Spotify ='https://open.spotify.com/track/6UelLqGlWMcVH1E5c4H7lY'
WHERE USA_TS_title LIKE '%Watermelon%';

UPDATE USA_TS
SET USA_TS_Spotify ='https://open.spotify.com/track/45bE4HXI0AwGZXfZtMp8JR'
WHERE USA_TS_title LIKE '%you%broke%me%first%';

UPDATE USA_TS
SET USA_TS_Spotify ='https://open.spotify.com/track/6EDO9iiTtwNv6waLwa1UUq'
WHERE USA_TS_title LIKE '%POPSTAR%';

UPDATE USA_TS
SET USA_TS_Spotify ='https://open.spotify.com/track/0t1kP63rueHleOhQkYSXFY'
WHERE USA_TS_title LIKE '%Dynamite%';

UPDATE USA_TS
SET USA_TS_Spotify ='https://open.spotify.com/track/4Q34FP1AT7GEl9oLgNtiWj'
WHERE USA_TS_title LIKE '%Mr.%Right%Now%';

UPDATE USA_TS
SET USA_TS_Spotify ='https://open.spotify.com/track/2MbdDtCv5LUVjYy9RuGTgC'
WHERE USA_TS_title LIKE '%WHATS%POPPIN%';

UPDATE USA_TS
SET USA_TS_Spotify ='https://open.spotify.com/track/7kDUspsoYfLkWnZR7qwHZl'
WHERE USA_TS_artist = 	'Machine Gun Kelly' AND USA_TS_album = 'Tickets To My Downfall' ;

UPDATE USA_TS
SET USA_TS_Spotify ='https://open.spotify.com/track/1VLtjHwRWOVJiE5Py7JxoQ'
WHERE USA_TS_title LIKE '%Martin%&%Gina%';

UPDATE USA_TS
SET USA_TS_Spotify ='https://open.spotify.com/track/5IUtvfNvOyVYZUa6AJFrnP'
WHERE USA_TS_title LIKE '%Spicy%';

UPDATE USA_TS
SET USA_TS_Spotify ='https://open.spotify.com/track/5KCbr5ndeby4y4ggthdiAb'
WHERE USA_TS_title LIKE '%Wonder%';

UPDATE USA_TS
SET USA_TS_Spotify ='https://open.spotify.com/track/7B3z0ySL9Rr0XvZEAjWZzM'
WHERE USA_TS_title LIKE '%Sofia%';

UPDATE USA_TS
SET USA_TS_Spotify ='https://open.spotify.com/track/5psEZhQu6lukjhavJo4AbC'
WHERE USA_TS_title LIKE '%SO%DONE%';

UPDATE USA_TS
SET USA_TS_Spotify ='https://open.spotify.com/track/6wJYhPfqk3KGhHRG76WzOh'
WHERE USA_TS_title LIKE '%Blueberry%Faygo%';

UPDATE USA_TS
SET USA_TS_Spotify ='https://open.spotify.com/track/7v96VvFLS0wSYT8kewNLRy'
WHERE USA_TS_title = '24 (feat. Lil Baby)';

UPDATE USA_TS
SET USA_TS_Spotify ='https://open.spotify.com/track/5SWnsxjhdcEDc7LJjq9UHk'
WHERE USA_TS_title = 'Runnin';

UPDATE USA_TS
SET USA_TS_Spotify ='https://open.spotify.com/track/5f1joOtoMeyppIcJGZQvqJ'
WHERE USA_TS_title = 'Be Like That - feat. Swae Lee & Khalid';

UPDATE USA_TS
SET USA_TS_Spotify ='https://open.spotify.com/track/4VXIryQMWpIdGgYR4TrjT1'
WHERE USA_TS_title = 'All Girls Are The Same';

UPDATE USA_TS
SET USA_TS_Spotify ='https://open.spotify.com/track/7o4gBbTM6UBLkOYPw9xMCz'
WHERE USA_TS_title = 'Moonwalking in Calabasas (feat. Blueface) - Remix';


UPDATE USA_TS
SET USA_TS_Spotify ='https://open.spotify.com/track/5rZlwNFl01HqLWBQGryKSm'
WHERE USA_TS_title = 'Mood Swings (feat. Lil Tjay)';

UPDATE USA_TS
SET USA_TS_Spotify ='https://open.spotify.com/track/285pBltuF7vW8TeWk8hdRR'
WHERE USA_TS_title = 'Lucid Dreams';


UPDATE USA_TS
SET USA_TS_Spotify ='https://open.spotify.com/track/6Hj9jySrnFppAI0sEMCZpJ'
WHERE USA_TS_title = 'Robbery';

UPDATE USA_TS
SET USA_TS_Spotify ='https://open.spotify.com/track/21jGcNKet2qwijlDFuPiPb'
WHERE USA_TS_title = 'Circles';


UPDATE USA_TS
SET USA_TS_Spotify ='https://open.spotify.com/track/0AUvWawuP0ibk4SQ3sIZjk'
WHERE USA_TS_title = 'Daisy';

UPDATE USA_TS
SET USA_TS_Spotify ='https://open.spotify.com/track/4Z5FyQlevoHoa5FsIVKZju'
WHERE USA_TS_title = 'PRACTICE';

UPDATE USA_TS
SET USA_TS_Spotify ='https://open.spotify.com/track/1IIKrJVP1C9N7iPtG6eOsK'
WHERE USA_TS_title = 'Go Crazy';

UPDATE USA_TS
SET USA_TS_Spotify ='https://open.spotify.com/track/33gwZOGJWEZ7dRWPqPxBEZ'
WHERE USA_TS_title = 'Wolves (feat. Post Malone)';

UPDATE USA_TS
SET USA_TS_Spotify ='https://open.spotify.com/track/7qEHsqek33rTcFNT9PFqLf'
WHERE USA_TS_title = 'Someone You Loved';

UPDATE USA_TS
SET USA_TS_Spotify ='https://open.spotify.com/track/0tbjiOUl4k492KPdWZS9sy'
WHERE USA_TS_title = '7 Summers';

UPDATE USA_TS
SET USA_TS_Spotify ='https://open.spotify.com/track/3KkXRkHbMCARz0aVfEt68P'
WHERE USA_TS_title = 'Sunflower - Spider-Man: Into the Spider-Verse';

UPDATE USA_TS
SET USA_TS_Spotify ='https://open.spotify.com/track/7ce20yLkzuXXLUhzIDoZih'
WHERE USA_TS_title = 'Before You Go';


UPDATE USA_TS
SET USA_TS_Spotify ='https://open.spotify.com/track/463CkQjx2Zk1yXoBuierM9'
WHERE USA_TS_title = 'Levitating (feat. DaBaby)';

UPDATE USA_TS
SET USA_TS_Spotify ='https://open.spotify.com/track/45S5WTQEGOB1VHr1Q4FuPl'
WHERE USA_TS_title = 'Golden';




































