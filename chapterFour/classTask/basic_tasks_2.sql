SELECT RiderID, COUNT(*) AS RideCount
FROM Rides
GROUP BY RiderID;

