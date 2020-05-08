USE gregs_list;
DESCRIBE my_contacts;
ALTER TABLE my_contacts
ADD COLUMN city VARCHAR(50),
ADD COLUMN state CHAR(2);
SELECT RIGHT (location,2) FROM my_contacts;
SELECT SUBSTRING_INDEX(location, ',',1) FROM my_contacts;

SELECT SUBSTRING('San Antonio, TX',5,3);
SELECT UPPER('uSa');
SELECT LOWER('spaGHEtti');
SELECT REVERSE ('spaGHERTTI');
SELECT LTRIM('     dogfood ');
SELECT RTRIM(' catfood    ');
SELECT LENGTH('San Antonio, TX');

SELECT * FROM my_contacts;

SET SQL_SAFE_UPDATES = 0;

UPDATE my_contacts SET state = RIGHT(location,2);
SELECT * FROM my_contacts;

UPDATE my_contacts SET city = SUBSTRING_INDEX(location,",",1);
SELECT * FROM my_contacts;
