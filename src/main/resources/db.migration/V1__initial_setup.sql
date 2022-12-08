CREATE TABLE        address (
id				    INT				    NOT NULL	AUTO_INCREMENT  ,
cep				    VARCHAR	(8)	        NOT NULL				    ,
city			    VARCHAR (30)	    NOT NULL				    ,
state			    VARCHAR	(2)		    NOT NULL				    ,
address 		    VARCHAR (30)	    NOT NULL				    ,
house_number	    VARCHAR	(5)		    NOT NULL				    ,
second_address	    VARCHAR	(30)						    	    ,
PRIMARY KEY	(id)
);

CREATE TABLE        client (
id				    INT				NOT NULL	AUTO_INCREMENT	    ,
name			    VARCHAR	(150)	NOT NULL					    ,
email			    VARCHAR (50)	NOT NULL	UNIQUE			    ,
phone			    BIGINT	(15)	NOT NULL					    ,
document		    VARCHAR	(20)	NOT NULL					    ,
tp_person           VARCHAR (2)     NOT NULL                        ,
birthdate		    DATE			NOT NULL					    ,
address_id		    INT 			NOT NULL					    ,
tp_document		    VARCHAR	(4)	    NOT NULL					    ,
PRIMARY KEY	(id)												    ,
FOREIGN KEY (address_id) REFERENCES address (id)
);

CREATE TABLE        account (
id					INT				NOT NULL	AUTO_INCREMENT		,
number      		INT 	(10)	NOT NULL						,
balance				DECIMAL (13, 2)				DEFAULT 0			,
password            INT     (6)     NOT NULL                        ,
client_id			INT 			NOT NULL						,
tp_account          VARCHAR (9)     NOT NULL                        ,
registration_dt		DATETIME		NOT NULL						,
deactivation_dt		DATETIME										,
PRIMARY KEY	(id)													,
FOREIGN KEY (client_id) REFERENCES client (id)
);