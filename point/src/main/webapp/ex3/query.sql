
CREATE TABLE guestbook(
id serial primary key,
name varchar(50) not null,
message text not null,
reg_date timestamp default now()
);

insert into guestbook(name, message)
values('선생님', '방명록 테스트');

select* from guestbook;