SELECT Klienci.Imię, Klienci.Nazwisko, Faktury.KwotaBrutto, Faktury.KwotaNetto, Faktury.VAT, Zamówienia_Produkty.Ilość
FROM Zamówienia_Produkty INNER JOIN (Klienci INNER JOIN Faktury ON Klienci.Klient_ID = Faktury.Klient_ID) ON Zamówienia_Produkty.Zamówienie_ID = Faktury.Zamówienie_ID
ORDER BY Faktury.KwotaBrutto DESC;
