mov = load '/vimala/movies.txt' using PigStorage(',') as (id:int,name:chararray,year:int,ratings:float,dur:int);

dump mov;

p = FOREACH mov GENERATE (id,name), LCFIRST(name);

dump p;
