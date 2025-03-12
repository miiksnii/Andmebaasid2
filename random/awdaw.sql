use kaspar;


-- Jagame tabeli kaheks osaks:
-- Filmid ja Osalised (Title, person)

create table title
as select  distinct  
   tconst,
   titleType,
   primaryTitle,
   originalTitle,
   isAdult,
   startYear,
   endYear,
   runtimeMinutes, 
   averageRating,
   numVotes
from full5;


create table person
as select  distinct 
   tconst,
   ordering,
   nconst,
   category,
   job,   
   characters,
   primaryName,
   birthYear,
   deathYear
   from full5;
   

-- Kontrollime, kas antud väljadsobivadprimary key'ks - on unikaalsed
select tconst, count(*) from title group by tconst having count(*) > 1;

select tconst, nconst, ordering, count(*) from person group by tconst, nconst, ordering having count(*) > 1;


alter table title 
add primary key(tconst);