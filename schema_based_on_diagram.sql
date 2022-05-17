/* create patients table */
CREATE TABLE patients(
	id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
	name CHAR(255),
	date_of_birth DATE
);

-- create medical_hitories table
CREATE TABLE medical_histories(
	id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
	admitted_at TIME,
	patient_id INT FOREIGN KEY REFERENCES patients(id),
	status CHAR(255)
);