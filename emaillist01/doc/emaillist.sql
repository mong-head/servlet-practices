-- sheme
use webdb;
desc emaillist;

-- list : 최근꺼 위로 올라오도록
select no, first_name, last_name, email
from emaillist
order by no desc;

-- add
insert into emaillist values (null, '둘리', '김', 'dooly@gmail.com');

-- delete
delete from emaillist where first_name='유진';
