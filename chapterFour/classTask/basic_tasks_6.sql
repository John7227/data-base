SELECT RiderID, Fare,
	(SELECT AVG(Fare) FROM Rides) AS AverageFare
FROM Rides
WHERE Fare > (SELECT AVG(Fare)FROM Rides) * 1.5
	OR Fare < (SELECT AVG(Fare) FROM Rides) * 0.5