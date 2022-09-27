Create table Vehicles
(
	VehicleId INT PRIMARY KEY,
	VehicleType NVARCHAR(40) NOT NULL,
	Model NVARCHAR(40) NOT NULL,
	[Year] INT NOT NULL,
	picture NVARCHAR(150) NOT NULL
)
GO
Create table Repairs
(
	RepairId INT PRIMARY KEY,
	Problem NVARCHAR(150) NOT NULL,
	VehicleId INT NOT NULL REFERENCES Vehicles(VehicleId),
	Cost MONEY NOT NULL
)
go