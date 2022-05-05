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

CREATE TABLE
  owners (
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    full_name VARCHAR(250),
    age INT
   
  );

CREATE TABLE
  species (
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    NAME VARCHAR(250)
   
  );

  ALTER TABLE animals DROP COLUMN IF EXISTS species;

ALTER TABLE animals
ADD COLUMN species_id INT;

ALTER TABLE animals
ADD
  CONSTRAINT species_fk FOREIGN KEY (species_id) REFERENCES species(id)
  ON
DELETE CASCADE;

ALTER TABLE animals
ADD COLUMN owner_id INT;

ALTER TABLE animals
ADD
  CONSTRAINT owner_fk FOREIGN KEY (owner_id) REFERENCES owners(id)
  ON
DELETE CASCADE;

CREATE TABLE
  vets(
    id INT   PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    NAME VARCHAR(250),
    age INT,
    date_of_graduation DATE,
   
  );

CREATE TABLE
  specializations(
    species_id INT,
    vets_id INT,
    PRIMARY KEY(species_id, vets_id),
    CONSTRAINT species_fk FOREIGN KEY (species_id) REFERENCES species(id),
    CONSTRAINT vets_fk FOREIGN KEY (vets_id) REFERENCES vets(id)
  );

  CREATE TABLE
  visits(
    animals_id INT,
    vets_id INT,
    PRIMARY KEY(animals_id, vets_id),
    CONSTRAINT animals_fk FOREIGN KEY (animals_id) REFERENCES animals(id),
    CONSTRAINT vets_fk FOREIGN KEY (vets_id) REFERENCES vets(id)
  );
ALTER TABLE visits
ADD COLUMN date_of_visit DATE;

ALTER TABLE visits
ADD COLUMN id PRIMARY KEY INT GENERATED ALWAYS AS IDENTITY;

