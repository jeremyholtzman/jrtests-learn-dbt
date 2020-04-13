SELECT
    c.c_custkey,
    c.c_name,
    c.c_nationkey as nation,
    sum(o.o_totalprice) as total_order_price
from {{ source('sample', 'customer') }} c
LEFT JOIN {{ source('sample', 'orders') }} o
ON c.c_custkey = o.o_custkey

group by
    c.c_custkey,
    c.c_name,
    c.c_nationkey
