--1.Wybierz nazwy i adresy wszystkich klientów,

--2.wybierz nazwiska i numery telefonów pracowników,

--3.wybierz nazwy i ceny jednostkowe produktów,

--4.poka¿ wszystkie kategorie produktów (numery i nazwy),

--5.poka¿ numery katalogowe(SupplierID), nazwiska i adresy stron www dostawców,

--6.znajdŸ numer zamówienia „OrderID” oraz identyfikator klienta „CustomerID” 

--dla zamówien z data wczeœniejsza ni¿ ’1998-01-08’, z tablicy zamówien [orders].

--7.Wybierz nazwy i adresy wszystkich klientów majacych siedziby w Londynie,

--8.wybierz nazwy i adresy wszystkich klientów majacych siedziby we Francji lub w Hiszpanii,

--9.wybierz nazwy i ceny produktów o cenie jednostkowej pomiedzy 20 a 30,
SELECT Products.ProductName FROM Products
--10.wybierz nazwy i ceny produktów z kategorii ’seafood’,

--11.wybierz nazwy produktów oraz inf. o stanie magazynu dla produktów dostarczanych przez firme ’Tokyo Traders’,

--12.wybierz nazwy produktów których nie ma w magazynie.

--13.Szukamy informacji o produktach sprzedawanych w butelkach (’bottle’),

--14.znajdŸ nazwy kategorii, które w opisie zawieraja przecinek,

--15.znajdŸ klientów, którzy w swojej nazwie maja w którymœ miejscu slowo ’Store’,

--16.wyœwietl takie nazwy produktów, które zaczynaja i koncza sie na litere ’r’,

--17.znajdŸ takie kategorie, których nazwa bedzie zaczynala sie od litery ’C’, trzecia litera bedzie ’n’ i ostatnia ’s’,

--18.wyszukaj informacje o stanowisku pracowników, których nazwiska zaczynaja sie na litere ’B’ lub ’L’,

--19.wyszukaj informacje o stanowisku pracowników, których nazwiska zaczynaja sie na litere z zakresu od ’B’ do ’L’,

--20.Wybierz nazwy i kraje wszystkich klientów, wyniki posortuj wedlug kraju, w ramach danego kraju nazwy firm posortuj alfabetycznie

--21.Wybierz informacje o produktach (kategoria, nazwa, cena), produkty posortuj wg kategorii, a po kategorii malejaco wg ceny

--22.Wybierz nazwy i kraje wszystkich klientów majacych siedziby w Niemiec lub we Wloszech (Italy), wyniki posortuj w pierwsze kolejnoœci wg nazwy rosnaco a w drugiej kolejnoœci krajów malejaco;

--23.Podaj liczbe produktów o cenach mniejszych ni¿ 10$ lub wiekszych ni¿ 20$

--24.Podaj maksymalna cene produktu dla produktów o cenach poni¿ej 20$

--25.Podaj maksymalna i minimalna i œrednia cene produktu dla produktów o produktach sprzedawanych w butelkach (‘bottle’)

--26.Wypisz informacje o wszystkich produktach o cenie powy¿ej œredniej 

--27.Podaj maksymalna cene zamawianego produktu produktu dla ka¿dego zamówienia

--28.Posortuj zamówienia wg ceny produktu malej¹co

--29.Podaj maksymalna i minimalna cene zamawianego produktu produktu dla ka¿dego zamówienia

--30.Podaj liczbe zamówien dostarczanych przez przez poszczególnych spedytorów

--31.Który z spedytorów byl najaktywniejszy w 1997 roku

--32.Podaj sume zamówienia o numerze 10250