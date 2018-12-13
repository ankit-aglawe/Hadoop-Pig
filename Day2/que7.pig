cars = load 'mtcars.csv'  using PigStorage(',')  as  (model:chararray,mpg:int,cyl:int, disp:int, hp:int, drat:float, wt:float, qsec:float, vs:int,am:int,gear:int,carb:int);

/*
dump cars;
*/

mod = FOREACH cars GENERATE TOKENIZE(model) as word;

dump mod;

