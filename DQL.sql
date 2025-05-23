-- 1. Ver nombre y edad de todas las mascotas en mayúsculas
SELECT UPPER(nombre) AS nombre_mayuscula, edad FROM mascotas;

-- 2. Mostrar el nombre del dueño concatenado con el teléfono
SELECT CONCAT(nombre_completo, ' - ', telefono) AS contacto FROM duenios;

-- 3. Mascotas y su especie ordenadas por edad descendente
SELECT nombre, especie, edad FROM mascotas ORDER BY edad DESC;

-- 4. Total de mascotas por especie
SELECT especie, COUNT(*) AS total FROM mascotas GROUP BY especie;

-- 5. Servicios con nombre, precio y nombre en minúsculas
SELECT nombre, precio_base, LOWER(nombre) AS nombre_minuscula FROM servicios;

-- 6. Nombre del servicio y su longitud de caracteres
SELECT nombre, LENGTH(nombre) AS largo FROM servicios;

-- 7. Substring del nombre del dueño (primeros 5 caracteres)
SELECT nombre_completo, SUBSTRING(nombre_completo, 1, 5) AS abreviado FROM duenios;

-- 8. Crear nueva tabla con mascotas vacunadas
CREATE TABLE vacunadas AS SELECT * FROM mascotas WHERE vacunada = TRUE;

-- 9. Mostrar visitas con nombre de mascota y fecha
SELECT m.nombre, v.fecha FROM visitas v JOIN mascotas m ON v.id_mascota = m.id;

-- 10. Mostrar nombre del tratamiento y si es 'vacuna' o no
SELECT nombre,
       IF(nombre LIKE '%vacuna%' OR nombre LIKE '%Vacuna%', 'Es vacuna', 'Otro') AS tipo
FROM tratamientos;

-- 11. Promedio de edad de mascotas
SELECT ROUND(AVG(edad), 2) AS edad_promedio FROM mascotas;

-- 12. Mostrar mascotas con sexo y alias personalizado
SELECT nombre AS nombre_mascota, sexo AS genero FROM mascotas;

-- 13. Mostrar tratamientos con campo observaciones en mayúscula y trim
SELECT nombre, TRIM(UPPER(observaciones)) AS observaciones_limpias FROM tratamientos;

-- 14. Número de visitas por mascota
SELECT m.nombre, COUNT(*) AS total_visitas
FROM visitas v
JOIN mascotas m ON v.id_mascota = m.id
GROUP BY m.nombre;

-- 15. Subconsulta: mascotas que han recibido servicios cuyo precio es mayor a 30000
SELECT nombre FROM mascotas WHERE id IN (
    SELECT v.id_mascota FROM visitas v
    JOIN servicios s ON v.id_servicio = s.id
    WHERE s.precio_base > 30000
);