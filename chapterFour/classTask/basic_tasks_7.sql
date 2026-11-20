SELECT Riders.RiderID, Riders.Name,
	AVG(Rides.Rating) AS AverageRating
FROM Riders
JOIN Rides ON Riders.RiderID = Rides.RiderID
GROUP BY Riders.RiderID, Riders.Name
HAVING AVG(Rides.Rating) < 3