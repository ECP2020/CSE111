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
CREATE TABLE TopSongs (
	TS_title char(25) not null,
	TS_artist char(25) not null, 
	TS_rank_number DECIMAL(3,0) not null,
	TS_Year date not null, 
	TS_genre char(25) not null,
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
