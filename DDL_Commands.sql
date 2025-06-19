CREATE DATABASE CheckpointDB;  -- Creation de la base de donn�es
GO

USE CheckpointDB; -- Selection de la base de donn�es
GO

-- Creation Table D�partement
CREATE TABLE Departement(
Departement_Num INT PRIMARY KEY,
Departement_Libell� VARCHAR(50),
Nom_responsable VARCHAR(50)
);
GO

-- Creation Table Employ�
CREATE TABLE Employ� (
EmployeID INT PRIMARY KEY,
Name VARCHAR(50),
Poste VARCHAR(50),
Salaire DECIMAL(38,1),
Service VARCHAR(50),
Departement_Num INT,
FOREIGN KEY (Departement_Num) REFERENCES Departement(Departement_Num)
);
GO

--Creation Table Projet
CREATE TABLE Projet(
Projet_numP INT PRIMARY KEY,
Titre VARCHAR(50),
Date_debut DATE,
Date_fin DATE,
Departement_Num INT,
FOREIGN KEY (Departement_Num) REFERENCES Departement(Departement_Num)
);
GO

--Creation Table Role
CREATE TABLE Role(
Projet_numP INT,
FOREIGN KEY (Projet_numP) REFERENCES Projet(Projet_NumP),
EmployeID INT,
FOREIGN KEY (EmployeID) REFERENCES Employ�(EmployeID),
Role_employ� VARCHAR(50),
PRIMARY KEY (Projet_numP,EmployeID)
);
GO