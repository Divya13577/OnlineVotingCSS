CREATE TABLE Candidates
(
    CandidateID INT IDENTITY(1,1) PRIMARY KEY,
    CandidateName NVARCHAR(100) NOT NULL,
    PartyName NVARCHAR(100) NOT NULL
);

INSERT INTO Candidates (CandidateName, PartyName)
VALUES
('Candidate 1', 'Party A'),
('Candidate 2', 'Party B'),
('Candidate 3', 'Party C');