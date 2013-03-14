/**
 Trabajo #1 - Base de Datos 2013 - UNI
 
 Respuesta a los ejercicios propuestos
 
 Alumno: Adrian Aguero - iceberg.04@gmail.com 
 Obs: Se considera que la Base de Datos ya fue creada
*/

use intro_joins;

-- Lista de todos los miembros
select * from members;

-- Lista de todos los libros
select * from books;

-- Ver que libro tiene actualmente el miembro Dave
select name,title from members,books,loans
	where	members.name="Dave" and book_id = books.id;

-- Ver que miembros no tienen prestado ningún libro
select id, name from members m left join loans l
	on m.id=member_id
	where member_id is null;

-- Lista de todos los libros en stock
select id, title
	from books b left join loans l on b.id = book_id
	where book_id is null order by id;

-- Lista de todos los titulos prestados actualmente con el nombre de los
-- socios que lo prestaron
 
select name, title from members, books, loans
	where member_id = members.id and book_id = books.id;

-- Dump completed on 2013-03-07 11:28:31
