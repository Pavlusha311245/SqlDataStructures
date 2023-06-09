DROP table IF EXISTS nested_categories;
CREATE TABLE nested_categories(
    category_id serial primary key ,
    name varchar(20) not null ,
    lft bigint not null ,
    rgt bigint not null
);

INSERT INTO public.nested_categories (category_id, name, lft, rgt) VALUES (1, 'ELECTRONICS', 1, 20);
INSERT INTO public.nested_categories (category_id, name, lft, rgt) VALUES (2, 'TVs', 2, 9);
INSERT INTO public.nested_categories (category_id, name, lft, rgt) VALUES (3, 'TUBE', 3, 4);
INSERT INTO public.nested_categories (category_id, name, lft, rgt) VALUES (4, 'LCD', 5, 6);
INSERT INTO public.nested_categories (category_id, name, lft, rgt) VALUES (5, 'PLASMA', 7, 8);
INSERT INTO public.nested_categories (category_id, name, lft, rgt) VALUES (6, 'PORTABLE', 10, 19);
INSERT INTO public.nested_categories (category_id, name, lft, rgt) VALUES (7, 'MP3', 11, 14);
INSERT INTO public.nested_categories (category_id, name, lft, rgt) VALUES (8, 'FLASH', 12, 13);
INSERT INTO public.nested_categories (category_id, name, lft, rgt) VALUES (9, 'CD PLAYERS', 15, 16);
INSERT INTO public.nested_categories (category_id, name, lft, rgt) VALUES (10, '2 WAY RADIOS', 17, 18);
