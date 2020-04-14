USE gregs_list;

CREATE TABLE projekts
(num INT NOT NULL,
descriptionofproj VARCHAR(30),
contractoronjob VARCHAR(20),
PRIMARY KEY (num));

INSERT INTO projekts VALUES (1, 'outside house painting','Murphy');
INSERT INTO projekts VALUES (2,'kitchen remodel','Valdez');
INSERT INTO projekts VALUES (3,'wood floor instalation','Keller');
INSERT INTO projekts VALUES (4,'roofing','Jackson');

DESCRIBE projekts;

ALTER TABLE projekts RENAME TO project_list;
DROP TABLE project_list;

CREATE TABLE projekts 
(number int(11) default NULL,
descriptionofproj VARCHAR(50) default NULL,
contractoronjob VARCHAR(10) default NULL);

INSERT INTO projekts VALUES (1, 'outside house painting','Murphy');
INSERT INTO projekts VALUES (2,'kitchen remodel','Valdez');
INSERT INTO projekts VALUES (3,'wood floor instalation','Keller');
INSERT INTO projekts VALUES (4,'roofing','Jackson');

SELECT * FROM projekts;

ALTER TABLE projekts RENAME TO project_list;
ALTER TABLE project_list CHANGE COLUMN number proj_id INT NOT NULL AUTO_INCREMENT,
ADD PRIMARY KEY (proj_id);
ALTER TABLE project_list
CHANGE COLUMN descriptionofproj proj_desc VARCHAR(100),
CHANGE COLUMN contractoronjob con_name VARCHAR(30);
ALTER TABLE project_list
MODIFY COLUMN proj_desc VARCHAR(120);
DESCRIBE project_list;

ALTER TABLE project_list
ADD COLUMN start_date DATE AFTER proj_id,
ADD COLUMN est_cost VARCHAR(20) AFTER proj_desc,
ADD COLUMN con_phone VARCHAR(10);

DESCRIBE project_list;

ALTER TABLE project_list DROP COLUMN start_date;

CREATE TABLE hooptie
(color VARCHAR(10) default NULL,
year VARCHAR(4) default NULL,
make VARCHAR(10) default NULL,
mo VARCHAR(10) default NULL,
howmuch DEC(10,3) default NULL);

INSERT INTO hooptie VALUES ('silver','1998','Porsche','Boxter',17992.540);
INSERT INTO hooptie (year,make,mo,howmuch) VALUES ('2000','Jaguar','XJ',15995);
INSERT INTO hooptie VALUES ('red','2002','Cadilac','Escalade',40215.9);

ALTER TABLE hooptie RENAME car_table;
ALTER TABLE car_table
ADD COLUMN car_id INT NOT NULL AUTO_INCREMENT FIRST,
ADD PRIMARY KEY (car_id);

DESCRIBE car_table;

ALTER TABLE car_table
ADD COLUMN VIN VARCHAR(20);

ALTER TABLE car_table 
MODIFY COLUMN VIN VARCHAR(17) AFTER car_id,
MODIFY COLUMN make VARCHAR(10) AFTER VIN,
CHANGE COLUMN mo model VARCHAR(20) AFTER make,
MODIFY COLUMN color VARCHAR(10) AFTER model,
MODIFY COLUMN year VARCHAR(10) AFTER color,
CHANGE COLUMN howmuch price DECIMAL(7,2) AFTER year;

DESCRIBE car_table;

SELECT * FROM car_table;