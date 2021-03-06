--
-- PostgreSQL database dump
--

-- Dumped from database version 12.0
-- Dumped by pg_dump version 12.0

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: dj_user
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO dj_user;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: dj_user
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO dj_user;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dj_user
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: dj_user
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO dj_user;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: dj_user
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO dj_user;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dj_user
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: dj_user
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO dj_user;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: dj_user
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO dj_user;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dj_user
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: dj_user
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO dj_user;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: dj_user
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO dj_user;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: dj_user
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO dj_user;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dj_user
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: dj_user
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO dj_user;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dj_user
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: dj_user
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO dj_user;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: dj_user
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO dj_user;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dj_user
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: dj_user
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO dj_user;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: dj_user
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO dj_user;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dj_user
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: dj_user
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO dj_user;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: dj_user
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO dj_user;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dj_user
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: dj_user
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO dj_user;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: dj_user
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO dj_user;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dj_user
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: dj_user
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO dj_user;

--
-- Name: taxes_business; Type: TABLE; Schema: public; Owner: dj_user
--

CREATE TABLE public.taxes_business (
    id integer NOT NULL,
    "SBN" integer NOT NULL,
    "Accreditation_Number" integer,
    "Facility_Code" character varying(200) NOT NULL
);


ALTER TABLE public.taxes_business OWNER TO dj_user;

--
-- Name: taxes_business_id_seq; Type: SEQUENCE; Schema: public; Owner: dj_user
--

CREATE SEQUENCE public.taxes_business_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.taxes_business_id_seq OWNER TO dj_user;

--
-- Name: taxes_business_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dj_user
--

ALTER SEQUENCE public.taxes_business_id_seq OWNED BY public.taxes_business.id;


--
-- Name: taxes_document; Type: TABLE; Schema: public; Owner: dj_user
--

CREATE TABLE public.taxes_document (
    id integer NOT NULL,
    "DLN" integer NOT NULL,
    "SBN_id" integer NOT NULL,
    "Registering_Office" character varying(200) NOT NULL,
    "BIR_Registration_Date" date,
    "TIN_id" integer NOT NULL
);


ALTER TABLE public.taxes_document OWNER TO dj_user;

--
-- Name: taxes_document_id_seq; Type: SEQUENCE; Schema: public; Owner: dj_user
--

CREATE SEQUENCE public.taxes_document_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.taxes_document_id_seq OWNER TO dj_user;

--
-- Name: taxes_document_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dj_user
--

ALTER SEQUENCE public.taxes_document_id_seq OWNED BY public.taxes_document.id;


--
-- Name: taxes_taxpayer; Type: TABLE; Schema: public; Owner: dj_user
--

CREATE TABLE public.taxes_taxpayer (
    id integer NOT NULL,
    "TIN" integer NOT NULL,
    "Name" character varying(200) NOT NULL,
    "Gender" character varying(200) NOT NULL,
    "Civil_Status" character varying(200) NOT NULL,
    "Birthday" date,
    "Email" character varying(254)
);


ALTER TABLE public.taxes_taxpayer OWNER TO dj_user;

--
-- Name: taxes_taxpayer_id_seq; Type: SEQUENCE; Schema: public; Owner: dj_user
--

CREATE SEQUENCE public.taxes_taxpayer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.taxes_taxpayer_id_seq OWNER TO dj_user;

--
-- Name: taxes_taxpayer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dj_user
--

ALTER SEQUENCE public.taxes_taxpayer_id_seq OWNED BY public.taxes_taxpayer.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: dj_user
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: dj_user
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: dj_user
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: dj_user
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: dj_user
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: dj_user
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: dj_user
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: dj_user
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: dj_user
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: taxes_business id; Type: DEFAULT; Schema: public; Owner: dj_user
--

ALTER TABLE ONLY public.taxes_business ALTER COLUMN id SET DEFAULT nextval('public.taxes_business_id_seq'::regclass);


--
-- Name: taxes_document id; Type: DEFAULT; Schema: public; Owner: dj_user
--

ALTER TABLE ONLY public.taxes_document ALTER COLUMN id SET DEFAULT nextval('public.taxes_document_id_seq'::regclass);


--
-- Name: taxes_taxpayer id; Type: DEFAULT; Schema: public; Owner: dj_user
--

