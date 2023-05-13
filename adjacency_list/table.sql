CREATE TABLE categories(
    category_id serial primary key,
    name varchar(20) not null ,
    parent bigint DEFAULT null
);