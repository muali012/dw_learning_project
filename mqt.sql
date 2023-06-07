CREATE MATERIALIZED VIEW max_waste_stats AS
SELECT
  f.city,
  f.stationid,
  f.trucktype,
  MAX(f.wastecollected) AS max_waste_collected
FROM
  FactTrip f
GROUP BY
  f.city,
  f.stationid,
  f.trucktype;
