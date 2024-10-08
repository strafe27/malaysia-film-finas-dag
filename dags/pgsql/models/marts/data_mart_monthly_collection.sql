{{ config(materialized='table') }}

with monthly as (
    select 
        to_char(release_date, 'YYYY-MM-01') as month,
        sum(ticket_collection) as total_ticket_collection
    from 
        {{ ref('fct_films') }}
    where ticket_collection is not null
    group by 
        month
)

select * 
from monthly

order by 
    month
