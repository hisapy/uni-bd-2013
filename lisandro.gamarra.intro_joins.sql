/**

*/

use intro_joins;

-- 1) Lista de todos los miembros
Select * from members;

--2- Lista de todos los libros en el catálogo 
select from * books

--3- Ver que libro tiene actualmente el miembro Dave 
select * from books b where b.id = 3;

--4- Ver que miembros no tienen prestado ningún libro
select id, name from members m left join loans l on m.id=member_id
where member_id is null;

--5- Lista de todos los libros en stock 
select id, title from books left join loans on id = loans.book_id where loans.member_id is null

--6- Lista de todos los titulos prestados actualmente con el nombre de los socios que lo prestaron
select title, name from members, books, loans l where l.book_id= books.id and l.member_id = members.id;

