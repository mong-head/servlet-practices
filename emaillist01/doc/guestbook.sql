-- scheme
use webdb;
desc guestbook;

-- select
select no,name,password,message,reg_date 
from guestbook
order by no desc
;

select password
from guestbook
where no = 11;

-- insert
insert into guestbook values( null, "mongs", "1111", "hi\nhello", now());

-- delete
delete from guestbook where name = "mongs" and password = "1111";