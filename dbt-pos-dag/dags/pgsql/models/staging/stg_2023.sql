{{ config(materialized='view') }}

with films as (
    select * 
    from {{ source('public', 'raw_2023') }}  -- Reference the source using the source macro
)

select * 
from films
