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
CREATE TABLE USA_TS (
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
CREATE TABLE Nineteen_TS (
	nine_ts_title char(25) not null,
	nine_ts_artist char(25) not null,
	nine_album char(25) not null,
	nine_playlist char(25) null,
	nine_type char(25) null,
	nine_ISRC varchar(25) null,
	nine_ts_rank_number DECIMAL(3,0) null,
	nine_ts_year date null,
	nine_ts_genre char(25) null,
);
CREATE TABLE Eightteen_TS (
	eight_ts_title char(25) not null,
	eight_ts_artist char(25) not null,
	eight_album char(25) not null,
	eight_playlist char(25) null,
	eight_type char(25) null,
	eight_ISRC varchar(25) null,
	eight_ts_rank_number DECIMAL(3,0) null,
	eight_ts_year date null,
	eight_ts_genre char(25) null,
);
CREATE TABLE Seventeen_TS (
	seven_ts_title char(25) not null,
	seven_ts_artist char(25) not null,
	seven_album char(25) not null,
	seven_playlist char(25) null,
	seven_type char(25) null,
	seven_ISRC varchar(25) null,
	seven_ts_rank_number DECIMAL(3,0) null,
	seven_ts_year date null,
	seven_ts_genres char(25) null,
);
CREATE TABLE Sixteen_TS (
	six_ts_title char(25) not null,
	six_ts_artist char(25) not null,
	six_album char(25) not null,
	six_playlist char(25) null,
	six_type char(25) null,
	six_ISRC varchar(25) null,
	six_ts_rank_number DECIMAL(3,0) null,
	six_ts_year date null,
	six_ts_genre char(25) null,
);
CREATE TABLE Fifteen_TS (
	five_ts_title char(25) not null,
	five_ts_artist char(25) not null,
	five_album char(25) not null,
	five_playlist char(25) null,
	five_type char(25) null,
	five_ISRC varchar(25) null,
	five_ts_rank_number DECIMAL(3,0) null,
	five_ts_year date null,
	five_ts_genre char(25) null,
);
CREATE TABLE Billboards (
	B_rank DECIMAL(3, 0) not null, 
	B_songs char(25) not null, 
);
CREATE TABLE Genre(
	g_name DECIMAL(3, 0) not null, 
	g_descrption varchar(25) null, 
);
create table RadioStations(
	r_freq char(25) not null, 
	r_signal char (10) not null,
	r_location VARCHAR(25) not null,
	r_schools char(100) null,
	r_format char(50) null, 
);
CREATE TABLE NewestSongs(
	NS_currentyear date not null,
	NS_songs char(25) not null, 
);

.mode "csv"
.seperator ","
.import Top_50_Global.csv Global_TS

.mode "csv"
.seperator ","
.import Top_50_songs.csv USA_TS

.mode "csv"
.seperator ","
.import Top_2019_songs.csv Nineteen_TS

.mode "csv"
.seperator ","
.import Top_2018_songs.csv Eightteen_TS

.mode "csv"
.seperator ","
.import Top_2017_songs.csv Seventeen_TS

.mode "csv"
.seperator ","
.import Top_2016_songs.csv Sixteen_TS

.mode "csv"
.seperator ","
.import Top_2015_songs.csv Fifteen_TS

.mode "csv"
.seperator ","
.import Person Person

.mode "csv"
.seperator ","
.import RadioStations Radio_Stations_LA

.mode "csv"
.seperator ","
.import Genre Genre






