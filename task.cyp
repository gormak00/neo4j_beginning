1. Найти все пары (класс - количество человек в классе)
MATCH (n)-[:number_of_children]-(m) RETURN n

2. Найти выбранную группу по имени
MATCH (n) WHERE n.name="2A" RETURN n

3. Найти группы, у которых количество детей менее 30, но не учитывая 1Б класс
MATCH (n: node)-[:number_of_children]-(m) WHERE m.value < 30 AND NOT n.name = "1Б" RETURN n, m

4. Найти группы, у которых количество детей равно 20
MATCH (n: node)-[:number_of_children]-(m) WHERE m.value = 20 RETURN n, m

5.Найти все классы с колличеством в них детей больше 21, но не равно 25
MATCH (n: node)-[:number_of_children]-(m) WHERE m.value > 21 AND NOT m.value = 25 RETURN n, m

6. Найти количество детей у класса с названием 2Б
MATCH (n: number)-[:number_of_children]-(m) WHERE m.name = "2Б" RETURN n

7. Вывести колличество групп у которых количество детей равно 20
MATCH (n: node)-[:number_of_children]-(m) WHERE m.value = 20 RETURN COUNT(n)

8. Вывести колличество классов в школе №218
MATCH (school)-[:class]-(allClasses) WHERE school.name = "Средняя школа №218" RETURN COUNT(allClasses)

9. Вывести все классы в школе №218
MATCH (school)-[:class]-(allClasses) WHERE school.name = "Средняя школа №218" RETURN allClasses

10. Вывести все вторые классы с их колличеством детей
MATCH (n: number)-[:number_of_children]-(m) WHERE m.name =~ '.*2.*' RETURN n, m
