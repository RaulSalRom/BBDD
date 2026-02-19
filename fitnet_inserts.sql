-- Sentencias INSERT de ejemplo para poblar las tablas de GestionGimnasio
USE GestionGimnasio;

-- 1) Usuarios
INSERT INTO Usuario (id_usuario, nombre, apellido, email, telefono, fecha_nacimiento) VALUES
(1, 'Carlos', 'Gómez', 'carlos.gomez@example.com', '600111222', '1980-03-15'),
(2, 'María', 'López', 'maria.lopez@example.com', '600333444', '1990-07-22'),
(3, 'Ana', 'Martín', 'ana.martin@example.com', '600555666', '1995-11-02'),
(4, 'Javier', 'Ruiz', 'javier.ruiz@example.com', '600777888', '1988-02-10'),
(5, 'Sofía', 'Pérez', 'sofia.perez@example.com', '600999000', '2000-12-05'),
(6, 'Luis', 'Fernández', 'luis.fernandez@example.com', '601111222', '1975-06-30');

-- 2) Entrenadores (id_entrenador = id_usuario)
INSERT INTO Entrenador (id_entrenador, especialidad, certificado) VALUES
(1, 'Musculación', 'Nivel 3'),
(2, 'Yoga', 'Instructor Yoga Avanzado');

-- 3) Socios (id_socio = id_usuario)
INSERT INTO Socio (id_socio, fecha_registro, estado) VALUES
(3, '2024-01-10', 'Activo'),
(4, '2023-09-02', 'Activo'),
(5, '2024-02-01', 'Activo'),
(6, '2022-05-15', 'Inactivo');

-- 4) Membresias
INSERT INTO Membresia (id_socio, tipo, fecha_inicio, fecha_fin, estado) VALUES
(3, 'Mensual', '2024-02-01', '2024-02-29', 'Activa'),
(4, 'Anual', '2023-09-02', '2024-09-01', 'Activa'),
(5, 'VIP', '2024-02-01', '2025-02-01', 'Activa'),
(6, 'Mensual', '2022-05-15', '2022-06-14', 'Caducada');

-- 5) Clases
INSERT INTO Clase (id_entrenador, nombre_clase, fecha, hora, dia_semana, cupo_maximo) VALUES
(1, 'Full Body', '2024-02-10', '10:00:00', 'Sabado', 20),
(1, 'Cardio Intenso', '2024-02-12', '18:00:00', 'Lunes', 25),
(2, 'Yoga Suave', '2024-02-11', '09:00:00', 'Domingo', 15),
(2, 'Pilates', '2024-02-13', '19:00:00', 'Martes', 18);

-- 6) Equipamiento
INSERT INTO Equipamiento (nombre_equipo, tipo, estado, fecha_adquisicion) VALUES
('Cinta de correr', 'Cardio', 'Bueno', '2021-05-10'),
('Bicicleta estática', 'Cardio', 'Bueno', '2020-03-20'),
('Pesas 20kg', 'Fuerza', 'Nuevo', '2024-01-05'),
('Colchoneta yoga', 'Accesorio', 'Bueno', '2022-08-12'),
('Máquina de remo', 'Cardio', 'Mantenimiento', '2019-11-01');

-- 7) Pagos
INSERT INTO Pago (id_socio, cantidad, fecha_pago, metodo_pago) VALUES
(3, 30.00, '2024-02-01 09:12:00', 'Tarjeta'),
(4, 300.00, '2023-09-02 11:00:00', 'Transferencia'),
(5, 1200.00, '2024-02-01 14:30:00', 'Tarjeta');

-- 8) Asistencias (Socio -> Clase)
INSERT INTO Asistencia (id_socio, id_clase, fecha_asistencia) VALUES
(3, 1, '2024-02-10 10:05:00'),
(4, 2, '2024-02-12 18:05:00'),
(5, 3, '2024-02-11 09:05:00'),
(3, 2, '2024-02-12 18:05:00');

-- 9) Clase_Equipamiento (relación N:M)
INSERT INTO Clase_Equipamiento (id_clase, id_equipamiento) VALUES
(1, 1), -- Full Body utiliza Cinta de correr
(2, 2), -- Cardio Intenso utiliza Bicicleta
(1, 3), -- Full Body utiliza Pesas
(3, 4), -- Yoga Suave utiliza Colchoneta
(2, 5); -- Cardio Intenso utiliza Máquina de remo

-- Fin de inserts de ejemplo
