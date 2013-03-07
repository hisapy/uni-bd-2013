--
-- ER/Studio 7.5 SQL Code Generation
-- Company :      una
-- Project :      intro_joins.dm1
-- Author :       una
--
-- Date Created : Tuesday, March 05, 2013 14:19:05
-- Target DBMS : MySQL 5.x
--

create database intro_joins;
use intro_joins;
-- 
-- TABLE: books 
--

CREATE TABLE books(
    id       INT             AUTO_INCREMENT,
    title    VARCHAR(160)    NOT NULL,
    PRIMARY KEY (id)
)ENGINE=INNODB
;



-- 
-- TABLE: loans 
--

CREATE TABLE loans(
    member_id    INT    NOT NULL,
    book_id      INT    NOT NULL
)ENGINE=INNODB
;



-- 
-- TABLE: members 
--

CREATE TABLE members(
    id      INT             AUTO_INCREMENT,
    name    VARCHAR(160)    NOT NULL,
    PRIMARY KEY (id)
)ENGINE=INNODB
;



-- 
-- TABLE: loans 
--

ALTER TABLE loans ADD CONSTRAINT Refmembers7 
    FOREIGN KEY (member_id)
    REFERENCES members(id)
;

ALTER TABLE loans ADD CONSTRAINT Refbooks8 
    FOREIGN KEY (book_id)
    REFERENCES books(id)
;


