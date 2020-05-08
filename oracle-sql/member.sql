
CREATE TABLE CERT
(
	NO                   CHAR(18) NOT NULL ,
	NAME                 CHAR(18) NULL ,
	BUILD                CHAR(18) NULL 
);



CREATE UNIQUE INDEX XPK�ڰ��� ON CERT
(NO   ASC);



ALTER TABLE CERT
	ADD CONSTRAINT  XPK�ڰ��� PRIMARY KEY (NO);



CREATE TABLE MEMBER
(
	NO                   CHAR(18) NOT NULL ,
	NAME                 CHAR(18) NULL ,
	ADDRESS              CHAR(18) NULL ,
	TELNO                CHAR(18) NULL ,
	SSN                  CHAR(18) NULL ,
	CERTNO               CHAR(18) NOT NULL 
);



CREATE UNIQUE INDEX XPKȸ�� ON MEMBER
(NO   ASC);



ALTER TABLE MEMBER
	ADD CONSTRAINT  XPKȸ�� PRIMARY KEY (NO);



ALTER TABLE MEMBER
	ADD (CONSTRAINT R_2 FOREIGN KEY (CERTNO) REFERENCES CERT (NO));