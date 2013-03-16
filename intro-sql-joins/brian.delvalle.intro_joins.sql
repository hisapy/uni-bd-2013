use intro_joins;

/*LISTADO DE TODOS LOS MIEMBROS*/
select name from members m where m.id is not null;

/*LISTADO DE TODOS LOS LIBROS*/
select title from books b where b.id is not null;
 
/*LISTADO DE LOS LIBROS PRESTADOS POR UN DETERMINADO MIEMBRE*/
select name, title from books b,members m,loans l where  m.name="john" and b.id=book_id and m.id=member_id;

/*LISTADO DE LIBROS EN STOCK*/
select title from books b left join loans l on b.id=book_id where book_id is null order by book_id;

/*LISTA LOS LIBROS PRESTADOS*/
select name,title from members m, books b,loans l where m.id=member_id and b.id = book_id;

/*LISTADO DE LOS MIEMBROS QUE NO LLEVARON LIBROS*/
select name from members m left join loans l on m.id=member_id where member_id is  null order by member_id; 
