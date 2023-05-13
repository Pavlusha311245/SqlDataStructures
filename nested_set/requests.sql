-- explain

-- Прямой обход дерева
explain analyse
SELECT node.name
from nested_categories as node,
     nested_categories as parent
where node.lft between parent.lft and parent.rgt
  and parent.name = 'ELECTRONICS'
order by node.lft;

-- Получение конечных узлов дерева
SELECT name
from nested_categories
where rgt = lft + 1;

-- Получение пути к ноде
SELECT parent.name
from nested_categories as node,
     nested_categories as parent
where node.lft between parent.lft and parent.rgt
  and node.name = 'FLASH'
order by parent.lft;

-- Получение глубины кажой ноды
SELECT node.name,
       (count(parent.name) - 1) as depth
from nested_categories as node,
     nested_categories as parent
where node.lft between parent.lft and parent.rgt
group by node.name, node.lft
order by node.lft;

SELECT concat(REPEAT(' ', count(parent.name) - 1), node.name) as name
from nested_categories as node,
     nested_categories as parent
where node.lft between parent.lft and parent.rgt
group by node.name, node.lft
order by node.lft;