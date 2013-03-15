/**
 Trabajo #1 - Base de Datos 2013 - UNI 
 
 Alumno: Andres Zorrilla - vianzovi@gmail.com 

*/

use intro_joins;

-- 1) Lista de todos los miembros
 Select * from members;

-- 2) Lista de todos los libros del catalogo
 Select * from books;

-- Select * from loans;

-- 3) Libro que tiene actualmente el miembro Dave
 Select title from members, books, loans 
 where members.name = 'Dave' 
 and books.id = book_id 
 and member_id = members.id; -- vacio
 
-- 4) Ver que miembros no tienen prestado ningún libro
 Select name from members left join loans 
 on member_id = id 
 where book_id is null; -- todos menos jhon, harry mark

-- 5) Lista de todos los libros en stock
Select title from books left join loans 
on id = book_id 
where book_id is null;

-- 6) Lista de todos los titulos prestados actualmente con el nombre de los
-- socios que lo prestaron
 Select title, name 
 from members, books, loans -- title, name
 where books.id = book_id
 and members.id = member_id;

  
