![logo_ironhack_blue 7](https://user-images.githubusercontent.com/23629340/40541063-a07a0a8a-601a-11e8-91b5-2f13e4e6b441.png)

# Laboratorio | Consultas SQL 3

En esta práctica de laboratorio, utilizará la base de datos de alquiler de películas [Sakila](https://dev.mysql.com/doc/sakila/en/). Ya ha estado utilizando esta base de datos en un par de laboratorios, pero si necesita obtener los datos nuevamente, consulte el [enlace de instalación] oficial (https://dev.mysql.com/doc/sakila/en/sakila-installation .html).

La base de datos está estructurada de la siguiente manera:
![Esquema de base de datos](https://education-team-2020.s3-eu-west-1.amazonaws.com/data-analytics/database-sakila-schema.png)

<br><br>

### Instrucciones

1. ¿Cuántos apellidos de actores distintos (diferentes) hay?
2. ¿En cuántos idiomas diferentes se produjeron originalmente las películas? (Utilice la columna `language_id` de la tabla `film`)
3. ¿Cuántas películas se estrenaron con clasificación "PG-13"?
4. Consigue 10 de las películas más largas de 2006.
5. ¿Cuántos días lleva funcionando la empresa (consulte la función `DATEDIFF()`)?
6. Muestre información de alquiler con columnas adicionales mes y día laborable. Consigue 20.
7. Agregue una columna adicional "tipo_día" con los valores "fin de semana" y "día laboral" según el día de alquiler de la semana.
8. ¿Cuántos alquileres hubo en el último mes de actividad?