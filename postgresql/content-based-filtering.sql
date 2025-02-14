--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3
-- Dumped by pg_dump version 16.3

-- Started on 2025-02-14 10:35:39

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 4 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA public;


--
-- TOC entry 4852 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 216 (class 1259 OID 17224)
-- Name: history; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.history (
    created timestamp without time zone,
    updated timestamp without time zone,
    id_history character varying(20) NOT NULL,
    id_user character varying(20),
    description character varying
);


--
-- TOC entry 217 (class 1259 OID 17231)
-- Name: produk; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.produk (
    created timestamp without time zone,
    updated timestamp without time zone,
    id_produk character varying(20) NOT NULL,
    merk character varying,
    type character varying,
    ram character varying,
    internal character varying,
    camera character varying,
    harga character varying
);


--
-- TOC entry 215 (class 1259 OID 17217)
-- Name: user; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."user" (
    created timestamp without time zone,
    updated timestamp without time zone,
    username character varying NOT NULL,
    password character varying
);


--
-- TOC entry 4845 (class 0 OID 17224)
-- Dependencies: 216
-- Data for Name: history; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.history VALUES ('2025-02-11 12:00:42', '2025-02-11 12:00:42', '14031021567680802166', '1', 'ram 4gb');
INSERT INTO public.history VALUES ('2025-02-11 12:02:12', '2025-02-11 12:02:12', '09349911928950561304', '1', 'hp samsung');
INSERT INTO public.history VALUES ('2025-02-11 13:27:56', '2025-02-11 13:27:56', '89396737896636462937', '1', 'hp samsung');
INSERT INTO public.history VALUES ('2025-02-11 13:28:04', '2025-02-11 13:28:04', '33165801647848638096', '1', 'ram 4gb');
INSERT INTO public.history VALUES ('2025-02-11 13:29:02', '2025-02-11 13:29:02', '12907741208717367196', '1', 'hp samsung');
INSERT INTO public.history VALUES ('2025-02-11 13:34:25', '2025-02-11 13:34:25', '48664569411456886838', 'amar', 'hp samsung');
INSERT INTO public.history VALUES ('2025-02-11 13:34:33', '2025-02-11 13:34:33', '62459071662081960704', 'amar', 'ram 4gb');
INSERT INTO public.history VALUES ('2025-02-11 13:34:38', '2025-02-11 13:34:38', '14071945692500019537', 'amar', 'redmi');
INSERT INTO public.history VALUES ('2025-02-11 13:34:51', '2025-02-11 13:34:51', '91693296780085304871', 'amar', 'infinix');
INSERT INTO public.history VALUES ('2025-02-11 13:34:55', '2025-02-11 13:34:55', '22285736409629940983', 'amar', '');
INSERT INTO public.history VALUES ('2025-02-11 13:52:00', '2025-02-11 13:52:00', '70528005754056656881', 'amar', 'hp samsung');
INSERT INTO public.history VALUES ('2025-02-11 15:34:01', '2025-02-11 15:34:01', '01264384745692558084', 'amar', 'hp samsung');
INSERT INTO public.history VALUES ('2025-02-11 15:34:55', '2025-02-11 15:34:55', '55093675727514464107', 'amar', 'hp samsung ram 8gb internal 128gb');
INSERT INTO public.history VALUES ('2025-02-11 15:35:34', '2025-02-11 15:35:34', '75820612163128582120', 'amar', 'hp 1jtan');
INSERT INTO public.history VALUES ('2025-02-11 15:36:12', '2025-02-11 15:36:12', '69147429467321115056', 'amar', 'hp samsung ram 8gb internal 128gb');
INSERT INTO public.history VALUES ('2025-02-11 15:36:55', '2025-02-11 15:36:55', '60825674872006673933', 'amar', 'hp murah');
INSERT INTO public.history VALUES ('2025-02-11 15:37:56', '2025-02-11 15:37:56', '89957247951273067415', 'amar', '');