ALTER TABLE ONLY public.taxes_taxpayer ALTER COLUMN id SET DEFAULT nextval('public.taxes_taxpayer_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: dj_user
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: dj_user
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: dj_user
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add business	1	add_business
2	Can change business	1	change_business
3	Can delete business	1	delete_business
4	Can view business	1	view_business
5	Can add document	2	add_document
6	Can change document	2	change_document
7	Can delete document	2	delete_document
8	Can view document	2	view_document
9	Can add taxpayer	3	add_taxpayer
10	Can change taxpayer	3	change_taxpayer
11	Can delete taxpayer	3	delete_taxpayer
12	Can view taxpayer	3	view_taxpayer
13	Can add log entry	4	add_logentry
14	Can change log entry	4	change_logentry
15	Can delete log entry	4	delete_logentry
16	Can view log entry	4	view_logentry
17	Can add permission	5	add_permission
18	Can change permission	5	change_permission
19	Can delete permission	5	delete_permission
20	Can view permission	5	view_permission
21	Can add group	6	add_group
22	Can change group	6	change_group
23	Can delete group	6	delete_group
24	Can view group	6	view_group
25	Can add user	7	add_user
26	Can change user	7	change_user
27	Can delete user	7	delete_user
28	Can view user	7	view_user
29	Can add content type	8	add_contenttype
30	Can change content type	8	change_contenttype
31	Can delete content type	8	delete_contenttype
32	Can view content type	8	view_contenttype
33	Can add session	9	add_session
34	Can change session	9	change_session
35	Can delete session	9	delete_session
36	Can view session	9	view_session
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: dj_user
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: dj_user
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: dj_user
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: dj_user
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: dj_user
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	taxes	business
2	taxes	document
3	taxes	taxpayer
4	admin	logentry
5	auth	permission
6	auth	group
7	auth	user
8	contenttypes	contenttype
9	sessions	session
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: dj_user
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2019-12-04 15:46:20.260445+08
2	auth	0001_initial	2019-12-04 15:46:20.575872+08
3	admin	0001_initial	2019-12-04 15:46:20.999386+08
4	admin	0002_logentry_remove_auto_add	2019-12-04 15:46:21.066384+08
5	admin	0003_logentry_add_action_flag_choices	2019-12-04 15:46:21.098292+08
6	contenttypes	0002_remove_content_type_name	2019-12-04 15:46:21.117678+08
7	auth	0002_alter_permission_name_max_length	2019-12-04 15:46:21.123631+08
8	auth	0003_alter_user_email_max_length	2019-12-04 15:46:21.138604+08
9	auth	0004_alter_user_username_opts	2019-12-04 15:46:21.150049+08
10	auth	0005_alter_user_last_login_null	2019-12-04 15:46:21.164788+08
11	auth	0006_require_contenttypes_0002	2019-12-04 15:46:21.166786+08
12	auth	0007_alter_validators_add_error_messages	2019-12-04 15:46:21.179778+08
13	auth	0008_alter_user_username_max_length	2019-12-04 15:46:21.234104+08
14	auth	0009_alter_user_last_name_max_length	2019-12-04 15:46:21.245074+08
15	auth	0010_alter_group_name_max_length	2019-12-04 15:46:21.26203+08
16	auth	0011_update_proxy_permissions	2019-12-04 15:46:21.274996+08
17	sessions	0001_initial	2019-12-04 15:46:21.362253+08
18	taxes	0001_initial	2019-12-04 15:46:21.630569+08
19	taxes	0002_auto_20191203_1918	2019-12-04 15:46:21.639546+08
20	taxes	0003_auto_20191203_2010	2019-12-04 15:46:21.731432+08
21	taxes	0004_auto_20191203_2256	2019-12-04 15:46:21.739383+08
22	taxes	0005_auto_20191203_2259	2019-12-04 15:46:21.795047+08
23	taxes	0006_remove_taxpayer_avail_income_tax	2019-12-04 15:46:21.801357+08
24	taxes	0007_auto_20191203_2312	2019-12-04 15:46:21.812172+08
25	taxes	0008_auto_20191203_2318	2019-12-04 15:46:21.837675+08
26	taxes	0009_auto_20191204_0115	2019-12-04 15:46:21.936128+08
27	taxes	0010_auto_20191204_0117	2019-12-04 15:46:21.974032+08
28	taxes	0011_auto_20191204_0118	2019-12-04 15:46:21.981903+08
29	taxes	0012_auto_20191204_0131	2019-12-04 15:46:22.068353+08
30	taxes	0013_auto_20191204_0148	2019-12-04 15:46:22.097993+08
31	taxes	0014_auto_20191204_1148	2019-12-04 15:46:22.150123+08
32	taxes	0015_auto_20191204_1152	2019-12-04 15:46:22.27936+08
33	taxes	0016_auto_20191204_1531	2019-12-04 15:46:22.360598+08
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: dj_user
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: taxes_business; Type: TABLE DATA; Schema: public; Owner: dj_user
--

COPY public.taxes_business (id, "SBN", "Accreditation_Number", "Facility_Code") FROM stdin;
7	1	4	F01
8	2	1	F11
9	4	7	F03
11	3	9	F04
\.


--
-- Data for Name: taxes_document; Type: TABLE DATA; Schema: public; Owner: dj_user
--

COPY public.taxes_document (id, "DLN", "SBN_id", "Registering_Office", "BIR_Registration_Date", "TIN_id") FROM stdin;
7	1	7	Quezon City	2019-12-11	6
8	2	8	Manila	2019-12-18	6
9	3	9	Makati	2019-12-07	7
\.


--
-- Data for Name: taxes_taxpayer; Type: TABLE DATA; Schema: public; Owner: dj_user
--

COPY public.taxes_taxpayer (id, "TIN", "Name", "Gender", "Civil_Status", "Birthday", "Email") FROM stdin;
6	1	Gal	Male	Married	2019-12-10	gal@test.com
7	2	Guy	Female	Single	2019-12-12	guy@test.com
8	3	Someone	Other	Married	2019-12-06	someone@test.com
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dj_user
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dj_user
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dj_user
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 36, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dj_user
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dj_user
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, false);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dj_user
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dj_user
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dj_user
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 9, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dj_user
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 33, true);


