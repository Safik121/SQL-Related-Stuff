CREATE TABLE users (
	id integer primary key auto_increment,
    username varchar(45) not null,
    email varchar(255) not null unique
);
