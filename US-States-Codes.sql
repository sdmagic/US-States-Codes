-- US-States-Codes.sql

-- US-States-Codes © 2024 by Stephen D, Cooper 
-- This work is licensed under the MIT License


-- uuid-ossp is needed for uuid_generate_v4()
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- We drop the table instead of IF NOT EXIST in CREATE TABLE
-- statement because this script always loads the data from 
-- scratch, AND if we make changes to the CREATE TABLE statement, 
-- we need to drop it first anyways.

DROP TABLE IF EXISTS states;

CREATE TABLE states
(
    id uuid NOT NULL DEFAULT uuid_generate_v4(),
    abbreviation character(2) NOT NULL,
    statename character varying NOT NULL,
    dateentered timestamp with time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    datemodified timestamp with time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
	moduser character varying NOT NULL DEFAULT CURRENT_USER,
    PRIMARY KEY (id)
);

-- Create indexes

CREATE INDEX abbreviation
    ON states
    (abbreviation);

CREATE INDEX statename
    ON states
    (statename);

-- Insert data

INSERT INTO states (abbreviation, statename)
	VALUES	('AK','Alaska'),
			('AL','Alabama'),
			('AR','Arkansas'),
			('AS','American Samoa'),
			('AZ','Arizona'),
			('CA','California'),
			('CO','Colorado'),
			('CT','Connecticut'),
			('DC','District of Columbia'),
			('DE','Delaware'),
			('FL','Florida'),
			('FM','Federated States of Micronesia'),
			('GA','Georgia'),
			('GU','Guam'),
			('HI','Hawaii'),
			('IA','Iowa'),
			('ID','Idaho'),
			('IL','Illinois'),
			('IN','Indiana'),
			('KS','Kansas'),
			('KY','Kentucky'),
			('LA','Louisiana'),
			('MA','Massachusetts'),
			('MD','Maryland'),
			('ME','Maine'),
			('MH','Marshall Islands'),
			('MI','Michigan'),
			('MN','Minnesota'),
			('MO','Missouri'),
			('MP','Northern Mariana Islands'),
			('MS','Mississippi'),
			('MT','Montana'),
			('NC','North Carolina'),
			('ND','North Dakota'),
			('NE','Nebraska'),
			('NH','New Hampshire'),
			('NJ','New Jersey'),
			('NM','New Mexico'),
			('NV','Nevada'),
			('NY','New York'),
			('OH','Ohio'),
			('OK','Oklahoma'),
			('OR','Oregon'),
			('PA','Pennsylvania'),
			('PR','Puerto Rico'),
			('PW','Palau'),
			('RI','Rhode Island'),
			('SC','South Carolina'),
			('SD','South Dakota'),
			('TN','Tennessee'),
			('TX','Texas'),
			('UT','Utah'),
			('VA','Virginia'),
			('VI','Virgin Islands'),
			('VT','Vermont'),
			('WA','Washington'),
			('WI','Wisconsin'),
			('WV','West Virginia'),
			('WY','Wyoming');
