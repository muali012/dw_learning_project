SELECT
  f.stationid,
  t.trucktype,
  SUM(f.wastecollected) AS total_waste_collected
FROM
  FactTrip f
  JOIN DimTruck t ON f.truckid = t.truckid
GROUP BY GROUPING SETS (
  (f.stationid),
  (t.trucktype),
  (f.stationid, t.trucktype)
);

