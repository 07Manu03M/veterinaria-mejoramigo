INSERT INTO duenios (id_duenio, nombre, celular, direccion) VALUES
('1010', 'Ana María Torres', '3105551122', 'Carrera 45 #12-30'),
('1020', 'Carlos Pérez', '3124449988', 'Calle 10 #23-12'),
('1030', 'Laura Gómez', '3203344556', 'Av. Siempre Viva #101'),
('1040', 'Jorge Rodríguez', '3001122334', 'Calle 50 #14-60'),
('1050', 'Sandra Martínez', '3134455667', 'Transversal 6 #20-40');

INSERT INTO mascotas (id_mascota, nombre, especie, raza, edad, sexo, esterilizado, id_duenio) VALUES
(1, 'Firulais', 'Perro', 'Labrador', 3, 'Macho', true, '1010'),
(2, 'Misu', 'Gato', 'Persa', 2, 'Hembra', false, '1010'),
(3, 'Rocky', 'Perro', 'Pitbull', 4, 'Macho', true, '1020'),
(4, 'Nala', 'Gato', 'Siames', 5, 'Hembra', true, '1030'),
(5, 'Boby', 'Perro', 'Criollo', 6, 'Macho', false, '1040'),
(6, 'Luna', 'Gato', 'Angora', 1, 'Hembra', true, '1050'),
(7, 'Thor', 'Perro', 'Golden Retriever', 2, 'Macho', true, '1010'),
(8, 'Max', 'Perro', 'Poodle', 7, 'Macho', false, '1030'),
(9, 'Pelusa', 'Gato', 'Criollo', 3, 'Hembra', true, '1040'),
(10, 'Kira', 'Perro', 'Pastor Alemán', 4, 'Hembra', true, '1050');

INSERT INTO servicios (id_servicio, nombre, descripcion, costo) VALUES
(1, 'Baño', 'Baño completo para mascota', 25000),
(2, 'Corte de uñas', 'Corte higiénico de uñas', 10000),
(3, 'Consulta médica', 'Consulta veterinaria general', 40000),
(4, 'Desparasitación', 'Tratamiento contra parásitos', 30000),
(5, 'Vacunación', 'Aplicación de vacunas', 35000);

INSERT INTO visitas (id_visita, id_mascota, id_servicio, fecha) VALUES
(1, 1, 1, '2025-05-01'),
(2, 2, 3, '2025-05-02'),
(3, 3, 4, '2025-05-03'),
(4, 4, 5, '2025-05-04'),
(5, 5, 2, '2025-05-05'),
(6, 6, 1, '2025-05-06'),
(7, 7, 3, '2025-05-07'),
(8, 8, 4, '2025-05-08'),
(9, 9, 5, '2025-05-09'),
(10, 10, 1, '2025-05-10');

INSERT INTO tratamientos (id_tratamiento, nombre, indicaciones, id_visita) VALUES
(1, 'Antibiótico', 'Tomar cada 8 horas', 2),
(2, 'Vitaminas', 'Una diaria por 10 días', 3),
(3, 'Antipulgas', 'Aplicar sobre la piel', 4),
(4, 'Desparasitante', 'Repetir en 15 días', 7),
(5, 'Vacuna antirrábica', 'Refuerzo anual', 9);