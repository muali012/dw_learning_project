SELECT
  d.year,
  s.city,
  f.stationid,
  SUM(f.wastecollected) AS total_waste_collected
FROM
  FactTrip f
  JOIN DimDate d ON f.dateid = d.dateid
  JOIN DimStation s ON f.stationid = s.stationid
GROUP BY ROLLUP (d.year, s.city, f.stationid);
