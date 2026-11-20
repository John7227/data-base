SELECT Drivers.DriverID, Drivers.Name
FROM Drivers
LEFT JOIN Rides
	ON Drivers.DriverID = Rides.DriverID
	AND Rides.RideDate >= DATE_SUB(CURDATE(), INTERVAL 30 DAY)
WHERE Rides.RideID IS NULL;