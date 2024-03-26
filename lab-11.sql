-- ¿Cuántos apellidos de actores distintos (diferentes) hay?

SELECT COUNT(DISTINCT last_name) AS num_apellidos_distintos
FROM actor;

-- ¿En cuántos idiomas diferentes se produjeron originalmente las películas?

SELECT COUNT(DISTINCT language_id) AS num_idiomas_diferentes
FROM film;

-- ¿Cuántas películas se estrenaron con "PG-13" calificación?

SELECT COUNT(*) AS num_peliculas_PG13
FROM film
WHERE rating = 'PG-13';

-- Consigue 10 de las películas más largas de 2006.

SELECT title, length
FROM film
WHERE release_year = 2006
ORDER BY length DESC
LIMIT 10;

-- ¿Cuántos días lleva funcionando la empresa (utilizando la función DATEDIFF())?

SELECT DATEDIFF(NOW(), 'fecha_de_inicio_empresa') AS dias_funcionamiento_empresa;

-- Muestra información de alquiler con columnas adicionales mes y día laborable. Consigue 20.

SELECT *,
    MONTH(rental_date) AS mes,
    CASE
        WHEN WEEKDAY(rental_date) < 5 THEN 'día laborable'
        ELSE 'fin de semana'
    END AS day_type
FROM rental
LIMIT 20;

-- Agregue una columna adicional day_type con los valores 'fin de semana' y 'día laboral' según el día de alquiler de la semana.

ALTER TABLE rental
ADD COLUMN day_type ENUM('fin de semana', 'día laboral');
UPDATE rental
SET day_type = CASE
    WHEN WEEKDAY(rental_date) < 5 THEN 'día laborable' 
    ELSE 'fin de semana' 
END;
-- ¿Cuántos alquileres hubo en el último mes de actividad?

SELECT COUNT(*) AS num_alquileres_ultimo_mes
FROM rental
WHERE rental_date >= DATE_SUB(CURDATE(), INTERVAL 1 MONTH);