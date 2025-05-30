alter table pracownicy drop column stanowisko;

alter table  pracownicy add id_stanowiska int;
select * from pracownicy;

update pracownicy set id_stanowiska = rand();
update pracownicy set id_stanowiska = rand()*(4)+1;
select * from pracownicy;

select pracownicy.imie, pracownicy.nazwisko, pracownicy.pesel, stanowiska.nazwa, stanowiska.pensja from pracownicy join stanowiska 
on pracownicy.id_stanowiska = stanowiska.id_stanowiska;

SELECT p.imie, p.nazwisko, p.pesel, s.nazwa, s.pensja
FROM pracownicy AS p
JOIN stanowiska AS s ON p.id_stanowiska = s.id_stanowiska;

//

alter table pracownicy change id_stanowiska id_stan int;

alter table pracownicy change id_stan id_stanowiska int;

insert into pracownicy (imie, nazwisko,id_stan)
Values ('Ola', 'Wiertara', NULL);