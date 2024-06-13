USE HospitalDB;

-- Insertar datos en la tabla Pacientes
INSERT INTO Pacientes (nombre, apellido, fecha_nacimiento, genero, direccion, telefono, email)
VALUES
('Juan', 'Pérez', '1980-04-15', 'Masculino', 'Calle Falsa 123', '123456789', 'juan.perez@example.com'),
('Ana', 'García', '1990-07-22', 'Femenino', 'Avenida Siempre Viva 456', '987654321', 'ana.garcia@example.com'),
('Carlos', 'Sánchez', '1975-12-30', 'Masculino', 'Boulevard 789', '567890123', 'carlos.sanchez@example.com'),
('Laura', 'Martínez', '1985-06-10', 'Femenino', 'Calle Luna 1011', '345678901', 'laura.martinez@example.com'),
('Pedro', 'Rodríguez', '1995-09-17', 'Masculino', 'Avenida Sol 1213', '654321098', 'pedro.rodriguez@example.com');

-- Insertar datos en la tabla Doctores
INSERT INTO Doctores (nombre, apellido, especialidad, telefono, email, consultorio)
VALUES
('María', 'Fernández', 'Cardiología', '123123123', 'maria.fernandez@example.com', 'C101'),
('José', 'López', 'Neurología', '321321321', 'jose.lopez@example.com', 'N202'),
('Lucía', 'González', 'Pediatría', '456456456', 'lucia.gonzalez@example.com', 'P303'),
('Miguel', 'Hernández', 'Dermatología', '654654654', 'miguel.hernandez@example.com', 'D404'),
('Elena', 'Torres', 'Ginecología', '789789789', 'elena.torres@example.com', 'G505');

-- Insertar datos en la tabla Departamentos
INSERT INTO Departamentos (nombre, ubicacion)
VALUES
('Cardiología', 'Edificio A'),
('Neurología', 'Edificio B'),
('Pediatría', 'Edificio C'),
('Dermatología', 'Edificio D'),
('Ginecología', 'Edificio E');

-- Insertar datos en la tabla Doctor_Departamento
INSERT INTO Doctor_Departamento (doctor_id, departamento_id)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- Insertar datos en la tabla Citas
INSERT INTO Citas (paciente_id, doctor_id, fecha, hora, motivo)
VALUES
(1, 1, '2024-06-15', '10:00:00', 'Chequeo general'),
(2, 2, '2024-06-16', '11:00:00', 'Dolor de cabeza'),
(3, 3, '2024-06-17', '09:30:00', 'Revisión pediátrica'),
(4, 4, '2024-06-18', '14:00:00', 'Consulta dermatológica'),
(5, 5, '2024-06-19', '13:00:00', 'Chequeo ginecológico');

-- Insertar datos en la tabla Tratamientos
INSERT INTO Tratamientos (nombre, descripcion)
VALUES
('Fisioterapia', 'Tratamiento para mejorar la movilidad'),
('Quimioterapia', 'Tratamiento contra el cáncer'),
('Terapia Ocupacional', 'Tratamiento para mejorar las habilidades diarias'),
('Rehabilitación Cardíaca', 'Tratamiento post-infarto'),
('Terapia Cognitiva', 'Tratamiento para problemas de salud mental');

-- Insertar datos en la tabla Paciente_Tratamiento
INSERT INTO Paciente_Tratamiento (paciente_id, tratamiento_id, fecha_inicio, fecha_fin)
VALUES
(1, 1, '2024-01-10', '2024-02-10'),
(2, 2, '2024-02-15', '2024-05-15'),
(3, 3, '2024-03-20', '2024-04-20'),
(4, 4, '2024-04-25', '2024-05-25'),
(5, 5, '2024-05-30', '2024-06-30');

-- Insertar datos en la tabla Medicamentos
INSERT INTO Medicamentos (nombre, descripcion, dosis)
VALUES
('Paracetamol', 'Analgésico y antipirético', '500mg cada 8 horas'),
('Ibuprofeno', 'Antiinflamatorio no esteroideo', '400mg cada 6 horas'),
('Amoxicilina', 'Antibiótico', '500mg cada 8 horas'),
('Loratadina', 'Antihistamínico', '10mg una vez al día'),
('Omeprazol', 'Inhibidor de la bomba de protones', '20mg una vez al día');

