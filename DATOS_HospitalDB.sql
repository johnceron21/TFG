USE HospitalDB;

-- Insertar datos en la tabla de Pacientes
INSERT INTO Paciente (nombre, apellido, fecha_nacimiento, genero, direccion, telefono, email)
VALUES 
('Juan', 'Pérez', '1985-05-20', 'Masculino', 'Calle Falsa 123, Ciudad A', '555-1234', 'juan.perez@example.com'),
('María', 'González', '1990-08-15', 'Femenino', 'Avenida Siempre Viva 742, Ciudad B', '555-5678', 'maria.gonzalez@example.com'),
('Pedro', 'Martínez', '1978-12-30', 'Masculino', 'Calle del Sol 456, Ciudad C', '555-8765', 'pedro.martinez@example.com'),
('Lucía', 'Rodríguez', '2002-11-10', 'Femenino', 'Avenida del Mar 123, Ciudad D', '555-4321', 'lucia.rodriguez@example.com'),
('Ana', 'García', '1987-07-25', 'Femenino', 'Calle Luna 789, Ciudad E', '555-3456', 'ana.garcia@example.com');

-- Insertar datos en la tabla de Doctores
INSERT INTO Doctor (nombre, apellido, especialidad, telefono, email, consultorio)
VALUES 
('Carlos', 'López', 'Cardiología', '555-2233', 'carlos.lopez@example.com', 'Consultorio 101'),
('Elena', 'Martín', 'Dermatología', '555-3344', 'elena.martin@example.com', 'Consultorio 202'),
('David', 'Hernández', 'Pediatría', '555-4455', 'david.hernandez@example.com', 'Consultorio 303'),
('Laura', 'Fernández', 'Ginecología', '555-5566', 'laura.fernandez@example.com', 'Consultorio 404'),
('José', 'Ramírez', 'Neurología', '555-6677', 'jose.ramirez@example.com', 'Consultorio 505');

-- Insertar datos en la tabla de Citas
INSERT INTO Cita (paciente_id, doctor_id, fecha, hora, motivo)
VALUES 
(1, 1, '2024-06-01', '09:00:00', 'Chequeo general'),
(2, 2, '2024-06-02', '10:30:00', 'Consulta dermatológica'),
(3, 3, '2024-06-03', '11:00:00', 'Revisión pediátrica'),
(4, 4, '2024-06-04', '12:00:00', 'Consulta ginecológica'),
(5, 5, '2024-06-05', '13:00:00', 'Consulta neurológica');

-- Insertar datos en la tabla de Tratamientos
INSERT INTO Tratamiento (cita_id, nombre, descripcion)
VALUES 
(1, 'Tratamiento Hipertensión', 'Tratamiento para controlar la presión arterial alta'),
(2, 'Tratamiento Acne', 'Tratamiento para reducir el acné y mejorar la piel'),
(3, 'Vacuna', 'Administración de vacuna infantil'),
(4, 'Examen Ginecológico', 'Examen y consulta rutinaria'),
(5, 'Terapia Cognitiva', 'Terapia para mejorar la función cognitiva');

-- Insertar datos en la tabla de Medicamentos
INSERT INTO Medicamento (tratamiento_id, nombre, descripcion, dosis)
VALUES 
(1, 'Lisinopril', 'Medicamento para la hipertensión', '10 mg diarios'),
(2, 'Tretinoína', 'Crema para el tratamiento del acné', 'Aplicar una vez al día'),
(3, 'Vacuna triple viral', 'Vacuna contra sarampión, paperas y rubéola', 'Dosis única'),
(4, 'Anticonceptivos', 'Píldoras anticonceptivas', 'Una píldora diaria'),
(5, 'Memantina', 'Medicamento para la terapia cognitiva', '20 mg diarios');

-- Insertar datos en la tabla de Historial Médico
INSERT INTO Historial_Medico (paciente_id, fecha, descripcion)
VALUES 
(1, '2023-12-01', 'Paciente diagnosticado con hipertensión, se inicia tratamiento con Lisinopril.'),
(2, '2023-11-15', 'Paciente con brote de acné, se receta Tretinoína.'),
(3, '2023-10-30', 'Paciente recibe vacuna triple viral.'),
(4, '2023-09-25', 'Paciente se realiza examen ginecológico, resultados normales.'),
(5, '2023-08-20', 'Paciente inicia terapia cognitiva con Memantina.');

