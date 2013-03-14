/*Trabajo #1
1) Lista de todos los miembros
Select * from members
2) Lista de todos los libros
Select * from books
3) Ver que libro tiene actualmente el miebro dave
Select 
4) Ver que miembros no tienen prestado ningun libro
select id, name from members m left join loans l on m.id=member_id where member_id is null;
5) Ver todos los libros en stock
select title from books left join loans on id = loans.book_id where loans.member_id is null;
6) Lista de todos los titulos prestados actualmente con el nombre de los
socios que lo prestaron
