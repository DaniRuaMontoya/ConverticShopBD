--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5
-- Dumped by pg_dump version 14.5

-- Started on 2023-03-16 10:32:28

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 210 (class 1259 OID 18871)
-- Name: carrito_compras; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.carrito_compras (
    id integer NOT NULL,
    inventario_id integer
);


ALTER TABLE public.carrito_compras OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 18870)
-- Name: carrito_compras_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.carrito_compras_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.carrito_compras_id_seq OWNER TO postgres;

--
-- TOC entry 3377 (class 0 OID 0)
-- Dependencies: 209
-- Name: carrito_compras_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.carrito_compras_id_seq OWNED BY public.carrito_compras.id;


--
-- TOC entry 212 (class 1259 OID 18878)
-- Name: categoria; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categoria (
    id integer NOT NULL,
    nombre character varying(32) NOT NULL
);


ALTER TABLE public.categoria OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 18877)
-- Name: categoria_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categoria_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categoria_id_seq OWNER TO postgres;

--
-- TOC entry 3378 (class 0 OID 0)
-- Dependencies: 211
-- Name: categoria_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categoria_id_seq OWNED BY public.categoria.id;


--
-- TOC entry 214 (class 1259 OID 18885)
-- Name: inventario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.inventario (
    id integer NOT NULL,
    cantidad integer,
    producto_id integer,
    tallas_id integer
);


ALTER TABLE public.inventario OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 18884)
-- Name: inventario_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.inventario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.inventario_id_seq OWNER TO postgres;

--
-- TOC entry 3379 (class 0 OID 0)
-- Dependencies: 213
-- Name: inventario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.inventario_id_seq OWNED BY public.inventario.id;


--
-- TOC entry 216 (class 1259 OID 18892)
-- Name: producto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.producto (
    id integer NOT NULL,
    cantidad_vistas integer,
    color character varying(32) NOT NULL,
    descripcion character varying(254) NOT NULL,
    imagen character varying(255),
    marca character varying(32) NOT NULL,
    nombre character varying(32) NOT NULL,
    precio real NOT NULL,
    categoria_id integer
);


ALTER TABLE public.producto OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 18891)
-- Name: producto_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.producto_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.producto_id_seq OWNER TO postgres;

--
-- TOC entry 3380 (class 0 OID 0)
-- Dependencies: 215
-- Name: producto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.producto_id_seq OWNED BY public.producto.id;


--
-- TOC entry 217 (class 1259 OID 18900)
-- Name: tallas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tallas (
    id integer NOT NULL,
    nombres character varying(255) NOT NULL
);


ALTER TABLE public.tallas OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 18921)
-- Name: tallas_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tallas_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tallas_seq OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 18906)
-- Name: tipo_documento; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tipo_documento (
    id integer NOT NULL,
    nombre character varying(255) NOT NULL
);


ALTER TABLE public.tipo_documento OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 18905)
-- Name: tipo_documento_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tipo_documento_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tipo_documento_id_seq OWNER TO postgres;

--
-- TOC entry 3381 (class 0 OID 0)
-- Dependencies: 218
-- Name: tipo_documento_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tipo_documento_id_seq OWNED BY public.tipo_documento.id;


--
-- TOC entry 221 (class 1259 OID 18913)
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario (
    id integer NOT NULL,
    apellidos character varying(32) NOT NULL,
    contrasena character varying(255) NOT NULL,
    correo_electronico character varying(255) NOT NULL,
    documento integer NOT NULL,
    nombres character varying(32) NOT NULL,
    id_tipo_documento integer
);


ALTER TABLE public.usuario OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 18912)
-- Name: usuario_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuario_id_seq OWNER TO postgres;

--
-- TOC entry 3382 (class 0 OID 0)
-- Dependencies: 220
-- Name: usuario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuario_id_seq OWNED BY public.usuario.id;


--
-- TOC entry 3194 (class 2604 OID 18874)
-- Name: carrito_compras id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carrito_compras ALTER COLUMN id SET DEFAULT nextval('public.carrito_compras_id_seq'::regclass);


--
-- TOC entry 3195 (class 2604 OID 18881)
-- Name: categoria id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categoria ALTER COLUMN id SET DEFAULT nextval('public.categoria_id_seq'::regclass);


--
-- TOC entry 3196 (class 2604 OID 18888)
-- Name: inventario id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventario ALTER COLUMN id SET DEFAULT nextval('public.inventario_id_seq'::regclass);


--
-- TOC entry 3197 (class 2604 OID 18895)
-- Name: producto id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.producto ALTER COLUMN id SET DEFAULT nextval('public.producto_id_seq'::regclass);


--
-- TOC entry 3198 (class 2604 OID 18909)
-- Name: tipo_documento id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipo_documento ALTER COLUMN id SET DEFAULT nextval('public.tipo_documento_id_seq'::regclass);


--
-- TOC entry 3199 (class 2604 OID 18916)
-- Name: usuario id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario ALTER COLUMN id SET DEFAULT nextval('public.usuario_id_seq'::regclass);


--
-- TOC entry 3359 (class 0 OID 18871)
-- Dependencies: 210
-- Data for Name: carrito_compras; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.carrito_compras (id, inventario_id) FROM stdin;
\.


--
-- TOC entry 3361 (class 0 OID 18878)
-- Dependencies: 212
-- Data for Name: categoria; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categoria (id, nombre) FROM stdin;
\.


--
-- TOC entry 3363 (class 0 OID 18885)
-- Dependencies: 214
-- Data for Name: inventario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.inventario (id, cantidad, producto_id, tallas_id) FROM stdin;
\.


