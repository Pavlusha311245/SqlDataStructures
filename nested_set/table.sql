CREATE TABLE nested_categories(
    category_id serial primary key ,
    name varchar(20) not null ,
    lft bigint not null ,
    rgt bigint not null
)