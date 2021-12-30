

create schema loginServer;

use loginServer;

create table users(

	code integer primary key auto_increment,
	id varchar(30) not null,
	pw varchar(30) not null,
	name varchar(30) not null,
	year varchar(30) not null,
	month varchar(30) not null,
	day varchar(30) not null,
	gender varchar(30) not null,
	tel varchar(30) not null,
	regDate datetime not null default current_timestamp
);

select * from users;

insert users(id,pw, name, year, month, day, gender, tel) values("abcd","1234","김김김","2012","12","23","M","12345678");

use loginServer;

create table boards(
	code integer  primary key auto_increment,
    title varchar(200),
    content varchar(5000),
    id varchar(20),
    pw varchar(20),
    view integer default 0,
    `like` integer default 0,
    date datetime not null default current_timestamp
);

select * from boards;