-- Insertar datos en la tabla Tratamiento_Medicamento
INSERT INTO Tratamiento_Medicamento (tratamiento_id, medicamento_id)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- Insertar datos en la tabla Historial_Medico
INSERT INTO Historial_Medico (paciente_id, fecha, descripcion)
VALUES
(1, '2023-06-10', 'Consulta por dolor de espalda'),
(2, '2023-07-15', 'Tratamiento de alergia'),
(3, '2023-08-20', 'Vacunación'),
(4, '2023-09-25', 'Revisión dermatológica'),
(5, '2023-10-30', 'Consulta ginecológica');

-- Insertar datos en la tabla Enfermeras
INSERT INTO Enfermeras (nombre, apellido, departamento_id, telefono, email)
VALUES
('Carla', 'Ramos', 1, '111222333', 'carla.ramos@example.com'),
('Luis', 'Vargas', 2, '444555666', 'luis.vargas@example.com'),
('Marta', 'Silva', 3, '777888999', 'marta.silva@example.com'),
('Jorge', 'Ruiz', 4, '000111222', 'jorge.ruiz@example.com'),
('Sofía', 'Mendoza', 5, '333444555', 'sofia.mendoza@example.com');

-- Insertar datos en la tabla Habitaciones
INSERT INTO Habitaciones (numero_habitacion, tipo, disponibilidad)
VALUES
('A101', 'General', TRUE),
('B202', 'Privada', FALSE),
('C303', 'UCI', TRUE),
('D404', 'General', TRUE),
('E505', 'Privada', FALSE);

-- Insertar datos en la tabla Paciente_Habitacion
INSERT INTO Paciente_Habitacion (paciente_id, habitacion_id, fecha_ingreso, fecha_egreso)
VALUES
(1, 1, '2024-06-01', '2024-06-05'),
(2, 2, '2024-06-06', '2024-06-10'),
(3, 3, '2024-06-11', '2024-06-15'),
(4, 4, '2024-06-16', '2024-06-20'),
(5, 5, '2024-06-21', '2024-06-25');

-- Insertar datos en la tabla Facturas
INSERT INTO Facturas (paciente_id, fecha_emision, monto_total)
VALUES
(1, '2024-06-10', 500.00),
(2, '2024-06-15', 1000.00),
(3, '2024-06-20', 1500.00),
(4, '2024-06-25', 2000.00),
(5, '2024-06-30', 2500.00);

-- Insertar datos en la tabla Detalles_Factura
INSERT INTO Detalles_Factura (factura_id, descripcion, cantidad, precio_unitario)
VALUES
(1, 'Consulta médica', 1, 500.00),
(2, 'Hospitalización', 5, 200.00),
(3, 'Tratamiento', 10, 150.00),
(4, 'Medicamento', 20, 100.00),
(5, 'Cirugía', 1, 2500.00);


-- Insertar datos adicionales en la tabla Pacientes
INSERT INTO Pacientes (nombre, apellido, fecha_nacimiento, genero, direccion, telefono, email)
VALUES
('Marta', 'Lopez', '1978-05-12', 'Femenino', 'Calle Primavera 200', '234567890', 'marta.lopez@example.com'),
('Luis', 'Martinez', '1982-11-22', 'Masculino', 'Avenida Las Rosas 345', '345678901', 'luis.martinez@example.com'),
('Paula', 'Ramirez', '1990-02-15', 'Femenino', 'Boulevard Los Olivos 567', '456789012', 'paula.ramirez@example.com'),
('Javier', 'Torres', '1973-03-25', 'Masculino', 'Calle Las Flores 789', '567890123', 'javier.torres@example.com'),
('Claudia', 'Santos', '1987-08-18', 'Femenino', 'Avenida Del Sol 1011', '678901234', 'claudia.santos@example.com');

