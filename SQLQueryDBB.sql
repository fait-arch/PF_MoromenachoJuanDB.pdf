-- Crear base de datos si no existe
IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'FumigacionDB')
BEGIN
    CREATE DATABASE FumigacionDB;
END
GO

-- Utilizar la base de datos FumigacionDB
USE FumigacionDB;
GO

-- Crear tabla Persona (supertipo)
CREATE TABLE Persona (
	PersonaID INT IDENTITY(1,1) PRIMARY KEY,
	Nombre NVARCHAR(50) NOT NULL,
	Apellido NVARCHAR(50) NOT NULL,
	CI NVARCHAR(13) NOT NULL UNIQUE,
	Email NVARCHAR(50),
	Direccion NVARCHAR(100),
	Telefono NVARCHAR(15)
);
GO

-- Crear tabla Cliente (subtipo de Persona)
CREATE TABLE Cliente (
	ClienteID INT PRIMARY KEY,
	FOREIGN KEY (ClienteID) REFERENCES Persona(PersonaID)
);
GO

-- Crear tabla Empleado (subtipo de Persona)
CREATE TABLE Empleado (
	EmpleadoID INT PRIMARY KEY,
	FechaContratacion DATE NOT NULL,
	FOREIGN KEY (EmpleadoID) REFERENCES Persona(PersonaID)
);
GO

-- Crear tabla Servicio
CREATE TABLE Servicio (
	ServicioID INT IDENTITY(1,1) PRIMARY KEY,
	Nombre NVARCHAR(50) NOT NULL
);
GO

-- Insertar servicios en la tabla Servicio
INSERT INTO Servicio (Nombre) VALUES ('AVISPAS'), ('MOSQUITOS'), ('RATAS'), ('GARRAPATAS'), ('PULGAS'), ('HORMIGAS'), ('CUCARACHAS'), ('OTRO');
GO

-- Crear tabla Lugar
CREATE TABLE Lugar (
	LugarID INT IDENTITY(1,1) PRIMARY KEY,
	Nombre NVARCHAR(50) NOT NULL
);
GO

-- Insertar lugares en la tabla Lugar
INSERT INTO Lugar (Nombre) VALUES ('Agencia De Viaje'), ('Bar'), ('Restaurante'), ('Hotel'), ('Hospital'), ('Escuela'), ('Casa'), ('Otro');
GO

-- Crear tabla Formulario
CREATE TABLE Formulario (
	FormularioID INT IDENTITY(1,1) PRIMARY KEY,
	ClienteID INT NOT NULL,
	EmpleadoID INT NOT NULL,
	Fecha DATE NOT NULL,
	FOREIGN KEY (ClienteID) REFERENCES Cliente(ClienteID),
	FOREIGN KEY (EmpleadoID) REFERENCES Empleado(EmpleadoID)
);
GO

-- Crear tabla intermedia para la relación muchos a muchos entre Formulario y Servicio
CREATE TABLE Formulario_Servicio (
	FormularioID INT NOT NULL,
	ServicioID INT NOT NULL,
	PRIMARY KEY (FormularioID, ServicioID),
	FOREIGN KEY (FormularioID) REFERENCES Formulario(FormularioID),
	FOREIGN KEY (ServicioID) REFERENCES Servicio(ServicioID)
);
GO

-- Crear tabla intermedia para la relación muchos a muchos entre Formulario y Lugar
CREATE TABLE Formulario_Lugar (
	FormularioID INT NOT NULL,
	LugarID INT NOT NULL,
	PRIMARY KEY (FormularioID, LugarID),
	FOREIGN KEY (FormularioID) REFERENCES Formulario(FormularioID),
	FOREIGN KEY (LugarID) REFERENCES Lugar(LugarID)
);
GO
