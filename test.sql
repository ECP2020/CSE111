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

SELECT * FROM Albums;


CREATE TABLE SelectedItems(
                    checked varchar(25) null
                );

ALTER DATABASE [test] SET READ_WRITE WITH NO_WAIT;
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


---ADD HERE
ALTER TABLE Global_TS
ADD TS_Spotify varchar(255) null;


UPDATE Global_TS
SET TS_Spotify ='https://open.spotify.com/track/35mvY5S1H3J2QZyna3TFe0'
WHERE TS_title = 'positions';


UPDATE Global_TS
SET TS_Spotify ='https://open.spotify.com/track/3tjFYV6RSFtuktYl3ZtYcq'
WHERE TS_title LIKE '%Mood%';


UPDATE Global_TS
SET TS_Spotify ='https://open.spotify.com/track/02kDW379Yfd5PzW5A6vuGt'
WHERE TS_title = 'Lemonade (feat. Gunna, Don Toliver & NAV)';

UPDATE Global_TS
SET TS_Spotify ='https://open.spotify.com/track/0t1kP63rueHleOhQkYSXFY'
WHERE TS_title LIKE '%Dynamite%';


UPDATE Global_TS
SET TS_Spotify ='https://open.spotify.com/track/4g7ErSF4oImNnITtyiFowz'
WHERE TS_title LIKE '%What%you%know%bout%love';

UPDATE Global_TS
SET TS_Spotify ='https://open.spotify.com/track/4Oun2ylbjFKMPTiaSbbCih'
WHERE TS_title LIKE '%WAP%';


UPDATE Global_TS
SET TS_Spotify ='https://open.spotify.com/track/4y4spB9m0Q6026KfkAvy9Q'
WHERE TS_title = 'Lonely (with benny blanco)';

--Hawaii

UPDATE Global_TS
SET TS_Spotify ='https://open.spotify.com/track/4uoR6qeWeuL4Qeu2qJzkuG'
WHERE TS_title = 'Hawái';

UPDATE Global_TS
SET TS_Spotify ='https://open.spotify.com/track/0VjIjW4GlUZAMYd2vXMi3b'
WHERE TS_title LIKE '%Blinding%';

UPDATE Global_TS
SET TS_Spotify ='https://open.spotify.com/track/5u1n1kITHCxxp8twBcZxWy'
WHERE TS_title LIKE '%Holy%';

UPDATE Global_TS
SET TS_Spotify ='https://open.spotify.com/track/6UelLqGlWMcVH1E5c4H7lY'
WHERE TS_title LIKE '%Watermelon%';


UPDATE Global_TS
SET TS_Spotify ='https://open.spotify.com/track/0PvFJmanyNQMseIFrU708S'
WHERE TS_title LIKE '%For%the%Night%';

UPDATE Global_TS
SET TS_Spotify ='https://open.spotify.com/track/6cx06DFPPHchuUAcTxznu9'
WHERE TS_title = 'Head & Heart (feat. MNEK)';

UPDATE Global_TS
SET TS_Spotify ='https://open.spotify.com/track/45bE4HXI0AwGZXfZtMp8JR'
WHERE TS_title LIKE '%you%broke%me%first%';

UPDATE Global_TS
SET TS_Spotify ='https://open.spotify.com/track/6AGOKlMZWLCaEJGnaROtF9'
WHERE TS_title = 'Put Your Records On';

UPDATE Global_TS
SET TS_Spotify ='https://open.spotify.com/track/11EnQRgRMJwMAesfkB5pnu'
WHERE TS_title = 'Se Te Nota (with Guaynaa)';

--
UPDATE Global_TS
SET TS_Spotify ='https://open.spotify.com/track/7ytR5pFWmSjzHJIeQkgog4'
WHERE TS_title LIKE '%ROCKSTAR%';

--realacion

UPDATE Global_TS
SET TS_Spotify ='https://open.spotify.com/track/5KCbr5ndeby4y4ggthdiAb'
WHERE TS_title = 'Relación - Remix';

UPDATE Global_TS
SET TS_Spotify ='https://open.spotify.com/track/5KCbr5ndeby4y4ggthdiAb'
WHERE TS_title LIKE '%Wonder%';

UPDATE Global_TS
SET TS_Spotify ='https://open.spotify.com/track/4xqrdfXkTW4T0RauPLv3WA'
WHERE TS_title LIKE '%Heather%';

--savage love

UPDATE Global_TS
SET TS_Spotify ='https://open.spotify.com/track/1xQ6trAsedVPCdbtDAmk0c'
WHERE TS_title = 'Savage Love (Laxed - Siren Beat)';

UPDATE Global_TS
SET TS_Spotify ='https://open.spotify.com/track/7qEHsqek33rTcFNT9PFqLf'
WHERE TS_title = 'Someone You Loved';

--roses

--la toxica

--vida de rico

--un dia 

--take you danciing 

UPDATE Global_TS
SET TS_Spotify ='https://open.spotify.com/track/2Wo6QQD1KMDWeFkkjLqwx5'
WHERE TS_title = 'Roses - Imanbek Remix';

UPDATE Global_TS
SET TS_Spotify ='https://open.spotify.com/track/15OjBeqNX3bShsGYQbteRv'
WHERE TS_title = 'La Tóxica';

