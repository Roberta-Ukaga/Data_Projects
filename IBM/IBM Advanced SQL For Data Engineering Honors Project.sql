--Q1.1 Using Joins: Write and execute a SQL query to list the school names, community names and average attendance for communities with a hardship index of 98.
SELECT
  CPS.NAME_OF_SCHOOL,
  CD.COMMUNITY_AREA_NAME,
  CPS.AVERAGE_STUDENT_ATTENDANCE
FROM
  CHICAGO_PUBLIC_SCHOOLS CPS
  JOIN CENSUS_DATA CD ON CPS.COMMUNITY_AREA_NUMBER = CD.COMMUNITY_AREA_NUMBER
WHERE
  CD.HARDSHIP_INDEX = 98;



--Q1.1 Using Joins: Alternate solution with same result as following the 'hint' to use an outer join
SELECT
  CPS.NAME_OF_SCHOOL,
  CD.COMMUNITY_AREA_NAME,
  CPS.AVERAGE_STUDENT_ATTENDANCE
FROM
  CHICAGO_PUBLIC_SCHOOLS CPS
  LEFT JOIN CENSUS_DATA CD ON CPS.COMMUNITY_AREA_NUMBER = CD.COMMUNITY_AREA_NUMBER
WHERE
  CD.HARDSHIP_INDEX = 98;



--Q1.2 Write and execute a SQL query to list all crimes that took place at a school. Include case number, crime type and community name.
SELECT
  CCD.CASE_NUMBER,
  CCD.PRIMARY_TYPE,
  CD.COMMUNITY_AREA_NAME,
  CCD.LOCATION_DESCRIPTION
FROM
  CHICAGO_CRIME_DATA CCD
  LEFT JOIN CENSUS_DATA CD ON CCD.COMMUNITY_AREA_NUMBER = CD.COMMUNITY_AREA_NUMBER
WHERE
  CCD.LOCATION_DESCRIPTION LIKE '%SCHOOL%';



--Q2.1 Creating a View: Write and execute a SQL statement to create a view showing the columns listed in the following table, with new column names as shown in the second column.
DROP VIEW FROM_CPS;

CREATE VIEW FROM_CPS AS
SELECT
  "NAME_OF_SCHOOL" AS School_Name,
  "SAFETY_ICON" AS Safety_Rating,
  "FAMILY_INVOLVEMENT_ICON" AS Family_Rating,
  "ENVIRONMENT_ICON" AS Environment_Rating,
  "INSTRUCTION_ICON" AS Instruction_Rating,
  "LEADERS_ICON" AS Leaders_Rating,
  "TEACHERS_ICON" AS Teachers_Rating
FROM
  CHICAGO_PUBLIC_SCHOOLS;

SELECT
  *
FROM
  FROM_CPS;

--Q2.2 Creating a View: Write and execute a SQL statement that returns all of the columns from the view.
SELECT
  *
FROM
  FROM_CPS;



--Q2.3 Creating a View: Write and execute a SQL statement that returns just the school name and leaders rating from the view.
SELECT
  School_Name,
  Leaders_Rating
FROM
  FROM_CPS;



--Q3.1 Creating a Stored Procedure: Write the structure of a query to create or replace a stored procedure called UPDATE_LEADERS_SCORE that takes a in_School_ID parameter as an integer and a in_Leader_Score parameter as an integer. Don't forget to use the #SET TERMINATOR statement to use the @ for the CREATE statement terminator.
--#SET TERMINATOR @
CREATE OR REPLACE PROCEDURE UPDATE_LEADERS_SCORE_EXAMPLE  
LANGUAGE SQL
READS SQL DATA 
DYNAMIC RESULT SETS 1
BEGIN DECLARE C1 CURSOR
WITH
  RETURN FOR 
SELECT
  "SCHOOL_ID",
  "LEADERS_SCORE"
FROM
  CHICAGO_PUBLIC_SCHOOLS;

OPEN
  C1;

END 
@ 
CALL UPDATE_LEADERS_SCORE_EXAMPLE 
@ 
  
  
  
--Q3.2 Creating a Stored Procedure: Inside your stored procedure, write a SQL statement to update the Leaders_Score field in the CHICAGO_PUBLIC_SCHOOLS table for the school identified by in_School_ID to the value in the in_Leader_Score parameter.
--#SET TERMINATOR @
CREATE OR REPLACE PROCEDURE UPDATE_LEADERS_SCORE(IN in_School_ID INTEGER, IN in_Leaders_Score INTEGER)
BEGIN
    UPDATE CHICAGO_PUBLIC_SCHOOLS
    SET LEADERS_SCORE = in_Leaders_Score
    WHERE SCHOOL_ID = in_School_ID;
END@




--Q3.3 CREATE OR REPLACE PROCEDURE UPDATE_LEADERS_ICON(IN in_School_ID INTEGER, IN in_Leaders_Score INTEGER)
--#SET TERMINATOR @
CREATE OR REPLACE PROCEDURE UPDATE_LEADERS_ICON(IN in_School_ID INTEGER, IN in_Leaders_Score INTEGER)
BEGIN
    IF in_Leaders_Score > 0 AND in_Leaders_Score < 20 THEN
        UPDATE CHICAGO_PUBLIC_SCHOOLS
        SET LEADERS_ICON = 'Very_weak'
        WHERE SCHOOL_ID = in_School_ID;
    ELSEIF in_Leaders_Score < 40 THEN
        UPDATE CHICAGO_PUBLIC_SCHOOLS
        SET LEADERS_ICON = 'Weak'
        WHERE SCHOOL_ID = in_School_ID;
    ELSEIF in_Leaders_Score < 60 THEN
        UPDATE CHICAGO_PUBLIC_SCHOOLS
        SET LEADERS_ICON = 'Avg'
        WHERE SCHOOL_ID = in_School_ID;
    ELSEIF in_Leaders_Score < 80 THEN
        UPDATE CHICAGO_PUBLIC_SCHOOLS
        SET LEADERS_ICON = 'Strong'
        WHERE SCHOOL_ID = in_School_ID;
    ELSE
        UPDATE CHICAGO_PUBLIC_SCHOOLS
        SET LEADERS_ICON = 'Very_strong'
        WHERE SCHOOL_ID = in_School_ID;
    END IF;
