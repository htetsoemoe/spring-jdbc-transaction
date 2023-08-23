create database propagation;
create user 'propagation'@'localhost' identified by 'propagation';

grant all privileges on propagation.* to 'propagation'@'localhost';

use propagation

create table header_tbl (
	id int primary key auto_increment,
	name varchar(20) not null
);

create table details_tbl (
	id int primary key auto_increment,
	header_id int not null,
	name varchar(20) not null,
	foreign key(header_id) references header_tbl(id)
);
