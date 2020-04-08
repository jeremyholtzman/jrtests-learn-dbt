SELECT sum(c_acctbal) as total
FROM {{ ref('playing_with_tests') }}

HAVING sum(c_acctbal) >= 100000000
