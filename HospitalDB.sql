-- Crear la base de datos
CREATE DATABASE HospitalDB;
USE HospitalDB;

-- Tabla de Pacientes
CREATE TABLE Pacientes (
    paciente_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    genero ENUM('Masculino', 'Femenino', 'Otro') NOT NULL,
    direccion VARCHAR(255) NOT NULL,
    telefono VARCHAR(20),
    email VARCHAR(100)
);

-- Tabla de Doctores
CREATE TABLE Doctores (
    doctor_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    especialidad VARCHAR(100) NOT NULL,
    telefono VARCHAR(20),
    email VARCHAR(100),
    consultorio VARCHAR(50)
);

-- Tabla de Departamentos
CREATE TABLE Departamentos (
    departamento_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    ubicacion VARCHAR(100)
);

-- Relación Doctores-Departamentos
CREATE TABLE Doctor_Departamento (
    doctor_id INT,
    departamento_id INT,
    PRIMARY KEY (doctor_id, departamento_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctores(doctor_id),
    FOREIGN KEY (departamento_id) REFERENCES Departamentos(departamento_id)
);

-- Tabla de Citas
CREATE TABLE Citas (
    cita_id INT AUTO_INCREMENT PRIMARY KEY,
    paciente_id INT,
    doctor_id INT,
    fecha DATE NOT NULL,
    hora TIME NOT NULL,
    motivo VARCHAR(255),
    FOREIGN KEY (paciente_id) REFERENCES Pacientes(paciente_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctores(doctor_id)
);

-- Tabla de Tratamientos
CREATE TABLE Tratamientos (
    tratamiento_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT
);

-- Relación Pacientes-Tratamientos
CREATE TABLE Paciente_Tratamiento (
    paciente_id INT,
    tratamiento_id INT,
    fecha_inicio DATE,
    fecha_fin DATE,
    PRIMARY KEY (paciente_id, tratamiento_id),
    FOREIGN KEY (paciente_id) REFERENCES Pacientes(paciente_id),
    FOREIGN KEY (tratamiento_id) REFERENCES Tratamientos(tratamiento_id)
);

-- Tabla de Medicamentos
CREATE TABLE Medicamentos (
    medicamento_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT,
    dosis VARCHAR(50)
);

-- Relación Tratamientos-Medicamentos
CREATE TABLE Tratamiento_Medicamento (
    tratamiento_id INT,
    medicamento_id INT,
    PRIMARY KEY (tratamiento_id, medicamento_id),
    FOREIGN KEY (tratamiento_id) REFERENCES Tratamientos(tratamiento_id),
    FOREIGN KEY (medicamento_id) REFERENCES Medicamentos(medicamento_id)
);

-- Tabla de Historial Médico
CREATE TABLE Historial_Medico (
    historial_id INT AUTO_INCREMENT PRIMARY KEY,
    paciente_id INT,
    fecha DATE NOT NULL,
    descripcion TEXT,
    FOREIGN KEY (paciente_id) REFERENCES Pacientes(paciente_id)
);

-- Tabla de Enfermeras
CREATE TABLE Enfermeras (
    enfermera_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    departamento_id INT,
    telefono VARCHAR(20),
    email VARCHAR(100),
    FOREIGN KEY (departamento_id) REFERENCES Departamentos(departamento_id)
);

-- Tabla de Habitaciones
CREATE TABLE Habitaciones (
    habitacion_id INT AUTO_INCREMENT PRIMARY KEY,
    numero_habitacion VARCHAR(10) NOT NULL,
    tipo ENUM('General', 'Privada', 'UCI') NOT NULL,
    disponibilidad BOOLEAN NOT NULL
);

-- Relación Pacientes-Habitaciones
CREATE TABLE Paciente_Habitacion (
    paciente_id INT,
    habitacion_id INT,
    fecha_ingreso DATE,
    fecha_egreso DATE,
    PRIMARY KEY (paciente_id, habitacion_id),
    FOREIGN KEY (paciente_id) REFERENCES Pacientes(paciente_id),
    FOREIGN KEY (habitacion_id) REFERENCES Habitaciones(habitacion_id)
);

-- Tabla de Facturas
CREATE TABLE Facturas (
    factura_id INT AUTO_INCREMENT PRIMARY KEY,
    paciente_id INT,
    fecha_emision DATE NOT NULL,
    monto_total DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (paciente_id) REFERENCES Pacientes(paciente_id)
);

-- Tabla de Detalles de Factura
CREATE TABLE Detalles_Factura (
    detalle_id INT AUTO_INCREMENT PRIMARY KEY,
    factura_id INT,
    descripcion TEXT NOT NULL,
    cantidad INT NOT NULL,
    precio_unitario DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (factura_id) REFERENCES Facturas(factura_id)
);

-- Tabla de Pacientes
CREATE TABLE Pacientes (
    paciente_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    genero ENUM('Masculino', 'Femenino', 'Otro') NOT NULL,
    direccion VARCHAR(255) NOT NULL,
    telefono VARCHAR(20),
    email VARCHAR(100)
);

-- Tabla de Doctores
CREATE TABLE Doctores (
    doctor_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    especialidad VARCHAR(100) NOT NULL,
    telefono VARCHAR(20),
    email VARCHAR(100),
    consultorio VARCHAR(50)
);

-- Tabla de Departamentos
CREATE TABLE Departamentos (
    departamento_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    ubicacion VARCHAR(100)
);

-- Relación Doctores-Departamentos
CREATE TABLE Doctor_Departamento (
    doctor_id INT,
    departamento_id INT,
    PRIMARY KEY (doctor_id, departamento_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctores(doctor_id),
    FOREIGN KEY (departamento_id) REFERENCES Departamentos(departamento_id)
);

-- Tabla de Citas
CREATE TABLE Citas (
    cita_id INT AUTO_INCREMENT PRIMARY KEY,
    paciente_id INT,
    doctor_id INT,
    fecha DATE NOT NULL,
    hora TIME NOT NULL,
    motivo VARCHAR(255),
    FOREIGN KEY (paciente_id) REFERENCES Pacientes(paciente_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctores(doctor_id)
);

-- Tabla de Tratamientos
CREATE TABLE Tratamientos (
    tratamiento_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT
);

-- Relación Pacientes-Tratamientos
CREATE TABLE Paciente_Tratamiento (
    paciente_id INT,
    tratamiento_id INT,
    fecha_inicio DATE,
    fecha_fin DATE,
    PRIMARY KEY (paciente_id, tratamiento_id),
    FOREIGN KEY (paciente_id) REFERENCES Pacientes(paciente_id),
    FOREIGN KEY (tratamiento_id) REFERENCES Tratamientos(tratamiento_id)
);

-- Tabla de Medicamentos
CREATE TABLE Medicamentos (
    medicamento_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT,
    dosis VARCHAR(50)
);

-- Relación Tratamientos-Medicamentos
CREATE TABLE Tratamiento_Medicamento (
    tratamiento_id INT,
    medicamento_id INT,
    PRIMARY KEY (tratamiento_id, medicamento_id),
    FOREIGN KEY (tratamiento_id) REFERENCES Tratamientos(tratamiento_id),
    FOREIGN KEY (medicamento_id) REFERENCES Medicamentos(medicamento_id)
);

-- Tabla de Historial Médico
CREATE TABLE Historial_Medico (
    historial_id INT AUTO_INCREMENT PRIMARY KEY,
    paciente_id INT,
    fecha DATE NOT NULL,
    descripcion TEXT,
    FOREIGN KEY (paciente_id) REFERENCES Pacientes(paciente_id)
);

-- Tabla de Enfermeras
CREATE TABLE Enfermeras (
    enfermera_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    departamento_id INT,
    telefono VARCHAR(20),
    email VARCHAR(100),
    FOREIGN KEY (departamento_id) REFERENCES Departamentos(departamento_id)
);

-- Tabla de Habitaciones
CREATE TABLE Habitaciones (
    habitacion_id INT AUTO_INCREMENT PRIMARY KEY,
    numero_habitacion VARCHAR(10) NOT NULL,
    tipo ENUM('General', 'Privada', 'UCI') NOT NULL,
    disponibilidad BOOLEAN NOT NULL
);

-- Relación Pacientes-Habitaciones
CREATE TABLE Paciente_Habitacion (
    paciente_id INT,
    habitacion_id INT,
    fecha_ingreso DATE,
    fecha_egreso DATE,
    PRIMARY KEY (paciente_id, habitacion_id),
    FOREIGN KEY (paciente_id) REFERENCES Pacientes(paciente_id),
    FOREIGN KEY (habitacion_id) REFERENCES Habitaciones(habitacion_id)
);

-- Tabla de Facturas
CREATE TABLE Facturas (
    factura_id INT AUTO_INCREMENT PRIMARY KEY,
    paciente_id INT,
    fecha_emision DATE NOT NULL,
    monto_total DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (paciente_id) REFERENCES Pacientes(paciente_id)
);

-- Tabla de Detalles de Factura
CREATE TABLE Detalles_Factura (
    detalle_id INT AUTO_INCREMENT PRIMARY KEY,
    factura_id INT,
    descripcion TEXT NOT NULL,
    cantidad INT NOT NULL,
    precio_unitario DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (factura_id) REFERENCES Facturas(factura_id)
);


