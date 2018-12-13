cars = load 'mtcars.csv'  using PigStorage(',')  as  (model:chararray);

mod = FOREACH cars GENERATE TOKENIZE(model) as word;

words = FOREACH mod GENERATE FLATTEN(word) as w;

g = GROUP words by  w;

c = FOREACH g GENERATE group,COUNT(words.w) as count;

dump c;

k = ORDER c by count;

dump k;
