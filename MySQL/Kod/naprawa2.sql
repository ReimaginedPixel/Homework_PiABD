create table naprawa (
	id_naprawa INT PRIMARY KEY auto_increment,
	id_samochodu INT,
	data DATE,
	naprawa VARCHAR(50),
	stan VARCHAR(10),
	koszt DECIMAL(10,2)
);