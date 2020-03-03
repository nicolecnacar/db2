SELECT info ->> 'customer' AS customer FROM "030320".orders
WHERE info -> 'items' ->> 'product' = 'Diaper'
INTERSECT
SELECT info ->> 'customer' FROM "030320".orders
WHERE info -> 'items' ->> 'product' = 'Beer';