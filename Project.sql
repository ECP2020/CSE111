CREATE TABLE Albums (
	artist char(25) not null,
	year date not null,
	title char(25) not null,
	genre char(25) not null,
);
CREATE TABLE Person (
	P_name char(25) not null,
	P_email char(25) not null,
	P_songs char(25) not null, 
);
CREATE TABLE Global_TS (
	TS_title char(25) not null,
	TS_artist char(25) not null,
	TS_album char(25) not null,
	TS_playlist char(25) null,
	TS_type char(25) null,
	TS_ISRC varchar(25) null,
	TS_rank_number DECIMAL(3,0) null,
	TS_Year date  null, 
	TS_genre char(25) null,
);
CREATE TABLE Billboards (
	B_rank DECIMAL(3, 0) not null, 
	B_songs char(25) not null, 
);
CREATE TABLE Genre(
	g_name DECIMAL(3, 0) not null, 
	g_descrption varchar(25) not null, 
);
CREATE TABLE RadioStations(
	r_name char(25) not null, 
	r_location VARCHAR(25) not null,
	r_songs char(25) not null,
);
CREATE TABLE NewestSongs(
	NS_currentyear date not null,
	NS_songs char(25) not null, 
);

.mode "csv"
.seperator ","
.import data/Top_50_Global.csv Global_TS
