alter table pracownicy drop column stanowisko;

alter table  pracownicy add id_stanowiska int;
select * from pracownicy;

update pracownicy set id_stanowiska = rand();
update pracownicy set id_stanowiska = rand()*(4)+1;