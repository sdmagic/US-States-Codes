# US-States-Codes

This is a complete list of US States and territories.

You can use these files to:
- Create a U.S. states and territories table for your PostgreSQL database
- Read the CSV directly into a database table or other kind of program (ex. Excel or LibreOffice Calc)

***

Included are the following files:
- .CSV
- .SQL (tested with Postgresql)
  - Builds states table and indexes containing:
    - id uuid NOT NULL DEFAULT uuid_generate_v4()
    - abbreviation character(2) NOT NULL
    - statename character varying NOT NULL
    - dateentered timestamp with time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
    - datemodified timestamp with time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
    - moduser character varying NOT NULL DEFAULT CURRENT_USER
    - PRIMARY KEY (id)
  - Feel free to modify the table columns as needed
 
***

To use this file, just start up an SQL editor in pgAdmin:
- Load the .SQL file
- Execute the .SQL file

A table named **states** will be created in your current database