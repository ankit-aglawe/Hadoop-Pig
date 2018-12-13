mov = load '/vimala/movies.txt' using PigStorage(',') as (id:int,name:chararray,year:int,ratings:float,dur:int);


k4 = FOREACH mov GENERATE ratings*dur ;

dump k4;