--
-- TOC entry 3365 (class 0 OID 18892)
-- Dependencies: 216
-- Data for Name: producto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.producto (id, cantidad_vistas, color, descripcion, imagen, marca, nombre, precio, categoria_id) FROM stdin;
\.


--
-- TOC entry 3366 (class 0 OID 18900)
-- Dependencies: 217
-- Data for Name: tallas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tallas (id, nombres) FROM stdin;
\.


--
-- TOC entry 3368 (class 0 OID 18906)
-- Dependencies: 219
-- Data for Name: tipo_documento; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tipo_documento (id, nombre) FROM stdin;
1	Cédula de Ciudadania
2	Cédula de Extranjería
\.


--
-- TOC entry 3370 (class 0 OID 18913)
-- Dependencies: 221
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuario (id, apellidos, contrasena, correo_electronico, documento, nombres, id_tipo_documento) FROM stdin;
1	Rua	123456	dani@gmail.com	222222	Daniel	\N
2	Villa	123456789	ale@gmail.com	333333	Alejandra	\N
3	Lopez	1234563	willi@gmail.com	222223	William	\N
7	Chief	1234	boss@gmail.com	123456	Boss	\N
9	Hurtado	12345	hurtado@gmail.com	1234567	Alejandra	\N
10	Hurtado	123456	dhurtado@gmail.com	10000003	Deyanira	\N
11	Villa	123456	cris@gmail.com	1203366544	Camilo	\N
12	Rua	123456	chief@gmail.com	123456789	Chief	\N
13	Zapata	123456	Saulol@gmail.com	1234567893	Saulol	\N
\.


--
-- TOC entry 3383 (class 0 OID 0)
-- Dependencies: 209
-- Name: carrito_compras_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.carrito_compras_id_seq', 1, false);


--
-- TOC entry 3384 (class 0 OID 0)
-- Dependencies: 211
-- Name: categoria_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categoria_id_seq', 1, false);


--
-- TOC entry 3385 (class 0 OID 0)
-- Dependencies: 213
-- Name: inventario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.inventario_id_seq', 1, false);


--
-- TOC entry 3386 (class 0 OID 0)
-- Dependencies: 215
-- Name: producto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.producto_id_seq', 1, false);


--
-- TOC entry 3387 (class 0 OID 0)
-- Dependencies: 222
-- Name: tallas_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tallas_seq', 1, false);


--
-- TOC entry 3388 (class 0 OID 0)
-- Dependencies: 218
-- Name: tipo_documento_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tipo_documento_id_seq', 1, true);


--
-- TOC entry 3389 (class 0 OID 0)
-- Dependencies: 220
-- Name: usuario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuario_id_seq', 13, true);


--
-- TOC entry 3201 (class 2606 OID 18876)
-- Name: carrito_compras carrito_compras_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carrito_compras
    ADD CONSTRAINT carrito_compras_pkey PRIMARY KEY (id);


--
-- TOC entry 3203 (class 2606 OID 18883)
-- Name: categoria categoria_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT categoria_pkey PRIMARY KEY (id);


--
-- TOC entry 3205 (class 2606 OID 18890)
-- Name: inventario inventario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventario
    ADD CONSTRAINT inventario_pkey PRIMARY KEY (id);


--
-- TOC entry 3207 (class 2606 OID 18899)
-- Name: producto producto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.producto
    ADD CONSTRAINT producto_pkey PRIMARY KEY (id);


--
-- TOC entry 3209 (class 2606 OID 18904)
-- Name: tallas tallas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tallas
    ADD CONSTRAINT tallas_pkey PRIMARY KEY (id);


--
-- TOC entry 3211 (class 2606 OID 18911)
-- Name: tipo_documento tipo_documento_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipo_documento
    ADD CONSTRAINT tipo_documento_pkey PRIMARY KEY (id);


--
-- TOC entry 3213 (class 2606 OID 18920)
-- Name: usuario usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id);


--
-- TOC entry 3215 (class 2606 OID 18922)
-- Name: inventario fk2jpmjsxwl42blfea24vda6fs6; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventario
    ADD CONSTRAINT fk2jpmjsxwl42blfea24vda6fs6 FOREIGN KEY (producto_id) REFERENCES public.producto(id);


--
-- TOC entry 3216 (class 2606 OID 18932)
-- Name: inventario fk57ok28cf0ldf274sd07twdmot; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventario
    ADD CONSTRAINT fk57ok28cf0ldf274sd07twdmot FOREIGN KEY (tallas_id) REFERENCES public.tallas(id);


--
-- TOC entry 3218 (class 2606 OID 18937)
-- Name: usuario fki84twx6f7o0pu9mbi856hhp7s; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT fki84twx6f7o0pu9mbi856hhp7s FOREIGN KEY (id_tipo_documento) REFERENCES public.tipo_documento(id);


--
-- TOC entry 3214 (class 2606 OID 18942)
-- Name: carrito_compras fkj26fk3qpesng2wf85e4al1acw; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carrito_compras
    ADD CONSTRAINT fkj26fk3qpesng2wf85e4al1acw FOREIGN KEY (inventario_id) REFERENCES public.inventario(id);


--
-- TOC entry 3217 (class 2606 OID 18927)
-- Name: producto fkodqr7965ok9rwquj1utiamt0m; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.producto
    ADD CONSTRAINT fkodqr7965ok9rwquj1utiamt0m FOREIGN KEY (categoria_id) REFERENCES public.categoria(id);


-- Completed on 2023-03-16 10:32:28

--
-- PostgreSQL database dump complete
--

