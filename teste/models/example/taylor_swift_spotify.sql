{{ config(materialized='table') }}

select 
    cast(id as int) as id
    ,cast("name" as varchar) as name_song
    ,cast(album as varchar) as name_album
    ,cast(release_date as date) as release_date
    ,cast(track_number as int) as track_number
    ,cast(id_song as varchar) as id_song
    ,cast(uri as varchar) as uri
    ,cast(acousticness as float) as value_acousticness
    ,cast(danceability as float) as value_danceability
    ,cast(energy as float) as value_energy
    ,cast(instrumentalness as float) as value_instrumentalness
    ,cast(liveness as float) as value_liveness
    ,cast(loudness as float) as value_loudness
    ,cast(speechiness as float) as value_speechiness
    ,cast(tempo as float) as value_tempo
    ,cast(valence as float) as value_valence
    ,cast(popularity as int) as popularity
    ,cast(duration_ms as int) as duration_ms

from {{ source('public', 'taylor_swift_spotify') }}