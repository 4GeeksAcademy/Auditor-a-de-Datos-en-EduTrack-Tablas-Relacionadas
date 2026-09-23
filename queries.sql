1. Listar todas las inscripciones mostrando el nombre completo del estudiante, el título del curso y su porcentaje de completado

SELECT 
    s.name AS estudiante,
    c.title AS curso,
    e.completion_percentage AS porcentaje_completado
FROM enrollments e
INNER JOIN students s ON e.student_id = s.id
INNER JOIN courses c ON e.course_id = c.id
ORDER BY completion_percentage desc;

2. Mostrar el nombre y email de los estudiantes que han aprobado al menos un curso, junto con el título del curso que aprobaron

SELECT 
    s.name AS estudiante,
    s.email,
    c.title AS curso_aprobado
FROM enrollments e
INNER JOIN students s ON e.student_id = s.id
INNER JOIN courses c ON e.course_id = c.id
WHERE e.passed = TRUE
ORDER BY estudiante ASC;

3. Calcular el porcentaje de completado medio por instructor, ordenado de mayor a menor

SELECT 
    c.instructor_name AS instructor,
    ROUND(AVG(e.completion_percentage), 2) AS porcentaje_promedio
FROM enrollments e
INNER JOIN courses c ON e.course_id = c.id
GROUP BY c.instructor_name
ORDER BY porcentaje_promedio DESC;


4. Encontrar todos los estudiantes que no tienen ninguna inscripción

SELECT 
    s.id,
    s.name AS estudiante,
    s.email
FROM students s
LEFT JOIN enrollments e ON s.id = e.student_id
WHERE e.id IS NULL;

5. Encontrar todos los cursos que no tienen ninguna inscripción

SELECT 
    c.id,
    c.title AS curso,
    c.category
FROM courses c
LEFT JOIN enrollments e ON c.id = e.course_id
WHERE e.id IS NULL;


6. Contar cuántos cursos tiene inscrito cada estudiante; mostrar solo los estudiantes inscritos en más de un curso

SELECT 
    s.name AS estudiante,
    COUNT(e.id) AS total_cursos
FROM students s
INNER JOIN enrollments e ON s.id = e.student_id
GROUP BY s.id, s.name
HAVING COUNT(e.id) > 1
ORDER BY total_cursos DESC;

7. Calcular los ingresos totales por categoría usando el precio del curso de la tabla courses (monthly_fee), no el pago histórico de enrollments

SELECT 
    c.category AS categoria,
    SUM(c.monthly_fee) AS ingresos_totales
FROM enrollments e
INNER JOIN courses c ON e.course_id = c.id
GROUP BY c.category
ORDER BY ingresos_totales DESC;

8. Mostrar cada instructor junto con el número de estudiantes inscritos actualmente en sus cursos

SELECT 
    c.instructor_name AS instructor,
    COUNT(e.id) AS total_estudiantes
FROM courses c
LEFT JOIN enrollments e ON c.id = e.course_id
GROUP BY c.instructor_name
ORDER BY total_estudiantes DESC;

9. Comprobar si hay inscripciones cuyo student_id no corresponde a ningún estudiante existente (registros huérfanos)

SELECT 
    e.*
FROM enrollments e
LEFT JOIN students s ON e.student_id = s.id
WHERE s.id IS NULL;

10. Comprobar si hay inscripciones cuyo course_id no corresponde a ningún curso existente (registros huérfanos)

SELECT 
    e.*
FROM enrollments e
LEFT JOIN courses c ON e.course_id = c.id
WHERE c.id IS NULL;