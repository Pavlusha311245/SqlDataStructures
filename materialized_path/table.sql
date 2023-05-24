create extension IF NOT EXISTS ltree;
DROP table IF EXISTS transport;
create table transport (
    name text,
    path ltree
);
DROP index IF EXISTS path_gist_idx;
create index path_gist_idx on transport using GIST (path);

insert into transport values ('Transport', 'Transport');
insert into transport values ('Car', 'Transport.Car');
insert into transport values ('Truck', 'Transport.Car.Truck');
insert into transport values ('Van', 'Transport.Car.Van');
insert into transport values ('Sedan', 'Transport.Car.Sedan');
insert into transport values ('Boat', 'Transport.Boat');
insert into transport values ('Yacht', 'Transport.Boat.Yacht');
insert into transport values ('SailBoat', 'Transport.Boat.SailBoat');
insert into transport values ('Aircraft', 'Transport.AirCraft');
insert into transport values ('Helicopter', 'Transport.AirCraft.Helicopter');
insert into transport values ('Jet', 'Transport.AirCraft.Jet');
insert into transport values ('AirBus', 'Transport.AirCraft.AirBus');