END@



--Q3.4 Run your code to create the stored procedure & Write a query to call the stored procedure, passing a valid school ID and a leader score of 50, to check that the procedure works as expected.
--#SET TERMINATOR @
CREATE OR REPLACE PROCEDURE UPDATE_LEADERS_ICON(IN in_School_ID INTEGER, IN in_Leaders_Score INTEGER)
BEGIN
    IF in_Leaders_Score > 0 AND in_Leaders_Score < 20 THEN
        UPDATE CHICAGO_PUBLIC_SCHOOLS
        SET LEADERS_ICON = 'Very_weak'
        WHERE SCHOOL_ID = in_School_ID;
    ELSEIF in_Leaders_Score < 40 THEN
        UPDATE CHICAGO_PUBLIC_SCHOOLS
        SET LEADERS_ICON = 'Weak'
        WHERE SCHOOL_ID = in_School_ID;
    ELSEIF in_Leaders_Score < 60 THEN
        UPDATE CHICAGO_PUBLIC_SCHOOLS
        SET LEADERS_ICON = 'Avg'
        WHERE SCHOOL_ID = in_School_ID;
    ELSEIF in_Leaders_Score < 80 THEN
        UPDATE CHICAGO_PUBLIC_SCHOOLS
        SET LEADERS_ICON = 'Strong'
        WHERE SCHOOL_ID = in_School_ID;
    ELSE
        UPDATE CHICAGO_PUBLIC_SCHOOLS
        SET LEADERS_ICON = 'Very_strong'
        WHERE SCHOOL_ID = in_School_ID;
    END IF;
END@

-- Call the stored procedure with a school ID of 610185 and a leader score of 50

CALL UPDATE_LEADERS_ICON(610185, 50)@


--Q4.1 Update your stored procedure definition. Add a generic ELSE clause to the IF statement that rolls back the current work if the score did not fit any of the preceding categories.
--#SET TERMINATOR @
CREATE OR REPLACE PROCEDURE UPDATE_LEADERS_ICON(IN in_School_ID INTEGER, IN in_Leaders_Score INTEGER)
BEGIN
    IF in_Leaders_Score > 0 AND in_Leaders_Score < 20 THEN
        UPDATE CHICAGO_PUBLIC_SCHOOLS
        SET "LEADERS_ICON" = 'Very_weak'
        WHERE "SCHOOL_ID" = in_School_ID;
    ELSEIF in_Leaders_Score < 40 THEN
        UPDATE CHICAGO_PUBLIC_SCHOOLS
        SET "LEADERS_ICON" = 'Weak'
        WHERE "SCHOOL_ID" = in_School_ID;
    ELSEIF in_Leaders_Score < 60 THEN
        UPDATE CHICAGO_PUBLIC_SCHOOLS
        SET "LEADERS_ICON" = 'Avg'
        WHERE "SCHOOL_ID" = in_School_ID;
    ELSEIF in_Leaders_Score < 80 THEN
        UPDATE CHICAGO_PUBLIC_SCHOOLS
        SET "LEADERS_ICON" = 'Strong'
        WHERE "SCHOOL_ID" = in_School_ID;
    ELSE
        ROLLBACK WORK; -- This line rolls back the current transaction
    END IF;
END@



--Q4.2 Update your stored procedure definition again. Add a statement to commit the current unit of work at the end of the procedure.
--#SET TERMINATOR @
CREATE OR REPLACE PROCEDURE UPDATE_LEADERS_ICON(IN in_School_ID INTEGER, IN in_Leaders_Score INTEGER)
BEGIN
    IF in_Leaders_Score > 0 AND in_Leaders_Score < 20 THEN
        UPDATE CHICAGO_PUBLIC_SCHOOLS
        SET "LEADERS_ICON" = 'Very_weak'
        WHERE "SCHOOL_ID" = in_School_ID;
    ELSEIF in_Leaders_Score < 40 THEN
        UPDATE CHICAGO_PUBLIC_SCHOOLS
        SET "LEADERS_ICON" = 'Weak'
        WHERE "SCHOOL_ID" = in_School_ID;
    ELSEIF in_Leaders_Score < 60 THEN
        UPDATE CHICAGO_PUBLIC_SCHOOLS
        SET "LEADERS_ICON" = 'Avg'
        WHERE "SCHOOL_ID" = in_School_ID;
    ELSEIF in_Leaders_Score < 80 THEN
        UPDATE CHICAGO_PUBLIC_SCHOOLS
        SET "LEADERS_ICON" = 'Strong'
        WHERE "SCHOOL_ID" = in_School_ID;
    ELSE
        ROLLBACK WORK; -- Rollback the current transaction for invalid input
    END IF;

    COMMIT; -- Commit the current transaction
END@

