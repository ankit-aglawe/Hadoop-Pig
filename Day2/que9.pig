c = LOAD '/vimala/customers.txt' USING PigStorage(',') as (id:int, cname: chararray, country :chararray);
dump c;

d = LOAD '/vimala/orders.txt' USING PigStorage(',') as (oid:chararray, id:int, date:chararray);
dump d;

j = join c by id, o by id;

dump j;


