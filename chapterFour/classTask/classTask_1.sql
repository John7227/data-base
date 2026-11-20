-- CREATE DATABASE lagos_ride_db;
USE lagos_ride_db;

CREATE TABLE Drivers (
  DriverID INT PRIMARY KEY,
  Name VARCHAR(100) NOT NULL,
  City VARCHAR(50),
  Rating DECIMAL(3, 2),
  TotalRides INT
);

CREATE TABLE Riders (
  RiderID INT PRIMARY KEY,
  Name VARCHAR(100) NOT NULL,
  City VARCHAR(50)
);

CREATE TABLE Rides (
  RideID INT PRIMARY KEY,
  DriverID INT NOT NULL,
  RiderID INT NOT NULL,
  RideDate DATE,
  City VARCHAR(50),
  Area VARCHAR(100),
  Fare DECIMAL(10, 2),
  Rating DECIMAL(3, 2),
  DistanceKM DECIMAL(8, 2),
  DurationMinutes INT,
  FOREIGN KEY (DriverID) REFERENCES Drivers(DriverID),
  FOREIGN KEY (RiderID) REFERENCES Riders(RiderID)
);

CREATE TABLE Payments (
  PaymentID INT PRIMARY KEY,
  RideID INT NOT NULL,
  Amount DECIMAL(10, 2),
  PaymentMethod VARCHAR(50),
  FOREIGN KEY (RideID) REFERENCES Rides(RideID)
);
