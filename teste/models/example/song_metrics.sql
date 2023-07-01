{{ config(materialized='table') }}

select
    name_album
    , avg(value_acousticness) as avg_acousticness
    , avg(value_danceability) as avg_danceability
    , avg(value_energy) as avg_energy
from {{ ref('taylor_swift_spotify') }}
group by 1