-- Insertar datos adicionales en la tabla Doctores
INSERT INTO Doctores (nombre, apellido, especialidad, telefono, email, consultorio)
VALUES
('Roberto', 'Diaz', 'Endocrinología', '234234234', 'roberto.diaz@example.com', 'E606'),
('Lucia', 'Moreno', 'Oftalmología', '345345345', 'lucia.moreno@example.com', 'O707'),
('Fernando', 'Vega', 'Urología', '456456456', 'fernando.vega@example.com', 'U808'),
('Carmen', 'Suarez', 'Oncología', '567567567', 'carmen.suarez@example.com', 'O909'),
('Alejandro', 'Reyes', 'Psiquiatría', '678678678', 'alejandro.reyes@example.com', 'P1010');

-- Insertar datos adicionales en la tabla Departamentos
INSERT INTO Departamentos (nombre, ubicacion)
VALUES
('Endocrinología', 'Edificio F'),
('Oftalmología', 'Edificio G'),
('Urología', 'Edificio H'),
('Oncología', 'Edificio I'),
('Psiquiatría', 'Edificio J');

-- Insertar datos adicionales en la tabla Doctor_Departamento
INSERT INTO Doctor_Departamento (doctor_id, departamento_id)
VALUES
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

-- Insertar datos adicionales en la tabla Citas
INSERT INTO Citas (paciente_id, doctor_id, fecha, hora, motivo)
VALUES
(6, 6, '2024-07-01', '09:00:00', 'Chequeo endocrinológico'),
(7, 7, '2024-07-02', '10:30:00', 'Revisión oftalmológica'),
(8, 8, '2024-07-03', '11:00:00', 'Consulta urológica'),
(9, 9, '2024-07-04', '12:00:00', 'Consulta oncológica'),
(10, 10, '2024-07-05', '13:00:00', 'Terapia psiquiátrica');

-- Insertar datos adicionales en la tabla Tratamientos
INSERT INTO Tratamientos (nombre, descripcion)
VALUES
('Radioterapia', 'Tratamiento con radiación para el cáncer'),
('Hemodiálisis', 'Tratamiento para la insuficiencia renal'),
('Terapia Física', 'Tratamiento para la recuperación física'),
('Terapia Respiratoria', 'Tratamiento para problemas respiratorios'),
('Terapia de Lenguaje', 'Tratamiento para problemas de habla y comunicación');

-- Insertar datos adicionales en la tabla Paciente_Tratamiento
INSERT INTO Paciente_Tratamiento (paciente_id, tratamiento_id, fecha_inicio, fecha_fin)
VALUES
(6, 6, '2024-01-01', '2024-02-01'),
(7, 7, '2024-02-02', '2024-03-02'),
(8, 8, '2024-03-03', '2024-04-03'),
(9, 9, '2024-04-04', '2024-05-04'),
(10, 10, '2024-05-05', '2024-06-05');

-- Insertar datos adicionales en la tabla Medicamentos
INSERT INTO Medicamentos (nombre, descripcion, dosis)
VALUES
('Metformina', 'Medicamento para la diabetes', '850mg dos veces al día'),
('Atenolol', 'Medicamento para la hipertensión', '50mg una vez al día'),
('Lisinopril', 'Medicamento para la hipertensión', '10mg una vez al día'),
('Simvastatina', 'Medicamento para el colesterol alto', '20mg una vez al día'),
('Clopidogrel', 'Medicamento antiplaquetario', '75mg una vez al día');

-- Insertar datos adicionales en la tabla Tratamiento_Medicamento
INSERT INTO Tratamiento_Medicamento (tratamiento_id, medicamento_id)
VALUES
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

-- Insertar datos adicionales en la tabla Historial_Medico
INSERT INTO Historial_Medico (paciente_id, fecha, descripcion)
VALUES
(6, '2023-05-10', 'Consulta por diabetes'),
(7, '2023-06-15', 'Tratamiento para la hipertensión'),
(8, '2023-07-20', 'Consulta por problemas renales'),
(9, '2023-08-25', 'Revisión oncológica'),
(10, '2023-09-30', 'Consulta psiquiátrica');

-- Insertar datos adicionales en la tabla Enfermeras
INSERT INTO Enfermeras (nombre, apellido, departamento_id, telefono, email)
VALUES
('Nuria', 'Marquez', 6, '222333444', 'nuria.marquez@example.com'),
('Alberto', 'Castro', 7, '555666777', 'alberto.castro@example.com'),
('Beatriz', 'Gomez', 8, '888999000', 'beatriz.gomez@example.com'),
('Francisco', 'Dominguez', 9, '111222333', 'francisco.dominguez@example.com'),
('Gabriela', 'Nieto', 10, '444555666', 'gabriela.nieto@example.com');

