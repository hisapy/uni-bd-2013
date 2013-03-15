/*
 Trabajo #1 - Base de Datos 2013 - UNI
 
 Respuesta a los ejercicios propuestos
 
 Alumno: Javier Selent - 69javiselent@gmail.com 
*/

use intro_joins;

/*1- Lista de todos los miembros*/ 

 select from * members;

/*2- Lista de todos los libros en el catálogo*/
	
	select * from books;

/*3- Ver que libro tiene actualmente el miembro Dave*/

	select name , title from members , books , loans 
	where  members.name = "Dave" and book_id = books.id;

/*4- Ver que miembros no tienen prestado ningún libro*/

	select id, name from members left join loans on id = member_id
	where member_id is null;

/*5- Lista de todos los libros en stock*/

	select id, title from books left join loans on id = book_id 
	where book_id is null;

/*6-Lista de todos los titulos prestados actualmente con el nombre de los socios que lo prestaron*/

	select name, title from members , books , loans
	where book_id = books.id and member_id = members.id;

