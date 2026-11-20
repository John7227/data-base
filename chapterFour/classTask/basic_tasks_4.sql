SELECT Riders.City AS Area, COUNT(*) AS RideCount
FROM Riders
JOIN Rides ON Riders.RiderID = Rides.RiderID
GROUP BY Riders.City
ORDER BY RideCount DESC
LIMIT 1;