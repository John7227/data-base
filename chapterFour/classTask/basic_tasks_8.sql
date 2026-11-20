SELECT Riders.City AS Area,
	ROUND(AVG(Rides.Fare), 2) AS AverageFare
FROM Riders
JOIN Rides ON Riders.RiderID = Rides.RiderID
GROUP BY Riders.City
ORDER BY AverageFare DESC, Area ASC
LIMIT 5