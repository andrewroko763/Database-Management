-- Create People Table
DROP TABLE IF EXISTS people;

CREATE TABLE people (
	PID						INT not null,
	FIRSTNAME					VARCHAR(255) not null,
	LASTNAME					VARCHAR(255) not null,
	ADDRESS						VARCHAR(255) not null,
PRIMARY KEY(PID)
);


-- Create Actors Table

DROP TABLE IF EXISTS actors;

CREATE TABLE actors (
	PID						INT not null,
	BIRTHDATE 					DATE not null, 
	HAIRCOLOR  					VARCHAR (255),
	EYECOLOR 					VARCHAR (255),
	HEIGHT 						FLOAT not null,
	WEIGHT 						FLOAT not null,
	SPOUSENAME  					VARCHAR (255),
	FAVORITECOLOR 					VARCHAR (255),
	SCREENACTORSGUILDANNIVERSARYDATE		DATE,
PRIMARY KEY(PID),
FOREIGN KEY (PID) references people(PID)
);

-- Create Directors Table

DROP TABLE IF EXISTS directors;

CREATE TABLE directors (
PID							INT not null,
SPOUSENAME 						VARCHAR (255),
FILMSCHOOLATTENDED 					VARCHAR (255),
DIRECTORSGUILDANNIVERSARYDATE 				DATE,
FAVORITELENSMAKER 					VARCHAR (255),
PRIMARY KEY(PID),
FOREIGN KEY (PID) references people(PID)
);

--Create Movies Table

DROP TABLE IF EXISTS movies;

CREATE TABLE movies (
	MOVIEID						INT not null,		
	MOVIENAME					VARCHAR(255) not null,
	YEARMOVIERELEASED				INT not null ,
	MPAA						INT not null,
	DOMESTICBOXOFFICESALESUSD			FLOAT ,
	FOREIGNBOXOFFICESALESUSD			FLOAT  ,
	DVD_BLUERAYSALESUSD				FLOAT ,
PRIMARY KEY (MOVIEID)
);

--Create actors_movies Table
CREATE TABLE actors_movies (
	PID 						INT not null references actors(PID) , 
	MovieID						INT not null references movies(MOVIEID) ,
Primary Key (PID,MOVIEID)
);



--Create directors_movies Table

DROP TABLE IF EXISTS directors_movies;

CREATE TABLE directors_movies (
	PID 						INT not null references directors(PID) , 
	MovieID						INT not null references movies(MOVIEID) ,
Primary Key (PID,MOVIEID)
);





 -- People
 
INSERT INTO people (PID , FIRSTNAME , LASTNAME, ADDRESS)
VALUES ('1' , 'Andrew' , 'Rokoszak' , '13 West Cedar Street Poughkeepsie New York');

INSERT INTO people (PID , FIRSTNAME , LASTNAME, ADDRESS)
VALUES ('2' ,'Carolyn' , 'Rokoszak' , '136 Youngs Road Mahwah New Jersey');

INSERT INTO people (PID , FIRSTNAME , LASTNAME, ADDRESS)
VALUES ('3' ,'Sean' , 'Connery' , '738 Crest Oak Road Summit New Jersey');

INSERT INTO people (PID , FIRSTNAME , LASTNAME, ADDRESS)
VALUES ('4' ,'Mike' , 'Simmons' , '1313 River Street Corning New York');

INSERT INTO people (PID , FIRSTNAME , LASTNAME, ADDRESS)
VALUES ('5' ,'Michael' , 'Crudo' , '1313 Fairy Road Crow Nest Montana');

INSERT INTO people (PID , FIRSTNAME , LASTNAME, ADDRESS)
VALUES ('6' ,'Bobby' , 'Dasilva' , '112 Victory Lane  Bridewater New Jersey');

INSERT INTO people (PID , FIRSTNAME , LASTNAME, ADDRESS)
VALUES ('7' ,'Mitch' , 'Connelly' , '1324 Kirkland Road Buffalo New York');

INSERT INTO people (PID , FIRSTNAME , LASTNAME, ADDRESS)
VALUES ('8' ,'Dave' , 'Smith' , 'First Road Ashville California');

INSERT INTO people (PID , FIRSTNAME , LASTNAME, ADDRESS)
VALUES ('9' ,'Jim' , 'Kelly' , '876 Crest Oak Street Somerset New Texas');

 
 
 -- ACTORS
 
INSERT INTO actors (PID , BIRTHDATE , HAIRCOLOR, EYECOLOR , HEIGHT , WEIGHT , SPOUSENAME , FAVORITECOLOR, SCREENACTORSGUILDANNIVERSARYDATE)
VALUES ('1','19931015' , 'Black' , 'Black' , '5.5' , '120' , 'KENDALL BURKE' , 'ORANGE' ,  '20001213' );

