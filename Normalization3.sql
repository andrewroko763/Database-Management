--Create the players table--

drop table if exists players;
create table players
(
pid			serial,	
pfirst_name		text,
plast_name		text,
address			text,
phone_number		text,
school			text,
team			text,
date_of_birth		text,
age_group		int
);

--Create the Coaches Table--

drop table if exists coaches;
create table coaches
(
cid			serial,
cfirst_name		text,
clast_name		text,
address			text,
phone_number		text
);

--Create the Teams Table--
drop table if exists teams;
create table teams
(
tid			serial,
team_name		text,
age_group		text
);

--Create the teams coached table--
drop table if exists coached_teams;
create table coached_teams
(
tcid			serial,
cid			int,
tid			int,
team_name		text,
coaching_status		text
);