--
-- TOC entry 4846 (class 0 OID 17231)
-- Dependencies: 217
-- Data for Name: produk; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.produk VALUES ('2025-01-06 10:45:45.985497', '2025-01-06 10:45:45.985497', 'P0000000000000000001', 'Samsung', 'A16', '8', '128', '50', '2659910');
INSERT INTO public.produk VALUES ('2025-01-06 10:45:45.985497', '2025-01-06 10:45:45.985497', 'P0000000000000000002', 'Samsung', 'A16', '8', '256', '50', '3050044');
INSERT INTO public.produk VALUES ('2025-01-06 10:45:45.985497', '2025-01-06 10:45:45.985497', 'P0000000000000000003', 'Samsung', 'A16 5G', '8', '256', '50', '3450000');
INSERT INTO public.produk VALUES ('2025-01-06 10:45:45.985497', '2025-01-06 10:45:45.985497', 'P0000000000000000004', 'Samsung', 'A06', '4', '64', '50', '1340000');
INSERT INTO public.produk VALUES ('2025-01-06 10:45:45.985497', '2025-01-06 10:45:45.985497', 'P0000000000000000005', 'Samsung', 'A06', '4', '128', '50', '1535000');
INSERT INTO public.produk VALUES ('2025-01-06 10:45:45.985497', '2025-01-06 10:45:45.985497', 'P0000000000000000006', 'Samsung', 'A35 5G', '8', '256', '50', '4265000');
INSERT INTO public.produk VALUES ('2025-01-06 10:45:45.985497', '2025-01-06 10:45:45.985497', 'P0000000000000000007', 'Samsung', 'A55 5G', '8', '256', '50', '5199000');
INSERT INTO public.produk VALUES ('2025-01-06 10:45:45.985497', '2025-01-06 10:45:45.985497', 'P0000000000000000008', 'Samsung', 'A55 5G', '12', '256', '50', '5949000');
INSERT INTO public.produk VALUES ('2025-01-06 10:45:45.985497', '2025-01-06 10:45:45.985497', 'P0000000000000000009', 'Samsung', 'A15', '8', '128', '50', '2375000');
INSERT INTO public.produk VALUES ('2025-01-06 10:45:45.985497', '2025-01-06 10:45:45.985497', 'P0000000000000000010', 'Samsung', 'A15', '8', '256', '50', '2649000');
INSERT INTO public.produk VALUES ('2025-01-06 10:45:45.985497', '2025-01-06 10:45:45.985497', 'P0000000000000000011', 'Samsung', 'A15 5G', '8', '256', '50', '3010000');
INSERT INTO public.produk VALUES ('2025-01-06 10:45:45.985497', '2025-01-06 10:45:45.985497', 'P0000000000000000012', 'Samsung', 'A25 5G', '8', '128', '50', '3349000');
INSERT INTO public.produk VALUES ('2025-01-06 10:45:45.985497', '2025-01-06 10:45:45.985497', 'P0000000000000000013', 'Samsung', 'A25 5G', '8', '256', '50', '3699000');
INSERT INTO public.produk VALUES ('2025-01-06 10:45:45.985497', '2025-01-06 10:45:45.985497', 'P0000000000000000014', 'Samsung', 'M15 5G', '6', '128', '50', '2450000');
INSERT INTO public.produk VALUES ('2025-01-06 10:45:45.985497', '2025-01-06 10:45:45.985497', 'P0000000000000000015', 'Samsung', 'M34 5G', '8', '128', '50', '3250000');
INSERT INTO public.produk VALUES ('2025-01-06 10:45:45.985497', '2025-01-06 10:45:45.985497', 'P0000000000000000016', 'Samsung', 'M54 5G', '8', '128', '50', '3815000');
INSERT INTO public.produk VALUES ('2025-01-06 10:45:45.985497', '2025-01-06 10:45:45.985497', 'P0000000000000000017', 'Samsung', 'M14 5G', '6', '128', '50', '2249000');
INSERT INTO public.produk VALUES ('2025-01-06 10:45:45.985497', '2025-01-06 10:45:45.985497', 'P0000000000000000018', 'Samsung', 'M23 5G', '6', '128', '50', '2655000');
INSERT INTO public.produk VALUES ('2025-01-06 10:45:45.985497', '2025-01-06 10:45:45.985497', 'P0000000000000000019', 'Samsung', 'M33 5G', '6', '128', '50', '2699000');
INSERT INTO public.produk VALUES ('2025-01-06 10:45:45.985497', '2025-01-06 10:45:45.985497', 'P0000000000000000020', 'Samsung', 'M53 5G', '8', '256', '108', '4099000');
INSERT INTO public.produk VALUES ('2025-01-06 10:45:45.985497', '2025-01-06 10:45:45.985497', 'P0000000000000000027', 'Xiaomi / Redmi', '14', '12', '256', '50', '1050000');
INSERT INTO public.produk VALUES ('2025-01-06 10:45:45.985497', '2025-01-06 10:45:45.985497', 'P0000000000000000028', 'Xiaomi / Redmi', '13', '8', '128', '108', '1699000');
INSERT INTO public.produk VALUES ('2025-01-06 10:45:45.985497', '2025-01-06 10:45:45.985497', 'P0000000000000000021', 'Xiaomi / Redmi', '14C', '6', '128', '108', '1439000');
INSERT INTO public.produk VALUES ('2025-01-06 10:45:45.985497', '2025-01-06 10:45:45.985497', 'P0000000000000000022', 'Xiaomi / Redmi', '14C', '8', '256', '50', '1450000');
INSERT INTO public.produk VALUES ('2025-01-06 10:45:45.985497', '2025-01-06 10:45:45.985497', 'P0000000000000000023', 'Xiaomi / Redmi', '14T', '12', '256', '50', '6075840');
INSERT INTO public.produk VALUES ('2025-01-06 10:45:45.985497', '2025-01-06 10:45:45.985497', 'P0000000000000000024', 'Xiaomi / Redmi', '14T', '12', '512', '50', '6431040');
INSERT INTO public.produk VALUES ('2025-01-06 10:45:45.985497', '2025-01-06 10:45:45.985497', 'P0000000000000000025', 'Xiaomi / Redmi', '14T Pro', '12', '256', '50', '7823040');
INSERT INTO public.produk VALUES ('2025-01-06 10:45:45.985497', '2025-01-06 10:45:45.985497', 'P0000000000000000026', 'Xiaomi / Redmi', '14T Pro', '12', '512', '50', '8611000');
INSERT INTO public.produk VALUES ('2025-01-06 10:45:45.985497', '2025-01-06 10:45:45.985497', 'P0000000000000000029', 'Xiaomi / Redmi', '13', '8', '256', '108', '1890000');
INSERT INTO public.produk VALUES ('2025-01-06 10:45:45.985497', '2025-01-06 10:45:45.985497', 'P0000000000000000030', 'Xiaomi / Redmi', 'Note 13', '8', '256', '108', '2249000');
INSERT INTO public.produk VALUES ('2025-01-06 10:45:45.985497', '2025-01-06 10:45:45.985497', 'P0000000000000000031', 'Xiaomi / Redmi', 'Note 13 5G', '8', '256', '100', '2580000');
INSERT INTO public.produk VALUES ('2025-01-06 10:45:45.985497', '2025-01-06 10:45:45.985497', 'P0000000000000000032', 'Xiaomi / Redmi', 'Note 13 Pro', '8', '256', '200', '3250000');
INSERT INTO public.produk VALUES ('2025-01-06 10:45:45.985497', '2025-01-06 10:45:45.985497', 'P0000000000000000033', 'Xiaomi / Redmi', 'Note 13 Pro 5G', '8', '256', '200', '3673000');
INSERT INTO public.produk VALUES ('2025-01-06 10:45:45.985497', '2025-01-06 10:45:45.985497', 'P0000000000000000034', 'Xiaomi / Redmi', 'Note 13 Pro+ 5G', '12', '512', '200', '5125000');
INSERT INTO public.produk VALUES ('2025-01-06 10:45:45.985497', '2025-01-06 10:45:45.985497', 'P0000000000000000035', 'Xiaomi / Redmi', '13T', '12', '256', '50', '5890000');
INSERT INTO public.produk VALUES ('2025-01-06 10:45:45.985497', '2025-01-06 10:45:45.985497', 'P0000000000000000036', 'Xiaomi / Redmi', '12T 5G', '8', '256', '108', '4299000');
INSERT INTO public.produk VALUES ('2025-01-06 10:45:45.985497', '2025-01-06 10:45:45.985497', 'P0000000000000000037', 'Xiaomi / Redmi', '12 Lite 5G', '8', '256', '108', '3960000');
INSERT INTO public.produk VALUES ('2025-01-06 10:45:45.985497', '2025-01-06 10:45:45.985497', 'P0000000000000000038', 'Xiaomi / Redmi', 'Note 12 Pro', '8', '256', '108', '2250000');
INSERT INTO public.produk VALUES ('2025-01-06 10:45:45.985497', '2025-01-06 10:45:45.985497', 'P0000000000000000039', 'Xiaomi / Redmi', 'A2', '3', '32', '8', '890000');
INSERT INTO public.produk VALUES ('2025-01-06 10:45:45.985497', '2025-01-06 10:45:45.985497', 'P0000000000000000040', 'Xiaomi / Redmi', 'Note 12', '4', '128', '50', '1790000');
INSERT INTO public.produk VALUES ('2025-01-06 10:45:45.985497', '2025-01-06 10:45:45.985497', 'P0000000000000000043', 'Realme', '13+ 5G', '12', '256', '50', '3799000');
INSERT INTO public.produk VALUES ('2025-01-06 10:45:45.985497', '2025-01-06 10:45:45.985497', 'P0000000000000000041', 'Realme', 'GT 7 Pro', '12', '256', '50', '12499000');
INSERT INTO public.produk VALUES ('2025-01-06 10:45:45.985497', '2025-01-06 10:45:45.985497', 'P0000000000000000042', 'Realme', '13+ 5G', '12', '256', '50', '4599000');
INSERT INTO public.produk VALUES ('2025-01-06 10:45:45.985497', '2025-01-06 10:45:45.985497', 'P0000000000000000044', 'Realme', '13 5G', '8', '128', '50', '3269000');
INSERT INTO public.produk VALUES ('2025-01-06 10:45:45.985497', '2025-01-06 10:45:45.985497', 'P0000000000000000045', 'Realme', 'C61', '8', '128', '50', '1580000');
INSERT INTO public.produk VALUES ('2025-01-06 10:45:45.985497', '2025-01-06 10:45:45.985497', 'P0000000000000000046', 'Infinix', 'Hot 50 Pro', '8', '256', '50', '2199000');
INSERT INTO public.produk VALUES ('2025-01-06 10:45:45.985497', '2025-01-06 10:45:45.985497', 'P0000000000000000047', 'Infinix', 'Smart 9 HD', '4', '64', '13', '1149000');
INSERT INTO public.produk VALUES ('2025-01-06 10:45:45.985497', '2025-01-06 10:45:45.985497', 'P0000000000000000048', 'Infinix', 'Hot 50 Pro+', '8', '256', '50', '2399000');
INSERT INTO public.produk VALUES ('2025-01-06 10:45:45.985497', '2025-01-06 10:45:45.985497', 'P0000000000000000049', 'Infinix', 'Hot 50 5G', '8', '256', '50', '2399000');
INSERT INTO public.produk VALUES ('2025-01-06 10:45:45.985497', '2025-01-06 10:45:45.985497', 'P0000000000000000050', 'Infinix', 'Hot 50', '8', '128', '13', '1699000');


--
-- TOC entry 4844 (class 0 OID 17217)
-- Dependencies: 215
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."user" VALUES ('2025-01-06 15:38:00.105498', '2025-01-06 15:38:00.105498', '1', '1');
INSERT INTO public."user" VALUES ('2025-01-06 15:38:00.105498', '2025-01-06 15:38:00.105498', 'amar', 'amar');


--
-- TOC entry 4698 (class 2606 OID 17230)
-- Name: history history_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.history
    ADD CONSTRAINT history_pk PRIMARY KEY (id_history);


--
-- TOC entry 4700 (class 2606 OID 17235)
-- Name: produk produk_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.produk
    ADD CONSTRAINT produk_pk PRIMARY KEY (id_produk);


--
-- TOC entry 4696 (class 2606 OID 17251)
-- Name: user user_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pk PRIMARY KEY (username);


-- Completed on 2025-02-14 10:35:39

--
-- PostgreSQL database dump complete
--

