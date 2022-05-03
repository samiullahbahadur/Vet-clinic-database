/* Database schema to keep the structure of entire database. */
CREATE DATABASE Vet_clinic;


CREATE TABLE
  animals (
 ID INT PRIMARY KEY	GENERATED ALWAYS AS IDENTITY,
    NAME VARCHAR(64) NOT NULL,
    date_of_birth DATE NOT NULL,
    escape_attempts INT NOT NULL,
    neutered BOOLEAN NOT NULL,
    weight_kg REAL  NOT NULL
  );


ALTER TABLE animals
ADD COLUMN species VARCHAR(128);

INSERT INTO
  animals (
    NAME,
    date_of_birth,
    escape_attempts,
    neutered,
    weight_kg
  )
VALUES ('Charmander', 'February 8, 2020', 0, TRUE, -11);