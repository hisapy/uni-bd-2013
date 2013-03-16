/**
Trabajo #1 - Base de Datos 2013 - UNI
Respuesta a los ejercicios propuestos
Alumno: Fernando Konishi
*/
use intro_joins;

--1) Lista de todos los miembros
Select * from members
--2) Lista de todos los libros
Select * from books
--3) Ver que libro tiene actualmente el miebro dave
select title from books left outer join loans on id = book_id where member_id = 103;
--4) Ver que miembros no tienen prestado ningun libro
select name from members left outer join loans on id = member_id where member_id is null;
--5) Ver todos los libros en stock
select title from books left outer join loans on id = book_id where book_id is null;
--6) Lista de todos los titulos prestados actualmente con el nombre de los
--socios que lo prestaron
select name, title 
from members m, books b left outer join loans
on b.id = book_id 
where book_id is not null
and m.id = member_id;