-- Insertar datos adicionales en la tabla Habitaciones
INSERT INTO Habitaciones (numero_habitacion, tipo, disponibilidad)
VALUES
('F606', 'General', TRUE),
('G707', 'Privada', FALSE),
('H808', 'UCI', TRUE),
('I909', 'General', TRUE),
('J1010', 'Privada', FALSE);

-- Insertar datos adicionales en la tabla Paciente_Habitacion
INSERT INTO Paciente_Habitacion (paciente_id, habitacion_id, fecha_ingreso, fecha_egreso)
VALUES
(6, 6, '2024-07-01', '2024-07-05'),
(7, 7, '2024-07-06', '2024-07-10'),
(8, 8, '2024-07-11', '2024-07-15'),
(9, 9, '2024-07-16', '2024-07-20'),
(10, 10, '2024-07-21', '2024-07-25');

-- Insertar datos adicionales en la tabla Facturas
INSERT INTO Facturas (paciente_id, fecha_emision, monto_total)
VALUES
(6, '2024-07-05', 550.00),
(7, '2024-07-10', 1050.00),
(8, '2024-07-15', 1550.00),
(9, '2024-07-20', 2050.00),
(10, '2024-07-25', 2550.00);

-- Insertar datos adicionales en la tabla Detalles_Factura
INSERT INTO Detalles_Factura (factura_id, descripcion, cantidad, precio_unitario)
VALUES
(6, 'Consulta médica', 1, 550.00),
(7, 'Hospitalización', 5, 210.00),
(8, 'Tratamiento', 10, 155.00),
(9, 'Medicamento', 20, 105.00),
(10, 'Cirugía', 1, 2550.00);

-- Insertar datos adicionales en la tabla Pacientes
INSERT INTO Pacientes (nombre, apellido, fecha_nacimiento, genero, direccion, telefono, email)
VALUES
('Andrea', 'Méndez', '1985-01-14', 'Femenino', 'Calle 20 de Noviembre 50', '789012345', 'andrea.mendez@example.com'),
('Santiago', 'Gutiérrez', '1991-03-22', 'Masculino', 'Avenida Independencia 70', '890123456', 'santiago.gutierrez@example.com'),
('Daniela', 'Ortega', '1983-07-19', 'Femenino', 'Calle Revolución 80', '901234567', 'daniela.ortega@example.com'),
('Ricardo', 'Alvarez', '1970-11-02', 'Masculino', 'Avenida Juárez 90', '912345678', 'ricardo.alvarez@example.com'),
('Patricia', 'Ramírez', '1988-05-05', 'Femenino', 'Calle Hidalgo 100', '923456789', 'patricia.ramirez@example.com');

-- Insertar datos adicionales en la tabla Doctores
INSERT INTO Doctores (nombre, apellido, especialidad, telefono, email, consultorio)
VALUES
('Carlos', 'García', 'Neumología', '234567890', 'carlos.garcia@example.com', 'N111'),
('Verónica', 'Serrano', 'Reumatología', '345678901', 'veronica.serrano@example.com', 'R222'),
('Julio', 'Navarro', 'Geriatría', '456789012', 'julio.navarro@example.com', 'G333'),
('Marcela', 'Pineda', 'Nefrología', '567890123', 'marcela.pineda@example.com', 'N444'),
('David', 'Ríos', 'Hematología', '678901234', 'david.rios@example.com', 'H555');

-- Insertar datos adicionales en la tabla Departamentos
INSERT INTO Departamentos (nombre, ubicacion)
VALUES
('Neumología', 'Edificio K'),
('Reumatología', 'Edificio L'),
('Geriatría', 'Edificio M'),
('Nefrología', 'Edificio N'),
('Hematología', 'Edificio O');

-- Insertar datos adicionales en la tabla Doctor_Departamento
INSERT INTO Doctor_Departamento (doctor_id, departamento_id)
VALUES
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15);

