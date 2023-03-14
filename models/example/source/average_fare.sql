{{
    config(
        materialized='table'
    )
}}

SELECT
  EXTRACT(DAYOFWEEK FROM trip_start_timestamp) AS day_of_week,
  AVG(fare) AS average_fare
FROM {{ ref ('chicago_taxi_trips') }}
GROUP BY day_of_week
ORDER BY day_of_week
