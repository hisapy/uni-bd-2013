 /**
Trabajo #1 - Base de Datos 2013 - UNI
 
 Respuesta a los ejercicios propuestos
 
 Alumno: Karina Sanabria - karina.sanabria75@gmail.com
*/


-- Lista de todos los miembros
select * from members;

-- Lista de todos los libros en el catalogo
select * from books;
-- select* from loans;

-- Ver que libro tiene actualmente el miembro Dave
select title from books, loans
 where (books.id = loans.book_id) and (loans.member_id = 102);

-- Ver que miembros no tienen prestado ningún libro
select id,name from members left join loans on members.id= loans.member_id 
where loans.member_id is null; 

-- Lista de todos los libros en stock
select title from books left join loans on books.id = loans.book_id 
where loans.book_id is null; 

-- Lista de todos los titulos prestados actualmente con el nombre de los
-- socios que lo prestaron
select name, title from (select title, member_id from loans right join books on books.id = book_id where book_id is not null) 
as libros, 
(select name, member_id from loans right join members on member_id = id where member_id is not null) as miembros where miembros.member_id = libros.member_id ;

