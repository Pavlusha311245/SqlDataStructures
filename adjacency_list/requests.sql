SELECT * FROM categories
ORDER BY category_id;

explain analyse
SELECT t1.name as lvl1,
       t2.name as lvl2,
       t3.name as lvl3,
       t4.name as lvl4,
       t5.name as lvl5
FROM categories as t1
left join categories as t2 on t2.parent = t1.category_id
left join categories as t3 on t3.parent = t2.category_id
left join categories as t4 on t4.parent = t3.category_id
left join categories as t5 on t5.parent = t4.category_id
WHERE t1.name = 'ELECTRONICS';

SELECT * from categories where parent IS NULL;

-- function recursion(nodes)
--     foreach(nodes as node)
--          SELECT * from categories where parent = node.category_id