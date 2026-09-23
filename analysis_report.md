1. Listar todas las inscripciones mostrando el nombre completo del estudiante, el título del curso y su porcentaje de completado

| estudiante      | curso                  | porcentaje_completado |
| --------------- | ---------------------- | --------------------- |
| Marco Rossi     | Advanced Python        | 95                    |
| Klaus Weber     | Intro to Python        | 92                    |
| Marco Rossi     | Intro to Python        | 88                    |
| Emily Watson    | Intro to Python        | 85                    |
| Klaus Weber     | Data Analysis with SQL | 78                    |
| Priya Sharma    | Digital Marketing 101  | 70                    |
| Emily Watson    | Web Design Basics      | 60                    |
| Priya Sharma    | Intro to Python        | 55                    |
| Yuki Nakamura   | Data Analysis with SQL | 45                    |
| Emily Watson    | Advanced Python        | 40                    |
| Pierre Dubois   | Data Analysis with SQL | 20                    |
| Lucia Fernandes | Web Design Basics      | 5                     |
| Lucia Fernandes | Digital Marketing 101  | 3                     |
| Yuki Nakamura   | UI/UX Fundamentals     | 0                     |
| Pierre Dubois   | UI/UX Fundamentals     | 0                     |
| Lucia Fernandes | Advanced Python        | 0                     |


2. Mostrar el nombre y email de los estudiantes que han aprobado al menos un curso, junto con el título del curso que aprobaron

| estudiante   | email                             | curso_aprobado         |
| ------------ | --------------------------------- | ---------------------- |
| Emily Watson | emily.watson@student.edutrack.com | Intro to Python        |
| Klaus Weber  | klaus.weber@student.edutrack.com  | Intro to Python        |
| Klaus Weber  | klaus.weber@student.edutrack.com  | Data Analysis with SQL |
| Marco Rossi  | marco.rossi@student.edutrack.com  | Advanced Python        |
| Marco Rossi  | marco.rossi@student.edutrack.com  | Intro to Python        |
| Priya Sharma | priya.sharma@student.edutrack.com | Digital Marketing 101  |

3. Calcular el porcentaje de completado medio por instructor, ordenado de mayor a menor

| instructor         | porcentaje_promedio |
| ------------------ | ------------------- |
| Marta López        | 66.14               |
| Carlos Vega        | 40.00               |
| Lucia Prades       | 36.50               |
| Pending assignment | 0.00                |

4. Encontrar todos los estudiantes que no tienen ninguna inscripción

| id | estudiante    | email                              |
| -- | ------------- | ---------------------------------- |
| 8  | Giulia Romano | giulia.romano@student.edutrack.com |

5. Encontrar todos los cursos que no tienen ninguna inscripción

| id | curso           | category  |
| -- | --------------- | --------- |
| 7  | Email Campaigns | Marketing |

6. Contar cuántos cursos tiene inscrito cada estudiante; mostrar solo los estudiantes inscritos en más de un curso

| estudiante      | total_cursos |
| --------------- | ------------ |
| Lucia Fernandes | 3            |
| Emily Watson    | 3            |
| Marco Rossi     | 2            |
| Klaus Weber     | 2            |
| Priya Sharma    | 2            |
| Pierre Dubois   | 2            |
| Yuki Nakamura   | 2            |

7. Calcular los ingresos totales por categoría usando el precio del curso de la tabla courses (monthly_fee), no el pago histórico de enrollments

| categoria   | ingresos_totales |
| ----------- | ---------------- |
| Programming | 409.93           |
| Data        | 179.97           |
| Design      | 169.96           |
| Marketing   | 59.98            |

8. Mostrar cada instructor junto con el número de estudiantes inscritos actualmente en sus cursos

| instructor         | total_estudiantes |
| ------------------ | ----------------- |
| Marta López        | 7                 |
| Carlos Vega        | 5                 |
| Pending assignment | 2                 |
| Lucia Prades       | 2                 |

9. Comprobar si hay inscripciones cuyo student_id no corresponde a ningún estudiante existente (registros huérfanos)

Sin resultados

10. Comprobar si hay inscripciones cuyo course_id no corresponde a ningún curso existente (registros huérfanos)

Sin resultados
