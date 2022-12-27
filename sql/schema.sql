CREATE TABLE event_log(
	event_id INT SERIAL PK,
	raw_description VARCHAR,
	table VARCHAR,
	quarter VARCHAR,
	game_time VARCHAR
)

CREATE TABLE player(
	player_id INT SERIAL PK,
	player_full_name VARCHAR,
	first_name VARCHAR,
	last_name VARCHAR,
	birthdate DATE,
	first_game_date DATE,
	retirement_date DATE
)

CREATE TABLE player_injury(
	player_id INT,
	injury VARCHAR,
	start_date DATE,
	end_date DATE
)

CREATE TABLE team(
	team_id INT SERIAL PK,
	team_name VARCHAR,
	team_abbrev VARCHAR,
	team_city VARCHAR,
	team_mascot VARCHAR,
	start_date VARCHAR,
	end_date VARCHAR
)

CREATE TABLE schedule(
	game_id INT,
	home_team VARCHAR,
	away_team VARCHAR,
	location VARCHAR,
	arena VARCHAR,
	start_date DATE,
	start_time_et DATETIME,
	start_time_local DATETIME
)

CREATE TABLE player_team(
	player_id INT,
	team_id INT,
	position VARCHAR,
	start_date DATE,
	end_date DATE
)

CREATE TABLE play_by_play(
	event_id INT PK,
	game_id INT,
	event_description VARCHAR,
	game_time VARCHAR,
	player_id INT
)

CREATE TABLE players-substitution(
	player_id INT,
	game_id INT,
	team_id INT,
	quarter VARCHAR,
	game_time VARCHAR,
	type VARHAR
)

CREATE TABLE players_scored(
	player_id INT,
	type_score VARCHAR,
	location VARCHAR,
	points_scored INT,
	quarter VARCHAR,
	game_time VARCHAR,
	shotclock INT
)

CREATE TABLE players_fouls(
	player_id INT,
	type VARCHAR,
	player_fouled VARCHAR,
	shooting_foul VARCHAR,
	points_scored INT
)

CREATE TABLE players_defense(
	player_id INT,
	type VARCHAR,
	offesnse_player VARCHAR,
	quarter VARCHAR,
	game_time VARCHAR
)

CREATE TABLE players_assists(
	player_id INT,
	type VARCHAR,
	player_scored VARCHAR
)

CREATE TABLE players_rebounds(
	player_id INT,
	type VARCHAR,
	quarter VARCHAR,
	game_time VARHCAR,
	next_play INT
)

CREATE TABLE player_salary(
	player_id INT,
	season_start_year INT,
	income_source VARCHAR,
	conditions VARCHAR
)

CREATE TABLE team_caps(
	team_id INT
)