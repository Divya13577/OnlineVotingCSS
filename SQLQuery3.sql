CREATE TABLE Admins
(
    AdminID INT IDENTITY(1,1) PRIMARY KEY,
    Username VARCHAR(50) NOT NULL,
    Password VARCHAR(50) NOT NULL
);

INSERT INTO Admins (Username, Password)
VALUES ('admin', 'admin123');