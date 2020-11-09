CREATE TABLE bigdata(
	num number not null primary key,
	name varchar2(20) not null,
	id varchar2(20) not null,
	email varchar2(40) not null,
	phone varchar2(20) not null
)

CREATE sequense big_seq;

insert into bigdata values(big_seq.nextval, '관리자', 'admin','admin@naver.com', '010-1111-1111')

select * from bigdata;

crate table e_member(
	id varchar2(30) not null,
	pw varchar2(30) not null,
	name varchar2(30) not null,
	phone varhcar2(15) not null,
	address varchar2(80) not null
)