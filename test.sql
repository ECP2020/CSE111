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

--2019 SONGS 
ALTER TABLE Nineteen_TS
ADD TS_Spotify varchar(255) null;

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/track/2YpeDb67231RjR0MgVLzsG'
WHERE nine_ts_title = 'Old Town Road - Remix';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/track/2Fxmhks0bxGSBdJ92vM42m'
WHERE nine_ts_title = 'bad guy';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/track/0TK2YIli7K1leLovkQiNik'
WHERE nine_ts_title = 'Senorita';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/track/6ocbgoVGwYJhOv1GgI9NsF'
WHERE nine_ts_title = '7 rings';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/track/3KkXRkHbMCARz0aVfEt68P'
WHERE nine_ts_title = 'Sunflower - Spider-Man: Into the Spider-Verse';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/track/20GMdpeWHUEtjAdpdy4YIt'
WHERE nine_ts_title = 'Juicy';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/track/5p7ujcrUXASCNwRaWNHR1C'
WHERE nine_ts_title = 'Without me';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/track/0rIAC4PXANcKmitJfoqmVm'
WHERE nine_ts_title = 'Motivation';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/track/2VxeLyX666F8uXCJ0dZF8B'
WHERE nine_ts_title = 'Shallow';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/track/4GqkWberT9cHK9P6REykBd'
WHERE nine_ts_title = 'boyfriend (with Social House)';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/track/7qEHsqek33rTcFNT9PFqLf'
WHERE nine_ts_title = 'Someone You Loved';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/track/7pDnzwe6GeOmVcNoGnWi0a'
WHERE nine_ts_title = 'Nights Like This (feat. Ty Dolla $ign)';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/track/44ADyYoY5liaRa3EOAl4uf'
WHERE nine_ts_title = 'Slide Away';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/track/6WrI0LAC5M1Rw2MnX2ZvEg'
WHERE nine_ts_title = 'Dont Start Now';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/track/56JyMaElW79S7TDWh1Zw1m'
WHERE nine_ts_title = 'On A Roll';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/5XpEKORZ4y6OrCZSKsi46A?highlight=spotify:track:0Oqc0kKFsQ6MhFOLBNZIGX'
WHERE nine_ts_title = 'Doin Time';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/7baaCf70tVcUBL2bbkuXjo?highlight=spotify:track:6b2RcmUt1g9N9mQ3CbjX2Y'
WHERE nine_ts_title = 'How Do You Sleep?';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/2Xqs4kJBrZAHN1XVqy9QOK?highlight=spotify:track:5N1o6d8zGcSZSeMFkOUQOk'
WHERE nine_ts_title = 'Hot Girl Summer (feat. Nicki Minaj & Ty Dolla $ign)';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/7mdpibDh6Sec6o6zItcSEH?highlight=spotify:track:5KBARWIxeMGkvUax9VtVC9'
WHERE nine_ts_title = 'My Type';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/2fYhqwDWXjbpjaIJPEfKFw?highlight=spotify:track:4kV4N9D1iKVxx1KLvtTpjS'
WHERE nine_ts_title = 'break up with your girlfriend, im bored';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/4GrFuXwRmEBJec22p58fsD?highlight=spotify:track:3z4CGd63tpUn9a6oQSG0CI'
WHERE nine_ts_title = 'Location (feat. Burna Boy)';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/16H9XbDP9IxeyOohsXkKXb?highlight=spotify:track:5naYe7rLMZcLfO1DKg48MK'
WHERE nine_ts_title = 'All Day And Night';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/4zOhjJfe0dwqsNdDYk622E?highlight=spotify:track:2tnVG71enUj33Ic2nFN6kZ'
WHERE nine_ts_title = 'Ride It';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/2X7koaJ4bojj8zMqacqIhW?highlight=spotify:track:6ImEBuxsbuTowuHmg3Z2FO'
WHERE nine_ts_title = 'Mad Love';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/1PvEp0qeU6o2rm0i2qUC2N?highlight=spotify:track:6y1UtRcHQU07aUs3oxZ8Yn'
WHERE nine_ts_title = 'Sorry';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/2Qxc2NJ7yPKVFRWi3llRr2?highlight=spotify:track:6zeeWid2sgw4lap2jV61PZ'
WHERE nine_ts_title = 'Better';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/3oIFxDIo2fwuk4lwCmFZCx?highlight=spotify:track:1DhRbox3xkceP64k3JeYfW'
WHERE nine_ts_title = 'Antisocial (with Travis Scott)';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/46K4raQPIGem3N031upNj9?highlight=spotify:track:2bjUEg4jBtKBlPdNrTAppI'
WHERE nine_ts_title = 'Easier';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/4VHqJxJ3wZ9znAPhgcwYwa?highlight=spotify:track:23GvTfcGK454ppLsts3W44'
WHERE nine_ts_title = 'Strike a Pose (feat. Aitch)';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/2KJjOBX280F3hZZE1xO33O?highlight=spotify:track:3HWzoMvoF3TQfYg4UPszDq'
WHERE nine_ts_title = 'Truth Hurts';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/1DNx0H5ZX1ax3yyRwtgT4S?highlight=spotify:track:1tNJrcVe6gwLEiZCtprs1u'
WHERE nine_ts_title = '3 Nights';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/6KT8x5oqZJl9CcnM66hddo?highlight=spotify:track:6TqXcAFInzjp0bODyvrWEq'
WHERE nine_ts_title = 'Talk (feat. Disclosure)';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/1V9oE8bVilClrk5naqyyvL?highlight=spotify:track:6Qs4SXO9dwPj5GKvVOv8Ki'
WHERE nine_ts_title = 'Dancing With A Stranger (with Normani)';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/6EgJXcGqaUvgZIF9bqPXfP?highlight=spotify:track:4vjpLMyL3ZO6aphdYr8XYw'
WHERE nine_ts_title = 'im so tired...';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/5zi7WsKlIiUXv09tbGLKsE?highlight=spotify:track:5hVghJ4KaYES3BFUATCYn0'
WHERE nine_ts_title = 'EARFQUAKE';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/3YPFaTR7WMi1Hd4NVKdCJx?highlight=spotify:track:4l0Mvzj72xxOpRrp6h8nHi'
WHERE nine_ts_title = 'Lose You To Love Me';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/3xgS4rfthlsvhW7J2WLiiR?highlight=spotify:track:7LzouaWGFCy4tkXDOOnEyM'
WHERE nine_ts_title = 'Liar';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/1yZZdubJ2rovC4QIBP8riQ?highlight=spotify:track:1yAPglN5AGf7UoLK062ZYq'
WHERE nine_ts_title = 'Wish You Well';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/7hBV0wo7cDHZQLYnuOJ312?highlight=spotify:track:6KgBpzTuTRPebChN0VTyzV'
WHERE nine_ts_title = 'Good as Hell';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/4g1ZRSobMefqF6nelkgibi?highlight=spotify:track:21jGcNKet2qwijlDFuPiPb'
WHERE nine_ts_title = 'Circles';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/6p9Y1K9yu3ojyS8fBJXUnp?highlight=spotify:track:7DcvwMAiqKJQD1rrdfxSDx'
WHERE nine_ts_title = 'The London (feat. J. Cole & Travis Scott)';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/0syM7OUAhV7S6XmOa4nLUZ?highlight=spotify:track:5WHTFyqSii0lmT9R21abT8'
WHERE nine_ts_title = 'Dont Call Me Up';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/5a4sJJ3qjn6hqRsvm0Veso?highlight=spotify:track:0PG9fbaaHFHfre2gUVo7AN'
WHERE nine_ts_title = 'Please Me';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/41S9bfzXTSGK4HU2mp5qXH?highlight=spotify:track:0qc4QlcCxVTGyShurEv1UU'
WHERE nine_ts_title = 'Post Malone (feat. RANI)';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/5MKInakULmoBNApeB2ZB3A?highlight=spotify:track:543bCW2ruMPmxUBWirQ3MR'
WHERE nine_ts_title = 'Cross Me (feat. Chance the Rapper & PnB Rock)';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/2fYhqwDWXjbpjaIJPEfKFw?highlight=spotify:track:3e9HZxeyfWwjeyPAMmWSSQ'
WHERE nine_ts_title = 'thank u, next';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/3KjXg0MDej2pG9fv6I22lT?highlight=spotify:track:5PYQUBXc7NYeI1obMKSJK0'
WHERE nine_ts_title = 'Never Really Over';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/6bPpXqJRpjwy0hLyUGtzYc?highlight=spotify:track:59ywHNwwchG4nZJMLyxSzd'
WHERE nine_ts_title = 'Clout (feat. Cardi B)';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/2drqVzCt52KiDxKgl0Rq0P?highlight=spotify:track:2GGMabyHXnJmjY6CXhhB2e'
WHERE nine_ts_title = 'Money';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/1Uf67JAtkVWfdydzFFqNF2?highlight=spotify:track:0DiDStADDVh3SvAsoJAFMk'
WHERE nine_ts_title = 'Only Human';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/06S3Qjh4QWLtn6c7CVhYh7?highlight=spotify:track:2TH65lNHgvLxCKXM3apjxI'
WHERE nine_ts_title = 'Callaita';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/1AvXa8xFEXtR3hb4bgihIK?highlight=spotify:track:5KawlOMHjWeUjQtnuRs22c'
WHERE nine_ts_title = 'Boy With Luv (feat. Halsey)';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/0cqRGWD3uc5Lggpducn5nD?highlight=spotify:track:1DFD5Fotzgn6yYXkYsKiGs'
WHERE nine_ts_title = 'Piece Of Your Heart';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/4wquJImu8RtyEuDtIAsfcE?highlight=spotify:track:6oJ6le65B3SEqPwMRNXWjY'
WHERE nine_ts_title = 'Higher Love';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/7JoyVaXzxpgTPjkgB8mWk3?highlight=spotify:track:7cz506PyIgh2bMN90Mc8Tn'
WHERE nine_ts_title = 'Boasty (feat. Idris Elba)';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/5AHWNPo3gllDmixgAoFru4?highlight=spotify:track:6UnCGAEmrbGIOSmGRZQ1M2'
WHERE nine_ts_title = 'Light On';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/0p0W4RXcnc59jgatcdZozO?highlight=spotify:track:116H0KvKr2Zl4RPuVBruDO'
WHERE nine_ts_title = 'MIA (feat. Drake)';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/35MvbFXqp1ESDkKNqYfOIM?highlight=spotify:track:2cytBOLpwFRX7J9URCrFIe'
WHERE nine_ts_title = 'Options';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/7pkLXlFdpQDfmHujT2AbBK?highlight=spotify:track:0d2iYfpKoM0QCKvcLCkBao'
WHERE nine_ts_title = 'Eastside (with Halsey & Khalid)';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/6AOApdjFLkdHZwGWs0JLsB?highlight=spotify:track:1oLSje4Ot5qRUq8FqYeXOl'
WHERE nine_ts_title = 'Don’t Feel Like Crying';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/0vrKGjXSGcTsxNGxQdXT5p?highlight=spotify:track:7b4ky1LlQLFhXHmhZkFgqV'
WHERE nine_ts_title = 'Ladbroke Grove';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/3xiq77UtnlDXfcRz5IJu20?highlight=spotify:track:0aMiATaLkj7ffT4W9Ng0TM'
WHERE nine_ts_title = 'Wow.';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/6gPZmYBSipug1asf4zu9jh?highlight=spotify:track:4NSW0Km5ZG60L8FthUebPJ'
WHERE nine_ts_title = 'What I Like About You (feat. Theresa Rex)';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/1NAmidJlEaVgA3MpcPFYGq?highlight=spotify:track:1dGr1c8CrMLDpV6mPbImSI'
WHERE nine_ts_title = 'Lover';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/2sBB17RXTamvj7Ncps15AK?highlight=spotify:track:0u2P5u6lvoDfwTYjAADbn4'
WHERE nine_ts_title = 'lovely (with Khalid)';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/7viSsSKXrDa95CtUcuc1Iv?highlight=spotify:track:18PergoIrGmRyeYxnaXJN2'
WHERE nine_ts_title = 'Kill This Love';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/00HZxSA1sOS9T3nA950sg4?highlight=spotify:track:5ry2OE6R2zPQFDO85XkgRb'
WHERE nine_ts_title = 'Money In The Grave (Drake ft. Rick Ross)';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/2hBfao8GWZwHlUGDB8HVQO?highlight=spotify:track:27rdGxbavYJeBphck5MZAF'
WHERE nine_ts_title = 'Nothing Breaks Like a Heart (feat. Miley Cyrus)';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/2WrNHOba5u6P9S9xEboaUy?highlight=spotify:track:3j84U36KvLeXNDPv4t5pI8'
WHERE nine_ts_title = 'Pure Water (with Migos)';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/3r5hf3Cj3EMh1C2saQ8jyt?highlight=spotify:track:1wJRveJZLSb1rjhnUHQiv6'
WHERE nine_ts_title = 'Swervin (feat. 6ix9ine)';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/4g1ZRSobMefqF6nelkgibi?highlight=spotify:track:0t3ZvGKlmYmVsDzBJAXK8C'
WHERE nine_ts_title = 'Goodbyes (Feat. Young Thug)';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/1PTTAq0OxggVgqP5WTYWDh?highlight=spotify:track:2ksOAxtIxY8yElEWw8RhgK'
WHERE nine_ts_title = 'China';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/1feZ7dUgDquoQRddxlI5BH?highlight=spotify:track:44ZJ4hLD5onikKsVLQaILr'
WHERE nine_ts_title = 'Vossi Bop';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/0S0KGZnfBGSIssfF54WSJh?highlight=spotify:track:43zdsphuZLzwA9k4DJhU0I'
WHERE nine_ts_title= 'when the partys over';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/1NAmidJlEaVgA3MpcPFYGq?highlight=spotify:track:6RRNNciQGZEXnqk8SQ9yv5'
WHERE nine_ts_title = 'You Need To Calm Down';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/3r5hf3Cj3EMh1C2saQ8jyt?highlight=spotify:track:3Ol2xnObFdKV9pmRD2t9x8'
WHERE nine_ts_title = 'Look Back at It';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/1J2BrRxtQjVUa7X9Ne99xD?highlight=spotify:track:6LsAAHotRLMOHfCsSfYCsz'
WHERE nine_ts_title = 'If I Cant Have You';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/2m9Vuc9Q19qhSm6RQmBgsR?highlight=spotify:track:1c0hsvHLELX6y8qymnpLKL'
WHERE nine_ts_title = 'Soltera - Remix';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/41GuZcammIkupMPKH2OJ6I?highlight=spotify:track:2xLMifQCjDGFmkHkpNLD9h'
WHERE nine_ts_title = 'SICKO MODE';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/3E12WU80fDMyu7GyIAx7wJ?highlight=spotify:track:4evmHXcjt3bTUHD1cvny97'
WHERE nine_ts_title = 'Beautiful People (feat. Khalid)';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/6UYZEYjpN1DYRW0kqFy9ZE?highlight=spotify:track:2IRZnDFmlqMuOrYOLnZZyc'
WHERE nine_ts_title = 'Going Bad (feat. Drake)';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/3zeaEOcG98LJoqyjmJhPed?highlight=spotify:track:410PdvdeRJSc7D3YRkNfIi'
WHERE nine_ts_title = 'Keisha & Becky - Remix';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/0O1PJ0t69iTO5yWrIeIga0?highlight=spotify:track:2gwkD6igEhQbDQegRCcdoB'
WHERE nine_ts_title = 'Suge';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/1Uf67JAtkVWfdydzFFqNF2?highlight=spotify:track:22vgEDb5hykfaTwLuskFGD'
WHERE nine_ts_title = 'Sucker';


UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/71BrrQxz8mZAneNSDE9Lov?highlight=spotify:track:1000nHvUdawXuUHgBod4Wv'
WHERE nine_ts_title = 'Panini';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/0S0KGZnfBGSIssfF54WSJh?highlight=spotify:track:4SSnFejRGlZikf02HLewEF'
WHERE nine_ts_title = 'bury a friend';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/0ZHyvPke0EcVt6rYA8Ins3?highlight=spotify:track:4w8niZpiMy6qz1mntFA5uM'
WHERE nine_ts_title = 'Taki Taki (feat. Selena Gomez, Ozuna & Cardi B)';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/4ow6xJwn49gpWz7iHpOzWY?highlight=spotify:track:2wrJq5XKLnmhRXHIAf9xBa'
WHERE nine_ts_title = '10,000 Hours (with Justin Bieber)';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/3XzSOIE6zGLliuqsVGLmUc?highlight=spotify:track:2JvzF1RMd7lE3KmFlsyZD8'
WHERE nine_ts_title = 'MIDDLE CHILD';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/007DWn799UWvfY1wwZeENR?highlight=spotify:track:2t8yVaLvJ0RenpXUIAC52d'
WHERE nine_ts_title = 'a lot';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/5n1GSzC1Reao29ScnpLYqp?highlight=spotify:track:0FZ4Dmg8jJJAPJnvBIzD9z'
WHERE nine_ts_title = 'ZEZE (feat. Travis Scott & Offset)';


UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/0UywfDKYlyiu1b38DRrzYD?highlight=spotify:track:2XU0oxnq2qxCpomAAuJY8K'
WHERE nine_ts_title = 'Dance Monkey';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/6NHS3hV16MZyfcp0nSHdrd?highlight=spotify:track:5icOoE6VgqFKohjWWNp0Ac'
WHERE nine_ts_title = 'Here With Me';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/1TmT1uvqRDd6uVbU5Ejm7o?highlight=spotify:track:70HaKFSHt2oOwUYy6STg7G'
WHERE nine_ts_title = 'Leave Me Alone';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/5658aM19fA3JVwTK6eQX70?highlight=spotify:track:4Of7rzpRpV1mWRbhp5rAqG'
WHERE nine_ts_title = 'Bruises';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/6Ad1E9vl75ZB3Ir87zwXIJ?highlight=spotify:track:2x0RZdkZcD8QRI53XT4GI5'
WHERE nine_ts_title = 'SOS (feat. Aloe Blacc)';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/3oIFxDIo2fwuk4lwCmFZCx?highlight=spotify:track:1AI7UPw3fgwAFkvAlZWhE0'
WHERE nine_ts_title = 'Take Me Back to London (feat. Stormzy)';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/6jKZplJpy21R5lHaYHHjmZ?highlight=spotify:track:2qxmye6gAegTMjLKEBoR3d'
WHERE nine_ts_title = 'Let Me Down Slowly';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/4462gjWz3403IpdzqHBHvl?highlight=spotify:track:5LpzUEzPfHN7YYKHbCJrmR'
WHERE nine_ts_title = 'Ransom';

UPDATE Nineteen_TS
SET TS_Spotify ='https://open.spotify.com/album/1yDDPX98edTDjG5hFqY2xL?highlight=spotify:track:6700Z4Izi8EbB6JNthU6Ma'
WHERE nine_ts_title = 'Hold Me While You Wait';


