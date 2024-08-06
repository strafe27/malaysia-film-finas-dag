{{ config(materialized='view') }}

with films as (
    select * 
    from {{ source('raw','raw2022')}}  -- Reference to the raw table in a different database
)

select * 
from films