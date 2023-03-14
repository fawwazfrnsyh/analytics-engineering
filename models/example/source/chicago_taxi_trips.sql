{{
  config(
    materialized='ephemeral'
  )
}}

SELECT *
FROM
  {{ source('taxi_trips', 'chicago_taxi_trips')}}