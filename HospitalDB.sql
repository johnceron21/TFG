DROP DATABASE IF EXISTS HospitalDB;

-- Crear la base de datos
CREATE DATABASE HospitalDB;
USE HospitalDB;

-- Tabla de Pacientes
CREATE TABLE Paciente (
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
CREATE TABLE Doctor (
    doctor_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    especialidad VARCHAR(100) NOT NULL,
    telefono VARCHAR(20),
    email VARCHAR(100),
    consultorio VARCHAR(50)
);

-- Tabla de Citas
CREATE TABLE Cita (
    cita_id INT AUTO_INCREMENT PRIMARY KEY,
    paciente_id INT,
    doctor_id INT,
    fecha DATE NOT NULL,
    hora TIME NOT NULL,
    motivo VARCHAR(255),
    FOREIGN KEY (paciente_id) REFERENCES Paciente(paciente_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctor(doctor_id)
);

-- Tabla de Tratamientos
CREATE TABLE Tratamiento (
    tratamiento_id INT AUTO_INCREMENT PRIMARY KEY,
    cita_id INT,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT,
    FOREIGN KEY (cita_id) REFERENCES Cita(cita_id)
);

-- Tabla de Medicamentos
CREATE TABLE Medicamento (
    medicamento_id INT AUTO_INCREMENT PRIMARY KEY,
    tratamiento_id INT,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT,
    dosis VARCHAR(50),
    FOREIGN KEY (tratamiento_id) REFERENCES Tratamiento(tratamiento_id)
);

-- Tabla de Historial Médico
CREATE TABLE Historial_Medico (
    historial_id INT AUTO_INCREMENT PRIMARY KEY,
    paciente_id INT,
    fecha DATE NOT NULL,
    descripcion TEXT,
    FOREIGN KEY (paciente_id) REFERENCES Paciente(paciente_id)
);