-- Insertar datos adicionales en la tabla Citas
INSERT INTO Citas (paciente_id, doctor_id, fecha, hora, motivo)
VALUES
(11, 11, '2024-07-10', '14:00:00', 'Revisión respiratoria'),
(12, 12, '2024-07-11', '09:00:00', 'Consulta reumatológica'),
(13, 13, '2024-07-12', '10:00:00', 'Chequeo geriátrico'),
(14, 14, '2024-07-13', '11:30:00', 'Consulta nefrológica'),
(15, 15, '2024-07-14', '12:30:00', 'Revisión hematológica');

-- Insertar datos adicionales en la tabla Tratamientos
INSERT INTO Tratamientos (nombre, descripcion)
VALUES
('Terapia Hormonal', 'Tratamiento con hormonas'),
('Diálisis', 'Tratamiento para insuficiencia renal crónica'),
('Terapia Ocupacional', 'Tratamiento para mejorar habilidades diarias'),
('Terapia Conductual', 'Tratamiento para modificar comportamientos'),
('Terapia Nutricional', 'Tratamiento para mejorar la alimentación');

-- Insertar datos adicionales en la tabla Paciente_Tratamiento
INSERT INTO Paciente_Tratamiento (paciente_id, tratamiento_id, fecha_inicio, fecha_fin)
VALUES
(11, 11, '2024-02-01', '2024-03-01'),
(12, 12, '2024-03-02', '2024-04-02'),
(13, 13, '2024-04-03', '2024-05-03'),
(14, 14, '2024-05-04', '2024-06-04'),
(15, 15, '2024-06-05', '2024-07-05');

-- Insertar datos adicionales en la tabla Medicamentos
INSERT INTO Medicamentos (nombre, descripcion, dosis)
VALUES
('Insulina', 'Hormona para controlar la diabetes', '10 unidades diarias'),
('Furosemida', 'Diurético para tratar la retención de líquidos', '40mg dos veces al día'),
('Gabapentina', 'Medicamento para el dolor neuropático', '300mg tres veces al día'),
('Levotiroxina', 'Hormona tiroidea sintética', '50mcg una vez al día'),
('Warfarina', 'Anticoagulante', '5mg una vez al día');

-- Insertar datos adicionales en la tabla Tratamiento_Medicamento
INSERT INTO Tratamiento_Medicamento (tratamiento_id, medicamento_id)
VALUES
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15);

-- Insertar datos adicionales en la tabla Historial_Medico
INSERT INTO Historial_Medico (paciente_id, fecha, descripcion)
VALUES
(11, '2023-05-12', 'Consulta por problemas respiratorios'),
(12, '2023-06-18', 'Tratamiento para artritis'),
(13, '2023-07-22', 'Chequeo geriátrico'),
(14, '2023-08-28', 'Consulta por insuficiencia renal'),
(15, '2023-09-30', 'Revisión por problemas de coagulación');

-- Insertar datos adicionales en la tabla Enfermeras
INSERT INTO Enfermeras (nombre, apellido, departamento_id, telefono, email)
VALUES
('Ana', 'Luna', 11, '555666777', 'ana.luna@example.com'),
('Juan', 'Flores', 12, '666777888', 'juan.flores@example.com'),
('Sara', 'Martinez', 13, '777888999', 'sara.martinez@example.com'),
('Roberto', 'Sanchez', 14, '888999000', 'roberto.sanchez@example.com'),
('Laura', 'Vargas', 15, '999000111', 'laura.vargas@example.com');

-- Insertar datos adicionales en la tabla Habitaciones
INSERT INTO Habitaciones (numero_habitacion, tipo, disponibilidad)
VALUES
('K111', 'General', TRUE),
('L222', 'Privada', FALSE),
('M333', 'UCI', TRUE),
('N444', 'General', TRUE),
('O555', 'Privada', FALSE);

-- Insertar datos adicionales en la tabla Paciente_Habitacion
INSERT INTO Paciente_Habitacion (paciente_id, habitacion_id, fecha_ingreso, fecha_egreso)
VALUES
(11, 11, '2024-07-01', '2024-07-05'),
(12, 12, '2024-07-06', '2024-07-10'),
(13, 13, '2024-07-11', '2024-07-15'),
(14, 14, '2024-07-16', '2024-07-20'),
(15, 15, '2024-07-21', '2024-07-25');

