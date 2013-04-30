--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: hisakazu_ishibashi; Type: SCHEMA; Schema: -; Owner: hisa
--

CREATE SCHEMA hisakazu_ishibashi;


ALTER SCHEMA hisakazu_ishibashi OWNER TO hisa;

SET search_path = hisakazu_ishibashi, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auditoria; Type: TABLE; Schema: hisakazu_ishibashi; Owner: hisa; Tablespace: 
--

CREATE TABLE auditoria (
    id integer NOT NULL,
    usuario character varying(160),
    fecha date,
    operacion character varying(40),
    tabla character varying(160)
);


ALTER TABLE hisakazu_ishibashi.auditoria OWNER TO hisa;

--
-- Name: auditoria_id_seq; Type: SEQUENCE; Schema: hisakazu_ishibashi; Owner: hisa
--

CREATE SEQUENCE auditoria_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE hisakazu_ishibashi.auditoria_id_seq OWNER TO hisa;

--
-- Name: auditoria_id_seq; Type: SEQUENCE OWNED BY; Schema: hisakazu_ishibashi; Owner: hisa
--

ALTER SEQUENCE auditoria_id_seq OWNED BY auditoria.id;


--
-- Name: books; Type: TABLE; Schema: hisakazu_ishibashi; Owner: hisa; Tablespace: 
--

CREATE TABLE books (
    id integer NOT NULL,
    title character varying(160)
);


ALTER TABLE hisakazu_ishibashi.books OWNER TO hisa;

--
-- Name: books_id_seq; Type: SEQUENCE; Schema: hisakazu_ishibashi; Owner: hisa
--

CREATE SEQUENCE books_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE hisakazu_ishibashi.books_id_seq OWNER TO hisa;

--
-- Name: books_id_seq; Type: SEQUENCE OWNED BY; Schema: hisakazu_ishibashi; Owner: hisa
--

ALTER SEQUENCE books_id_seq OWNED BY books.id;


--
-- Name: loans; Type: TABLE; Schema: hisakazu_ishibashi; Owner: hisa; Tablespace: 
--

CREATE TABLE loans (
    id integer NOT NULL,
    member_id integer,
    book_id integer
);


ALTER TABLE hisakazu_ishibashi.loans OWNER TO hisa;

--
-- Name: loans_id_seq; Type: SEQUENCE; Schema: hisakazu_ishibashi; Owner: hisa
--

CREATE SEQUENCE loans_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE hisakazu_ishibashi.loans_id_seq OWNER TO hisa;

--
-- Name: loans_id_seq; Type: SEQUENCE OWNED BY; Schema: hisakazu_ishibashi; Owner: hisa
--

ALTER SEQUENCE loans_id_seq OWNED BY loans.id;


--
-- Name: members; Type: TABLE; Schema: hisakazu_ishibashi; Owner: hisa; Tablespace: 
--

CREATE TABLE members (
    id integer NOT NULL,
    name character varying(160)
);


ALTER TABLE hisakazu_ishibashi.members OWNER TO hisa;

--
-- Name: members_id_seq; Type: SEQUENCE; Schema: hisakazu_ishibashi; Owner: hisa
--

CREATE SEQUENCE members_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE hisakazu_ishibashi.members_id_seq OWNER TO hisa;

--
-- Name: members_id_seq; Type: SEQUENCE OWNED BY; Schema: hisakazu_ishibashi; Owner: hisa
--

ALTER SEQUENCE members_id_seq OWNED BY members.id;


--
-- Name: id; Type: DEFAULT; Schema: hisakazu_ishibashi; Owner: hisa
--

ALTER TABLE ONLY auditoria ALTER COLUMN id SET DEFAULT nextval('auditoria_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: hisakazu_ishibashi; Owner: hisa
--

ALTER TABLE ONLY books ALTER COLUMN id SET DEFAULT nextval('books_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: hisakazu_ishibashi; Owner: hisa
--

ALTER TABLE ONLY loans ALTER COLUMN id SET DEFAULT nextval('loans_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: hisakazu_ishibashi; Owner: hisa
--

ALTER TABLE ONLY members ALTER COLUMN id SET DEFAULT nextval('members_id_seq'::regclass);


--
-- Name: auditoria_pkey; Type: CONSTRAINT; Schema: hisakazu_ishibashi; Owner: hisa; Tablespace: 
--

ALTER TABLE ONLY auditoria
    ADD CONSTRAINT auditoria_pkey PRIMARY KEY (id);


--
-- Name: books_pkey; Type: CONSTRAINT; Schema: hisakazu_ishibashi; Owner: hisa; Tablespace: 
--

ALTER TABLE ONLY books
    ADD CONSTRAINT books_pkey PRIMARY KEY (id);


--
-- Name: loans_pkey; Type: CONSTRAINT; Schema: hisakazu_ishibashi; Owner: hisa; Tablespace: 
--

ALTER TABLE ONLY loans
    ADD CONSTRAINT loans_pkey PRIMARY KEY (id);


--
-- Name: members_pkey; Type: CONSTRAINT; Schema: hisakazu_ishibashi; Owner: hisa; Tablespace: 
--

ALTER TABLE ONLY members
    ADD CONSTRAINT members_pkey PRIMARY KEY (id);


--
-- Name: loans_book_id_fkey; Type: FK CONSTRAINT; Schema: hisakazu_ishibashi; Owner: hisa
--

ALTER TABLE ONLY loans
    ADD CONSTRAINT loans_book_id_fkey FOREIGN KEY (book_id) REFERENCES books(id);


--
-- Name: loans_member_id_fkey; Type: FK CONSTRAINT; Schema: hisakazu_ishibashi; Owner: hisa
--

ALTER TABLE ONLY loans
    ADD CONSTRAINT loans_member_id_fkey FOREIGN KEY (member_id) REFERENCES members(id);


--
-- PostgreSQL database dump complete
--

