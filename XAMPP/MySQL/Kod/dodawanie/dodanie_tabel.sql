CREATE TABLE grupa (
    id INT(11) PRIMARY KEY AUTO_INCREMENT,
    nazwa VARCHAR(50) NOT NULL,
    pensja_od FLOAT,
    pensja_do FLOAT
);

CREATE TABLE stanowisko (
    id INT(11) PRIMARY KEY AUTO_INCREMENT,
    nazwa VARCHAR(50) NOT NULL,
    id_grupa INT(11),
    FOREIGN KEY (id_grupa) REFERENCES grupa(id)
);

CREATE TABLE pracownicy (
    id INT(11) PRIMARY KEY AUTO_INCREMENT,
    imie VARCHAR(100) NOT NULL,
    nazwisko VARCHAR(100) NOT NULL,
    pensja FLOAT,
    data_ur DATE,
    id_stanowiska INT(11),
    FOREIGN KEY (id_stanowiska) REFERENCES stanowisko(id)
);

CREATE TABLE premia (
    id INT(11) PRIMARY KEY AUTO_INCREMENT,
    kwota FLOAT,
    data DATE,
    id_pracownik INT(11),
    FOREIGN KEY (id_pracownik) REFERENCES pracownicy(id)
);
