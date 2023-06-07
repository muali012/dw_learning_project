SELECT
  d.year,
  s.city,
  f.stationid,
  AVG(f.wastecollected) AS average_waste_collected
FROM
  FactTrip f
  JOIN DimDate d ON f.dateid = d.dateid
  JOIN DimStation s ON f.stationid = s.stationid
GROUP BY CUBE (d.year, s.city, f.stationid);
