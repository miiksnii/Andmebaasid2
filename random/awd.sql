select * from ta23norm.titleperson;

alter table person rename titlePerson;

create table person as select distinct nconst, primaryName,birthYear, deathYear from titlePerson;

select nconst, count(*) from person group by nconst having count(*) > 1;

alter table person add primary key(nconst);

alter table titleperson
drop column birthYear;

alter table titleperson
drop column deathYear;

select tconst, ordering, nconst, count(*) from titleperson group by tconst, ordering, nconst having count(*) > 1;

alter table titleperson
add primary key(tconst, ordering, nconst);
