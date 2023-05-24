DROP table IF EXISTS categories;
CREATE TABLE categories(
    category_id serial primary key,
    name varchar(20) not null ,
    parent bigint DEFAULT null
);

INSERT INTO public.categories (category_id, name, parent) VALUES (1, 'ELECTRONICS', null);
INSERT INTO public.categories (category_id, name, parent) VALUES (2, 'TVs', 1);
INSERT INTO public.categories (category_id, name, parent) VALUES (3, 'TUBE', 2);
INSERT INTO public.categories (category_id, name, parent) VALUES (4, 'LCD', 2);
INSERT INTO public.categories (category_id, name, parent) VALUES (5, 'PLASMA', 2);
INSERT INTO public.categories (category_id, name, parent) VALUES (6, 'PORTABLE', 1);
INSERT INTO public.categories (category_id, name, parent) VALUES (7, 'MP3', 6);
INSERT INTO public.categories (category_id, name, parent) VALUES (8, 'FLASH', 7);
INSERT INTO public.categories (category_id, name, parent) VALUES (9, 'CD PLAYERS', 6);
INSERT INTO public.categories (category_id, name, parent) VALUES (10, '2 WAY RADIOS', 8);
