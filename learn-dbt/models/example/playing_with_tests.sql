with sample_customer as (
  SELECT *
  FROM {{ source('sample2', 'customer') }}
)

select
  c_custkey,
  c_mktsegment,
  {{rename_segments('c_mktsegment')}} mkt_segment_adjusted,
  c_acctbal
from sample_customer
