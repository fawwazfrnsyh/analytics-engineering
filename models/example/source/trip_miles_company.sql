{{
    config(
        materialized='table'
  )
}}

SELECT company, trip_miles
FROM {{ ref ('chicago_taxi_trips') }}
WHERE company IS NOT NULL
ORDER BY trip_miles DESC