UPDATE Global_TS
SET TS_Spotify ='https://open.spotify.com/track/73nAK3HgQK8dak83Y2WQ8F'
WHERE TS_title = 'Vida de Rico';

UPDATE Global_TS
SET TS_Spotify ='https://open.spotify.com/track/0EhpEsp4L0oRGM0vmeaN5e'
WHERE TS_title = 'UN DIA (ONE DAY) (Feat. Tainy)';

UPDATE Global_TS
SET TS_Spotify ='https://open.spotify.com/track/59qrUpoplZxbIZxk6X0Bm3'
WHERE TS_title = 'Take You Dancing';



UPDATE Global_TS
SET TS_Spotify ='https://open.spotify.com/track/0ofHAoxe9vBkTCp2UQIavz'
WHERE TS_title LIKE '%Dreams%';

--La curiosidad 

UPDATE Global_TS
SET TS_Spotify ='https://open.spotify.com/track/4HYDUMY0xSpeBr0AMY9cUz'
WHERE TS_title = 'La Curiosidad';

UPDATE Global_TS
SET TS_Spotify ='https://open.spotify.com/track/7ce20yLkzuXXLUhzIDoZih'
WHERE TS_title = 'Before You Go';

--se te nota

UPDATE Global_TS
SET TS_Spotify ='https://open.spotify.com/track/11EnQRgRMJwMAesfkB5pnu'
WHERE TS_title = 'Before You Go';

UPDATE Global_TS
SET TS_Spotify ='https://open.spotify.com/track/2J4P46vCFm1rPkNkp9pZWX'
WHERE TS_title = 'Ice Cream (with Selena Gomez)';

--ice cream by selena


--breaking me 

UPDATE Global_TS
SET TS_Spotify ='https://open.spotify.com/track/3H7ihDc1dqLriiWXwsc2po'
WHERE TS_title = 'Breaking Me';

--midnight sky

UPDATE Global_TS
SET TS_Spotify ='https://open.spotify.com/track/27ycaQnQAxaPiyeg3nr2aB'
WHERE TS_title = 'Midnight Sky';


UPDATE Global_TS
SET TS_Spotify ='https://open.spotify.com/track/6EDO9iiTtwNv6waLwa1UUq'
WHERE TS_title LIKE '%POPSTAR%';

--dance monkey

UPDATE Global_TS
SET TS_Spotify ='https://open.spotify.com/track/2XU0oxnq2qxCpomAAuJY8K'
WHERE TS_title = 'Dance Monkey';


UPDATE Global_TS
SET TS_Spotify ='https://open.spotify.com/track/4Ws314Ylb27BVsvlZOy30C'
WHERE TS_title = 'Lovesick Girls';
--lovestick girls

--una locura

UPDATE Global_TS
SET TS_Spotify ='https://open.spotify.com/track/5y7DaS3jAc9eZzcSOoUIwU'
WHERE TS_title = 'Una Locura';

UPDATE Global_TS
SET TS_Spotify ='https://open.spotify.com/track/463CkQjx2Zk1yXoBuierM9'
WHERE TS_title = 'Levitating (feat. DaBaby)';

--jeans
UPDATE Global_TS
SET TS_Spotify ='https://open.spotify.com/track/3GtnId3Cm1Xa6joCj08nzW'
WHERE TS_title = 'Jeans';

--ay dios mio 

UPDATE Global_TS
SET TS_Spotify = 'https://open.spotify.com/track/7x4ASXYEKfQBCewcZhK776'
WHERE TS_title = 'Ay, DiOs Mío!';

--despeinada
UPDATE Global_TS
SET TS_Spotify ='https://open.spotify.com/track/0JAZWvvqttGFm4UMDsPQXC'
WHERE TS_title = 'Despeinada';

UPDATE Global_TS
SET TS_Spotify ='https://open.spotify.com/track/7ndTONDDRFGiPnnhOzOXxq'
WHERE TS_title = 'La Nota';

--la nota 

UPDATE Global_TS
SET TS_Spotify ='https://open.spotify.com/track/2Y0wPrPQBrGhoLn14xRYCG'
WHERE TS_title LIKE '%Come%Go%';



UPDATE Global_TS
SET TS_Spotify ='https://open.spotify.com/track/45S5WTQEGOB1VHr1Q4FuPl'
WHERE TS_title = 'Golden';

UPDATE Global_TS
SET TS_Spotify ='https://open.spotify.com/track/0AUvWawuP0ibk4SQ3sIZjk'
WHERE TS_title = 'Daisy';

UPDATE Global_TS
SET TS_Spotify ='https://open.spotify.com/track/5rZlwNFl01HqLWBQGryKSm'
WHERE TS_title = 'Mood Swings (feat. Lil Tjay)';

--how you like that 

UPDATE Global_TS
SET TS_Spotify ='https://open.spotify.com/track/4SFknyjLcyTLJFPKD2m96o'
WHERE TS_title = 'How You Like That';



UPDATE Global_TS
SET TS_Spotify ='https://open.spotify.com/track/6IBcOGPsniK3Pso1wHIhew'
WHERE TS_title = 'Forever After All';

--more 

UPDATE Global_TS
SET TS_Spotify ='https://open.spotify.com/track/6juLaduD4STCUDWT0AYun4'
WHERE TS_title = 'MORE';





