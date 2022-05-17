/* create patients table */
CREATE TABLE patients(
	id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
	name CHAR(255),
	date_of_birth DATE
);