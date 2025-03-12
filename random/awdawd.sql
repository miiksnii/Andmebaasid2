use kaspar;
create table full5
as select    
distinct tconst,
   titleType,
   primaryTitle,
   originalTitle,
   isAdult,
   startYear,
   endYear,
   runtimeMinutes,
   genres,   
   averageRating,
   numVotes, 
   directors,
   writers,
   ordering,
   nconst,
   category,
   job,   
   characters,
   primaryName,
   birthYear,
   deathYear
   from full4;