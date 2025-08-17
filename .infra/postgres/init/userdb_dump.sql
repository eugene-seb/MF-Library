--
-- PostgreSQL database dump
--
CREATE DATABASE userdb;
\connect userdb;
-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4

-- Started on 2025-08-12 17:17:52

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 217 (class 1259 OID 49907)
-- Name: user_reviews_ids; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_reviews_ids (
    reviews_ids bigint,
    user_keycloak_id character varying(255) NOT NULL
);


ALTER TABLE public.user_reviews_ids OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 49910)
-- Name: user_roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_roles (
    keycloak_id character varying(255) NOT NULL,
    roles character varying(255),
    CONSTRAINT user_roles_roles_check CHECK (((roles)::text = ANY ((ARRAY['USER'::character varying, 'ADMIN'::character varying, 'MODERATOR'::character varying])::text[])))
);


ALTER TABLE public.user_roles OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 49916)
-- Name: user_table; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_table (
    keycloak_id character varying(255) NOT NULL,
    username character varying(255) NOT NULL
);


ALTER TABLE public.user_table OWNER TO postgres;

--
-- TOC entry 4854 (class 0 OID 49907)
-- Dependencies: 217
-- Data for Name: user_reviews_ids; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_reviews_ids (reviews_ids, user_keycloak_id) FROM stdin;
\.


--
-- TOC entry 4855 (class 0 OID 49910)
-- Dependencies: 218
-- Data for Name: user_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_roles (keycloak_id, roles) FROM stdin;
88b95c38-999f-4ddd-926b-3169c95350d5	ADMIN
88b95c38-999f-4ddd-926b-3169c95350d5	MODERATOR
\.


--
-- TOC entry 4856 (class 0 OID 49916)
-- Dependencies: 219
-- Data for Name: user_table; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_table (keycloak_id, username) FROM stdin;
88b95c38-999f-4ddd-926b-3169c95350d5	eugene
\.


--
-- TOC entry 4704 (class 2606 OID 49922)
-- Name: user_table user_table_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_table
    ADD CONSTRAINT user_table_pkey PRIMARY KEY (keycloak_id);


--
-- TOC entry 4706 (class 2606 OID 49924)
-- Name: user_table user_table_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_table
    ADD CONSTRAINT user_table_username_key UNIQUE (username);


--
-- TOC entry 4708 (class 2606 OID 49930)
-- Name: user_roles fk4ibfcuv76h7uee0wh6yiputje; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT fk4ibfcuv76h7uee0wh6yiputje FOREIGN KEY (keycloak_id) REFERENCES public.user_table(keycloak_id);


--
-- TOC entry 4707 (class 2606 OID 49925)
-- Name: user_reviews_ids fk8rtwyoamdsnpelwvbpw8p19rp; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_reviews_ids
    ADD CONSTRAINT fk8rtwyoamdsnpelwvbpw8p19rp FOREIGN KEY (user_keycloak_id) REFERENCES public.user_table(keycloak_id);


-- Completed on 2025-08-12 17:17:53

--
-- PostgreSQL database dump complete
--

