-- 1. 
SELECT UPPER(nombre) AS nombre_mayuscula, edad FROM mascotas;

-- 2. 
SELECT CONCAT(nombre_completo, ' - ', telefono) AS contacto FROM duenios;

-- 3. 
SELECT nombre, especie, edad FROM mascotas ORDER BY edad DESC;

-- 4. 
SELECT especie, COUNT(*) AS total FROM mascotas GROUP BY especie;

-- 5. 
SELECT nombre, precio_base, LOWER(nombre) AS nombre_minuscula FROM servicios;

-- 6. 
SELECT nombre, LENGTH(nombre) AS largo FROM servicios;

-- 7. 
SELECT nombre_completo, SUBSTRING(nombre_completo, 1, 5) AS abreviado FROM duenios;

-- 8. 
CREATE TABLE vacunadas AS SELECT * FROM mascotas WHERE vacunada = TRUE;

-- 9. 
SELECT m.nombre, v.fecha FROM visitas v JOIN mascotas m ON v.id_mascota = m.id;

-- 10. 
SELECT nombre,
       IF(nombre LIKE '%vacuna%' OR nombre LIKE '%Vacuna%', 'Es vacuna', 'Otro') AS tipo
FROM tratamientos;

-- 11. 
SELECT ROUND(AVG(edad), 2) AS edad_promedio FROM mascotas;

-- 12. 
SELECT nombre AS nombre_mascota, sexo AS genero FROM mascotas;

-- 13. 
SELECT nombre, TRIM(UPPER(observaciones)) AS observaciones_limpias FROM tratamientos;

-- 14. 
SELECT m.nombre, COUNT(*) AS total_visitas
FROM visitas v
JOIN mascotas m ON v.id_mascota = m.id
GROUP BY m.nombre;

-- 15. 
SELECT nombre FROM mascotas WHERE id IN (
    SELECT v.id_mascota FROM visitas v
    JOIN servicios s ON v.id_servicio = s.id
    WHERE s.precio_base > 30000
);