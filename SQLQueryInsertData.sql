-- Insertar 10 personas como clientes
INSERT INTO Persona (Nombre, Apellido, CI, Email, Direccion, Telefono)
VALUES 
('Juan', 'Perez', 'CI001', 'juan.perez@example.com', 'Direccion 1', '1234567890'),
('Maria', 'Gonzalez', 'CI002', 'maria.gonzalez@example.com', 'Direccion 2', '0987654321'),
('Carlos', 'Lopez', 'CI003', 'carlos.lopez@example.com', 'Direccion 3', '1231231234'),
('Ana', 'Martinez', 'CI004', 'ana.martinez@example.com', 'Direccion 4', '4321432143'),
('Luis', 'Rodriguez', 'CI005', 'luis.rodriguez@example.com', 'Direccion 5', '5678567856'),
('Jose', 'Fernandez', 'CI006', 'jose.fernandez@example.com', 'Direccion 6', '6547654765'),
('Laura', 'Gomez', 'CI007', 'laura.gomez@example.com', 'Direccion 7', '3456345634'),
('Pedro', 'Ramirez', 'CI008', 'pedro.ramirez@example.com', 'Direccion 8', '2345234523'),
('Sofia', 'Torres', 'CI009', 'sofia.torres@example.com', 'Direccion 9', '1234543212'),
('Miguel', 'Vargas', 'CI010', 'miguel.vargas@example.com', 'Direccion 10', '6789678967');

-- Insertar las mismas personas como clientes
INSERT INTO Cliente (ClienteID)
SELECT PersonaID FROM Persona WHERE PersonaID BETWEEN 1 AND 10;

-- Insertar 10 personas como empleados
INSERT INTO Persona (Nombre, Apellido, CI, Email, Direccion, Telefono)
VALUES 
('Rosa', 'Diaz', 'CI011', 'rosa.diaz@example.com', 'Direccion 11', '1111111111'),
('Roberto', 'Morales', 'CI012', 'roberto.morales@example.com', 'Direccion 12', '2222222222'),
('Julia', 'Herrera', 'CI013', 'julia.herrera@example.com', 'Direccion 13', '3333333333'),
('Pablo', 'Sanchez', 'CI014', 'pablo.sanchez@example.com', 'Direccion 14', '4444444444'),
('Isabel', 'Romero', 'CI015', 'isabel.romero@example.com', 'Direccion 15', '5555555555'),
('Daniel', 'Rivas', 'CI016', 'daniel.rivas@example.com', 'Direccion 16', '6666666666'),
('Elena', 'Ortega', 'CI017', 'elena.ortega@example.com', 'Direccion 17', '7777777777'),
('David', 'Medina', 'CI018', 'david.medina@example.com', 'Direccion 18', '8888888888'),
('Patricia', 'Campos', 'CI019', 'patricia.campos@example.com', 'Direccion 19', '9999999999'),
('Fernando', 'Suarez', 'CI020', 'fernando.suarez@example.com', 'Direccion 20', '1010101010');

-- Insertar las mismas personas como empleados
INSERT INTO Empleado (EmpleadoID, FechaContratacion)
SELECT PersonaID, '2023-01-01' FROM Persona WHERE PersonaID BETWEEN 11 AND 20;

-- Insertar 20 formularios
INSERT INTO Formulario (ClienteID, EmpleadoID, Fecha)
VALUES 
(1, 11, '2023-01-01'),
(2, 12, '2023-01-02'),
(3, 13, '2023-01-03'),
(4, 14, '2023-01-04'),
(5, 15, '2023-01-05'),
(6, 16, '2023-01-06'),
(7, 17, '2023-01-07'),
(8, 18, '2023-01-08'),
(9, 19, '2023-01-09'),
(10, 20, '2023-01-10'),
(1, 12, '2023-01-11'),
(2, 13, '2023-01-12'),
(3, 14, '2023-01-13'),
(4, 15, '2023-01-14'),
(5, 16, '2023-01-15'),
(6, 17, '2023-01-16'),
(7, 18, '2023-01-17'),
(8, 19, '2023-01-18'),
(9, 20, '2023-01-19'),
(10, 11, '2023-01-20');

-- Insertar relaciones en Formulario_Servicio
INSERT INTO Formulario_Servicio (FormularioID, ServicioID)
VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 1),
(10, 2),
(11, 3),
(12, 4),
(13, 5),
(14, 6),
(15, 7),
(16, 8),
(17, 1),
(18, 2),
(19, 3),
(20, 4);

-- Insertar relaciones en Formulario_Lugar
INSERT INTO Formulario_Lugar (FormularioID, LugarID)
VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 1),
(10, 2),
(11, 3),
(12, 4),
(13, 5),
(14, 6),
(15, 7),
(16, 8),
(17, 1),
(18, 2),
(19, 3),
(20, 4);
GO
