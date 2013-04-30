# Bases de Datos - Laboratorio - Trabajo #2

## Introducción a Diseño y Desarrollo de Vistas, Procedimientos Almacenados y Triggers, y programación con Base de Datos.

<br />

>Ingeniería Informática, Universidad Nacional de Itapúa 2013  
>Prof: Univ. Hisakazu Ishibashi

## Objetivo

Demostrar al alumno como se pueden utilizar los distintos objetos de bases de datos disponibles para que el programador pueda encapsular la *"lógica del negocio"* como un API en la base de datos, haciendo de paso una breve introducción al análisis de requerimientos de un software, identificando casos de uso del mismo, a partir de relatos de usuario (ver SCRUM).

## Tecnologías a ser usadas en este trabajo

- Las mismas tecnologías utilizadas en el trabajo anterior.
- Lenguaje de programación Ruby, y su API de conexión a MySQL y a PostgreSQL.

## Acerca del Problema a ser resuelto.

En este trabajo se continuará con la base de datos del trabajo #1, Introducción a SQL Joins. La base de datos en cuestión es una versión pequeña de lo que sería una BD para un sistema de gestión de biblioteca. Actualmente la base de datos cuenta con las siguientes tablas:

- *members*: En esta tabla se registran las personas que prestan libros.
- *books*: Los libros de la biblioteca.
- *loans*: Registro de préstamos de libros, en donde se registran el member_id y el book_id correspondiente.

Básicamente lo que hay que hacer en este trabajo es adaptar dicha BD (o crear una nueva) a los siguientes requerimientos de almacenamiento:

1. Los socios (*members*) deberán ser registrados con su número de cédula de identidad, nombre, apellido, fecha de nacimiento, sexo, carrera (Ingeniería Civil, Electronmecánica, etc), fecha de inscripción.
2. Los libros (*books*) deberán ser registrados con su autor, titulo, género, categoría, ISBN. En este sentido hay que aclarar que cada libro cuenta con al menos una copia la cual deberá estar identificacda de manera única.
3. Los préstamos (*loans*) deberán registrar la copia del libro prestado, el socio a quien se presta el libro, la fecha del préstamo, fecha límite del préstamo, y la fecha de devolución del libro (la fecha en la cual el socio hizo ha devuelto un libro a la biblioteca).

Consecuentemente, existirán requerimientos en cuanto a integridad de datos y reglas de negocio, las cuales deberán ser implementadas y cumplidas en la base de datos. 

Todos los requerimientos serán especificados en issues en el *issue tracker*


## Issue Tracker e Instrucciones

El milestone para este trabajo es el milestone [Trabajo 2](https://github.com/hisapy/uni-bd-2013/issues?milestone=2). Ahí se especificará cada issue correspondiente a este trabajo y será también el lugar donde se harán las preguntas y respuestas pertinentes. Favor utilizar solo este medio para consultas. No se aceptarán preguntas por email.

A diferencia del trabajo anterior, este milestone tendrá varios issues. Cada commit deberá referenciar algún issue, de la misma forma en que se ha referenciado el único issue del trabajo anterior, utilizando #N en el comentario del commit, y siendo N el número del issue correspondiente al cual se quiere hacer referencia.

Antes de dirigirse a los issues será necesario que actualicen sus respectivos *forks* desde el repositorio original. Para esto deberán realizar los siguientes pasos:

1. En el programa GitHub for Windows, en local repositories, click derecho sobre su repo (Ej.: afaraldo/uni-bd-2013), y elegir la opción *open a shell here*. Se abrirá una consola (Power Shell).
2. Ejecutar el comando para agregar un nuevo remote llamado upstream:


  **git remote add upstream git@github.com:hisapy/uni-bd-2013.git**

3. Luego, ejecutar el comando para traer los cambios del repositorio recien agregado como upstream

  **git fetch upstream**

4. Ejecutar el comando para integrar los cambios de upstream a su repositorio local

  **git merge upstream/master**

5. Es posible que luego del comando anterior tengan un mensaje que diga que hay conflictos. Si eso ocurre, hay que ejecutar el comando:

  **git mergetool**

6. Finalmente, si es que hubo conflictos y los pudieron resolver, ejecuten el comando

  **git commit**

######Si no quieren hacer los pasos anteriores y no tienen nada que perder en sus repositorios, pueden borrarlos, volver a hacer el fork, y luego volver a clonarlos en sus respectivas computadoras######


## Forma y Fecha de entrega

Todo el DDL/DML correspondientes a los ejercicios que se proponen en los issues deben ser entregados via pull request, enviando solo uno con la totalidad de los issues completados por el alumno. En cada issue se irá especificando las formas de entrega de los mismos.

La fecha limíte para la finalización del milestone es el 11 de mayo de 2013, antes de la 1 de la tarde.