--
-- Name: taxes_business_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dj_user
--

SELECT pg_catalog.setval('public.taxes_business_id_seq', 11, true);


--
-- Name: taxes_document_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dj_user
--

SELECT pg_catalog.setval('public.taxes_document_id_seq', 9, true);


--
-- Name: taxes_taxpayer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dj_user
--

SELECT pg_catalog.setval('public.taxes_taxpayer_id_seq', 8, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: dj_user
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: dj_user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: dj_user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: dj_user
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: dj_user
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: dj_user
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: dj_user
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: dj_user
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: dj_user
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: dj_user
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: dj_user
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: dj_user
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: dj_user
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: dj_user
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: dj_user
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: dj_user
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: dj_user
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: taxes_business taxes_business_SBN_a8c54d92_uniq; Type: CONSTRAINT; Schema: public; Owner: dj_user
--

ALTER TABLE ONLY public.taxes_business
    ADD CONSTRAINT "taxes_business_SBN_a8c54d92_uniq" UNIQUE ("SBN");


--
-- Name: taxes_business taxes_business_pkey; Type: CONSTRAINT; Schema: public; Owner: dj_user
--

ALTER TABLE ONLY public.taxes_business
    ADD CONSTRAINT taxes_business_pkey PRIMARY KEY (id);


--
-- Name: taxes_document taxes_document_DLN_638057e1_uniq; Type: CONSTRAINT; Schema: public; Owner: dj_user
--

ALTER TABLE ONLY public.taxes_document
    ADD CONSTRAINT "taxes_document_DLN_638057e1_uniq" UNIQUE ("DLN");


--
-- Name: taxes_document taxes_document_pkey; Type: CONSTRAINT; Schema: public; Owner: dj_user
--

ALTER TABLE ONLY public.taxes_document
    ADD CONSTRAINT taxes_document_pkey PRIMARY KEY (id);


--
-- Name: taxes_taxpayer taxes_taxpayer_TIN_b699d62d_uniq; Type: CONSTRAINT; Schema: public; Owner: dj_user
--

ALTER TABLE ONLY public.taxes_taxpayer
    ADD CONSTRAINT "taxes_taxpayer_TIN_b699d62d_uniq" UNIQUE ("TIN");


--
-- Name: taxes_taxpayer taxes_taxpayer_pkey; Type: CONSTRAINT; Schema: public; Owner: dj_user
--

ALTER TABLE ONLY public.taxes_taxpayer
    ADD CONSTRAINT taxes_taxpayer_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: dj_user
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: dj_user
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: dj_user
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: dj_user
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: dj_user
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: dj_user
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: dj_user
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: dj_user
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: dj_user
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: dj_user
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: dj_user
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: dj_user
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: dj_user
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: taxes_document_SBN_id_74fc0371; Type: INDEX; Schema: public; Owner: dj_user
--

CREATE INDEX "taxes_document_SBN_id_74fc0371" ON public.taxes_document USING btree ("SBN_id");


--
-- Name: taxes_document_TIN_id_3cca5f83; Type: INDEX; Schema: public; Owner: dj_user
--

CREATE INDEX "taxes_document_TIN_id_3cca5f83" ON public.taxes_document USING btree ("TIN_id");


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: dj_user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: dj_user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: dj_user
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: dj_user
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: dj_user
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: dj_user
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: dj_user
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: dj_user
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: dj_user
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: taxes_document taxes_document_SBN_id_74fc0371_fk_taxes_business_id; Type: FK CONSTRAINT; Schema: public; Owner: dj_user
--

ALTER TABLE ONLY public.taxes_document
    ADD CONSTRAINT "taxes_document_SBN_id_74fc0371_fk_taxes_business_id" FOREIGN KEY ("SBN_id") REFERENCES public.taxes_business(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: taxes_document taxes_document_TIN_id_3cca5f83_fk_taxes_taxpayer_id; Type: FK CONSTRAINT; Schema: public; Owner: dj_user
--

ALTER TABLE ONLY public.taxes_document
    ADD CONSTRAINT "taxes_document_TIN_id_3cca5f83_fk_taxes_taxpayer_id" FOREIGN KEY ("TIN_id") REFERENCES public.taxes_taxpayer(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