INSERT INTO actors (PID , BIRTHDATE , HAIRCOLOR, EYECOLOR , HEIGHT , WEIGHT , SPOUSENAME , FAVORITECOLOR, SCREENACTORSGUILDANNIVERSARYDATE)
VALUES ('2' , '19600512' , 'Brown' , 'Black' , '5.6' , '250' , 'JOHN SMITH' , 'MAGENTA' , '20011213' );

INSERT INTO actors (PID , BIRTHDATE , HAIRCOLOR, EYECOLOR , HEIGHT , WEIGHT , SPOUSENAME , FAVORITECOLOR, SCREENACTORSGUILDANNIVERSARYDATE)
VALUES ('3' , '19300825' , 'Grey' , 'Black' , '60' , '200' , 'MARY CARTER' , 'BLUE' , '19750217' );


-- DIRECTORS

INSERT INTO directors (PID, SPOUSENAME, FILMSCHOOLATTENDED, DIRECTORSGUILDANNIVERSARYDATE, FAVORITELENSMAKER )
VALUES ('4' , 'ANDREA LUTHER' , 'Luxburg' , '20011213' , 'FIJIFILM');

INSERT INTO directors (PID, SPOUSENAME, FILMSCHOOLATTENDED, DIRECTORSGUILDANNIVERSARYDATE, FAVORITELENSMAKER )
VALUES ('5' , 'ILEEN FRANCOIS' , 'NEW YORK UNIVERSITY' , '19951209' , 'KODAK');

INSERT INTO directors (PID, SPOUSENAME, FILMSCHOOLATTENDED, DIRECTORSGUILDANNIVERSARYDATE, FAVORITELENSMAKER )
VALUES ('6' , 'BRANDON JENNINGS' , 'School Of Lights' , '20031215' , 'CANON');

-- MOVIES

INSERT INTO movies (MOVIEID , MOVIENAME , MPAA , YEARMOVIERELEASED , DOMESTICBOXOFFICESALESUSD , FOREIGNBOXOFFICESALESUSD , DVD_BLUERAYSALESUSD)
VALUES ('1' ,'MOVIE 1' , '0001' , '1991' , '12.11' , '123.11' , '23.23');

INSERT INTO movies (MOVIEID , MOVIENAME , MPAA , YEARMOVIERELEASED , DOMESTICBOXOFFICESALESUSD , FOREIGNBOXOFFICESALESUSD , DVD_BLUERAYSALESUSD)
VALUES ('2', 'MOVIE 2' , '0002' , '1992' , '12.11' , '123.11' , '23.23');

INSERT INTO movies (MOVIEID , MOVIENAME , MPAA , YEARMOVIERELEASED , DOMESTICBOXOFFICESALESUSD , FOREIGNBOXOFFICESALESUSD , DVD_BLUERAYSALESUSD)
VALUES ('3', 'MOVIE 3' , '0003' , '1993' , '12.11' , '123.11' , '23.23');


-- directors_movies

INSERT INTO directors_movies(MOVIEID ,PID)
VALUES ( '1' , '4' );

INSERT INTO directors_movies(MOVIEID ,PID)
VALUES ( '2' , '5' );

INSERT INTO directors_movies(MOVIEID ,PID)
VALUES ( '3' , '6' );

--actors_movies

INSERT INTO actors_movies(MOVIEID ,PID)
VALUES ( '1' , '1' );

INSERT INTO actors_movies(MOVIEID ,PID)
VALUES ( '2' , '2' );

INSERT INTO actors_movies(MOVIEID ,PID)
VALUES ( '3' , '3' );




-- Functional Dependencies --



-- TABLE People

 --(PID) → FIRSTNAME , LASTNAME , ADDRESS

-- TABLE Actors

 --(PID) →  BIRTHDATE , HAIRCOLOR, EYECOLOR , HEIGHT , WEIGHT ,SCREENACTORSGUILDANNIVERSARYDATE

-- TABLE Directors

 --(PID) →  FILMSCHOOLATTENDED,
--DIRECTORSGUILDANNIVERSARYDATE 

-- TABLE Movies

--(MOVIEID) →  MOVIENAME , YEARMOVIERELEASED , DOMESTICBOXOFFICESALESUSD , FOREIGNBOXOFFICESALESUSD , --DVD_BLUERAYSALESUSD 

-- Actors_Movies

 --(PID , MOVIEID) → 

-- Directors_Movies

 --(PID , MOVIEID ) → 

 Select distinct LASTNAME , FIRSTNAME
from people
where pid In (
	select pid
	from directors_movies
	where movieid IN (
		select movieid
		from actors_movies
		where pid IN (
			Select pid
			from people
			where lastname = 'Connery' and pid IN (
				Select pid
				from people
				where firstname = 'Sean')
				)
			)
		)