-- Insertar datos adicionales en la tabla Facturas
INSERT INTO Facturas (paciente_id, fecha_emision, monto_total)
VALUES
(11, '2024-07-05', 600.00),
(12, '2024-07-10', 1100.00),
(13, '2024-07-15', 1600.00),
(14, '2024-07-20', 2100.00),
(15, '2024-07-25', 2600.00);

-- Insertar datos adicionales en la tabla Detalles_Factura
INSERT INTO Detalles_Factura (factura_id, descripcion, cantidad, precio_unitario)
VALUES
(11, 'Consulta médica', 1, 600.00),
(12, 'Hospitalización', 5, 220.00),
(13, 'Tratamiento', 10, 160.00),
(14, 'Medicamento', 20, 110.00),
(15, 'Cirugía', 1, 2600.00);

-- Insertar datos adicionales en la tabla Pacientes
INSERT INTO Pacientes (nombre, apellido, fecha_nacimiento, genero, direccion, telefono, email)
VALUES
('Carla', 'Domínguez', '1992-04-11', 'Femenino', 'Calle Libertad 123', '135792468', 'carla.dominguez@example.com'),
('Miguel', 'Castillo', '1980-12-09', 'Masculino', 'Avenida Central 45', '246813579', 'miguel.castillo@example.com'),
('Sofía', 'López', '1995-06-23', 'Femenino', 'Boulevard Reforma 67', '357924680', 'sofia.lopez@example.com'),
('Andrés', 'Ramírez', '1986-09-17', 'Masculino', 'Calle Insurgentes 89', '468035791', 'andres.ramirez@example.com'),
('Mariana', 'González', '1993-02-08', 'Femenino', 'Avenida Revolución 101', '579246803', 'mariana.gonzalez@example.com');

-- Insertar datos adicionales en la tabla Doctores
INSERT INTO Doctores (nombre, apellido, especialidad, telefono, email, consultorio)
VALUES
('Oscar', 'Hernández', 'Gastroenterología', '987654321', 'oscar.hernandez@example.com', 'G666'),
('Laura', 'Valencia', 'Dermatología', '876543210', 'laura.valencia@example.com', 'D777'),
('Pablo', 'Miranda', 'Neurología', '765432109', 'pablo.miranda@example.com', 'N888'),
('Mónica', 'Ruiz', 'Cardiología', '654321098', 'monica.ruiz@example.com', 'C999'),
('Alejandra', 'Díaz', 'Pediatría', '543210987', 'alejandra.diaz@example.com', 'P111');

-- Insertar datos adicionales en la tabla Departamentos
INSERT INTO Departamentos (nombre, ubicacion)
VALUES
('Gastroenterología', 'Edificio P'),
('Dermatología', 'Edificio Q'),
('Neurología', 'Edificio R'),
('Cardiología', 'Edificio S'),
('Pediatría', 'Edificio T');

-- Insertar datos adicionales en la tabla Doctor_Departamento
INSERT INTO Doctor_Departamento (doctor_id, departamento_id)
VALUES
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20);

-- Insertar datos adicionales en la tabla Citas
INSERT INTO Citas (paciente_id, doctor_id, fecha, hora, motivo)
VALUES
(16, 16, '2024-08-01', '08:15:00', 'Consulta gastroenterológica'),
(17, 17, '2024-08-02', '09:45:00', 'Chequeo dermatológico'),
(18, 18, '2024-08-03', '11:15:00', 'Revisión neurológica'),
(19, 19, '2024-08-04', '12:45:00', 'Consulta cardiológica'),
(20, 20, '2024-08-05', '14:00:00', 'Chequeo pediátrico');

-- Insertar datos adicionales en la tabla Tratamientos
INSERT INTO Tratamientos (nombre, descripcion)
VALUES
('Terapia Cognitiva', 'Tratamiento para problemas cognitivos'),
('Terapia de Sueño', 'Tratamiento para trastornos del sueño'),
('Fisioterapia', 'Tratamiento para la recuperación muscular'),
('Terapia de Desintoxicación', 'Tratamiento para la desintoxicación de sustancias'),
('Terapia de Rehabilitación', 'Tratamiento para la recuperación de adicciones');

