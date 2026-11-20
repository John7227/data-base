SELECT Drivers.DriverID, Drivers.Name,
	SUM(Rides.Fare) As TotalRevenue
FROM Drivers
JOIN Rides ON Drivers.DriverID = Rides.DriverID
GROUP BY Drivers.DriverID, Drivers.Name
ORDER BY TotalRevenue DESC
LIMIT 1;