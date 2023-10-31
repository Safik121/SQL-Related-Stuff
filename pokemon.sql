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
);

insert into City (id, name)
values (1, "Yoho"), (2, "Kojuo");

insert into Trainer (id, name, gender)
values (1, "Albert", "Male"), (2, "Marunka", "Female");
insert into Trainer (id, name)
values (3, "Lucius");

insert into Pokemon (id, name, type, level, trainer_id)
values 
	(1, "Mew", "Psychic", 690, 3), 
    (2, "Pikachu", "Electric", 2, 1), 
    (3, "Lapras", "Water", 25, 2);


insert into Gym (id, name, city_id)
values (1, "Ultimate_Gym", 1);

insert into Trainer_Gym(id, gym_id, trainer_id)
values (1, 1, 3)
