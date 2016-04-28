--Andrew Rokoszak
--Lab 10- Final Lab

--Returns the immediate prereqs for a specific course number
CREATE OR REPLACE FUNCTION preReqsFor(int, REFCURSOR)
RETURNS REFCURSOR AS
$$
DECLARE
    course int  := $1;
    resultset REFCURSOR := $2;
	BEGIN
		OPEN RESULTSET FOR
		SELECT num, name, credits
		FROM   Courses
		JOIN   Prerequisites
		ON     Courses.num = Prerequisites.preReqNum
		WHERE  Prerequisites.courseNum = course;
	RETURN resultset;
END;
$$
language plpgsql;

select preReqsFor(308,'results');
Fetch all from results;



--Returns course for which the passed-in course is an immediate pre-requisite
CREATE OR REPLACE FUNCTION isPreReqFor(int, REFCURSOR)
RETURNS REFCURSOR AS
$$
DECLARE
    course int := $1;
    resultset REFCURSOR := $2;
	BEGIN
		OPEN RESULTSET FOR
		SELECT num, name, credits
		FROM Courses
		JOIN Prerequisites
		ON Courses.num = Prerequisites.courseNum
		WHERE Prerequisites.preReqNum = course;
	RETURN resultset;
END;
$$
language plpgsql;

select isPreReqFor(220, 'results');
Fetch all from results;

