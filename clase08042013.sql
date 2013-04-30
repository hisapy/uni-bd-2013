-- call crear_auditoria();
-- select * from auditoria;
-- select count(*) from books

CREATE VIEW `libros_prestados` 
AS 
select `l`.`member_id` AS `member_id`,`m`.`name` AS `name`,`l`.`book_id` AS `book_id`,`b`.`title` AS `title` 
from ((`members` `m` join `loans` `l` on((`m`.`id` = `l`.`member_id`))) 
join `books` `b` on((`b`.`id` = `l`.`book_id`)));


delimiter //
create procedure crear_auditoria () 
begin
  create table auditoria(
    usuario varchar(160) not null,
    fecha date not null,
    operacion varchar(40) not null,
    tabla varchar(160) not null
  );
end//

create trigger audit after insert on loans for each row
begin
  insert into auditoria values (current_user, now(), 'insert', 'loans');
end//

delimiter ; 

select * from INFORMATION_SCHEMA.COLUMNS where table_schema = 'intro_joins' AND table_name = 'loans';
select * from INFORMATION_SCHEMA.referential_constraints;
select * from INFORMATION_SCHEMA.table_constraints where constraint_schema = 'intro_joins';
select * from INFORMATION_SCHEMA.key_column_usage where table_schema = 'intro_joins' and referenced_table_name is not null;
select * from INFORMATION_SCHEMA.columns where table_schema = 'intro_joins' and table_name = 'loans';
show tables from INFORMATION_SCHEMA;