ALTER TABLE Eightteen_TS
ADD TS_Spotify varchar(255) null;

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/1ATL5GLyefJaxhQzSPVrLX?highlight=spotify:track:6DCZcSspjsKoFjzjrWoCdn'
WHERE eight_ts_title = 'Gods Plan';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/623PL2MBg50Br5dLXC9E9e?highlight=spotify:track:7ytR5pFWmSjzHJIeQkgog4'
WHERE eight_ts_title = 'rockstar (feat. 21 Savage)';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/3T4tUhGYeRNVUGevb0wThu?highlight=spotify:track:0tgVpDi06FyKpA1z0VMD4v'
WHERE eight_ts_title = 'Perfect';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/3tx8gQqWbGwqIGZHqDNrGe?highlight=spotify:track:5OCJzvD7sykQEKHH7qAC3C'
WHERE eight_ts_title = 'God is a woman';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/2vD3zSQr8hNlg0obNel4TE?highlight=spotify:track:1rfofaqEpACxVEHIZBJe6W'
WHERE eight_ts_title = 'Havana (feat. Young Thug)';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/6tkjU4Umpo79wwkgPMV3nZ?highlight=spotify:track:285pBltuF7vW8TeWk8hdRR'
WHERE eight_ts_title = 'Lucid Dreams';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/7nEiwcUSwycvC77kZ9ub7c?highlight=spotify:track:09IStsImFySgyp0pIQdqAc'
WHERE eight_ts_title = 'The Middle';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/1BmxOYHjQv1dKZRr13YRZM?highlight=spotify:track:08bNPGLD8AhKpnnERrAc6G'
WHERE eight_ts_title = 'FRIENDS';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/4sDAyYEMhD2YyREWKxj3aD?highlight=spotify:track:3bsycjdQtbcJeR6822SBvd'
WHERE eight_ts_title = 'I Like It';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/3pLdWdkj83EYfDN6H2N8MR?highlight=spotify:track:3GCdLUSnKSMJhs4Tj6CV3s'
WHERE eight_ts_title = 'All The Stars (with SZA)';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/3tx8gQqWbGwqIGZHqDNrGe?highlight=spotify:track:2qT1uLXPVPzGgFOx4jtEuo'
WHERE eight_ts_title = 'no tears left to cry';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/67ErXRS9s9pVG8JmFbrdJ0?highlight=spotify:track:6CTWathupIiDs7U4InHnDA'
WHERE eight_ts_title = 'Trip';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/7GEzhoTiqcPYkOprWQu581?highlight=spotify:track:7ef4DlsgrMEH11cDZd32M6'
WHERE eight_ts_title = 'One Kiss (with Dua Lipa)';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/0lSF3fStnLLcmNBYdtXD1M?highlight=spotify:track:0BrDfbNc3HiIHPGfTT8DRc'
WHERE eight_ts_title = 'Body (feat. brando)';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/4qZBW3f2Q8y0k1A84d4iAO?highlight=spotify:track:09mEdoA6zrmBPgTEN5qXmN'
WHERE eight_ts_title = 'Call Out My Name';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/4KdtEKjY3Gi0mKiSdy96ML?highlight=spotify:track:2Yl4OmDby9iitgNWZPwxkd'
WHERE eight_ts_title = 'Be Careful';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/0gLjyIohhJ5LxXPRJhIOtq?highlight=spotify:track:70eehEqNug7oAhozjhG21t'
WHERE eight_ts_title = 'Bad Vibe';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/4eLPsYPBmXABThSJ821sqY?highlight=spotify:track:6PGoSes0D9eUDeeAafB2As'
WHERE eight_ts_title = 'LOVE. FEAT. ZACARI.';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/3o09FMrUQ5TVBUYb6msCMi?highlight=spotify:track:0At2qAoaVjIwWNAqrscXli'
WHERE eight_ts_title = 'Bood Up';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/4CEAev7neETRdqBFtzA8B9?highlight=spotify:track:45Egmo7icyopuzJN0oMEdk'
WHERE eight_ts_title = 'Love Lies (with Normani)';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/0yd01cU78rnlFXq6vRxPSR?highlight=spotify:track:5IaHrVsrferBYDm0bDyABy'
WHERE eight_ts_title = 'Taste (feat. Offset)';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/1ATL5GLyefJaxhQzSPVrLX?highlight=spotify:track:3CA9pLiwRIGtUBiMjbZmRw'
WHERE eight_ts_title = 'Nice For What';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/0K1826JxL1dViQBsEKApN5?highlight=spotify:track:15DwFznkBJir7AK9PyMyRR'
WHERE eight_ts_title = '17';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/7pkLXlFdpQDfmHujT2AbBK?highlight=spotify:track:0d2iYfpKoM0QCKvcLCkBao'
WHERE eight_ts_title = 'Eastside (with Halsey & Khalid)';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/7lqieLm717j9Z8JrG7POkS?highlight=spotify:track:2P91MQbaiQOfbiz9VqhqKQ'
WHERE eight_ts_title = 'I Like Me Better';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/01sfgrNbnnPUEyz6GZYlt9?highlight=spotify:track:76cy1WJvNGJTj78UqeA5zr'
WHERE eight_ts_title = 'IDGAF';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/41GuZcammIkupMPKH2OJ6I?highlight=spotify:track:2xLMifQCjDGFmkHkpNLD9h'
WHERE eight_ts_title = 'SICKO MODE';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/02drHFQa59AoJWU6DXSSjd?highlight=spotify:track:5WvAo7DNuPRmk4APhdPzi8'
WHERE eight_ts_title = 'No Brainer';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/2sBB17RXTamvj7Ncps15AK?highlight=spotify:track:0u2P5u6lvoDfwTYjAADbn4'
WHERE eight_ts_title = 'lovely (with Khalid)';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/1ATL5GLyefJaxhQzSPVrLX?highlight=spotify:track:0TlLq3lA83rQOYtrqBqSct'
WHERE eight_ts_title = 'Nonstop';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/5IYvKd22yQkJRfoIStesbX?highlight=spotify:track:0ZNrc4kNeQYD9koZ3KvCsy'
WHERE eight_ts_title = 'BIG BANK (feat. 2 Chainz, Big Sean, Nicki Minaj)';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/3ggBBGRhkDVAu7pQRXRPXO?highlight=spotify:track:5Gu0PDLN4YJeW75PpBSg9p'
WHERE eight_ts_title = 'Let Me Go (with Alesso, Florida Georgia Line & watt)';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/7fd7SEK25VS3gJAUgSwL6y?highlight=spotify:track:4wFjTWCunQFKtukqrNijEt'
WHERE eight_ts_title = 'MotorSport';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/5zg7gO8BMZpwEt8Cb8PNC0?highlight=spotify:track:1HagMz5nWk1HmevNCBOxF3'
WHERE eight_ts_title = 'Answerphone (feat. Yxng Bane)';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/0ZHyvPke0EcVt6rYA8Ins3?highlight=spotify:track:4w8niZpiMy6qz1mntFA5uM'
WHERE eight_ts_title = 'Taki Taki (with Selena Gomez, Ozuna & Cardi B)';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/0l3xFNgfm1mT3fLIRsgRtW?highlight=spotify:track:01k24g94i1JvkFLQmVEdCd'
WHERE eight_ts_title = 'If Youre Over Me';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/6c5gDwB7Xo58thk2vap4Ch?highlight=spotify:track:63SevszngYpZOwf63o61K4'
WHERE eight_ts_title = 'Nevermind';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/5EEkfRgfYHiFu0lGur6Z6M?highlight=spotify:track:7uzmGiiJyRfuViKKK3lVmR'
WHERE eight_ts_title = 'Mine';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/01sfgrNbnnPUEyz6GZYlt9?highlight=spotify:track:2ekn2ttSfGqwhhate0LSR0'
WHERE eight_ts_title = 'New Rules';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/7GjG91tyHQNGEHzKJaqOi0?highlight=spotify:track:7y9iMe8SOB6z3NoHE2OfXl'
WHERE eight_ts_title = 'Bad At Love';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/1MvF4ulZKH7SaDQs9rE5nc?highlight=spotify:track:0Ult84lvFuqNvbyXwyRQ58'
WHERE eight_ts_title = 'I Miss You (feat. Julia Michaels)';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/0vRcQquqBlFvnezWldWfmt?highlight=spotify:track:4kWO6O1BUXcZmaxitpVUwp'
WHERE eight_ts_title = 'Jackie Chan';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/4KdtEKjY3Gi0mKiSdy96ML?highlight=spotify:track:6KBYefIoo7KydImq1uUQlL'
WHERE eight_ts_title = 'Bodak Yellow';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/6DEjYFkNZh67HP7R9PSZvv?highlight=spotify:track:6NFyWDv5CjfwuzoCkw47Xf'
WHERE eight_ts_title = 'Delicate';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/4f8pX9Vjs9uU5aKjqDNcDO?highlight=spotify:track:2l8nEO0vsTRCRnGqQty6qx'
WHERE eight_ts_title = 'FEFE';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/4RpgjxgSxcRwGNuWnImneN?highlight=spotify:track:514rhnksEwHUh6LxXsQ4Y9'
WHERE eight_ts_title = 'Back To You';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/3pLdWdkj83EYfDN6H2N8MR?highlight=spotify:track:77UjLW8j5UAGAGVGhR5oUK'
WHERE eight_ts_title = 'Pray For Me (with Kendrick Lamar)';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/2D0Hi3Jj6RFnpWDcSa0Otu?highlight=spotify:track:2iUXsYOEPhVqEBwsqP70rE'
WHERE eight_ts_title = 'Youngblood';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/3mumK2ar9b4JPhVOZR0V2p?highlight=spotify:track:3Vo4wInECJQuz9BIBMOu8i'
WHERE eight_ts_title = 'Finesse - Remix';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/4OaTrPkuAYkelxCnm92njS?highlight=spotify:track:3CWuU5kIw8zsWJTcgreUwl'
WHERE eight_ts_title = 'Strangers';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/0g1F5eGVwX4Sxi1n8ojPkE?highlight=spotify:track:42fw0rxRO2xbesF6mJfd4Y'
WHERE eight_ts_title = 'Tequila';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/1NXM5lF9YB7a3f1e4R48oH?highlight=spotify:track:51rXHuKN8Loc4sUlKPODgH'
WHERE eight_ts_title = 'Kings Dead (with Kendrick Lamar, Future & James Blake)';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/7arx9qPJexCsDz67El4qvk?highlight=spotify:track:0b9oOr2ZgvyQu88wzixux9'
WHERE eight_ts_title = 'This Is America';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/42wLKnuGyBLGWwH89lnimL?highlight=spotify:track:3V8UKqhEK5zBkBb6d6ub8i'
WHERE eight_ts_title = 'Te Boté - Remix';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/6hAxqfWO3xDGzjs8yad1pB?highlight=spotify:track:2ijef6ni2amuunRoKTlgww'
WHERE eight_ts_title = 'Sin Pijama';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/0MV1yCXcNNQBfwApqAVkH0?highlight=spotify:track:7sO5G9EABYOXQKNPNiE9NR'
WHERE eight_ts_title = 'Ric Flair Drip (& Metro Boomin)';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/2vD3zSQr8hNlg0obNel4TE?highlight=spotify:track:4eWQlBRaTjPPUlzacqEeoQ'
WHERE eight_ts_title = 'Never Be the Same';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/2bw00gRKNKbTFOqCkohbSh?highlight=spotify:track:7vGuf3Y35N4wmASOKLUVVU'
WHERE eight_ts_title = 'Silence';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/7lPoGKpCGgdKFAxpudhAH5?highlight=spotify:track:2BgEsaKNfHUdlh97KmvFyo'
WHERE eight_ts_title = '2002';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/7fd7SEK25VS3gJAUgSwL6y?highlight=spotify:track:2UVbBKQOdFAekPTRsnkzcf'
WHERE eight_ts_title = 'Stir Fry';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/7yf9ZJyHRbp8sHtpDKfPpt?highlight=spotify:track:6vN77lE9LK6HP2DewaN6HZ'
WHERE eight_ts_title = 'Yes Indeed';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/4w0N1CaZwQ5RPIuawqlYyy?highlight=spotify:track:66xn6tB8s3l8uhj02OGneE'
WHERE eight_ts_title = 'For You (Fifty Shades Freed) (& Rita Ora)';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/6trNtQUgC8cgbWcqoMYkOR?highlight=spotify:track:7dt6x5M1jzdTEt8oCbisTK'
WHERE eight_ts_title = 'Better Now';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/3NTHQYWOxCJ05u8fc80RNt?highlight=spotify:track:0KsB4TwgATg88aXCMBoO3Y'
WHERE eight_ts_title = 'Breathe';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/6W6kkscDtohJAnJ9M8Nc5b?highlight=spotify:track:2z4pcBLQXF2BXKFvd0BuB6'
WHERE eight_ts_title = 'Tip Toe (feat. French Montana)';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/1q7a5wZeti0neU2jDn8Dz3?highlight=spotify:track:6kPJZM97LwdG9QIsT7khp6'
WHERE eight_ts_title = 'Solo (feat. Demi Lovato)';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/42wvKYHFezpmDuAP43558f?highlight=spotify:track:0h1W19pS59KtEd7aDzF58i'
WHERE eight_ts_title = 'In My Feelings';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/3ThQ5dvf9wlqB0C7evh5nH?highlight=spotify:track:6AvfZXpbb6r35DfF7gHPRq'
WHERE eight_ts_title = 'Wait';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/4vLYreWxd2ptOAzPwTyBI3?highlight=spotify:track:1BuZAIO8WZpavWVbbq3Lci'
WHERE eight_ts_title = 'Powerglide (feat. Juicy J) - From SR3MM';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/1VAc77UvK5wj8ZSWCo3V2b?highlight=spotify:track:5k38wzpLb15YgncyWdTZE4'
WHERE eight_ts_title = 'Him & I (with Halsey)';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/0jBr0NzQG8IEi1jKvoHKJt?highlight=spotify:track:4PzsYXrHh4r2BxtpNjtvoF'
WHERE eight_ts_title = 'Jumanji';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/5s0rmjP8XOPhP6HhqOhuyC?highlight=spotify:track:75ZvA4QfFiZvzhj2xkaWAh'
WHERE eight_ts_title = 'I Fall Apart';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/1SR7c6j94aiuYEhUrfTbZ7?highlight=spotify:track:5xzCzOAOfRi4DOttSzvznR'
WHERE eight_ts_title = 'Lullaby';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/1XbNDGybI1iPfeQNJEeUdn?highlight=spotify:track:10Igtw8bSDyyFs7KIsKngZ'
WHERE eight_ts_title = 'Freaky Friday (feat. Chris Brown)';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/7o6j8wph7fvEcAL67jLVGN?highlight=spotify:track:083Qf6hn6sFL6xiOHlZUyn'
WHERE eight_ts_title = 'Ill Be There';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/3syh4e0H2YnXmzGzP5Rd3G?highlight=spotify:track:7EI6Iki24tBHAMxtb4xQN2'
WHERE eight_ts_title = 'Anywhere';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/7fd7SEK25VS3gJAUgSwL6y?highlight=spotify:track:6n4U3TlzUGhdSFbUUhTvLP'
WHERE eight_ts_title = 'Walk It Talk It';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/1ATL5GLyefJaxhQzSPVrLX?highlight=spotify:track:3qN5qMTKyEEmiTZD38BNTT'
WHERE eight_ts_title = 'Im Upset';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/5gQZvWM1o8NkQndueJtZcP?highlight=spotify:track:0tBbt8CrmxbjRP0pueQkyU'
WHERE eight_ts_title = 'Wolves';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/1jHSAfCHKUFx5imuezI7HE?highlight=spotify:track:4QtiVmuA88tPQiCOHZuQ5b'
WHERE eight_ts_title = '1, 2, 3 (feat. Jason Derulo & De La Ghetto)';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/1CYQlkKE5Q0khU6eMwVAVt?highlight=spotify:track:5YUyW9opqNsMSEzzecZih1'
WHERE eight_ts_title = 'X';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/3KjCdhPbjbLptyJzviKu4P?highlight=spotify:track:3u1S1OmAUhx5DRlLrXqyp3'
WHERE eight_ts_title = 'Rise';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/2Ti79nwTsont5ZHfdxIzAm?highlight=spotify:track:0JP9xo3adEtGSdUEISiszL'
WHERE eight_ts_title = 'Moonlight';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/7xdhIZ08Rxj1Lm9ek181uB?highlight=spotify:track:7cwLbWHs42c8JmrW9BJZos'
WHERE eight_ts_title = 'German';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/1c79SozES9Eb3Lzf9KVaIa?highlight=spotify:track:0E9ZjEAyAwOXZ7wJC0PD33'
WHERE eight_ts_title = 'In My Mind';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/7ayBZIe1FHkNv0T5xFCX6F?highlight=spotify:track:65fpYBrI8o2cfrwf2US4gq'
WHERE eight_ts_title = 'Rewrite The Stars';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/3B8J3BMp7lMA5YR5bUXHGK?highlight=spotify:track:33IOhptvC2Qoy2UhjiHXLV'
WHERE eight_ts_title = 'Flames';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/2Ti79nwTsont5ZHfdxIzAm?highlight=spotify:track:3ee8Jmje8o58CHK66QrVC2'
WHERE eight_ts_title = 'SAD!';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/78EicdHZr5XBWD7llEZ1Jh?highlight=spotify:track:2dpaYNEQHiRxtZbfNsse99'
WHERE eight_ts_title = 'Happier';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/6trNtQUgC8cgbWcqoMYkOR?highlight=spotify:track:3swc6WTsr7rl9DqQKQA55C'
WHERE eight_ts_title = 'Psycho (feat. Ty Dolla $ign)';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/5irmzpXixcdNF2ZJjcrN0A?highlight=spotify:track:6EGAfJaLUFzhS4zRBIEQ2J'
WHERE eight_ts_title = 'You Make It Easy';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/0mZIUXje90JtHxPNzWsJNR?highlight=spotify:track:6wmAHw1szh5RCKSRjiXhPe'
WHERE eight_ts_title = 'How Long';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/3XftSbguntyRTBQaGItmfK?highlight=spotify:track:3VlbOrM6nYPprVvzBZllE5'
WHERE eight_ts_title = 'Too Good At Goodbyes';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/15Id9Jrqab8IwHFirdrrLp?highlight=spotify:track:1xzBco0xcoJEDXktl7Jxrr'
WHERE eight_ts_title = 'Mo Bamba';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/0SukGZiXMtmsZoxstkBtNR?highlight=spotify:track:48zFZh27QU5qsrBjn4C2FA'
WHERE eight_ts_title = 'Vaina Loca';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/3ThQ5dvf9wlqB0C7evh5nH?highlight=spotify:track:2j5hsQvApottzvTn4pFJWF'
WHERE eight_ts_title = 'What Lovers Do (feat. SZA)';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/1Hno6CtKbaFNAEPjRHDrc6?highlight=spotify:track:1ZAyjvIk9YiD76yYy0TEG6'
WHERE eight_ts_title = 'Plug Walk';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/6t5D6LEgHxqUVOxJItkzfb?highlight=spotify:track:7iDa6hUg2VgEL1o1HjmfBn'
WHERE eight_ts_title = 'Meant to Be (feat. Florida Georgia Line)';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/7GGoJfKFOwDNuiLjjfzyCS?highlight=spotify:track:4qKcDkK6siZ7Jp1Jb4m0aL'
WHERE eight_ts_title = 'Look Alive (feat. Drake)';