-- Insertar más datos en la tabla de Pacientes
INSERT INTO Paciente (nombre, apellido, fecha_nacimiento, genero, direccion, telefono, email)
VALUES 
('Sofía', 'Morales', '1992-03-10', 'Femenino', 'Calle Flor 321, Ciudad F', '555-6543', 'sofia.morales@example.com'),
('Luis', 'Ramírez', '1980-04-25', 'Masculino', 'Avenida del Bosque 876, Ciudad G', '555-7890', 'luis.ramirez@example.com'),
('Elena', 'Vázquez', '1995-06-17', 'Femenino', 'Calle Verde 222, Ciudad H', '555-0987', 'elena.vazquez@example.com'),
('Miguel', 'Suárez', '1973-09-05', 'Masculino', 'Avenida Azul 654, Ciudad I', '555-5670', 'miguel.suarez@example.com'),
('Laura', 'Hidalgo', '2001-02-28', 'Femenino', 'Calle Amarilla 432, Ciudad J', '555-4329', 'laura.hidalgo@example.com');

-- Insertar más datos en la tabla de Doctores
INSERT INTO Doctor (nombre, apellido, especialidad, telefono, email, consultorio)
VALUES 
('Marta', 'Ruiz', 'Oftalmología', '555-9988', 'marta.ruiz@example.com', 'Consultorio 606'),
('Pedro', 'Santos', 'Gastroenterología', '555-8877', 'pedro.santos@example.com', 'Consultorio 707'),
('Ana', 'Medina', 'Psiquiatría', '555-7766', 'ana.medina@example.com', 'Consultorio 808'),
('Jorge', 'Gómez', 'Endocrinología', '555-6655', 'jorge.gomez@example.com', 'Consultorio 909'),
('Lucía', 'Ortiz', 'Neumología', '555-5544', 'lucia.ortiz@example.com', 'Consultorio 010');

-- Insertar más datos en la tabla de Citas
INSERT INTO Cita (paciente_id, doctor_id, fecha, hora, motivo)
VALUES 
(6, 6, '2024-06-06', '09:30:00', 'Consulta oftalmológica'),
(7, 7, '2024-06-07', '10:00:00', 'Consulta gastroenterológica'),
(8, 8, '2024-06-08', '10:45:00', 'Consulta psiquiátrica'),
(9, 9, '2024-06-09', '11:30:00', 'Consulta endocrinológica'),
(10, 10, '2024-06-10', '12:15:00', 'Consulta neumológica');

-- Insertar más datos en la tabla de Tratamientos
INSERT INTO Tratamiento (cita_id, nombre, descripcion)
VALUES 
(6, 'Tratamiento Cataratas', 'Cirugía para remover cataratas del ojo'),
(7, 'Tratamiento Gastritis', 'Medicación y dieta para tratar la gastritis'),
(8, 'Terapia Cognitivo-Conductual', 'Terapia para tratar la depresión y ansiedad'),
(9, 'Tratamiento Diabetes', 'Plan de medicación e insulina para la diabetes'),
(10, 'Tratamiento Asma', 'Inhaladores y medicación para controlar el asma');

-- Insertar más datos en la tabla de Medicamentos
INSERT INTO Medicamento (tratamiento_id, nombre, descripcion, dosis)
VALUES 
(6, 'Prednisona', 'Medicamento para reducir la inflamación ocular', '20 mg diarios'),
(7, 'Omeprazol', 'Medicamento para reducir la acidez estomacal', '40 mg diarios'),
(8, 'Sertralina', 'Antidepresivo', '50 mg diarios'),
(9, 'Insulina', 'Hormona para controlar el azúcar en sangre', 'Dosis según indicaciones médicas'),
(10, 'Salbutamol', 'Inhalador para aliviar síntomas de asma', '2 inhalaciones cada 4-6 horas');

-- Insertar más datos en la tabla de Historial Médico
INSERT INTO Historial_Medico (paciente_id, fecha, descripcion)
VALUES 
(6, '2023-07-01', 'Paciente con cataratas en ojo izquierdo, se recomienda cirugía.'),
(7, '2023-06-15', 'Paciente diagnosticado con gastritis, se prescribe Omeprazol.'),
(8, '2023-05-30', 'Paciente presenta síntomas de depresión, se inicia terapia cognitivo-conductual.'),
(9, '2023-04-25', 'Paciente diagnosticado con diabetes tipo 2, se prescribe insulina.'),
(10, '2023-03-20', 'Paciente con asma, se prescribe inhalador de Salbutamol.');
