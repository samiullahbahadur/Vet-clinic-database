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

-- create invoices table
CREATE TABLE invoices(
	id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
	total_amount DECIMAL,
	generated_at TIME,
	payed_at TIME,
	medical_history_id INT FOREIGN KEY REFERENCES medical_histories(id)
);


-- create treatments table
CREATE TABLE treatments(
	id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
	type CHAR(255),
	name CHAR(255)
);