UPDATE Eightteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/2Ti79nwTsont5ZHfdxIzAm?highlight=spotify:track:7AFASza1mXqntmGtbxXprO'
WHERE eight_ts_title = 'changes';



-- 2017 SONGS 
ALTER TABLE Seventeen_TS
ADD TS_Spotify varchar(255) null;

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/3T4tUhGYeRNVUGevb0wThu?highlight=spotify:track:7qiZfU4dY1lWllzX7mPBI3'
WHERE seven_ts_title = 'Shape of You';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/5C0YLr4OoRGFDaqdMQmkeH?highlight=spotify:track:6habFhsOp2NvshLv26DqMb'
WHERE seven_ts_title = 'Despacito (Featuring Daddy Yankee)';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/4PgleR09JVnm3zY1fW3XBA?highlight=spotify:track:0KKkJNfGyhkQ5aFogxQAPU'
WHERE seven_ts_title = 'Thats What I Like';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/4JPguzRps3kuWDD5GS6oXr?highlight=spotify:track:6RUKPb4LETWmmr3iAEQktW'
WHERE seven_ts_title = 'Something Just Like This';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/76290XdXVF9rPzGdNRWdCh?highlight=spotify:track:0q75NwOoFiARAVp4EXU4Bs'
WHERE seven_ts_title = 'Love Galore (feat. Travis Scott)';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/1UIlzhqJLiA3f6OVw7QKn6?highlight=spotify:track:6gpcs5eMhJwax4mIfKDYQk'
WHERE seven_ts_title = 'Slide (feat. Frank Ocean & Migos)';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/4eLPsYPBmXABThSJ821sqY?highlight=spotify:track:7KXjTSCq5nL1LoYtL7XAwS'
WHERE seven_ts_title = 'HUMBLE.';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/7xYiTrbTL57QO0bb4hXIKo?highlight=spotify:track:0mt02gJ425Xjm7c3jYkOBn'
WHERE seven_ts_title = 'Lust for Life (with The Weeknd)';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/2AvupjUeMnSffKEV05x222?highlight=spotify:track:4Km5HrUvYTaSUfiSGPJeQR'
WHERE seven_ts_title = 'Bad and Boujee (feat. Lil Uzi Vert)';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/05LEST8E8mkEIl2LRfUkcI?highlight=spotify:track:5WoaF1B5XIEnWfmb5NZikf'
WHERE seven_ts_title = 'Sky Walker (feat. Travis Scott)';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/5s0rmjP8XOPhP6HhqOhuyC?highlight=spotify:track:3a1lNhkSLSkpJE4MSHpDu9'
WHERE seven_ts_title = 'Congratulations';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/6buSUFSCXUIj3DOH3gUoRe?highlight=spotify:track:0Zx8khUcEfCFK2AEoIhC92'
WHERE seven_ts_title = 'Dont Leave';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/733e1ZfktLSwj96X5rsMeE?highlight=spotify:track:7GX5flRQZVHRAGd6B4TmDO'
WHERE seven_ts_title = 'XO Tour Llif3';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/4eLPsYPBmXABThSJ821sqY?highlight=spotify:track:6PGoSes0D9eUDeeAafB2As'
WHERE seven_ts_title = 'LOVE. FEAT. ZACARI.';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/1lXY618HWkwYKJWBRYR4MK?highlight=spotify:track:5mCPDVBb16L4XQwDdbRUpz'
WHERE seven_ts_title = 'Passionfruit';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/4c2p3TdN7NcQfCXyueCNnC?highlight=spotify:track:3B54sVLJ402zGa6Xm4YGNe'
WHERE seven_ts_title = 'Unforgettable';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/5vvvo79z68vWj9yimoygfS?highlight=spotify:track:6H0AwSQ20mo62jGlPGB8S6'
WHERE seven_ts_title = 'Its A Vibe';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/30QoUTsSdpQuZunPNFsLnm?highlight=spotify:track:3Q3myFA7q4Op95DOpHplaY'
WHERE seven_ts_title = 'do re mi';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/2B87zXm9bOWvAJdkJBTpzF?highlight=spotify:track:6ie2Bw3xLj2JcGowOlcMhb'
WHERE seven_ts_title = 'Green Light';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/3HhZbSJdhOqMSaRbEt3gtw?highlight=spotify:track:45XhKYRRkyeqoW3teSOkCM'
WHERE seven_ts_title = 'Wild Thoughts (feat. Rihanna & Bryson Tiller)';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/6h3fnzKZqjV0R5gP9iTUBh?highlight=spotify:track:5lNuqFVMca4vPupY10cH0J'
WHERE seven_ts_title = 'No Promises (feat. Demi Lovato)';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/5xrOcCoO3jkXRjHQjfESM6?highlight=spotify:track:48QmG1dfvMuYLxMPt7KSRA'
WHERE seven_ts_title = 'No Lie';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/0rZgnaDxwdOwIZvI9TCnAs'
WHERE seven_ts_title = 'Hurtin Me';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/4UlGauD7ROb3YbVOFMgW5u?highlight=spotify:track:5oO3drDxtziYU2H1X23ZIp'
WHERE seven_ts_title = 'Love On The Brain';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/1MI6gNg0plcEOgs8aezsjH?highlight=spotify:track:7gvd8xj4QgPqbQSsn5pV7d'
WHERE seven_ts_title = 'Sorry Not Sorry';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/7GjG91tyHQNGEHzKJaqOi0?highlight=spotify:track:7i2DJ88J7jQ8K7zqFX2fW8'
WHERE seven_ts_title = 'Now Or Never';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/42WVQWuf1teDysXiOupIZt?highlight=spotify:track:6gBFPUFcJLzWGx4lenP6h2'
WHERE seven_ts_title = 'goosebumps';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/1XYA8eDvomdYTbQBzk0jT1?highlight=spotify:track:1NDxZ7cFAo481dtYWdrUnR'
WHERE seven_ts_title = 'Pretty Girl - Cheat Codes X CADE Remix';


UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/01sfgrNbnnPUEyz6GZYlt9?highlight=spotify:track:76cy1WJvNGJTj78UqeA5zr'
WHERE seven_ts_title = 'IDGAF';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/5YLRVHDVRw3QqWbeTGpC5B?highlight=spotify:track:0ADG9OgdVTL7fgREP75BrZ'
WHERE seven_ts_title = 'Aint My Fault';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/6kf46HbnYCZzP6rjvQHYzg?highlight=spotify:track:152lZdxL1OR0ZMW6KquMif'
WHERE seven_ts_title = 'Location';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/38yleghRokhggbhJe0O0rI?highlight=spotify:track:3LuwzIAhAOPq0sArQwgxpW'
WHERE seven_ts_title = 'Caroline';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/41GuZcammIkupMPKH2OJ6I?highlight=spotify:track:2cYqizR4lgvp4Qu6IQ3qGN'
WHERE seven_ts_title = 'BUTTERFLY EFFECT';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/69Pj3ce9XFZUi3XuQylLKf?highlight=spotify:track:0dXNQ8dckG4eYfEtq9zcva'
WHERE seven_ts_title = 'All Night';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/5xG9gJcs9ut3qDWezHUlsX?highlight=spotify:track:1UZOjK1BwmwWU14Erba9CZ'
WHERE seven_ts_title = 'Malibu';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/3ggBBGRhkDVAu7pQRXRPXO?highlight=spotify:track:5Gu0PDLN4YJeW75PpBSg9p'
WHERE seven_ts_title = 'Let Me Go (with Alesso, Florida Georgia Line & watt)';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/22x1g0NEicPMxuEOXlGUw5?highlight=spotify:track:3kGfazcbVvVkuZunzlLgTD'
WHERE seven_ts_title = 'Came Here for Love';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/4Carzsnpd6yvuHZ49I0oz8?highlight=spotify:track:0wXuerDYiBnERgIpbb3JBR'
WHERE seven_ts_title = 'Redbone';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/4w49hcqZt66HZX0MJHfW0m?highlight=spotify:track:1gG5MoWK5SmHUcQPa2jxdP'
WHERE seven_ts_title = 'Touch';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/6vdxUCoudeeMJ8dv0iXA2S?highlight=spotify:track:6400BZ7REh8DshcZKU7Pfp'
WHERE seven_ts_title = 'Chameleon';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/01sfgrNbnnPUEyz6GZYlt9?highlight=spotify:track:2ekn2ttSfGqwhhate0LSR0'
WHERE seven_ts_title = 'New Rules';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/4KdtEKjY3Gi0mKiSdy96ML?highlight=spotify:track:6KBYefIoo7KydImq1uUQlL'
WHERE seven_ts_title = 'Bodak Yellow';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/3OZgEywV4krCZ814pTJWr7?highlight=spotify:track:1pKeFVVUOPjFsOABub0OaV'
WHERE seven_ts_title = 'Side To Side';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/40GMAhriYJRO1rsY4YdrZb?highlight=spotify:track:1zi7xx7UVEFkmKfv06H8x0'
WHERE seven_ts_title = 'One Dance';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/5G7go9EeotMk9RfLETBDgJ?highlight=spotify:track:2L6orAlH8tBhiFTumIfMyF'
WHERE seven_ts_title = 'Call on Me - Ryan Riback Remix';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/4w5LxfyoOPHkGJZrco1UT5?highlight=spotify:track:10GJQkjRJcZhGTLagFOC62'
WHERE seven_ts_title = 'Most Girls';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/2v9rQe4F8fVSh5v8bAq0jF?highlight=spotify:track:3ebXMykcMXOcLeJ9xZ17XH'
WHERE seven_ts_title = 'Scared to Be Lonely';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/2HaqChIDc5go3qxVunBDK0?highlight=spotify:track:5bcTCxgc7xVfSaMV3RuVke'
WHERE seven_ts_title = 'Feels (feat. Pharrell Williams, Katy Perry & Big Sean)';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/5YLRVHDVRw3QqWbeTGpC5B?highlight=spotify:track:4Q4jmPHwu0wrJvqrld0FQ6'
WHERE seven_ts_title = 'I Would Like';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/0EYVu7ginQ5nPsQj3woBAQ?highlight=spotify:track:762UXiwEHYY97VL45sAUPR'
WHERE seven_ts_title = '2U (feat. Justin Bieber)';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/2ODvWsOgouMbaA5xf0RkJe?highlight=spotify:track:7MXVkk9YMctZqd1Srtv4MB'
WHERE seven_ts_title = 'Starboy';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/69Pj3ce9XFZUi3XuQylLKf?highlight=spotify:track:74vs7PD7iG2GnWUGnb8Yuq'
WHERE seven_ts_title = 'Middle Of The Night';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/0lUL92det7mZ4DaHYmiUEC?highlight=spotify:track:4cxMGhkinTocPSVVKWIw0d'
WHERE seven_ts_title = 'Losin Control';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/1VAc77UvK5wj8ZSWCo3V2b?highlight=spotify:track:2DQ1ITjI0YoLFzuADN1ZBW'
WHERE seven_ts_title = 'No Limit';


UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/1ZJtkYBzRb7drznu3UYb3k?highlight=spotify:track:4ipnJyDU3Lq15qBAYNqlqK'
WHERE seven_ts_title = 'Mi Gente';


UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/2e5CxfyEwBW115beiwh7Mc?highlight=spotify:track:6kex4EBAj0WHXDKZMEJaaF'
WHERE seven_ts_title = 'Swalla (feat. Nicki Minaj & Ty Dolla $ign)';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/1lXY618HWkwYKJWBRYR4MK?highlight=spotify:track:343YBumqHu19cGoGARUTsd'
WHERE seven_ts_title = 'Fake Love';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/1tSsb3t0pqVVONvBJivoT9?highlight=spotify:track:4knL4iPxPOZjQzTUlELGSY'
WHERE seven_ts_title = 'Rake It Up (feat. Nicki Minaj)';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/7huML9zDbY4thKH0xSuZTP?highlight=spotify:track:7iNIg7XDEaYECfWD5dJ9Va'
WHERE seven_ts_title = 'Friends (with BloodPop®)';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/2ODvWsOgouMbaA5xf0RkJe?highlight=spotify:track:3dhjNA0jGA8vHBQ1VdD6vV'
WHERE seven_ts_title = 'I Feel It Coming';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/5l5gR4rh26QI3fijGFTDrp?highlight=spotify:track:1j4kHkkpqZRBwE0A4CN4Yv'
WHERE seven_ts_title = 'Dusk Till Dawn - Radio Edit';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/1I4W7JKzYbl8VKRfD61DIS?highlight=spotify:track:6uBhi9gBXWjanegOb2Phh0'
WHERE seven_ts_title = 'Stay';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/2bw00gRKNKbTFOqCkohbSh?highlight=spotify:track:7vGuf3Y35N4wmASOKLUVVU'
WHERE seven_ts_title = 'Silence';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/6DEjYFkNZh67HP7R9PSZvv'
WHERE seven_ts_title = '...Ready For It?';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/3NTHQYWOxCJ05u8fc80RNt?highlight=spotify:track:0KsB4TwgATg88aXCMBoO3Y'
WHERE seven_ts_title = 'Breathe';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/6wu7tiTr8zchRG7PWwTOK1?highlight=spotify:track:2Gl0FzuLxflY6nPifJp5Dr'
WHERE seven_ts_title = 'First Time';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/4PrFFsJ2WAD46IXNdfx2dx?highlight=spotify:track:4Ro98RCK90oHqqSZUnTFq5'
WHERE seven_ts_title = 'Strip That Down';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/1qyjZGIeeLJlXbYWuoloWj?highlight=spotify:track:7vu0JkJh0ldukEYbTVcqd0'
WHERE seven_ts_title = 'Issues';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/1m3mf7xkXIwssVriaaTjOS?highlight=spotify:track:75NhhYjHO43mvZgYtnXgti'
WHERE seven_ts_title = 'Lonely Together (feat. Rita Ora)';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/2KapEpmTrFaamxm3fkb0JC?highlight=spotify:track:3hRi7ubt1NhroxTrdnjn4w'
WHERE seven_ts_title = 'Solo Dance';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/6kf46HbnYCZzP6rjvQHYzg?highlight=spotify:track:5Z3GHaZ6ec9bsiI5BenrbY'
WHERE seven_ts_title = 'Young Dumb & Broke';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/3gdmWRWWJmkp5uMBXf755B?highlight=spotify:track:1rFMYAZxBoAKSzXI54brMu'
WHERE seven_ts_title = 'You Dont Know Me - Radio Edit';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/3rDbA12I5duZnlwakqDdZa?highlight=spotify:track:0prNGof3XqfTvNDxHonvdK'
WHERE seven_ts_title = 'Scars To Your Beautiful';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/1VAc77UvK5wj8ZSWCo3V2b?highlight=spotify:track:5k38wzpLb15YgncyWdTZE4'
WHERE seven_ts_title = 'Him & I';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/4b13SJlne61y53KSEwuQtD?highlight=spotify:track:1x5sYLZiu9r5E43kMlt9f8'
WHERE seven_ts_title = 'Symphony (feat. Zara Larsson)';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/3cS0qzNDjE5SjdAL1W98fo?highlight=spotify:track:0zbzrhfVS9S2TszW3wLQZ7'
WHERE seven_ts_title = 'September Song';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/33TJ52PuwenGmysJrwMGCe?highlight=spotify:track:0S0vWvyZ6Rc79TXkWxT9QA'
WHERE seven_ts_title = 'Save That Shit';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/5v6iBhIlflzR9rEd1LAMbd?highlight=spotify:track:6mapJIPnQ23RTAevUoE0DL'
WHERE seven_ts_title = 'Swang';


UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/4rJgzzfFHAVFhCSt2P4I3j?highlight=spotify:track:1e1JKLEDKP7hEQzJfNAgPl'
WHERE seven_ts_title = 'Magnolia';


UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/0YLrAWUbY0nyM7PFtqnYld?highlight=spotify:track:3AEZUABDXNtecAOSC1qTfo'
WHERE seven_ts_title = 'Reggaetón Lento (Remix)';


UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/5s0rmjP8XOPhP6HhqOhuyC?highlight=spotify:track:75ZvA4QfFiZvzhj2xkaWAh'
WHERE seven_ts_title = 'I Fall Apart';


UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/3syh4e0H2YnXmzGzP5Rd3G?highlight=spotify:track:7EI6Iki24tBHAMxtb4xQN2'
WHERE seven_ts_title = 'Anywhere';


UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/2KL69PNxJkQl3NWXMMkAby?highlight=spotify:track:6fTULJ8dMdGiXPOVYJ0yEb'
WHERE seven_ts_title = 'Plain Jane';


UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/0mZIUXje90JtHxPNzWsJNR?highlight=spotify:track:5cF0dROlMOK5uNZtivgu50'
WHERE seven_ts_title = 'Attention';


UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/1MPAXuTVL2Ej5x0JHiSPq8'
WHERE seven_ts_title = 'I Don’t Wanna Live Forever (Fifty Shades Darker) - From "Fifty Shades Darker (Original Motion Picture Soundtrack)"';


UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/5gQZvWM1o8NkQndueJtZcP?highlight=spotify:track:0tBbt8CrmxbjRP0pueQkyU'
WHERE seven_ts_title = 'Wolves';


UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/6lrm01OVZZVmarH2XLSAXZ?highlight=spotify:track:4c2W3VKsOFoIg2SFaO6DY5'
WHERE seven_ts_title = 'Your Song';


UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/1IYVB8NfiRqhdZlTxjspNh?highlight=spotify:track:0jdny0dhgjUwoIp5GkqEaA'
WHERE seven_ts_title = 'Praying';


UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/7lPoGKpCGgdKFAxpudhAH5?highlight=spotify:track:01BC4Xj5tfsfV8DLDrma7q'
WHERE seven_ts_title = 'Ciao Adios';


UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/0XAIjjN5qxViVS0Y5fYkar?highlight=spotify:track:0SGkqnVQo9KPytSri1H6cF'
WHERE seven_ts_title = 'Bounce Back';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/6Ei5WWek37m1x9AjpSXTcJ?highlight=spotify:track:6h5PAsRni4IRlxWr6uDPTP'
WHERE seven_ts_title = 'More Than You Know';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/6Ks2jkrJ1VzkGya8i1aS1a?highlight=spotify:track:2jRGYG8U5bJzWOH6FLuzvO'
WHERE seven_ts_title = 'It Aint Me (with Selena Gomez)';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/3yWRq9Dd2UO5xyqxTjLDmp?highlight=spotify:track:1PSBzsahR2AKwLJgx8ehBj'
WHERE seven_ts_title = 'Bad Things (with Camila Cabello)';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/6DEjYFkNZh67HP7R9PSZvv?highlight=spotify:track:1P17dC1amhFzptugyAO7Il'
WHERE seven_ts_title = 'Look What You Made Me Do';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/0S19ks6TFDHZKEYWFvrRm0?highlight=spotify:track:6Za3190Sbw39BBC77WSS1C'
WHERE seven_ts_title = 'Criminal';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/3HhZbSJdhOqMSaRbEt3gtw?highlight=spotify:track:1jYiIOC5d6soxkJP81fxq2'
WHERE seven_ts_title = 'Im the One (feat. Justin Bieber, Quavo, Chance the Rapper & Lil Wayne)';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/4eLPsYPBmXABThSJ821sqY?highlight=spotify:track:1EaKU4dMbesXXd3BrLCtYG'
WHERE seven_ts_title = 'ELEMENT.';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/2LyLlHg03okxUU3UVrKtSC?highlight=spotify:track:5DZwnLxHjWTZaz9jOpRhxb'
WHERE seven_ts_title = 'Weak';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/3ThQ5dvf9wlqB0C7evh5nH?highlight=spotify:track:7gwLQ4tZ5UdZ7qNcDyJ8wr'
WHERE seven_ts_title = 'Cold (feat. Future)';

UPDATE Seventeen_TS
SET TS_Spotify = 'https://open.spotify.com/album/1PJTxJTsQxGT7KTY8gBfR7?highlight=spotify:track:47OVNnZJzIkrsEiZ4n187p'
WHERE seven_ts_title = 'Mama';





--2016 SONGS
ALTER TABLE Sixteen_TS
ADD TS_Spotify varchar(255) null;

UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/6Fr2rQkZ383FcMqFyT7yPr?highlight=spotify:track:50kpGaPAhYJ3sGmk6vplg0'
WHERE six_ts_title = 'Love Yourself';

UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/40GMAhriYJRO1rsY4YdrZb?highlight=spotify:track:1zi7xx7UVEFkmKfv06H8x0'
WHERE six_ts_title = 'One Dance';

UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/7dK54iZuOxXFarGhXwEXfF?highlight=spotify:track:0lnIJmgcUpEpe4AZACjayW'
WHERE six_ts_title = 'Sorry';

UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/0rSLgV8p5FzfnqlEk4GzxE?highlight=spotify:track:7BKLCZ1jbUBVqRi2FVlTVw'
WHERE six_ts_title = 'Closer';

UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/0K4pIOOsfJ9lK8OjrZfXzd?highlight=spotify:track:4sPmO7WMQUAf45kwMOtONw'
WHERE six_ts_title = 'Hello';

UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/1k3BLTc4VZ7beRBXL1SPN6?highlight=spotify:track:275a9yzwGB6ncAW4SxY7q3'
WHERE six_ts_title = 'Panda';

UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/4UlGauD7ROb3YbVOFMgW5u?highlight=spotify:track:4pAl7FkDMNBsjykPXo91B3'
WHERE six_ts_title = 'Needed Me';

UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/2eV6DIPDnGl1idcjww6xyX?highlight=spotify:track:3S4px9f4lceWdKf0gWciFu'
WHERE six_ts_title = 'Cheap Thrills (feat. Sean Paul)';

UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/3cQO7jp5S9qLBoIVtbkSM1?highlight=spotify:track:3CRDbSIZ4r5MsZ0YwxuEkn'
WHERE six_ts_title = 'Stressed Out';

UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/4UlGauD7ROb3YbVOFMgW5u?highlight=spotify:track:72TFWvU3wUYdUuxejTTIzt'
WHERE six_ts_title = 'Work';

UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/5iK2afnsB8wwv9WULCE9e7?highlight=spotify:track:46ydq5g3k17iLJs3qMDvO6'
WHERE six_ts_title = 'Hurts So Good';

UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/6Fr2rQkZ383FcMqFyT7yPr?highlight=spotify:track:09CtPGIpYB4BrO8qb1RGsF'
WHERE six_ts_title = 'Sorry';

UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/65ayND23IInUPHJKsaAqe7?highlight=spotify:track:1WkMMavIMc4JZ8cfMmxHkI'
WHERE six_ts_title = 'CANT STOP THE FEELING! (Original Song from DreamWorks Animations TROLLS)';

UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/4NZWRpoMuXaHU7csTjWdB5?highlight=spotify:track:5WI2ltQIdwgzf1SNE76JyR'
WHERE six_ts_title = 'Never Be Like You';

UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/5cOhR878H8hC3UsxYq5Xyv?highlight=spotify:track:6TaqooOXAEcijL6G1AWS2K'
WHERE six_ts_title = 'All My Friends (feat. Tinashe & Chance the Rapper)';

UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/1tuekzsMZQOuiMejKP6t2Y?highlight=spotify:track:3tJ4y2Zqx6gM9xOAuFfsSF'
WHERE six_ts_title = 'Cool Girl';

UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/3mH6qwIy9crq0I9YQbOuDf?highlight=spotify:track:3xKsf9qdS1CyvXSMEid6g8'
WHERE six_ts_title = 'Pink + White';

UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/3OZgEywV4krCZ814pTJWr7?highlight=spotify:track:2meEiZKWkiN28gITzFwQo5'
WHERE six_ts_title = 'Into You';

UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/1JFmNyVPdBF1ECvv4fhpW4?highlight=spotify:track:5hc71nKsUgtwQ3z52KEKQk'
WHERE six_ts_title = 'Somebody Else';

UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/4NZWRpoMuXaHU7csTjWdB5?highlight=spotify:track:5aOpzm8W8zysk4asB9hxJw'
WHERE six_ts_title = 'Say It';

UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/01sfgrNbnnPUEyz6GZYlt9?highlight=spotify:track:5eTNdkstwKaNahHf41fJ9u'
WHERE six_ts_title = 'Hotter Than Hell';

UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/4Yww2EYetseL1eL2YuvLna?highlight=spotify:track:3lSDIJ2abCrOdDJ6pshUap'
WHERE six_ts_title = 'Close';

UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/6eZdwrhB97A3EYx9QppGfl?highlight=spotify:track:3pXF1nA74528Edde4of9CC'
WHERE six_ts_title = 'Dont';

UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/2EvTMiJyF3H4BoxNCL4HLh?highlight=spotify:track:6ZSO7kPn8IMJFymyticbJO'
WHERE six_ts_title = 'Gold';

UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/3OZgEywV4krCZ814pTJWr7?highlight=spotify:track:7l94dyN2hX9c6wWcZQuOGJ'
WHERE six_ts_title = 'Dangerous Woman';

UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/2FXGUAESmG5l9YPrzWPvHI?highlight=spotify:track:4STaHtfguDMkWbPEo6Fwcx'
WHERE six_ts_title = 'Not Nice';

UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/2yIwhsIWGRQzGQdn1czSK0?highlight=spotify:track:4Uoc2mSkjXENcUWhSTNm2I'
WHERE six_ts_title = 'Too Good';

UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/10DpegJFVLDxbKyNUqeCrG?highlight=spotify:track:4CGGIk81BvfCZiscwFP6t0'
WHERE six_ts_title = 'Sex';

UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/5tBOCi2TekXZ1IbrmlBZO4?highlight=spotify:track:2Gyc6e2cLxA5hoX1NOvYnU'
WHERE six_ts_title = 'Say It';

UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/6eZdwrhB97A3EYx9QppGfl?highlight=spotify:track:43PuMrRfbyyuz4QpZ3oAwN'
WHERE six_ts_title = 'Exchange';

UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/5amj9zNeZ3B2EdpBgXrOZ0?highlight=spotify:track:0PDUDa38GO8lMxLCRc4lL1'
WHERE six_ts_title = 'PILLOWTALK';

UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/4OmqJXPhD5FOqwdg5tBsnu?highlight=spotify:track:7yCqehT9dKACTFy7YugP0J'
WHERE six_ts_title = 'You & Me';


UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/4fpw9otqwjuKWM7OLu8DgP?highlight=spotify:track:5fKBwqSTuCbnJlCOpeRa3o'
WHERE six_ts_title = 'Sexual';


UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/6ndaa5yzks3YifHX1u5Esl?highlight=spotify:track:7gl2cxHUqmZm1gbva9fLku'
WHERE six_ts_title = 'The Girl Is Mine feat. Destinys Child & Brandy';


UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/40GMAhriYJRO1rsY4YdrZb?highlight=spotify:track:3O8NlPh2LByMU9lSRSHedm'
WHERE six_ts_title = 'Controlla';


UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/3rDbA12I5duZnlwakqDdZa?highlight=spotify:track:1wYZZtamWTQAoj8B812uKQ'
WHERE six_ts_title = 'Here';


UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/6KuHbuDiJNcgEvnLTnfQcY?highlight=spotify:track:6SLTPbDxDYR0uSMTT7gSb7s'
WHERE six_ts_title = 'Im In Control';


UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/2tusoaat8EktdWSaqB0AMx?highlight=spotify:track:1fbeHHbJnQaIOsaV6My0RI'
WHERE six_ts_title = 'Back To Sleep';


UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/7lDBDk8OQarV5dBMu3qrdz?highlight=spotify:track:1LoriJC05IrHIDwj3q0KC1'
WHERE six_ts_title = 'Hands To Myself';


UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/5tBOCi2TekXZ1IbrmlBZO4?highlight=spotify:track:16Ah4QqH4mgYVXqfC4mdSd'
WHERE six_ts_title = 'LUV';


UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/5YLRVHDVRw3QqWbeTGpC5B?highlight=spotify:track:1rIKgCH4H52lrvDcz50hS8'
WHERE six_ts_title = 'Lush Life';

UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/02sEJTj1sye1JaqxqpcSCp?highlight=spotify:track:0g5EKLgdKvNlln7TNqBByK'
WHERE six_ts_title = 'Middle';


UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/5J1vKkCC6aoOGZjE7YZrHE?highlight=spotify:track:7py16W5fWYLFFS6BElKAjn'
WHERE six_ts_title = 'Tears (feat. Louisa Johnson)';


UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/3OZgEywV4krCZ814pTJWr7?highlight=spotify:track:1pKeFVVUOPjFsOABub0OaV'
WHERE six_ts_title = 'Side To Side';


UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/0pF0oyuPNdOObniB1Ng0kW?highlight=spotify:track:7nD9nN3jord9wWcfW3Gkcm'
WHERE six_ts_title = 'All In My Head (Flex) (feat. Fetty Wap)';

UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/5YLRVHDVRw3QqWbeTGpC5B?highlight=spotify:track:6hmhG1b4LEyNuashVvuIAo'
WHERE six_ts_title = 'Never Forget You';


UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/2gcqSlK5xTxcpuLZ1iik3Z?highlight=spotify:track:4qqArAiTPueDxIp7cf87h7'
WHERE six_ts_title = 'Final Song';


UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/3pEgGUv379EDinvg1TN7Kt?highlight=spotify:track:0azC730Exh71aQlOt9Zj3y'
WHERE six_ts_title = 'This Is What You Came For (feat. Rihanna)';


UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/2ODvWsOgouMbaA5xf0RkJe?highlight=spotify:track:7MXVkk9YMctZqd1Srtv4MB'
WHERE six_ts_title = 'Starboy';


UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/2GFflENKz28RcMoSuulPZC?highlight=spotify:track:3vv9phIu6Y1vX3jcqaGz5Z'
WHERE six_ts_title = 'Roses';


UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/2Z3HQO6NL3812mnNj7htXv?highlight=spotify:track:0OwX5aROoW1Iip8FV51Efg'
WHERE six_ts_title = 'Alarm';

UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/0T8SCja56F4lhZXyOcBTIV?highlight=spotify:track:0EGuSSpuu9wmHCtvb4PdLO'
WHERE six_ts_title = 'Sit Still, Look Pretty';

UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/5XdzqhTD3iQ8kLpl9VLlzR?highlight=spotify:track:0PiFfFoFPL27D8GFOUi3u9'
WHERE six_ts_title = 'Shout Out to My Ex';

UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/1symszvJQdIoNR4QhUc6En?highlight=spotify:track:3QmOiZF7IzJJkHnahh5Ea0'
WHERE six_ts_title = 'History';


UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/0EUrNFkbVL5kokjQbzHxl3?highlight=spotify:track:0rHVd8h0cFwgLgPFem6S60'
WHERE six_ts_title = 'Girls Like (feat. Zara Larsson)';


UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/7lDBDk8OQarV5dBMu3qrdz?highlight=spotify:track:1BZG99C7Co1r6QUC3zaS59'
WHERE six_ts_title = 'Same Old Love';


UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/0pF0oyuPNdOObniB1Ng0kW?highlight=spotify:track:4tCtwWceOPWzenK2HAIJSb'
WHERE six_ts_title = 'Work from Home (feat. Ty Dolla $ign)';


UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/18pR217SWwBjODSRWFBw0I?highlight=spotify:track:4Ce37cRWvM1vIGGynKcs22'
WHERE six_ts_title = 'Starving';

UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/1FOJ5IXGXe8dl0cXvCU6wK?highlight=spotify:track:23L5CiUhw2jV1OIMwthR3S'
WHERE six_ts_title = 'In the Name of Love';


UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/3jJKDKdlwRS584zUlHV2Ly?highlight=spotify:track:7EiZI6JVHllARrX9PUvAdX'
WHERE six_ts_title = 'Low Life (feat. The Weeknd)';

UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/3Kmo85mapQ2wTaCAHBkKsK?highlight=spotify:track:7zsXy7vlHdItvUSH8EwQss'
WHERE six_ts_title = 'Cold Water (feat. Justin Bieber & MØ)';

UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/2AUhyBQANk5FKHD6WCbxja?highlight=spotify:track:6KI1ZpZWYAJLvmVhCJz65G'
WHERE six_ts_title = 'You Dont Own Me (feat. G-Eazy)';

UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/2MQnrXJl4XflhyDma1l6vt?highlight=spotify:track:1I95liM3akfvKNP8TWnzP2'
WHERE six_ts_title = 'Papercuts (feat. Vera Blue)';


UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/2zbTrm2pIAErzFSopinkbN?highlight=spotify:track:3d8y0t70g7hw2FOWl9Z4Fm'
WHERE six_ts_title = 'Ophelia';


UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/0T8SCja56F4lhZXyOcBTIV?highlight=spotify:track:0uyZ5ckiIUbFZd3P6RWmrj'
WHERE six_ts_title = 'Hide Away';


UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/3rDbA12I5duZnlwakqDdZa?highlight=spotify:track:0prNGof3XqfTvNDxHonvdK'
WHERE six_ts_title = 'Scars To Your Beautiful';



UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/4pCLlUxlKj3pNVdBtFyhrU?highlight=spotify:track:3r5cW1Sepzv1lr2xsi3B2Q'
WHERE six_ts_title = 'Light It Up (feat. Nyla & Fuse ODG) - Remix';


UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/5rr0xAQfk01cPi1N37jX11?highlight=spotify:track:1qp0ptMXNg9hqLH8sk7cc2'
WHERE six_ts_title = 'Sweet Lovin - Radio Edit';


UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/40GMAhriYJRO1rsY4YdrZb?highlight=spotify:track:5mPSyjLatqB00IkPqRlbTE'
WHERE six_ts_title = 'Pop Style';


UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/02sEJTj1sye1JaqxqpcSCp?highlight=spotify:track:0lYBSQXN6rCTvUZvg9S0lU'
WHERE six_ts_title = 'Let Me Love You';


UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/2f7kOrpFos0njurSOi2zqL?highlight=spotify:track:0gb1J5UrTpzaU1s3nupgCd'
WHERE six_ts_title = 'No Money';


UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/5s0rmjP8XOPhP6HhqOhuyC?highlight=spotify:track:75ZvA4QfFiZvzhj2xkaWAh'
WHERE six_ts_title = 'I Fall Apart';

UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/6Fr2rQkZ383FcMqFyT7yPr?highlight=spotify:track:4B0JvthVoAAuygILe3n4Bs'
WHERE six_ts_title = 'What Do You Mean?';


UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/7CUcBQ9e6MDpsdBzz7wJaT?highlight=spotify:track:7gBj0VgcuAgkXkiRRYvSmK'
WHERE six_ts_title = 'Stay (feat. Maty Noyes)';


UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/40GMAhriYJRO1rsY4YdrZb?highlight=spotify:track:0wwPcA6wtMf6HUMpIRdeP7'
WHERE six_ts_title = 'Hotline Bling';


UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/2XLdhcA2xQy2Iw74Cly9QL?highlight=spotify:track:508oFmt92FyICj6pZiWQwC'
WHERE six_ts_title = 'Just Hold On';

UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/2xZSrcBmvMw9Y8hac6xU7L?highlight=spotify:track:3P3pw6C19j31Rnzgo3JG7o'
WHERE six_ts_title = 'Perfect Strangers';

UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/5s0rmjP8XOPhP6HhqOhuyC?highlight=spotify:track:6eT7xZZlB2mwyzJ2sUKG6w'
WHERE six_ts_title = 'White Iverson';

UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/6sUOosXuYt0oUeczJRbedZ?highlight=spotify:track:2GyA33q5rti5IxkMQemRDH'
WHERE six_ts_title = 'I Know What You Did Last Summer';

UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/0dzeoQhVNzKkwM5ieOJC54?highlight=spotify:track:1vvNmPOiUuyCbgWmtc6yfm'
WHERE six_ts_title = 'My Way';

UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/08eweM0IZoZPCCxODbrMoL?highlight=spotify:track:0l0CvurVUrr2w3Jj1hOVFc'
WHERE six_ts_title = 'NO';


UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/1Tz3Ai1guEFf4hV3d9i17K?highlight=spotify:track:1MtUq6Wp1eQ8PC6BbPCj8P'
WHERE six_ts_title = 'I Took A Pill In Ibiza - Seeb Remix';


UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/7oiJYvEJHsmYtrgviAVIBD?highlight=spotify:track:0VhgEqMTNZwYL1ARDLLNCX'
WHERE six_ts_title = 'Can I Be Him';

UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/66KCBRiOFSs9bki2A15WlB?highlight=spotify:track:1A8j067qyiNwQnZT0bzUpZ'
WHERE six_ts_title = 'This Girl - Kungs Vs. Cookin On 3 Burners';


UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/0uMIzWh1uEpHEBell4rlF8?highlight=spotify:track:5masKPHeAOVNgxdLebIcK7'
WHERE six_ts_title = 'Stole the Show';


UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/7nsWIOWiX7Zt0AdR5imU50?highlight=spotify:track:6cREm4bV7V79Yxdilx9HDo'
WHERE six_ts_title = 'Once In a While';


UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/2jJReDZqTuAxr4R0ItimZc?highlight=spotify:track:0SuLAslEMFZAXf0SwY7syi'
WHERE six_ts_title = 'All Time Low';

UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/55zQqrjWsFHRcI1mxlQSsZ?highlight=spotify:track:2mCF8L0brIs88eH6Kf2h9p'
WHERE six_ts_title = 'Fast Car';


UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/3kndSWeE2IYOrZEToZrHEV?highlight=spotify:track:37FXw5QGFN7uwwsLy8uAc0'
WHERE six_ts_title = 'We Dont Talk Anymore (feat. Selena Gomez)';


UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/4pgNeQfSctryAw4e0uESHe?highlight=spotify:track:2CPqh63wRVscbceKcPxwvv'
WHERE six_ts_title = 'The Ocean (feat. Shy Martin)';

UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/3L0H4RjVXpEkwfDgi3XOdf?highlight=spotify:track:7vRriwrloYVaoAe3a9wJHe'
WHERE six_ts_title = 'i hate u, i love u (feat. olivia obrien)';


UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/1gMxiQQSg5zeu4htBosASY?highlight=spotify:track:0HMjXBAZmSYOTTi33WpMso'
WHERE six_ts_title = 'History';


UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/6xkWiBoloz4Yry0onALtJO?highlight=spotify:track:7ivABTpeNoRN2ZL9ruPksW'
WHERE six_ts_title = 'The Greatest (feat. Kendrick Lamar)';


UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/0K4pIOOsfJ9lK8OjrZfXzd?highlight=spotify:track:4BHzQ9C00ceJxfG16AlNWb'
WHERE six_ts_title = 'Send My Love (To Your New Lover)';

UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/0lq7zwC6uQiu8pwW5FK3Fb?highlight=spotify:track:5NDUXbMwcnTQp66tI2zcdR'
WHERE six_ts_title = 'Fresh Eyes';


UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/7xMjYDrgPLp1ReFGAOyS1O?highlight=spotify:track:6nxQdXa1uAL0rY72wPZu89'
WHERE six_ts_title = 'Love Me Now';

UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/3rrh1b9JETu4UfIypQn34V?highlight=spotify:track:5c6vPEx6QTUTjmLiza1bpy'
WHERE six_ts_title = 'Dont Mind';


UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/3Wv4X8OA65pGpFzBkuUgAh?highlight=spotify:track:76hfruVvmfQbw0eYn1nmeC'
WHERE six_ts_title = 'Cake By The Ocean';

UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/4mchkmnzdTYIEAnw2FijA3?highlight=spotify:track:0qy5D3OJre7SPJNMOL9I71'
WHERE six_ts_title = 'Broccoli (feat. Lil Yachty)';

UPDATE Sixteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/1ozpmkWcCHwsQ4QTnxOOdT?highlight=spotify:track:27GmP9AWRs744SzKcpJsTZ'
WHERE six_ts_title = 'Jumpman';




--2015 SONGS
ALTER TABLE Fifteen_TS
ADD TS_Spotify varchar(255) null;


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/3vLaOYCNCzngDf8QdBg2V1?highlight=spotify:track:32OlwWuMpZ6b0aN2RZOeMS'
WHERE five_ts_title = 'Uptown Funk (feat. Bruno Mars)';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/1xn54DMo2qIqBuMqHtUsFd?highlight=spotify:track:34gCuhDGsG4bRPIf9bb02f'
WHERE five_ts_title = 'Thinking out Loud';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/5FXIqS1XqbpfOKNoi5VUwS?highlight=spotify:track:2JzZzZUQj3Qff7wapcbKjc'
WHERE five_ts_title = 'See You Again (feat. Charlie Puth)';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/6Fr2rQkZ383FcMqFyT7yPr?highlight=spotify:track:4B0JvthVoAAuygILe3n4Bs'
WHERE five_ts_title = 'What Do You Mean?';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/4pCLlUxlKj3pNVdBtFyhrU?highlight=spotify:track:1Lim1Py7xBgbAkAys3AGAG'
WHERE five_ts_title = 'Lean On (feat. MØ & DJ Snake)';

UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/0P3oVJBFOv3TDXlYRhGL7s?highlight=spotify:track:4frLb7nWtsz2ymBE6k2GRP'
WHERE five_ts_title = 'Earned It (Fifty Shades Of Grey) - From The "Fifty Shades Of Grey" Soundtrack';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/4w0N1CaZwQ5RPIuawqlYyy?highlight=spotify:track:0Cy7wt6IlRfBPHXXjmZbcP'
WHERE five_ts_title = 'Love Me Like You Do - From "Fifty Shades Of Grey"';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/2gKQvajkEEaDtkqJ8FJ4uw?highlight=spotify:track:2d8JP84HNLKhmd6IYOoupQ'
WHERE five_ts_title = 'Trap Queen';



UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/5cOhR878H8hC3UsxYq5Xyv?highlight=spotify:track:6TaqooOXAEcijL6G1AWS2K'
WHERE five_ts_title = 'All My Friends (feat. Tinashe & Chance the Rapper)';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/3kBBntDYL62xlqgnulskwv?highlight=spotify:track:72Bz4ciRZPBcVSw0nrZDHi'
WHERE five_ts_title = 'Do It Again';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/2QJmrSgbdM35R67eoGQo4j?highlight=spotify:track:1p80LdxRV74UKvL8gnD7ky'
WHERE five_ts_title = 'Blank Space';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/17l7MIu0Jh0tdgK7or9ovw?highlight=spotify:track:2GiJYvgVaD2HtM8GqD9EgQ'
WHERE five_ts_title = 'Electric Love';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/0P3oVJBFOv3TDXlYRhGL7s?highlight=spotify:track:7fBv7CLKzipRk6EC6TWHOB'
WHERE five_ts_title = 'The Hills';

UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/79dL7FLiJFOO0EoehUHQBv?highlight=spotify:track:6K4t31amVTZDgR3sKmwUJJ'
WHERE five_ts_title = 'The Less I Know The Better';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/0lHJwrDEFxrJhpB1gQoeMp?highlight=spotify:track:78Yxsdi1JiwLDsU7TWHezw'
WHERE five_ts_title = 'Sugar';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/4Ky2PpWb26OxNabAMffyBw?highlight=spotify:track:0hNduWmlWmEmuwEFcYvRu1'
WHERE five_ts_title = 'Sunset Lover';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/1teQxZPWNILIowWpQA6qfm?highlight=spotify:track:2tpfxAXiI52znho4WE3XFA'
WHERE five_ts_title = 'Talking Body';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/2Vd3aVbpKUyRq42B7xd2HW?highlight=spotify:track:78EQ5LZGgviMU9k0zrqv1r'
WHERE five_ts_title = 'Omen - Radio Edit';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/6EVYTRG1drKdO8OnIQBeEj?highlight=spotify:track:5J4ZkQpzMUFojo1CtAZYpn'
WHERE five_ts_title = 'Love Me Harder';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/7DMyQuDPe8xzjC0UDSDa96?highlight=spotify:track:0PJIbOdMs3bd5AT8liULMQ'
WHERE five_ts_title = 'oui';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/48zisMeiXniWLzOQghbPqS?highlight=spotify:track:7MmG8p0F9N3C4AXdK6o6Eb'
WHERE five_ts_title = 'Outside (feat. Ellie Goulding)';

UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/6eZdwrhB97A3EYx9QppGfl?highlight=spotify:track:3pXF1nA74528Edde4of9CC'
WHERE five_ts_title = 'Dont';


UPDATE Fifteen_TS
SET TS_Spotify = ''
WHERE five_ts_title = '11-Jul';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/1ABRc0UFHY3x6rKQeFBTQ0?highlight=spotify:track:36phXHOKx8rO7CMp2vNX4x'
WHERE five_ts_title = 'Love Myself';



UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/2QJmrSgbdM35R67eoGQo4j?highlight=spotify:track:4lIxdJw6W3Fg4vUIYCB0S5'
WHERE five_ts_title = 'Style';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/7lDBDk8OQarV5dBMu3qrdz?highlight=spotify:track:578Eooad7oUyn4stovZiPg'
WHERE five_ts_title = 'Good For You';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/3HV3ecmJJ2GmHM93vVVKXF?highlight=spotify:track:2zFF6jG5hQArbzcXz3KUWk'
WHERE five_ts_title = 'Cool for the Summer';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/4S8F794ucXJcAtycwOZgR9?highlight=spotify:track:0NTMtAO2BV4tnGvw9EgBVq'
WHERE five_ts_title = 'Bitch Better Have My Money';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/00no0cywmc15sIIoys7kM9?highlight=spotify:track:5maiP9UMnTSgoxPX8X3bdz'
WHERE five_ts_title = 'Na Na';

UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/2QJmrSgbdM35R67eoGQo4j?highlight=spotify:track:59HjlYCeBsxdI0fcm3zglw'
WHERE five_ts_title = 'Wildest Dreams';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/3cG32DOXJoYlOHMmJIaQsm?highlight=spotify:track:22mek4IiqubGD9ctzxc69s'
WHERE five_ts_title = 'How Deep Is Your Love';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/2O3OKOYCub892PUGprsaQo?highlight=spotify:track:0hy1SOTEn9ifXTzOwnCwEr'
WHERE five_ts_title = 'All Eyes on You (feat. Chris Brown & Nicki Minaj)';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/6mQGo1a9mXHNUSJYwXi9Wd?highlight=spotify:track:57kR5SniQIbsbVoIjjOUDa'
WHERE five_ts_title = 'You Know You Like It';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/3rDbA12I5duZnlwakqDdZa?highlight=spotify:track:1wYZZtamWTQAoj8B812uKQ'
WHERE five_ts_title = 'Here';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/13QoXGJgs22WiDG1NWT00D?highlight=spotify:track:0fgZUSa7D7aVvv3GfO0A1n'
WHERE five_ts_title = 'Post to Be (feat. Chris Brown & Jhene Aiko)';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/7lDBDk8OQarV5dBMu3qrdz?highlight=spotify:track:1LoriJC05IrHIDwj3q0KC1'
WHERE five_ts_title = 'Hands To Myself';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/3pKTKC0AAe3yTcXQLzvpSW?highlight=spotify:track:4NYwy0R3NdvORX2B6OZXBT'
WHERE five_ts_title = 'Slow Motion';

UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/5ouTDazE4LF9bVJPx1nlgW?highlight=spotify:track:1cOyWWUr3oXJIxY0AjJEx9'
WHERE five_ts_title = 'YOUTH';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/2QJmrSgbdM35R67eoGQo4j?highlight=spotify:track:273dCMFseLcVsoSWx59IoE'
WHERE five_ts_title = 'Bad Blood';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/5YLRVHDVRw3QqWbeTGpC5B?highlight=spotify:track:1rIKgCH4H52lrvDcz50hS8'
WHERE five_ts_title = 'Lush Life';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/2iFTxCYwhF5oC1L8s1B0rI?highlight=spotify:track:6wJwkMo278iWVlWl1XQ4WA'
WHERE five_ts_title = 'The Heart Wants What It Wants';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/10SD9Mtq2r7FRFtVQ8y19P?highlight=spotify:track:6omW6DQqbdBwJ4NKAcyAng'
WHERE five_ts_title = 'Five More Hours - Deorro x Chris Brown';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/09mWpzpUOSjjvK2iNqEIYn?highlight=spotify:track:5Z3zRrMIJk7CVpfcLsM9wD'
WHERE five_ts_title = 'King';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/6EVYTRG1drKdO8OnIQBeEj?highlight=spotify:track:7xoUc6faLbCqZO6fQEYprd'
WHERE five_ts_title = 'One Last Time';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/4QcXq4vTVN7dFb7bZa9jG2?highlight=spotify:track:46lFttIf5hnUZMGvjK0Wxo'
WHERE five_ts_title = 'Runaway (U & I)';

UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/5YLRVHDVRw3QqWbeTGpC5B?highlight=spotify:track:6hmhG1b4LEyNuashVvuIAo'
WHERE five_ts_title = 'Never Forget You';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/5gcn8qK6xElFNIP3mGed0M?highlight=spotify:track:7ioiB40H9xKs04QtIso2I3'
WHERE five_ts_title = 'Somebody';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/6bfkwBrGYKJFk6Z4QVyjxd?highlight=spotify:track:66hayvUbTotekKU3H4ta1f'
WHERE five_ts_title = 'Where Are Ü Now (with Justin Bieber)';



UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/4jKdXIJckKh7la6xHuKwRT?highlight=spotify:track:1JDIArrcepzWDTAWXdGYmP'
WHERE five_ts_title = 'I Want You To Know';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/2plkDryrrvLh6gUY7Zx1tA?highlight=spotify:track:18xfL5bAbwy1IhIOaaHf57'
WHERE five_ts_title = 'Confident';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/4EUf4YyNjuXypWY6W5wEDm?highlight=spotify:track:2bJvI42r8EF3wxjOuDav4r'
WHERE five_ts_title = 'Time of Our Lives';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/5BAqg5IJQ7XFKfdoCiOlJw?highlight=spotify:track:7aXuop4Qambx5Oi3ynsKQr'
WHERE five_ts_title = 'I Dont Mind (feat. Juicy J)';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/0P3oVJBFOv3TDXlYRhGL7s?highlight=spotify:track:25KybV9BOUlvcnv7nN3Pyo'
WHERE five_ts_title = 'In The Night';

UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/7IE3RROiOTUwMUPnff3NNZ?highlight=spotify:track:1pJCc8ItTbsSLNzQvpVwEL'
WHERE five_ts_title = 'Intoxicated - New Radio Mix';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/09mWpzpUOSjjvK2iNqEIYn?highlight=spotify:track:0SjaL4cjD4PXOY4orbZSMZ'
WHERE five_ts_title = 'Shine';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/4a6DxkhmMvvEdPXxm4ergN?highlight=spotify:track:59swFMbWuPBEJLnJyUGo2Q'
WHERE five_ts_title = 'Real Love';



UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/7lDBDk8OQarV5dBMu3qrdz?highlight=spotify:track:1BZG99C7Co1r6QUC3zaS59'
WHERE five_ts_title = 'Same Old Love';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/2FnfZiFMv7bmXAIATOJDHs?highlight=spotify:track:6rmXhRIemCTPyMYZRDN7Qg'
WHERE five_ts_title = 'Black Magic';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/4neocSMt40stXKK2B8Sy2G?highlight=spotify:track:0k6DnZMLoEUH8NGD5zh2SE'
WHERE five_ts_title = 'Ayo';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/20Ol6zZ0nLlc5EGTH1zA0j?highlight=spotify:track:5a7NdkF09AfD0H607eiOkX'
WHERE five_ts_title = 'On My Mind';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/2S56F6bIk01HboGbJJJ1IQ?highlight=spotify:track:3c8iiZGfEammKJuWTErE5x'
WHERE five_ts_title = 'Aint Nobody (Loves Me Better) (feat. Jasmine Thompson)';

UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/0TyDTzG2zt2tg0wONT9wSU?highlight=spotify:track:5NQbUaeTEOGdD6hHcre0dZ'
WHERE five_ts_title = '679 (feat. Remy Boyz)';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/7lDBDk8OQarV5dBMu3qrdz?highlight=spotify:track:1QNoKVgA758HFLu3TW2q7R'
WHERE five_ts_title = 'Kill Em With Kindness';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/2AUhyBQANk5FKHD6WCbxja?highlight=spotify:track:6KI1ZpZWYAJLvmVhCJz65G'
WHERE five_ts_title = 'You Dont Own Me (feat. G-Eazy)';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/4PWBTB6NYSKQwfo79I3prg?highlight=spotify:track:1wHZx0LgzFHyeIZkUydNXq'
WHERE five_ts_title = 'Antidote';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/4pCLlUxlKj3pNVdBtFyhrU?highlight=spotify:track:3r5cW1Sepzv1lr2xsi3B2Q'
WHERE five_ts_title = 'Light It Up (feat. Nyla & Fuse ODG) - Remix';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/0iAuPLI4L4n6lpv3YGMnWU?highlight=spotify:track:412luShbmlgqqgYFStIB1s'
WHERE five_ts_title = 'Wish You Were Mine - Radio Edit';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/0P3oVJBFOv3TDXlYRhGL7s?highlight=spotify:track:22VdIZQfgXJea34mQxlt81'
WHERE five_ts_title = 'Cant Feel My Face';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/1j2x7FJXTgUT0X5hZ8TDXE?highlight=spotify:track:7FYH5AW3bVfZHJIQpq3UOA'
WHERE five_ts_title = 'I Dont Fuck With You';

UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/0vrWqbRQEMKqhTGcDLQK7x?highlight=spotify:track:64GRDrL1efgXclrhVCeuA0'
WHERE five_ts_title = 'Lay Me Down';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/0tRVSbmOwilUucqjzU0fQw?highlight=spotify:track:3zU9rdflI65tK4dkkNSp77'
WHERE five_ts_title = 'Heroes (we could be)';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/37zhLi4O9kh3uBw2hXfV7y?highlight=spotify:track:5Paxe111uh6Eh8YrUobq2e'
WHERE five_ts_title = 'Hurt Me (2015)';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/5rr0xAQfk01cPi1N37jX11?highlight=spotify:track:5s7xgzXtmY4gMjeSlgisjy'
WHERE five_ts_title = 'Easy Love';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/7ycBtnsMtyVbbwTfJwRjSP?highlight=spotify:track:0N3W5peJUQtI4eyR6GJT5O'
WHERE five_ts_title = 'King Kunta';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/40GMAhriYJRO1rsY4YdrZb?highlight=spotify:track:0wwPcA6wtMf6HUMpIRdeP7'
WHERE five_ts_title = 'Hotline Bling';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/4UB0J5V3JsZZtNR360pZ6r?highlight=spotify:track:3s4U7OHV7gnj42VV72eSZ6'
WHERE five_ts_title = 'Rather Be (feat. Jess Glynne)';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/3UEEPh5wsdhP7SKC31yvhu?highlight=spotify:track:5b2bu6yyATC1zMXDGScJ2d'
WHERE five_ts_title = 'Hey Mama (feat. Nicki Minaj, Bebe Rexha & Afrojack)';

UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/6eDx949ONWDCN0O22wFZf7?highlight=spotify:track:4scpF6J5uMBvoh6sFB7EL1'
WHERE five_ts_title = 'No Type';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/2oj3FG6fos7zAQJxLQGzou?highlight=spotify:track:2hHLbkatPwOOmrNxTiD41L'
WHERE five_ts_title = 'I Really Like You';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/6WYHzLqNy9g3zNeqs9IwAA?highlight=spotify:track:3G7XYAwtxtoGK7fAm4IlD9'
WHERE five_ts_title = 'Classic Man (feat. Roman GianArthur)';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/1gMxiQQSg5zeu4htBosASY?highlight=spotify:track:2K87XMYnUMqLcX3zvtAF4G'
WHERE five_ts_title = 'Drag Me Down';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/0zAsh6hObeNmFgFPrUiFcP?highlight=spotify:track:41Fflg7qHiVOD6dEPvsCzO'
WHERE five_ts_title = 'Worth It (feat. Kid Ink)';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/7yBl4uFyJzH48Vy6tPieXL?highlight=spotify:track:78TTtXnFQPzwqlbtbwqN0y'
WHERE five_ts_title = 'FourFiveSeconds';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/5XyJzEROSmup2TcWmVjTIt?highlight=spotify:track:5tf1VVWniHgryyumXyJM7w'
WHERE five_ts_title = 'Sugar (feat. Francesco Yates)';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/0uMIzWh1uEpHEBell4rlF8?highlight=spotify:track:1I8tHoNBFTuoJAlh4hfVVE'
WHERE five_ts_title = 'Firestone';

UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/1gMxiQQSg5zeu4htBosASY?highlight=spotify:track:3NLnwwAQbbFKcEcV8hDItk'
WHERE five_ts_title = 'Perfect';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/44ArZIOrM8j3MzGjs3MUSg?highlight=spotify:track:1F2VIrr9oh7MwkI3NyLtHJ'
WHERE five_ts_title = 'Do You Remember';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/08jWgM4vSkTose4blKBWov?highlight=spotify:track:2TeLIzFBe3hxkPR5FIQZut'
WHERE five_ts_title = 'Like I Can';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/5lkNnHVlnCCCV304t89wOH?highlight=spotify:track:2S5LNtRVRPbXk01yRQ14sZ'
WHERE five_ts_title = 'I Dont Like It, I Love It (feat. Robin Thicke & Verdine White)';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/59eUYETmE1zi31ESb3SUkI?highlight=spotify:track:4tg1G3X26wDTmQbipgxhp5'
WHERE five_ts_title = 'Try Me (feat. Jennifer Lopez and Matoma)';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/0uMIzWh1uEpHEBell4rlF8?highlight=spotify:track:5masKPHeAOVNgxdLebIcK7'
WHERE five_ts_title = 'Stole the Show';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/7GqQiRft9pHtZukB37mc6c?highlight=spotify:track:2NVt7fxr5GsqTkGwYXcNTE'
WHERE five_ts_title = 'Flex (Ooh, Ooh, Ooh)';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/55zQqrjWsFHRcI1mxlQSsZ?highlight=spotify:track:2mCF8L0brIs88eH6Kf2h9p'
WHERE five_ts_title = 'Fast Car';

UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/6Fr2rQkZ383FcMqFyT7yPr?highlight=spotify:track:09CtPGIpYB4BrO8qb1RGsF'
WHERE five_ts_title = 'Sorry';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/7bpWEp24oHgUs08ImjakfU?highlight=spotify:track:53Y0kdCa1CZ9gRqEuknfwy'
WHERE five_ts_title = 'Bang My Head (feat. Sia & Fetty Wap)';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/2gKQvajkEEaDtkqJ8FJ4uw?highlight=spotify:track:1WoOzgvz6CgH4pX6a1RKGp'
WHERE five_ts_title = 'My Way (feat. Monty)';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/0h2knr6qpiAq0tV5ri5JMF?highlight=spotify:track:0ct6r3EGTcMLPtrXHDvVjc'
WHERE five_ts_title = 'The Nights';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/0sztwpDG0COJ1HoJRD74bn?highlight=spotify:track:38ismoqQYn75ruDSQ2Jtx8'
WHERE five_ts_title = 'Lay It All on Me (feat. Ed Sheeran)';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/6uZYkBePCdUP1LltEt9Qin?highlight=spotify:track:1i1rNVtxbE7rdFfpHuNq2j'
WHERE five_ts_title = 'Hold My Hand';


UPDATE Fifteen_TS
SET TS_Spotify = 'https://open.spotify.com/album/2SF8Wbc61u8hlQkZYGVCnx?highlight=spotify:track:3cNjgVBKTJ1SvKhunrCdVy'
WHERE five_ts_title = 'Please Dont Go';

















