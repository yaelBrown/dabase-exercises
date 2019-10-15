# use employees;
#
# show tables;
#
# select * from employees;

use codeup_test_db;
show tables;
select * from albums;
describe albums;

alter table albums add unique(artist, name);

show albums;

-- Error duplicate entries.
insert into albums (artist, name) values ("Eagles", "Hotel California");