file = LOAD '/vimala/dm.txt' as (line:chararray);
dump file;


lines = FOREACH file GENERATE TOKENIZE(line) as word ;
words = FOREACH lines GENERATE FLATTEN(word) as w;
dump words;

g = GROUP words by w;
c = FOREACH g GENERATE GROUP, COUNT(words.w) as count;

dump c;

k = ORDER c BY count;

