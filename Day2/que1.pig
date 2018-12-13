su - hduser 

pig

mov = load '/vimala/movies.txt' using PigStorage(',') as (id:int,name:chararray,year:int,ratings:float,dur:int);

dump mov;

describe mov;

k = FOREACH mov GENERATE (id,name,year), STARTSWITH(name,'A') as f1;

 k1 = FILTER k by f1==true;

dump k1;

low = order k1 by year;

dump low;