-- Insertar datos adicionales en la tabla Paciente_Tratamiento
INSERT INTO Paciente_Tratamiento (paciente_id, tratamiento_id, fecha_inicio, fecha_fin)
VALUES
(16, 16, '2024-03-01', '2024-04-01'),
(17, 17, '2024-04-02', '2024-05-02'),
(18, 18, '2024-05-03', '2024-06-03'),
(19, 19, '2024-06-04', '2024-07-04'),
(20, 20, '2024-07-05', '2024-08-05');

-- Insertar datos adicionales en la tabla Medicamentos
INSERT INTO Medicamentos (nombre, descripcion, dosis)
VALUES
('Omeprazol', 'Medicamento para el reflujo gastroesofágico', '20mg una vez al día'),
('Loratadina', 'Antihistamínico para alergias', '10mg una vez al día'),
('Paracetamol', 'Analgésico y antipirético', '500mg cada 6 horas'),
('Aspirina', 'Anticoagulante y analgésico', '100mg una vez al día'),
('Amoxicilina', 'Antibiótico de amplio espectro', '500mg cada 8 horas');

-- Insertar datos adicionales en la tabla Tratamiento_Medicamento
INSERT INTO Tratamiento_Medicamento (tratamiento_id, medicamento_id)
VALUES
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20);

-- Insertar datos adicionales en la tabla Historial_Medico
INSERT INTO Historial_Medico (paciente_id, fecha, descripcion)
VALUES
(16, '2023-10-12', 'Consulta por problemas digestivos'),
(17, '2023-11-14', 'Tratamiento para la dermatitis'),
(18, '2023-12-16', 'Consulta por dolor de cabeza recurrente'),
(19, '2024-01-18', 'Revisión por hipertensión'),
(20, '2024-02-20', 'Chequeo pediátrico de rutina');

-- Insertar datos adicionales en la tabla Enfermeras
INSERT INTO Enfermeras (nombre, apellido, departamento_id, telefono, email)
VALUES
('Natalia', 'Pérez', 16, '444333222', 'natalia.perez@example.com'),
('Eduardo', 'Morales', 17, '555444333', 'eduardo.morales@example.com'),
('Raquel', 'Ramos', 18, '666555444', 'raquel.ramos@example.com'),
('Hugo', 'Ortega', 19, '777666555', 'hugo.ortega@example.com'),
('Lucía', 'Torres', 20, '888777666', 'lucia.torres@example.com');

-- Insertar datos adicionales en la tabla Habitaciones
INSERT INTO Habitaciones (numero_habitacion, tipo, disponibilidad)
VALUES
('P111', 'General', TRUE),
('Q222', 'Privada', FALSE),
('R333', 'UCI', TRUE),
('S444', 'General', TRUE),
('T555', 'Privada', FALSE);

-- Insertar datos adicionales en la tabla Paciente_Habitacion
INSERT INTO Paciente_Habitacion (paciente_id, habitacion_id, fecha_ingreso, fecha_egreso)
VALUES
(16, 16, '2024-08-01', '2024-08-06'),
(17, 17, '2024-08-07', '2024-08-12'),
(18, 18, '2024-08-13', '2024-08-18'),
(19, 19, '2024-08-19', '2024-08-24'),
(20, 20, '2024-08-25', '2024-08-30');

-- Insertar datos adicionales en la tabla Facturas
INSERT INTO Facturas (paciente_id, fecha_emision, monto_total)
VALUES
(16, '2024-08-06', 650.00),
(17, '2024-08-12', 1150.00),
(18, '2024-08-18', 1650.00),
(19, '2024-08-24', 2150.00),
(20, '2024-08-30', 2650.00);

-- Insertar datos adicionales en la tabla Detalles_Factura
INSERT INTO Detalles_Factura (factura_id, descripcion, cantidad, precio_unitario)
VALUES
(16, 'Consulta médica', 1, 650.00),
(17, 'Hospitalización', 5, 230.00),
(18, 'Tratamiento', 10, 165.00),
(19, 'Medicamento', 20, 107.50),
(20, 'Cirugía', 1, 2650.00);
