-- Consulta para obtener los detalles de los servicios realizados por cliente, incluyendo nombre, apellido, servicio, lugar y fecha.
SELECT
	P.Nombre AS NombreCliente,
	P.Apellido AS ApellidoCliente,
	S.Nombre AS NombreServicio,
	L.Nombre AS NombreLugar,
	F.Fecha AS FechaServicio
FROM
	Formulario F
JOIN
	Cliente C ON F.ClienteID = C.ClienteID
JOIN
	Persona P ON C.ClienteID = P.PersonaID
JOIN
	Formulario_Servicio FS ON F.FormularioID = FS.FormularioID
JOIN
	Servicio S ON FS.ServicioID = S.ServicioID
JOIN
	Formulario_Lugar FL ON F.FormularioID = FL.FormularioID
JOIN
	Lugar L ON FL.LugarID = L.LugarID
ORDER BY
	P.Nombre, P.Apellido, F.Fecha;

-- Consulta para obtener el número de servicios realizados por empleado durante el año 2023, agrupados por nombre y apellido del empleado.
SELECT
	P.Nombre AS NombreEmpleado,
	P.Apellido AS ApellidoEmpleado,
	COUNT(F.FormularioID) AS NumeroDeServicios
FROM
	Formulario F
JOIN
	Empleado E ON F.EmpleadoID = E.EmpleadoID
JOIN
	Persona P ON E.EmpleadoID = P.PersonaID
WHERE
	F.Fecha BETWEEN '2023-01-01' AND '2023-12-31'
GROUP BY
	P.Nombre, P.Apellido
ORDER BY
	NumeroDeServicios DESC;

-- Consulta para obtener el número de servicios realizados por lugar, agrupados por nombre del lugar.
SELECT
	L.Nombre AS Lugar,
	COUNT(FL.FormularioID) AS NumeroDeServicios
FROM
	Formulario_Lugar FL
JOIN
	Lugar L ON FL.LugarID = L.LugarID
GROUP BY
	L.Nombre
ORDER BY
	NumeroDeServicios DESC;
