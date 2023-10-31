create table City (
	id int primary key,
    name varchar(45) not null unique
);

create table Trainer (
	id int primary key,
    name varchar(45) not null,
    gender varchar(45)
);

create table Pokemon (
	id int primary key,
    name varchar(45) not null,
    type varchar(45) not null,
    level int not null,
    trainer_id int not null,
    foreign key(trainer_id) references Trainer(id)
);

create table Gym(
	id int primary key,
    name varchar(45) not null unique,
    city_id int not null,
    foreign key(city_id) references City(id)
);

create table Trainer_Gym(
	id int primary key,
    gym_id int not null,
    foreign key(gym_id) references Gym(id),
    trainer_id int not null,
	foreign key(trainer_id) references Trainer(id)
)
