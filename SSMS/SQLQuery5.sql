-- cwiczenie pierwsze

CREATE TRIGGER miejsca_no_delete
ON miejsca
INSTEAD OF DELETE
AS
BEGIN
    RAISERROR ('Usuwanie danych z tabeli miejsca jest zabronione', 16, 1);
END;


-- cwiczenie drugie

CREATE TABLE log_usuniecia_klienci (
    id INT IDENTITY(1,1) PRIMARY KEY,
    data_usuniecia DATETIME
);

CREATE TRIGGER klienci_log_delete
ON klienci
AFTER DELETE
AS
BEGIN
    INSERT INTO log_usuniecia_klienci (data_usuniecia)
    VALUES (GETDATE());
END;


-- cwiczenie 3

CREATE TABLE klienci_kopia (
    id INT,
    imie NVARCHAR(50),
    nazwisko NVARCHAR(50),
    email NVARCHAR(100),
    data_usuniecia DATETIME
);

CREATE TRIGGER klienci_delete_kopia
ON klienci
AFTER DELETE
AS
BEGIN
    INSERT INTO klienci_kopia (id, imie, nazwisko, email, data_usuniecia)
    SELECT id, imie, nazwisko, email, GETDATE()
    FROM deleted;
END;

-- cwiczenie 4

CREATE TRIGGER pracownicy_insert_do_klienci
ON pracownicy
AFTER INSERT
AS
BEGIN
    INSERT INTO klienci (id, imie, nazwisko)
    SELECT id, imie, nazwisko
    FROM inserted;
END;

-- ciwczenie 5

CREATE PROCEDURE planowany_budzet_12_miesiecy
AS
BEGIN
    SELECT
        SUM(pensja_miesieczna * 12) AS budzet_pensje,
        SUM(premia_miesieczna * 12) AS budzet_premie,
        SUM((pensja_miesieczna + premia_miesieczna) * 12) AS budzet_laczny
    FROM pracownicy;
END;

EXEC planowany_budzet_12_miesiecy;

-- cwiczenie 6

CREATE PROCEDURE dane_na_koperty
AS
BEGIN
    SELECT
        imie,
        nazwisko,
        CONCAT(ulica, ' ', nr_domu, ', ', kod_pocztowy, ' ', miasto) 
        AS adres_zatrudnienia
    FROM pracownicy;
END;

EXEC dane_na_koperty;

