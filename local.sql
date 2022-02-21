--
-- PostgreSQL database dump
--

-- Dumped from database version 13.4
-- Dumped by pg_dump version 13.4

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
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


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: stockInfoScraper_cash_dividend_record; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."stockInfoScraper_cash_dividend_record" (
    id integer NOT NULL,
    deal_time bigint NOT NULL,
    cash_dividend bigint NOT NULL,
    company_id character varying(32) NOT NULL
);


ALTER TABLE public."stockInfoScraper_cash_dividend_record" OWNER TO postgres;

--
-- Name: stockInfoScraper_cash_dividend_record_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."stockInfoScraper_cash_dividend_record_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."stockInfoScraper_cash_dividend_record_id_seq" OWNER TO postgres;

--
-- Name: stockInfoScraper_cash_dividend_record_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."stockInfoScraper_cash_dividend_record_id_seq" OWNED BY public."stockInfoScraper_cash_dividend_record".id;


--
-- Name: stockInfoScraper_company; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."stockInfoScraper_company" (
    stock_id character varying(32) NOT NULL,
    name character varying(32) NOT NULL
);


ALTER TABLE public."stockInfoScraper_company" OWNER TO postgres;

--
-- Name: stockInfoScraper_stock_info; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."stockInfoScraper_stock_info" (
    id integer NOT NULL,
    date bigint NOT NULL,
    trade_type character varying(32) NOT NULL,
    quantity bigint NOT NULL,
    open_price double precision NOT NULL,
    close_price double precision NOT NULL,
    highest_price double precision NOT NULL,
    lowest_price double precision NOT NULL,
    fluct_price double precision NOT NULL,
    fluct_rate double precision NOT NULL,
    company_id character varying(32) NOT NULL
);


ALTER TABLE public."stockInfoScraper_stock_info" OWNER TO postgres;

--
-- Name: stockInfoScraper_stock_info_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."stockInfoScraper_stock_info_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."stockInfoScraper_stock_info_id_seq" OWNER TO postgres;

--
-- Name: stockInfoScraper_stock_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."stockInfoScraper_stock_info_id_seq" OWNED BY public."stockInfoScraper_stock_info".id;


--
-- Name: stockInfoScraper_stock_memo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."stockInfoScraper_stock_memo" (
    id integer NOT NULL,
    main_goods_or_services character varying(256) NOT NULL,
    strategy_used character varying(32) NOT NULL,
    my_note character varying(2048) NOT NULL,
    company_id character varying(32) NOT NULL
);


ALTER TABLE public."stockInfoScraper_stock_memo" OWNER TO postgres;

--
-- Name: stockInfoScraper_stock_memo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."stockInfoScraper_stock_memo_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."stockInfoScraper_stock_memo_id_seq" OWNER TO postgres;

--
-- Name: stockInfoScraper_stock_memo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."stockInfoScraper_stock_memo_id_seq" OWNED BY public."stockInfoScraper_stock_memo".id;


--
-- Name: stockInfoScraper_trade_plan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."stockInfoScraper_trade_plan" (
    id integer NOT NULL,
    plan_type character varying(32) NOT NULL,
    target_price double precision NOT NULL,
    target_quantity bigint NOT NULL,
    company_id character varying(32) NOT NULL
);


ALTER TABLE public."stockInfoScraper_trade_plan" OWNER TO postgres;

--
-- Name: stockInfoScraper_trade_plan_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."stockInfoScraper_trade_plan_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."stockInfoScraper_trade_plan_id_seq" OWNER TO postgres;

--
-- Name: stockInfoScraper_trade_plan_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."stockInfoScraper_trade_plan_id_seq" OWNED BY public."stockInfoScraper_trade_plan".id;


--
-- Name: stockInfoScraper_trade_record; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."stockInfoScraper_trade_record" (
    id integer NOT NULL,
    deal_time bigint NOT NULL,
    deal_price double precision NOT NULL,
    deal_quantity bigint NOT NULL,
    handling_fee bigint NOT NULL,
    company_id character varying(32) NOT NULL
);


ALTER TABLE public."stockInfoScraper_trade_record" OWNER TO postgres;

--
-- Name: stockInfoScraper_trade_record_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."stockInfoScraper_trade_record_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."stockInfoScraper_trade_record_id_seq" OWNER TO postgres;

--
-- Name: stockInfoScraper_trade_record_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."stockInfoScraper_trade_record_id_seq" OWNED BY public."stockInfoScraper_trade_record".id;


--
-- Name: stockInfoScraper_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."stockInfoScraper_user" (
    id integer NOT NULL,
    first_name character varying(64) NOT NULL,
    last_name character varying(64) NOT NULL,
    email character varying(256) NOT NULL,
    is_email_verified boolean NOT NULL,
    password character varying(32) NOT NULL,
    login_token character varying(512)
);


ALTER TABLE public."stockInfoScraper_user" OWNER TO postgres;

--
-- Name: stockInfoScraper_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."stockInfoScraper_user_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."stockInfoScraper_user_id_seq" OWNER TO postgres;

--
-- Name: stockInfoScraper_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."stockInfoScraper_user_id_seq" OWNED BY public."stockInfoScraper_user".id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: stockInfoScraper_cash_dividend_record id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."stockInfoScraper_cash_dividend_record" ALTER COLUMN id SET DEFAULT nextval('public."stockInfoScraper_cash_dividend_record_id_seq"'::regclass);


--
-- Name: stockInfoScraper_stock_info id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."stockInfoScraper_stock_info" ALTER COLUMN id SET DEFAULT nextval('public."stockInfoScraper_stock_info_id_seq"'::regclass);


--
-- Name: stockInfoScraper_stock_memo id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."stockInfoScraper_stock_memo" ALTER COLUMN id SET DEFAULT nextval('public."stockInfoScraper_stock_memo_id_seq"'::regclass);


--
-- Name: stockInfoScraper_trade_plan id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."stockInfoScraper_trade_plan" ALTER COLUMN id SET DEFAULT nextval('public."stockInfoScraper_trade_plan_id_seq"'::regclass);


--
-- Name: stockInfoScraper_trade_record id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."stockInfoScraper_trade_record" ALTER COLUMN id SET DEFAULT nextval('public."stockInfoScraper_trade_record_id_seq"'::regclass);


--
-- Name: stockInfoScraper_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."stockInfoScraper_user" ALTER COLUMN id SET DEFAULT nextval('public."stockInfoScraper_user_id_seq"'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add stock info	7	add_stockinfo
26	Can change stock info	7	change_stockinfo
27	Can delete stock info	7	delete_stockinfo
28	Can view stock info	7	view_stockinfo
29	Can add trade record	8	add_traderecord
30	Can change trade record	8	change_traderecord
31	Can delete trade record	8	delete_traderecord
32	Can view trade record	8	view_traderecord
33	Can add cash dividend record	9	add_cashdividendrecord
34	Can change cash dividend record	9	change_cashdividendrecord
35	Can delete cash dividend record	9	delete_cashdividendrecord
36	Can view cash dividend record	9	view_cashdividendrecord
37	Can add stock memo	10	add_stockmemo
38	Can change stock memo	10	change_stockmemo
39	Can delete stock memo	10	delete_stockmemo
40	Can view stock memo	10	view_stockmemo
41	Can add trade plan	11	add_tradeplan
42	Can change trade plan	11	change_tradeplan
43	Can delete trade plan	11	delete_tradeplan
44	Can view trade plan	11	view_tradeplan
45	Can add user	12	add_user
46	Can change user	12	change_user
47	Can delete user	12	delete_user
48	Can view user	12	view_user
49	Can add cash_dividend_record	9	add_cash_dividend_record
50	Can change cash_dividend_record	9	change_cash_dividend_record
51	Can delete cash_dividend_record	9	delete_cash_dividend_record
52	Can view cash_dividend_record	9	view_cash_dividend_record
53	Can add stock_info	7	add_stock_info
54	Can change stock_info	7	change_stock_info
55	Can delete stock_info	7	delete_stock_info
56	Can view stock_info	7	view_stock_info
57	Can add stock_memo	10	add_stock_memo
58	Can change stock_memo	10	change_stock_memo
59	Can delete stock_memo	10	delete_stock_memo
60	Can view stock_memo	10	view_stock_memo
61	Can add trade_plan	11	add_trade_plan
62	Can change trade_plan	11	change_trade_plan
63	Can delete trade_plan	11	delete_trade_plan
64	Can view trade_plan	11	view_trade_plan
65	Can add trade_record	8	add_trade_record
66	Can change trade_record	8	change_trade_record
67	Can delete trade_record	8	delete_trade_record
68	Can view trade_record	8	view_trade_record
69	Can add company	13	add_company
70	Can change company	13	change_company
71	Can delete company	13	delete_company
72	Can view company	13	view_company
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$180000$S6osIkFPRe6K$06FMcyyS5Z/gKz3NWoNVQtV+X0W7xXryCe8yMRxSHU4=	2021-10-15 13:09:03.264064+08	t	Jamison			106208004@g.nccu.edu.tw	t	t	2021-09-25 12:02:21.334593+08
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2021-10-08 17:34:47.508778+08	1	TradePlan object (1)	1	[{"added": {}}]	11	1
2	2021-10-08 17:34:57.661998+08	2	TradePlan object (2)	1	[{"added": {}}]	11	1
3	2021-10-08 17:35:30.200868+08	3	TradePlan object (3)	1	[{"added": {}}]	11	1
4	2021-10-08 20:38:44.459623+08	4	TradePlan object (4)	1	[{"added": {}}]	11	1
5	2021-10-08 20:38:56.345415+08	5	TradePlan object (5)	1	[{"added": {}}]	11	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
9	stockInfoScraper	cash_dividend_record
7	stockInfoScraper	stock_info
10	stockInfoScraper	stock_memo
11	stockInfoScraper	trade_plan
8	stockInfoScraper	trade_record
12	stockInfoScraper	user
13	stockInfoScraper	company
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2021-09-25 11:59:59.5424+08
2	auth	0001_initial	2021-09-25 11:59:59.592926+08
3	admin	0001_initial	2021-09-25 11:59:59.668414+08
4	admin	0002_logentry_remove_auto_add	2021-09-25 11:59:59.68896+08
5	admin	0003_logentry_add_action_flag_choices	2021-09-25 11:59:59.700004+08
6	contenttypes	0002_remove_content_type_name	2021-09-25 11:59:59.719074+08
7	auth	0002_alter_permission_name_max_length	2021-09-25 11:59:59.728186+08
8	auth	0003_alter_user_email_max_length	2021-09-25 11:59:59.741032+08
9	auth	0004_alter_user_username_opts	2021-09-25 11:59:59.751615+08
10	auth	0005_alter_user_last_login_null	2021-09-25 11:59:59.763534+08
11	auth	0006_require_contenttypes_0002	2021-09-25 11:59:59.768216+08
12	auth	0007_alter_validators_add_error_messages	2021-09-25 11:59:59.777904+08
13	auth	0008_alter_user_username_max_length	2021-09-25 11:59:59.793635+08
14	auth	0009_alter_user_last_name_max_length	2021-09-25 11:59:59.807439+08
15	auth	0010_alter_group_name_max_length	2021-09-25 11:59:59.819539+08
16	auth	0011_update_proxy_permissions	2021-09-25 11:59:59.829377+08
17	sessions	0001_initial	2021-09-25 11:59:59.841936+08
18	stockInfoScraper	0001_initial	2021-09-25 11:59:59.865823+08
19	stockInfoScraper	0002_auto_20210714_0228	2021-09-25 11:59:59.877623+08
20	stockInfoScraper	0003_auto_20210714_1359	2021-09-25 11:59:59.885296+08
21	stockInfoScraper	0004_cashdividendrecord	2021-09-25 11:59:59.89713+08
22	stockInfoScraper	0005_stockmemo_tradeplan	2021-10-08 01:34:41.220479+08
23	stockInfoScraper	0006_auto_20211214_0621	2021-12-14 06:47:00.589302+08
24	stockInfoScraper	0007_auto_20211214_0650	2021-12-14 06:53:02.690725+08
25	auth	0012_alter_user_first_name_max_length	2022-02-21 19:19:30.183783+08
26	stockInfoScraper	0008_user	2022-02-21 19:19:30.212787+08
27	stockInfoScraper	0009_auto_20220221_1550	2022-02-21 19:19:30.276783+08
28	stockInfoScraper	0010_auto_20220221_1620	2022-02-21 19:19:30.307783+08
29	stockInfoScraper	0011_auto_20220221_1913	2022-02-21 19:19:30.323784+08
30	stockInfoScraper	0012_auto_20220221_1938	2022-02-21 19:46:14.624582+08
31	stockInfoScraper	0013_trade_plan_company	2022-02-21 20:08:28.838444+08
32	stockInfoScraper	0014_auto_20220221_2013	2022-02-21 20:13:48.278018+08
33	stockInfoScraper	0015_auto_20220221_2023	2022-02-21 20:23:34.211749+08
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
udvg9ldh69drqbxm6jlj425h6l4dm7y7	MTg0NmU1NWY2ZmQ0YTY1ZmFlNTk0MDRjZDhlNjJhZWVmNTNmMzg2OTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjMzQ2ZmFkZWVjZDlkYmMzZTMyMDlkNzY2OTkzZjE3MTE0MzBlMTU3In0=	2021-10-09 12:02:47.382718+08
egfrj7a6jnch505omlbvzwo2vh3va749	MTg0NmU1NWY2ZmQ0YTY1ZmFlNTk0MDRjZDhlNjJhZWVmNTNmMzg2OTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjMzQ2ZmFkZWVjZDlkYmMzZTMyMDlkNzY2OTkzZjE3MTE0MzBlMTU3In0=	2021-10-11 14:14:07.378056+08
nkvxho7cwjuvtgzlec051qtpxwz95o35	MTg0NmU1NWY2ZmQ0YTY1ZmFlNTk0MDRjZDhlNjJhZWVmNTNmMzg2OTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjMzQ2ZmFkZWVjZDlkYmMzZTMyMDlkNzY2OTkzZjE3MTE0MzBlMTU3In0=	2021-10-29 13:09:03.26938+08
\.


--
-- Data for Name: stockInfoScraper_company; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."stockInfoScraper_company" (stock_id, name) FROM stdin;
2412	中華電
2425	承啟
3045	台灣大
2356	英業達
2344	華邦電
1609	大亞
2345	智邦
2421	建準
1301	台塑
5227	立凱-KY
2603	長榮
6213	聯茂
2486	一詮
2454	聯發科
8454	富邦媒
2492	華新科
4938	和碩
0056	元大高股息
4721	美琪瑪
5347	世界
2545	皇翔
4960	誠美材
5386	青雲
5483	中美晶
6275	元山
2395	研華
2317	鴻海
2301	光寶科
3023	信邦
8069	元太
6285	啟碁
4919	新唐
2402	毅嘉
2204	中華
4739	康普
2449	京元電子
2615	萬海
2399	映泰
1605	華新
1303	南亞
6505	台塑化
2382	廣達
3189	景碩
3105	穩懋
6271	同欣電
1101	台泥
3665	貿聯-KY
3008	大立光
2327	國巨
2330	台積電
2201	裕隆
2379	瑞昱
00646	元大S&P500
00830	國泰費城半導體
3481	群創
8255	朋程
0050	元大台灣50
2885	元大金
2881	富邦金
3661	世芯-KY
2383	台光電
6488	環球晶
3707	漢磊
6415	矽力-KY
3231	緯創
3711	日月光投控
3003	健和興
8150	南茂
6770	力積電
3515	華擎
2426	鼎元
5871	中租-KY
2314	台揚
2303	聯電
4956	光鋐
3526	凡甲
6223	旺矽
6239	力成
3529	力旺
2377	微星
3491	昇達科
2393	億光
6104	創惟
2312	金寶
3437	榮創
6269	台郡
4961	天鈺
5243	乙盛-KY
2368	金像電
1102	亞泥
2357	華碩
2313	華通
3178	公準
6168	宏齊
3005	神基
6669	緯穎
6261	久元
2206	三陽工業
2308	台達電
2481	強茂
3034	聯詠
3645	達邁
6278	台表科
5269	祥碩
00662	富邦NASDAQ
4966	譜瑞-KY
3044	健鼎
2420	新巨
\.


--
-- Data for Name: stockInfoScraper_cash_dividend_record; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."stockInfoScraper_cash_dividend_record" (id, deal_time, cash_dividend, company_id) FROM stdin;
1	20210415	107	2330
2	20210715	165	2330
3	20210723	27	2301
4	20210729	175	2454
5	20210729	125	4938
6	20210730	260	3105
7	20210812	331	2308
8	20210819	744	2382
9	20210820	478	2317
10	20210820	56	6271
11	20210825	11	0050
12	20210825	60	2204
13	20210831	95	2402
14	20210910	12	2301
18	20211007	18	2379
21	20220210	54	6488
22	20220217	16	0050
\.


--
-- Data for Name: stockInfoScraper_stock_info; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."stockInfoScraper_stock_info" (id, date, trade_type, quantity, open_price, close_price, highest_price, lowest_price, fluct_price, fluct_rate, company_id) FROM stdin;
6	20210924	tse	81	25.7	25.4	25.7	25.2	0.1	0	2425
9	20210924	tse	17997	25.8	25.75	25.9	25.65	0.25	0.01	2356
14	20210924	tse	21894	27.3	27.35	27.5	27	0.4	0.01	2344
30	20210924	tse	3189	25.35	25.2	25.45	25.15	0	0	1609
24	20210925	tse	969	271	274.5	276	271	3.5	0.01	2345
56	20211125	tse	6314	47.2	46	47.3	45.3	0.45	0.01	2421
29	20211102	tse	11751	107.5	106.5	108.5	106	-0.5	0	1301
20	20211027	otc	11874	37.5	38.9	38.9	36.95	3.5	0.1	5227
64	20211121	tse	129372	120	117	122	116	-2	-0.02	2603
21	20211121	tse	4547	127.5	125	128	125	-2.5	-0.02	6213
45	20211114	tse	25837	58.4	60.8	61.5	58.1	2.8	0.05	2486
49	20211122	tse	348	1665	1640	1690	1635	-60	-0.04	8454
22	20210925	tse	1249	166.5	166.5	168.5	166.5	1	0.01	2492
19	20210925	tse	10766	66.6	67.1	67.8	66.6	1	0.02	4938
11	20210925	tse	10968	33.26	33.3	33.39	33.22	0.22	0.01	0056
28	20210925	otc	8463	115.5	116	120	115	1.5	0.01	4721
67	20211208	otc	8227	164	159	165	158.5	-3	-0.02	5347
57	20211109	tse	433	38.6	38.5	38.7	38.3	0	0	2545
51	20211024	tse	2577	11.35	11.4	11.45	11.25	0.05	0	4960
10	20211018	otc	2447	45	46.5	46.5	44.2	4.2	0.1	5386
48	20211024	otc	3670	180.5	179	182.5	178.5	-1.5	-0.01	5483
18	20211108	otc	429	31.1	31.55	31.55	31.1	0.55	0.02	6275
7	20211117	tse	31673	108.5	107	108.5	106.5	-1	-0.01	2317
27	20211121	tse	4655	61.7	61.6	61.9	61.1	-0.1	0	2301
46	20211125	tse	305	258	260	261.5	257	2	0.01	3023
52	20211125	otc	19055	121	124	125	119	2.5	0.02	8069
58	20211201	tse	1549	74.1	74.2	74.4	73.1	-0.1	0	6285
69	20211202	tse	35517	161	152	161.5	151	-10.5	-0.06	4919
31	20210925	tse	393	16.25	16.3	16.4	16.15	0.2	0.01	2402
33	20210925	tse	1732	74.4	73.5	74.9	72.7	-0.6	-0.01	2204
34	20210925	tse	3802	109.5	111	113.5	109	2.5	0.02	4739
39	20210925	tse	48241	210	215	217.5	209	7.5	0.04	2615
59	20211108	tse	32978	23.15	25.3	25.3	23.15	2.3	0.1	2399
50	20211024	tse	13297	26.85	25.7	26.85	25.65	-1.3	-0.05	1605
54	20211027	tse	8199	88.4	87.9	89.4	87.7	-0.9	-0.01	1303
37	20211019	tse	4872	106	104.5	106	104	-0.5	0	6505
25	20220115	tse	8268	92.2	92.5	92.5	91.1	0.3	0.0033	2382
41	20220105	tse	10241	238	230	240.5	228	-5.5	-0.0234	3189
23	20220210	otc	2795	342	341	342.5	335.5	-3	-0.0087	3105
35	20220221	tse	750	278.5	280	281.5	275.5	0.5	0.0018	6271
44	20220124	tse	5436	47.1	47.15	47.3	47	-0.25	-0.0053	1101
13	20220106	tse	1242	2600	2585	2645	2570	-25	-0.0096	3008
60	20220208	tse	2740	455	456.5	462.5	455	2.5	0.0055	2327
2	20220118	tse	43322	678	662	681	662	-21	-0.0307	2330
15	20220125	tse	851	40.8	40.95	41.05	40.6	0.15	0.0037	2201
3	20220112	tse	2265	553	543	553	539	0	0	2379
74	20220221	tse	789	37.39	37.54	37.58	37.3	-0.31	-0.0082	00646
72	20220221	tse	12506	27.45	27.58	27.6	27.36	-0.46	-0.0164	00830
12	20220125	tse	30788	16.7	16.85	16.95	16.7	0.2	0.012	3481
47	20220221	otc	2096	236	232	240.5	232	-5.5	-0.0232	8255
63	20211207	tse	34649	25.05	25.05	25.1	24.9	0.1	0	2885
40	20211114	tse	14924	73.5	73.3	73.6	73.1	0.3	0	2881
71	20211130	tse	3496	1045	1020	1055	967	10	0.01	3661
66	20211208	tse	2648	280	280	283	276	2	0.01	2383
62	20220116	otc	1003	824	841	841	824	-19	-0.0221	6488
107	20220220	otc	7303	116	116.5	116.5	111.5	-1	-0.0085	3707
75	20211214	tse	404	4360	4265	4495	4235	-235	-0.0522	6415
91	20220123	tse	23885	31.4	31.25	31.4	30.9	-0.25	-0.0079	3231
68	20220120	tse	9023	104	105.5	106	103.5	0.5	0.0048	3711
32	20211228	tse	1049	93	92.5	93.7	92.5	0.4	0.0043	3003
80	20220113	tse	53931	50.9	51.3	52.7	50.7	1.6	0.0322	8150
5	20210924	tse	3328	111.5	111.5	111.5	111	0.5	0	2412
8	20210924	tse	1457	99.9	99.8	100	99.3	0.2	0	3045
26	20210925	tse	4817	918	920	923	912	5	0.01	2454
55	20211125	tse	368	390	389.5	391	383	3.5	0.01	2395
36	20210925	tse	7819	42.85	42.55	43.1	42.55	0.05	0	2449
17	20220113	tse	1917	263	254	264	254	-9	-0.0342	3665
1	20220221	tse	4443	143.45	143.8	143.85	142.8	-0.3	-0.0021	0050
88	20220210	tse	12812	65.6	65	65.9	64.3	-1.2	-0.0181	6770
81	20211222	tse	1311	271	270	273	266.5	1.5	0.0056	3515
82	20211222	tse	2281	28.3	28	28.6	28	-0.15	-0.0053	2426
42	20220105	tse	2236	260.5	268.5	269.5	259.5	4.5	0.017	5871
79	20211219	tse	3703	77.3	75	77.3	74	-2.8	-0.036	2314
4	20211226	tse	75040	64.3	64.3	64.9	64.1	0.4	0.0063	2303
95	20220208	tse	636	24.85	25.35	25.45	24.85	0.45	0.0181	4956
100	20220208	otc	4677	206.5	210	211	202	2.5	0.012	3526
93	20220120	otc	4014	113.5	112	114.5	111	-3	-0.0261	6223
92	20220117	tse	2938	98.5	99.2	99.2	98.3	0.7	0.0071	6239
77	20211220	otc	447	2030	1890	2030	1880	-145	-0.0713	3529
76	20211216	tse	4904	165	165.5	169	164.5	3.5	0.0216	2377
84	20211226	otc	1693	213.5	211	217	210	-2.5	-0.0117	3491
43	20220220	tse	2777	52.7	52.7	52.7	51.9	-0.3	-0.0057	2393
103	20220208	otc	33820	214	221	222	213.5	7.5	0.0351	6104
104	20220208	tse	15366	15.5	15.95	16	15.35	0.4	0.0257	2312
86	20220111	tse	2466	26	25.5	26.6	25.45	-0.15	-0.0058	3437
70	20220111	tse	1176	102.5	100.5	102.5	100.5	-1	-0.0099	6269
89	20220111	tse	5147	241.5	235	243.5	233.5	-10.5	-0.0428	4961
83	20220105	tse	8594	67.3	68.5	70	66.6	1.7	0.0254	5243
98	20220221	tse	23343	83	81.5	84	81.5	-0.8	-0.0097	2368
97	20220221	tse	4134	45.5	45.95	45.95	45.2	0.2	0.0044	1102
65	20220115	tse	2095	377	377.5	377.5	372	-0.5	-0.0013	2357
96	20220221	tse	28375	48.6	47.95	49	47.6	-0.7	-0.0144	2313
73	20220109	otc	208	73.3	71.3	73.5	70.7	-1.8	-0.0246	3178
87	20220102	tse	1422	27.85	27.4	27.9	27.25	-0.2	-0.0072	6168
105	20220221	tse	2002	58.2	59.5	59.5	58.2	0.9	0.0154	3005
38	20220221	tse	190	1030	1005	1030	1005	-40	-0.0383	6669
85	20220109	otc	905	82.8	81.5	82.9	81.2	-0.9	-0.0109	6261
90	20220109	tse	1048	27.3	27.35	27.55	27.2	0.2	0.0074	2206
16	20220208	tse	9557	271	269	272.5	269	-2	-0.0074	2308
78	20220105	tse	13865	103.5	102	103.5	99.9	-2	-0.0192	2481
94	20220123	tse	4012	498.5	494.5	500	492	-8.5	-0.0169	3034
108	20220216	tse	1967	46.65	47.75	47.95	46.5	1.25	0.0269	3645
106	20220220	tse	7713	126	126	126	120.5	-1	-0.0079	6278
53	20220221	tse	349	1845	1800	1845	1795	-35	-0.0191	5269
61	20220221	tse	1072	50.35	50.6	50.65	50.15	-0.75	-0.0146	00662
101	20220208	otc	773	1920	1910	1955	1900	25	0.0133	4966
102	20220221	tse	536	129	129	130.5	129	-1.5	-0.0115	3044
99	20220221	tse	379	43.35	42.95	43.35	42.85	-0.4	-0.0092	2420
\.


--
-- Data for Name: stockInfoScraper_stock_memo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."stockInfoScraper_stock_memo" (id, main_goods_or_services, strategy_used, my_note, company_id) FROM stdin;
25	電子紙顯示器	MAisGod	max:$8,000，跌幅逾高點之5%則停損	8069
11	金融	CRG	剩餘現金 = $9456	2881
32	原油	BHmixGrid		1301
53	光學鏡頭、光電零組件	MAisGod	max:$8,000，跌破MA5則減碼，跌破MA10則停損	3008
31	發電、輸電、配電機械製造業、散熱風扇	MAisGod	max:$8,000，跌幅逾高點之5%則停損	2421
23	鋼線鋼纜、特殊鋼之產銷	波段單投	跌破MA10則出場	1605
34	營建	BH		2545
20	比特幣概念股	波段單投		5386
54	矽智財	波段單投	max:$8,000，突破大量高點則加碼	3529
35	Wi-Fi AP(96%)、衛星通訊&攜帶裝置通訊(4%)	BHmixGrid	突破前高則策略改為MAisGod	6285
36	電腦主機板、虛擬貨幣概念股	MAisGod	Cash: 10,000，跌破MA65則出場	2399
64	汽機車零件生產、引擎／模治具內外銷	BHmixGrid	max:$8,000	2206
21	一般商品批發零售	MAisGod	max:$8,000，跌破MA130則停損	8454
17	連接線組裝及連接器製造與代理	MAisGod	max:$10,000，跌破MA10則停損	3023
43	銅箔基板	MAisGod	max:$10,000，跌破MA10則停損	2383
30	iPhone代工、電動車	MAisGod	max:10,000，跌破前低則停損	2317
2	mini LED 概念股	RegSlopeTrend，\nmax:$10,000	基本面:年EPS為4.5~5.2，換算本益比為10~12；\n技術面:跌破上升趨勢區間下緣則停損，突破大量高點則加碼；\n籌碼面:外資賣	2393
19	半導體晶圓(86%)、太陽能產品(13%)	MAisGod	max cash: $10000\n跌破前低則賣出，突破MA65則加碼	5483
52	主機板、顯示卡	MAisGod	max:$10,000，跌破前低則停損。	2377
28	塑膠加工品、塑膠原料、電子材料、聚酯纖維製品、染整加工、配電盤		價格波動與台灣50相似但相對劣勢且風險較大	1303
24	磷酸系電池正極材料研發	MAisGod	max cash:$10,000；突破前高則加碼，跌破前前低則出場	5227
42	主機板、板卡、手機	MAisGod，\nmax:$10,000	基本面:年EPS為56.7~59，換算本益比為6~7；\n技術面:跌破上升趨勢區間則停損；\n籌碼面:投信站在買方	2357
1	ABF載板	MAisGod	max:$10,000，跌破MA65則停損	3189
49	航太關鍵零組件、IC 封裝模具，Star Link 概念股	BH	max:$5,000	3178
29	散熱風扇、飲水機	MAisGod	跌破MA65時停損	6275
62	IC製造(成熟製程)	BHmixGrid	技術面:站回MA22則加碼；\n籌碼面:外資買	6770
3	LED導線架	BHmixGrid	max:$8,000，每除以1.025買入	2486
22	資訊及消費性電子(52.2%)、雲端及物聯網(29.1%)、光電(18.7%)	MAisGod	max:$6180，跌破MA22則停損	2301
4	銅箔基板(CCL)	BHmixGrid	最大投入金額：$10,000，每除以1.03買入一次，最多買入10次，已買入10次	6213
10	筆電、充電樁繼電器、網通設備	MAisGod	max:$10,000，跌幅逾近期高點的3%則停損	2382
46	IC製造	MAisGod	max:$10,000，跌破MA5則停損	4919
41	航運業	MAisGod	max:$8,000，跌破前低則停損	2603
15	電動車充電、端子	MAisGod	max:$8,000，跌破MA130則停損	3003
56	衛星通訊系統及器材	MAisGod	MAX:$7,000，跌破MA130則停損，突破MA22則加碼至$6,180	2314
26	工業測控產品、工業用電腦、嵌入式電腦卡	MAisGod	max:$10,000；跌破MA22則停損	2395
39	指數型ETF	BH，\nmax:$20,000	出現比平均成本更低價則加碼	00662
48	指數型ETF	BH，\nmax:$20,000		00830
12	指數型ETF	BH，\nmax:$10,000		0050
18	車用整流二極體	MAisGod，\nmax：$10,000	技術面:跌破MA22則停損，突破下降趨勢區間上緣則加碼；\n籌碼面:外資買;	8255
50	指數型 ETF	BH，\nmax:$20,000		00646
51	IC設計(電源管理)	MAisGod	max:$9,000，跌破前低則停損	6415
55	二極體(98.21%)、太陽能(1.79%)	MAisGod	Max:$10,000，跌破MA130則停損，突破前高則加碼	2481
40	金融			2885
13	IC製造（成熟製程）	BHmixGrid	max:$10,000，跌破MA130則停損	2303
44	IC製造(成熟製程)	MAisGod	max:$8,000，跌破MA22則停損	5347
63	電源管理IC設計、液晶顯示器驅動IC設計	BHmixGrid	max:$8,000	4961
58	模具、塑膠及五金製品之設計、研發、生產及銷售	MAisGod	max:$8,000，跌破MA255則停損	5243
27	高速介面控制晶片之設計	MAisGod，\nmax:$10,000	技術面:跌破MA65則停損，突破大量高點則加碼；\n籌碼面:外資、投信皆買	5269
16	IC製造(先進製程、成熟製程)	BH，\nmax:$8,000	基本面: 年EPS為23，換算本益比為28.5~30；\n籌碼面:外資投信皆站在買方	2330
45	IC封裝(47.3%)、IC測試(8.6%)、	RegSlopeTrend，\nmax:$12,000	基本面:年EPS為10~11，換算本益比為9.5~11；\n技術面:跌破上升趨勢區間則停損，突破MA225則加碼；\n籌碼面:外資站在買方	3711
60	LED晶粒	MAisGod	max:8,000，跌破MA65則停損，突破MA130則加碼。	3437
61	表面黏著發光二極體之生產與銷售	MAisGod	max:$8,000，跌破MA65則停損	6168
59	測試代工(58.5%)、切割挑揀代工(22.1%)、半導體及光電設備之研發(10%以下)	MAisGod	max:$8,000，跌破前波低點則停損，突破MA130則加碼。	6261
5	租賃業務、融資及應收帳款收買暨管理業務	MAisGod	max:$8,000，跌破MA10則停損	5871
66	驅動IC(69.7%，數位訊號處理、液晶顯示器)、SoC IC(30.1%)、	RegSlopeTrend，\nmax:$10,000	技術面:跌破MA255則停損，站上MA22則加碼；\n籌碼面:外資賣	3034
8	網路IC/多媒體IC設計；Wifi-6概念股	觀望	基本面: 年EPS為33~34，換算本益比為16~16.5；\n技術面: 處月季均線區間，reg22斜率為負；\n籌碼面: 投信正在賣	2379
47	銅箔基板、軟式印刷電路板(FPC)	MAisGod	max:$10,000，跌破前低則停損	6269
6	石化產業	BHmixGrid	最大投入金額：$15,000，首次投入比例：5%，首次買入價：$103，每除以1.025買入一次，最多買入10次，已買入3次，目前最低買入價：$97.5	6505
37	半導體研發、設計、製造(99.9%)；太陽能(0.06%)	MAisGod，\nmax: $10,000	基本面: 年EPS為29~30，換算本益比落在29~30；\n技術面: 目前有跳空缺口($853封閉)，封閉則停損；\n籌碼面: 與外資連動較高，目前外資投信皆站在買方	6488
68	超高亮度發光二極體光磊晶片及晶粒封裝模組	MAisGod，\nmax:$8,000	技術面:跌破MA65則停損;\n籌碼面:外資持股比例低(7%)	4956
75	高速訊號傳輸介面、顯示及觸控晶片之研發/設計/銷售	RegSlopeTrend	技術面:跌破上升趨勢區間下緣則停損	4966
57	IC封測(記憶體)	RegSlope，\nmax:$10,000	技術面:有跳空缺口(封閉於$49.7)，封閉缺口則停損；\n籌碼面:投信站買方	8150
14	電腦零組件研發生產；汽車/太陽能設備接線組研發、生產	MAisGod，\nmax:$8,000	技術面:跌破MA22則停損；\n籌碼面:外資連賣，投信連買	3665
67	探針卡測試方案、LED光電測試解決方案、先進半導體測試解決方案	RegSlopeTrend，\nmax:$10,000	技術面:突破MA255則加碼，跌破上升趨勢區間下緣則停損；\n籌碼面:外資、投信賣	6223
79	電路板表面黏著技術(LED上游供應鏈)	RegSlopeTrend，\nmax:$10,000	技術面:跌破上升趨勢區間下原則停損，突破前高則加碼，目前量縮；\n籌碼面:外資賣	6278
65	3C產品之設計與生產(95.67%)	RegSlopeTrend，\nmax:$10,000	技術面:跌破MA10則停損；\n籌碼面:外資、投信皆站在買方	3231
38	被動元件、天線、主動元件	RegSlopeTrend，\nmax:$10,000	基本面:年EPS為47~50.5，換算本益比為9.5~11；\n技術面:站上MA22則加碼，跌破上升趨勢區間下緣則停損。\n籌碼面:外資、投信皆賣	2327
73	電子連接器、高速傳輸連接線	RegSlopeTrend，\nmax:$8,000	籌碼面:投信買	3526
33	Cloud Infrastructure(多結點運算伺服器、儲存伺服器、GPU伺服器)、超大型資料中心	RegSlopeTrend，\nmax:$10,000	技術面:跌破前低則停損，有新高則持續加碼至$6,180；\n籌碼面:尚未明朗	6669
77	半導體零組件(SSD供應鏈)，電腦軟體程式設計、電腦資料處理	RegSlopeTrend	籌碼面:投信買	6104
7	交換式電源供應器(61%)、基礎設施(23.5%)、自動化(12.3%)	RegSlope，\nmax:$10,000	基本面:年EPS為10.4~10.9，換算本益比為25.5~27.5；\n技術面:跌破MA65則停損，站回MA22則加碼；\n籌碼面:與外資連動高，外資賣、投信買	2308
72	PCB(雙層/多層印刷電路板)，產品應用於伺服器、網通設備、筆電及車用電子	RegSlopeTrend，\nmax:$8,000	技術面:目前量縮，跌破上升趨勢區間下緣則停損，突破前高則加碼；\n籌碼面:外資賣、投信買	2368
78	SSD供應鏈、網通產品	MAisGod，\nmax:$8,000	技術面:跌破MA65則停損；\n籌碼面:外資買	2312
69	多層印刷電路板(PCB)，Starlink 概念股	RegSlopeTrend，\nmax:$12,000	技術面:跌破上升趨勢區間下緣則停損，突破前高則加碼，跌破MA10則減碼；\n籌碼面:外資、投信皆買	2313
113	功率半導體及類比積體電路之晶圓代工	搶反彈，\nmax:$3,000	技術面:跌破所有均線則停損，突破下降趨勢間上緣則加碼且策略改為RegSlopeTrend；\n籌碼面:尚未明朗	3707
9	微波元件、光電元件、晶片測試、第二／第三代半導體	BHmixGrid	基本面:年EPS為10.7~12.5，換算本益比為30~32；\n技術面:突破MA22則加碼;\n籌碼面:尚未明朗	3105
70	水泥	RegSlopeTrend，\nmax:$10,000	技術面:跌破上升趨勢區間下緣則停損，突破前高則加碼;\n籌碼面:外資買	1102
80	Lifi產品，強固型筆電及其他行動裝置	RegSlopeTrend，\nmax:$8,000	技術面:跌破MA10則減碼，跌破上升趨勢區間下緣則停損；\n籌碼面:尚未明朗	3005
74	陶瓷電路板(應用:航太、電動車、高功率LED、醫療)、影像產品、模組封裝	搶反彈，\nmax:$3,000	技術面:突破季均線則加碼且策略改為RegSlopeTrend，跌破前波低點則停損；\n籌碼面:尚未明朗	6271
71	交換式(利基型)電源供應器(63%，應用於高階伺服器、工業用電腦)、微動開關(37%)	搶反彈,\nmax:$3,000	技術面:跌破前波低點則停損，突破MA65則策略改為RegSlopeTrend；\n籌碼面:外資賣	2420
76	PCB(印刷電路板)，SSD供應鏈	RegSlopeTrend,\nmax:$8,000	技術面:跌破上升趨勢區間下緣則停損，突破前高則加碼；\n籌碼面:外資、投信皆買	3044
\.


--
-- Data for Name: stockInfoScraper_trade_plan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."stockInfoScraper_trade_plan" (id, plan_type, target_price, target_quantity, company_id) FROM stdin;
639	buy	1050	1	6669
638	buy	131	12	3044
537	sell	989	3	6669
543	sell	256.5	5	6271
526	sell	44.85	172	1102
629	sell	46	60	2313
518	sell	45.3	165	2313
616	buy	82.4	10	2368
631	sell	57.3	20	3005
606	sell	55.7	123	3005
557	sell	127	50	3044
564	sell	1760	3	5269
641	buy	238	6	8255
515	sell	75.8	37	2368
642	sell	220	6	8255
644	buy	50.6	14	00662
619	buy	37.54	19	00646
643	buy	27.58	26	00830
609	buy	143.8	10	0050
626	buy	1870	1	5269
523	sell	42.3	57	2420
565	buy	287	11	6271
\.


--
-- Data for Name: stockInfoScraper_trade_record; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."stockInfoScraper_trade_record" (id, deal_time, deal_price, deal_quantity, handling_fee, company_id) FROM stdin;
85	20210423	26.5	38	1	3481
1	20210218	140	20	4	0050
3	20210218	109	20	3	2412
4	20210218	660	5	5	2330
5	20210222	28.6	100	4	2425
6	20210222	654	10	9	2330
8	20210224	630	5	4	2330
9	20210226	615	5	4	2330
10	20210304	605	5	4	2330
11	20210304	609	5	4	2330
12	20210309	590	5	4	2330
13	20210318	129	10	2	2317
15	20210323	26.6	100	4	2356
16	20210324	37.5	-100	17	2425
17	20210324	584	5	4	2330
18	20210325	575	3	2	2330
19	20210331	135	8	2	0050
20	20210331	124	9	2	2317
22	20210331	125.5	8	1	2317
23	20210331	126	8	1	2317
24	20210401	122	9	2	2317
25	20210401	85	12	1	5386
26	20210406	83.4	12	1	5386
27	20210406	34.81	100	5	0056
28	20210406	112	-20	10	2412
29	20210407	23.45	43	1	3481
31	20210407	3050	1	4	3008
32	20210408	3100	1	4	3008
33	20210408	77	13	1	5386
34	20210409	33.6	30	1	2344
35	20210412	45.75	22	1	2201
36	20210412	299	4	2	2308
37	20210412	34.75	29	1	2344
39	20210412	25.4	40	1	3481
40	20210413	25	40	1	3481
41	20210413	25.2	40	1	3481
42	20210413	294	4	2	2308
43	20210413	25.7	-43	5	3481
44	20210413	35.5	15	1	2344
45	20210413	46.5	22	1	2201
47	20210414	22.95	44	1	3481
48	20210414	24	42	1	3481
49	20210414	98.9	-50	22	3045
50	20210415	46	22	1	2201
51	20210416	269	4	2	3665
52	20210416	45.8	22	1	2201
54	20210416	73.4	14	1	4938
55	20210416	11.6	87	1	5227
56	20210416	606	2	2	2330
57	20210416	3140	-2	28	3008
58	20210419	122.5	9	2	2317
59	20210419	68.2	29	3	5386
60	20210419	140	8	2	6213
62	20210419	382.5	3	2	3105
63	20210419	274.5	4	2	2345
64	20210419	24.3	41	1	3481
65	20210419	268	4	2	3665
66	20210420	27.35	-100	12	2356
67	20210420	255	4	1	2492
68	20210420	381	3	2	3105
70	20210420	600	2	2	2330
71	20210421	249.5	4	1	2492
72	20210421	27.6	-285	35	3481
73	20210421	376	3	2	3105
74	20210421	595	2	2	2330
75	20210422	34	30	1	2344
77	20210422	370	3	2	3105
78	20210422	27.6	36	1	3481
79	20210422	118	9	2	2317
80	20210422	297	4	2	2308
81	20210422	66	16	2	5386
82	20210422	28.6	35	1	3481
83	20210423	147.5	-8	5	6213
87	20210426	37.8	-104	17	2344
88	20210426	36	-30	5	6275
89	20210426	98.2	11	2	2382
90	20210426	44.5	23	1	2201
91	20210427	45.5	22	1	2201
92	20210427	542	2	2	2379
93	20210427	29.9	-109	14	3481
95	20210427	44.85	23	1	2201
96	20210427	99	10	1	2382
97	20210428	369.5	3	2	3105
99	20210428	1065	1	2	2454
100	20210428	533	2	2	2379
101	20210428	118	9	2	2317
102	20210429	45.15	23	1	2201
103	20210429	264	4	2	3665
105	20210503	97	10	1	2382
106	20210503	44	23	1	2201
107	20210503	233	4	1	2492
108	20210503	62	16	1	5386
109	20210503	527	2	2	2379
110	20210503	308	-4	5	2345
111	20210503	1140	-1	5	2454
113	20210503	344.5	3	1	3105
114	20210503	141.5	7	1	6213
115	20210503	590	2	2	2330
116	20210503	114	18	3	2317
117	20210504	56	17	1	5386
118	20210504	224	4	1	2492
120	20210504	332.5	3	1	3105
121	20210504	250	4	1	3665
122	20210504	94.9	10	1	2382
123	20210504	41.5	24	1	2201
124	20210504	110	9	1	2317
125	20210504	502	2	1	2379
126	20210505	290	4	2	2308
128	20210505	1070	1	2	2454
129	20210506	280	4	2	2308
130	20210506	65.4	15	1	2301
131	20210507	64	11	1	4721
132	20210510	990	1	1	2454
133	20210511	134	6	1	0050
134	20210511	484	2	1	2379
136	20210512	264	3	1	2308
137	20210512	89.9	8	1	2382
138	20210512	105	7	1	2317
139	20210512	132	6	1	0050
140	20210512	565	3	2	2330
141	20210513	554	2	2	2330
143	20210514	129	6	1	0050
144	20210514	121	6	1	6213
145	20210514	458	2	1	2379
146	20210514	207	4	1	2492
147	20210517	126	6	1	0050
148	20210517	37	20	1	2201
150	20210517	68.9	11	1	4938
151	20210517	299	3	1	3105
152	20210517	184	4	1	2492
153	20210517	100	8	1	2317
154	20210518	38.4	19	1	2201
155	20210518	89.5	16	2	2382
156	20210518	563	2	2	2330
157	20210518	37.5	19	1	2201
159	20210518	90	16	2	2382
160	20210518	20.65	35	1	3481
161	20210519	275	3	1	2308
162	20210519	39	19	1	2201
163	20210519	90.3	8	1	2382
164	20210520	89	8	1	2382
165	20210520	21.8	-35	3	3481
167	20210521	30	24	1	2425
168	20210524	99	8	1	1301
169	20210524	25.25	1	1	1609
170	20210524	25.3	27	1	1609
171	20210525	470	2	1	2379
172	20210525	960	1	1	2454
173	20210525	327.5	3	1	3105
175	20210601	31.55	-27	4	2425
176	20210601	39.5	18	1	2201
177	20210602	240	3	1	3665
178	20210602	494	2	1	2379
179	20210607	106	-8	4	1301
180	20210608	295.5	3	1	2308
182	20210617	66.3	-15	4	2301
183	20210618	18.85	38	1	2402
184	20210618	74.6	-35	12	4938
185	20210621	65	11	1	2301
186	20210621	81	9	1	3003
187	20210621	74.5	10	1	4938
188	20210622	137	-10	6	6213
190	20210622	74.6	10	1	4938
191	20210622	50.5	-127	28	5386
192	20210623	85.4	2	1	3003
193	20210623	85.5	7	1	3003
195	20210623	137.5	-10	6	6213
196	20210624	74.7	10	1	4938
198	20210624	19.65	6	1	2402
199	20210624	19.7	30	1	2402
200	20210625	87.5	8	1	2382
201	20210625	77	10	1	2204
202	20210625	88.6	8	1	3003
203	20210625	72.6	-11	4	4721
205	20210628	588	2	2	2330
206	20210628	34.93	21	1	0056
207	20210628	10.94	-178	9	5227
208	20210629	104	7	1	4739
209	20210630	34.99	20	1	0056
210	20210630	301	3	1	2308
211	20210630	58	13	1	2301
214	20210705	35.52	20	1	0056
215	20210705	302	3	1	2308
216	20210706	35.95	20	1	0056
217	20210707	301.5	3	1	2308
218	20210707	267.5	-16	19	3665
219	20210708	19.8	-38	3	2402
220	20210708	57.7	-24	6	2301
222	20210709	363.5	2	1	3105
223	20210709	295	3	1	2308
224	20210709	90	8	1	3003
213	20210702	35.15	20	1	0056
225	20210712	90.7	8	1	2382
226	20210712	297.5	3	1	2308
228	20210713	91.5	8	1	2382
229	20210713	20.8	34	1	2402
230	20210713	97.5	8	1	3003
231	20210713	937	-5	21	2454
232	20210713	100	7	1	3003
233	20210713	20.8	34	1	2402
234	20210714	41.65	-284	52	2201
236	20210714	392	-2	3	3105
237	20210714	391	-2	3	3105
238	20210714	390.5	-2	3	3105
239	20210714	390	-2	3	3105
240	20210714	388	-2	3	3105
241	20210714	387	-2	3	3105
242	20210714	90.4	8	1	2382
244	20210714	319	2	1	2308
245	20210714	41.5	-100	18	2201
246	20210714	317.5	3	1	2308
247	20210715	90.4	8	1	2382
248	20210715	326	3	1	2308
249	20210715	247	3	1	6271
251	20210716	320.5	3	1	2308
252	20210719	20.25	35	1	2402
253	20210719	45.6	16	1	2449
254	20210719	563	-2	5	2379
255	20210719	561	-2	5	2379
256	20210719	559	-2	5	2379
257	20210719	557	-2	5	2379
258	20210719	556	-2	5	2379
260	20210720	376	2	1	3105
261	20210720	207	4	1	2492
262	20210720	300	3	1	2308
263	20210721	248.5	3	1	6271
265	20210721	572	-2	5	2379
266	20210721	569	-4	10	2379
268	20210722	304	3	1	2308
269	20210722	46.95	15	1	2449
270	20210722	264.5	3	1	6271
271	20210722	578	2	2	2379
272	20210722	310.5	3	1	2308
273	20210723	90	8	1	2382
274	20210726	99	8	1	6505
276	20210726	581	4	3	2379
277	20210726	81.2	9	1	2382
278	20210727	616	-2	5	2379
279	20210727	615	-2	5	2379
280	20210727	613	-4	11	2379
281	20210729	344	2	1	3105
283	20210730	78	9	1	2382
284	20210802	63.9	11	1	2301
285	20210802	339	2	1	3105
286	20210802	286.5	3	1	2308
287	20210802	98.6	8	1	6505
289	20210803	48	15	1	2449
290	20210804	76.9	9	1	2382
291	20210804	97.9	8	1	6505
293	20210805	350	2	1	3105
294	20210806	96.5	8	1	6505
295	20210806	18.85	38	1	2402
296	20210806	71.4	10	1	2204
298	20210808	870	2	2	6669
299	20210809	234	-12	12	6271
300	20210809	77.5	10	1	2382
301	20210809	925	1	1	6669
303	20210809	49.8	15	1	2449
304	20210810	525	2	1	2379
305	20210810	590	2	2	2330
311	20210811	895	1	1	6669
312	20210811	572	2	2	2379
313	20210811	910	1	1	6669
314	20210811	134	38	7	6213
315	20210812	97.1	8	1	6505
316	20210813	45.75	-74	15	2449
318	20210813	109.5	-15	7	2317
320	20210817	273	18	7	2345
321	20210817	267	4	2	2308
322	20210817	43.5	-32	6	2449
323	20210817	66	-31	9	2204
324	20210818	282	-18	22	2345
325	20210818	58.2	-11	3	2301
327	20210819	881	-2	8	6669
328	20210820	540	-2	5	2379
329	20210820	929	-1	4	6669
330	20210820	934	-1	4	6669
331	20210820	936	-1	4	6669
332	20210823	58.1	172	14	2303
333	20210823	92	8	1	6505
335	20210823	244	3	1	2615
336	20210823	243	6	2	2615
337	20210823	266.5	3	1	6271
338	20210823	262	3	1	6271
339	20210823	92.6	8	1	3003
340	20210823	93.3	8	1	3003
341	20210824	102	-16	7	3003
343	20210825	327	3	1	3105
344	20210825	270	3	1	6271
345	20210825	80.5	124	14	2881
346	20210825	77.3	-163	56	2382
347	20210826	275.5	3	1	6271
348	20210827	259	-15	17	2615
350	20210831	257	-12	14	6271
352	20210901	64	-11	3	2303
353	20210916	259.5	3	1	2308
354	20210916	208	48	14	3189
355	20210916	319	3	1	3105
358	20210917	260	-54	62	5871
360	20210922	93.7	8	1	6505
361	20210922	244.5	3	1	5871
362	20210922	498	4	3	2379
363	20210922	158	5	1	6213
364	20210922	253.5	4	1	2308
365	20210922	76.3	10	1	2382
366	20210922	77	14	2	2881
367	20210923	257	-3	3	5871
370	20210923	92.9	54	7	3003
372	20210923	78.8	9	1	2382
374	20210923	50.1	14	1	2393
375	20210924	256.5	3	1	5871
377	20210924	510	3	2	2379
378	20210927	160	5	1	6213
379	20210927	248.5	3	1	5871
381	20210928	150	7	1	6213
288	20210802	92	-67	26	3003
309	20210810	17.8	-150	11	2402
308	20210810	17.75	-98	7	2402
307	20210810	109.5	-107	51	2317
306	20210810	33.81	-223	17	0056
351	20210901	579	-2	4	2379
356	20210916	280	54	21	5871
357	20210917	159.5	-38	26	6213
371	20210923	167	-5	3	6213
369	20210923	78	53	5	2881
376	20210924	508	4	2	2379
382	20210928	201.5	-48	42	3189
383	20210928	89.3	-54	20	3003
385	20210929	198.5	3	1	3189
387	20210929	76.8	9	1	2382
388	20210929	48.55	15	1	2393
390	20210929	239	2	1	5871
475	20211020	262	24	9	3665
394	20210930	100	7	1	6505
395	20211001	479	4	3	2379
396	20211001	141	12	2	6213
397	20211001	46.9	10	1	2393
476	20211020	26.6	188	7	1605
477	20211020	241	12	4	5871
451	20211018	216	23	7	8255
452	20211018	59.5	64	5	2303
453	20211018	79.2	9	1	2382
454	20211018	45.15	2	1	5386
455	20211018	45.5	100	6	5386
456	20211018	246	-3	3	2308
409	20211004	97.5	5	1	6505
411	20211005	229.5	3	1	5871
373	20210923	78.6	-29	9	2382
389	20210929	103.5	-64	28	6505
386	20210929	303	6	2	3105
391	20210929	145	9	1	6213
412	20211007	132.5	16	3	6213
414	20211007	54.8	92	7	2486
415	20211007	211	-7	7	3189
416	20211008	217.5	4	1	3189
417	20211008	46.2	16	1	2393
418	20211012	132.45	20	4	0050
419	20211012	59.2	-161	42	2303
420	20211012	45	26	2	2393
422	20211012	88.5	170	21	3003
423	20211013	455.5	3	2	2379
424	20211013	57	13	1	2303
425	20211013	210	3	1	3189
426	20211013	203	4	1	3189
427	20211013	127	19	3	6213
429	20211014	57	16	1	2303
430	20211015	236.5	-3	3	2308
431	20211015	59.5	12	1	2303
432	20211015	238.5	-3	3	2308
433	20211015	75.1	10	1	2881
434	20211015	259.5	-32	37	3665
435	20211015	594	5	4	2330
437	20211015	260	3	1	3665
438	20211015	240	-3	3	2308
439	20211015	78.8	-18	6	2382
440	20211015	136	10	2	0050
441	20211015	241	-12	13	2308
442	20211015	78.7	38	4	2382
443	20211015	240	-8	8	2308
445	20211015	50.3	-92	20	2486
446	20211015	75.4	61	7	2881
458	20211019	48.25	-102	22	5386
478	20211021	305	-4	5	3105
459	20211019	230.5	-11	11	3189
460	20211019	252	-3	3	2308
462	20211019	238	26	9	3023
463	20211019	46.7	-81	17	2393
479	20211021	58.1	-29	7	2303
464	20211019	237.5	-23	24	8255
465	20211019	259.5	-3	3	2308
469	20211020	60.9	12	1	2301
470	20211020	305	-3	4	3105
472	20211020	79.4	16	2	2382
473	20211020	602	-5	13	2330
474	20211020	96.5	-8	3	3003
480	20211021	26.9	111	4	1605
482	20211022	74.5	-71	23	2881
483	20211022	305.5	-3	4	3105
484	20211022	245.5	-4	4	2308
490	20211025	97.9	-8	3	3003
494	20211025	25.35	-299	34	1605
489	20211025	179	-33	26	5483
488	20211025	86.1	21	3	8069
491	20211025	57.8	-76	19	2303
492	20211025	55.5	110	9	2486
495	20211025	267	-27	32	3665
496	20211026	35.4	-33	5	5227
497	20211026	250.5	7	2	5871
498	20211026	100.5	-7	3	3003
499	20211026	91	55	7	8069
500	20211026	256.5	-7	8	5871
576	20211110	935	1	1	6669
503	20211027	234	-26	27	3023
504	20211027	1690	4	10	5269
505	20211027	38.85	-30	5	5227
507	20211027	262	-3	3	5871
508	20211027	88	70	9	1303
509	20211027	38.9	-20	3	5227
577	20211110	521	-2	5	2379
578	20211110	240	7	2	3023
511	20211028	362	28	14	2395
513	20211028	96.3	8	1	3003
514	20211028	247	-3	3	2308
515	20211028	89.2	-21	8	8069
516	20211028	87	-70	27	1303
517	20211028	252	-3	3	2308
518	20211028	31.5	57	3	6275
521	20211029	59	4	0	2881
523	20211029	0	12	0	2881
519	20211029	108	57	9	2317
524	20211029	357.5	-3	5	3105
525	20211029	260	-10	12	5871
526	20211029	357.5	-2	3	3105
528	20211101	73.2	-97	31	2881
529	20211101	98.3	-8	3	3003
531	20211101	233	5	2	3023
532	20211101	270	-3	4	5871
533	20211101	62.4	-12	3	2486
534	20211102	94.4	8	1	8069
535	20211102	97.4	-8	3	8069
536	20211102	232	4	1	3023
538	20211102	96.3	8	1	3003
539	20211102	882	1	1	6669
540	20211102	923	1	1	6669
541	20211102	62.9	-48	13	2486
542	20211102	39.1	18	1	2421
545	20211103	233	2	1	3023
547	20211103	39.3	18	1	2421
549	20211103	59.7	103	9	2303
550	20211103	39.7	36	2	2421
551	20211103	94	-8	3	8069
552	20211103	39.5	50	3	2421
553	20211103	58.4	12	1	2486
554	20211103	79.2	9	1	2382
546	20211103	232.5	1	1	3023
556	20211104	260	3	1	5871
557	20211105	38.5	160	9	2545
558	20211105	259.5	-3	3	5871
559	20211105	56.8	-62	16	2486
560	20211105	260	-3	3	2308
561	20211105	375	-2	3	2395
563	20211108	230	4	1	3023
564	20211108	138.8	-109	67	0050
565	20211108	94.5	-65	27	3003
579	20211110	1705	1	2	5269
580	20211110	38.75	-160	27	2545
568	20211109	513	-7	16	2379
566	20211109	78.7	9	1	6285
570	20211109	31.75	-57	8	6275
571	20211109	936	1	1	6669
572	20211109	237	3	1	3023
573	20211109	96.7	-34	15	3003
574	20211109	57.5	107	9	2486
575	20211110	431.5	14	9	2327
581	20211110	1750	-1	8	5269
583	20211110	252.5	3	1	5871
584	20211110	57.65	13	1	00662
589	20211111	936	3	4	6669
590	20211111	516	4	3	2379
591	20211111	92.1	-39	16	8069
586	20211111	787	7	8	6488
588	20211111	62.4	29	3	2303
592	20211111	58.8	-53	14	2486
593	20211111	139.5	-30	19	0050
594	20211111	50.7	59	4	2393
595	20211111	1660	1	2	5269
596	20211112	74.4	10	1	6285
597	20211112	798	1	1	6488
599	20211115	61	-34	9	2486
600	20211115	1710	-2	15	5269
601	20211115	252	8	3	3023
602	20211115	51.4	40	3	2393
706	20211126	830	-2	7	6488
603	20211115	59.9	-2	1	2881
604	20211115	529	2	2	2379
606	20211115	441.5	2	1	2327
607	20211115	390	-2	3	2395
608	20211115	85.7	9	1	2382
610	20211116	87.9	8	1	2382
707	20211126	823	-8	29	6488
611	20211116	257	-3	3	2308
612	20211116	987	1	1	6669
613	20211116	98.7	8	1	3003
614	20211116	256	-3	3	2308
616	20211117	119.5	51	9	2603
617	20211117	128	-6	3	6213
618	20211117	130	-6	3	6213
619	20211117	130	-8	5	6213
620	20211117	1755	-1	8	5269
621	20211117	1780	-1	8	5269
622	20211117	1795	-1	8	5269
656	20211118	63.5	12	1	2303
657	20211118	358	4	2	3105
658	20211118	25.15	73	3	2885
659	20211118	805	1	1	6488
660	20211118	1010	1	1	6669
661	20211118	1825	1	3	5269
662	20211118	455.5	2	1	2327
664	20211118	107	-57	27	2317
665	20211119	1890	2	5	5269
666	20211119	254	19	7	5871
667	20211119	121	-26	14	2603
668	20211119	121	-7	4	2603
669	20211119	126.5	-26	15	6213
709	20211126	380	-15	25	2395
672	20211122	360	17	9	2357
671	20211122	1670	1	2	8454
674	20211122	126	-23	13	6213
675	20211122	86	-22	8	2382
676	20211122	229	4	1	2383
677	20211122	61.4	-100	27	2301
679	20211122	126.5	-24	13	6213
680	20211122	231.5	4	1	2383
681	20211122	121	-18	10	2603
682	20211123	1610	-1	7	8454
683	20211123	257	-3	3	2308
684	20211123	256.5	-3	3	2308
685	20211123	256	-10	11	2308
687	20211123	63.4	-62	17	2303
688	20211124	62.7	-82	23	2303
689	20211124	93.3	8	1	3003
690	20211124	54.4	-121	29	2393
691	20211124	243	3	1	2383
693	20211124	54	13	1	2393
694	20211125	358.5	5	3	3105
711	20211126	119	-16	8	8069
695	20211125	1880	-4	33	5269
692	20211125	152.5	10	2	5347
696	20211125	248.5	-25	27	5871
697	20211125	152	5	1	5347
698	20211125	991	-4	18	6669
712	20211126	87.2	-14	5	2382
700	20211126	104	7	1	3711
701	20211126	143.5	43	9	4919
702	20211126	152	5	1	5347
703	20211126	360.5	5	3	2357
704	20211126	52.2	14	1	2393
705	20211126	345.5	-24	37	3105
714	20211126	257	-34	39	3023
715	20211126	456	-6	12	2327
716	20211129	253.5	-3	3	2308
717	20211129	525	-10	23	2379
718	20211129	101	7	1	6269
719	20211129	85.7	-62	24	2382
720	20211129	446	-12	24	2327
722	20211129	806	1	1	6488
723	20211129	144.5	-23	15	4919
724	20211129	457	2	1	2327
725	20211129	530	2	2	2379
726	20211129	1000	1	1	6669
729	20211130	469.5	11	7	2327
728	20211130	1900	1	3	5269
731	20211130	838	1	1	6488
732	20211130	64.5	100	9	2303
733	20211130	103	53	8	6269
734	20211130	359	9	5	2357
737	20211201	811	1	1	6488
738	20211201	549	2	2	2379
740	20211201	104	7	1	3711
741	20211201	1010	1	1	6669
742	20211202	554	2	2	2379
744	20211202	104.5	14	2	6269
745	20211202	33.8	21	1	00830
746	20211202	57.3	13	1	00662
747	20211202	73.5	-29	9	6285
748	20211202	51	-27	6	2393
750	20211202	353	-3	5	3105
751	20211202	153	-20	14	4919
755	20211203	256.5	12	4	5871
754	20211203	39	18	1	00646
753	20211203	262.5	12	4	2308
756	20211203	57	14	1	00662
758	20211203	107	45	7	3711
759	20211203	2000	1	3	5269
760	20211203	470	2	1	2327
761	20211206	819	1	1	6488
762	20211206	257	3	1	5871
763	20211207	252.5	3	1	5871
764	20211208	24.95	-323	36	2885
766	20211208	1050	1	1	6669
767	20211208	361	2	1	3105
768	20211208	4355	1	6	6415
769	20211209	154.5	-20	14	5347
770	20211209	267.5	10	4	2308
771	20211209	65	-50	14	2303
772	20211209	169	20	5	2377
774	20211209	273.5	-11	13	2383
775	20211209	64.5	11	1	2303
776	20211209	74	50	5	3178
777	20211209	1860	-2	16	5269
778	20211210	450.5	-8	16	2327
779	20211210	93.4	8	1	3003
782	20211213	1075	1	2	6669
783	20211213	63.5	12	1	2303
784	20211213	388.5	2	1	3105
780	20211213	94	33	4	3003
785	20211213	169	17	4	2377
786	20211213	456.5	6	4	2327
787	20211213	63	12	1	2303
791	20211214	62	12	1	2303
792	20211214	552	-4	10	2379
793	20211215	90.8	-16	6	3003
794	20211215	1820	-2	16	5269
795	20211215	139.9	5	1	0050
796	20211215	161.5	-18	13	2377
797	20211215	91.2	-25	10	3003
798	20211215	552	2	2	2379
801	20211216	2070	2	6	3008
802	20211216	453	2	1	2327
803	20211216	561	2	2	2379
804	20211216	818	1	1	6488
805	20211216	563	2	2	2379
809	20211217	164.5	-19	14	2377
857	20211222	379.5	-8	13	3105
808	20211217	77	10	1	2314
806	20211217	1995	1	3	3529
811	20211217	251.5	3	1	5871
813	20211217	33.4	21	1	00830
814	20211217	810	1	1	6488
815	20211217	75.2	10	1	2314
846	20211220	73.1	-20	6	2314
847	20211220	56.5	15	1	00662
848	20211220	33	22	1	00830
849	20211220	368	2	1	3105
850	20211220	1910	-1	8	3529
851	20211221	108.5	7	1	2481
852	20211221	2420	1	3	3008
854	20211221	454.5	2	1	2327
855	20211221	108	7	1	2481
856	20211222	47.85	160	11	8150
861	20211223	475	2	1	2327
862	20211223	236.5	3	1	3189
863	20211223	237	10	3	3189
865	20211223	269.5	3	1	2308
871	20211227	275	3	1	2308
868	20211227	254.5	24	9	3665
872	20211227	255.5	3	1	5871
873	20211227	479	2	1	2327
869	20211227	68.6	90	9	5243
874	20211227	105	28	4	3711
875	20211227	64.3	-47	13	2303
876	20211228	614	5	4	2330
878	20211229	278	3	1	2308
880	20211229	237.5	3	1	3189
881	20211230	264.5	3	1	5871
984	20220114	375	-18	30	2357
882	20220103	84.5	36	4	6261
883	20220103	26	119	4	3437
886	20220103	628	5	4	2330
887	20220103	1110	-5	25	6669
888	20220104	561	-14	35	2379
889	20220104	528	2	2	2327
890	20220104	67	-45	13	5243
891	20220105	69.7	11	1	6770
893	20220105	48.2	-30	6	8150
894	20220105	70	-45	14	5243
895	20220106	56.4	13	1	00662
896	20220106	286	-8	10	2308
897	20220106	102	-21	9	2481
898	20220106	227.5	-16	16	3189
900	20220106	148.2	-11	7	0050
901	20220106	642	2	2	2330
902	20220106	255.5	3	1	4961
903	20220106	68.5	11	1	6770
904	20220106	256.5	-10	11	3665
905	20220106	27.25	26	1	2206
906	20220106	265	-21	25	5871
986	20220114	270.5	-11	13	2308
908	20220107	364	2	1	3105
909	20220107	2545	-1	11	3008
910	20220107	517	-2	5	2327
911	20220107	40	18	1	00646
912	20220107	245	3	1	4961
913	20220107	71.4	-52	16	3178
916	20220107	512	-2	5	2327
917	20220107	361	2	1	3105
914	20220107	106.5	-14	7	3711
918	20220107	102.5	-7	3	6269
919	20220107	2525	-2	22	3008
920	20220107	147	5	1	0050
922	20220110	278.5	-17	21	2308
923	20220110	27.45	-26	3	2206
924	20220110	376	-2	3	2357
925	20220110	71.3	-18	6	3178
926	20220110	81.8	-36	13	6261
927	20220110	281.5	-3	4	2308
928	20220110	281	-3	4	2308
929	20220110	55.75	13	1	00662
932	20220111	67.4	11	1	6770
933	20220111	348	2	1	3105
934	20220111	262	12	4	3665
935	20220111	510	2	1	2327
937	20220112	53.1	120	9	2393
938	20220112	28.05	-59	7	3437
939	20220112	504	-6	13	2327
940	20220112	228	-6	6	4961
941	20220112	263.5	12	5	3665
942	20220112	100.5	-35	16	6269
943	20220112	543	2	2	2379
944	20220112	652	-2	6	2330
945	20220113	278	11	4	2308
978	20220113	52.4	40	3	8150
979	20220113	886	1	1	6488
981	20220113	541	-2	5	2379
982	20220113	105	-50	23	3711
983	20220114	488	-15	32	2327
987	20220114	249.5	-24	26	3665
988	20220114	50.1	-170	38	8150
996	20220117	52.5	30	2	2393
1001	20220117	30.1	100	4	3231
995	20220117	339	3	1	3105
993	20220117	29.9	100	4	3231
991	20220117	490	2	1	2327
997	20220117	106.5	30	5	3711
998	20220117	849	-3	11	6488
1000	20220117	54.2	30	2	2393
1003	20220118	121.5	50	9	6223
1005	20220118	109.5	30	5	3711
1006	20220118	509	10	7	2327
1004	20220118	504	2	1	3034
1007	20220118	31.6	23	1	00830
1008	20220118	515	4	3	3034
1011	20220119	30.3	-100	13	3231
1012	20220119	56	-30	7	2393
1013	20220119	54.3	13	1	00662
1015	20220119	508	-2	4	3034
1018	20220120	27.1	50	2	4956
1020	20220121	28.1	25	1	00830
1021	20220121	52.6	14	1	00662
1022	20220121	143.4	5	1	0050
1024	20220121	111	-50	25	6223
1026	20220121	54.9	-30	7	2393
1023	20220121	102	-90	41	3711
1089	20220211	63.9	-33	9	6770
1091	20220211	321	-8	11	3105
1029	20220124	44.1	20	1	1102
1030	20220124	481	-4	9	3034
1031	20220124	30.65	-100	14	3231
1032	20220124	37.89	19	1	00646
1017	20220120	29.09	25	1	00830
1035	20220125	268.5	3	1	2308
1036	20220125	78.4	10	1	2368
1037	20220125	43.15	20	1	2313
1038	20220125	44.2	20	1	1102
1039	20220125	42.25	20	1	2420
1040	20220125	340.5	3	1	3105
1041	20220126	50.9	14	1	00662
1092	20220211	1770	1	3	5269
1044	20220207	200	4	1	3526
1046	20220207	44.4	20	1	1102
1047	20220207	54.15	13	1	2393
1048	20220207	27.91	26	1	00830
1049	20220207	142.5	5	1	0050
1050	20220207	979	1	1	6669
1051	20220208	128	6	1	3044
1052	20220208	459.5	-6	12	2327
1054	20220208	43.8	20	1	2313
1055	20220208	44.9	16	1	1102
1056	20220208	217	4	1	6104
1057	20220208	277	3	1	6271
1058	20220208	15.9	50	1	2312
1059	20220209	55	13	1	2393
1061	20220209	205	-4	4	3526
1062	20220209	44.9	16	1	1102
1063	20220209	55.8	110	9	3005
1064	20220209	137	10	2	6278
1065	20220209	45	50	3	2313
1066	20220209	278	3	1	6271
1067	20220209	16	-50	4	2312
1069	20220209	82.3	9	1	2368
1070	20220209	1940	-1	9	4966
1071	20220209	52.95	14	1	00662
1072	20220209	28.52	25	1	00830
1073	20220209	270.5	-3	4	2308
1074	20220209	235	-4	4	6104
1075	20220209	280.5	5	2	6271
1077	20220209	462.5	-3	6	2327
1078	20220209	463	-3	6	2327
1080	20220209	1650	1	2	5269
1081	20220210	82	9	1	2368
1082	20220210	126	6	1	3044
1083	20220210	44.55	16	1	2313
1085	20220210	45.15	16	1	1102
1086	20220210	42.95	20	1	2420
1087	20220210	53.9	13	1	00662
1088	20220211	45.35	16	1	1102
1093	20220214	44	16	1	2313
1094	20220214	45.15	16	1	1102
1095	20220214	126	5	1	3044
1097	20220215	57.2	13	1	3005
1098	20220215	1805	1	3	5269
1099	20220215	126.5	6	1	3044
1100	20220215	45.25	16	1	2313
1101	20220215	45.2	20	1	2313
1102	20220216	46	16	1	2313
1103	20220216	128	6	1	3044
1105	20220216	57.4	20	2	3005
1107	20220217	47.75	15	1	2313
1108	20220217	1045	1	1	6669
1109	20220217	129.5	15	3	3044
1110	20220217	45.55	16	1	1102
1111	20220217	43.45	17	1	2420
1113	20220218	43.65	17	1	2420
1114	20220218	280	-6	7	6271
1115	20220218	236.5	6	2	8255
1116	20220218	45.75	16	1	1102
1118	20220221	50.6	14	1	00662
84	20210423	11	91	1	5227
7	20210223	640	5	5	2330
14	20210323	97.8	50	7	3045
21	20210331	135.4	8	2	0050
30	20210407	84.8	12	1	5386
38	20210412	27	38	1	3481
46	20210414	290	4	2	2308
53	20210416	34.1	30	1	6275
61	20210419	248	5	2	2492
69	20210420	46.85	22	1	2201
76	20210422	244	4	1	2492
86	20210426	118	9	2	2317
94	20210427	538	2	2	2379
98	20210428	45.3	23	1	2201
104	20210503	260	4	1	3665
112	20210503	238.5	4	1	2492
119	20210504	137	7	1	6213
127	20210505	1030	1	1	2454
135	20210511	920	1	1	2454
142	20210514	40.6	18	1	2201
149	20210517	32.85	22	1	0056
158	20210518	273	3	1	2308
166	20210520	30	3	1	2425
174	20210531	30.15	-28	4	1609
181	20210608	73.1	10	1	4938
189	20210622	84.9	9	1	3003
194	20210623	274	-7	8	3665
197	20210624	85.9	9	1	3003
204	20210628	94	8	1	4739
212	20210701	94.1	-15	6	4739
221	20210708	68.4	-30	9	4938
227	20210712	20	36	1	2402
235	20210714	393	-2	3	3105
243	20210714	20.3	35	1	2402
250	20210715	45	16	1	2449
259	20210719	553	-2	5	2379
267	20210721	565	2	2	2379
275	20210726	269	3	1	6271
282	20210730	47.45	15	1	2449
292	20210804	69.1	11	1	2204
297	20210806	50.7	14	1	2449
310	20210811	561	2	2	2379
319	20210817	95.2	8	1	6505
326	20210818	570	-72	182	2330
334	20210823	245	3	1	2615
342	20210824	250	3	1	2615
349	20210831	266.5	3	1	2308
359	20210922	137.4	109	21	0050
368	20210923	167.5	5	1	6213
380	20210927	155	6	1	6213
317	20210813	135.85	-60	19	0050
384	20210928	207	4	1	3189
302	20210809	203	-41	35	2492
392	20210929	103	7	1	6505
450	20211018	183	33	9	5483
410	20211004	241.5	3	1	2308
457	20211018	249	-3	3	2308
421	20211012	249.5	32	11	3665
428	20211014	462	-2	4	2379
436	20211015	239.5	-12	13	2308
444	20211015	136.5	14	3	6213
461	20211019	62.1	12	1	2301
471	20211020	105	-19	9	6505
485	20211022	95.5	-40	17	3003
493	20211025	30.85	200	9	5227
502	20211027	75	-60	20	2881
506	20211027	74.8	-50	17	2881
512	20211028	38.7	-117	20	5227
522	20211029	60	2	0	2881
530	20211101	38.85	26	1	2421
537	20211102	92	8	1	8069
548	20211103	264	-4	5	5871
555	20211104	39.75	18	1	2421
562	20211108	80	9	1	2382
569	20211109	61.5	57	5	2301
582	20211110	61.5	19	2	2301
587	20211111	76.6	10	1	6285
598	20211115	24.7	250	9	2885
605	20211115	98.3	-8	3	3003
1121	20220221	27.55	26	1	00830
1122	20220221	37.6	19	1	00646
1123	20220221	48.1	-15	3	2313
1124	20220221	113	-25	13	3707
1119	20220221	124.5	-20	11	6278
1125	20220221	50.55	14	1	00662
1126	20220221	45.75	16	1	1102
609	20211115	62	-20	5	2486
615	20211116	50.5	22	2	2393
623	20211117	1785	1	3	5269
663	20211118	385	-9	15	2395
708	20211126	980	-5	22	6669
678	20211122	829	1	1	6488
686	20211123	538	-5	12	2379
710	20211126	44	-166	32	2421
699	20211125	1825	1	3	5269
713	20211126	138.5	6	1	0050
721	20211129	352	-11	17	2357
730	20211130	544	2	2	2379
739	20211201	1975	1	3	5269
743	20211202	34.26	21	1	00830
749	20211202	1020	1	1	6669
757	20211203	556	2	2	2379
765	20211208	812	2	2	6488
773	20211209	64.9	-50	14	2303
781	20211213	74.5	20	2	3178
790	20211214	33.8	21	1	00830
799	20211215	4385	-1	19	6415
810	20211217	106	7	1	2481
812	20211217	92.9	10	1	3003
853	20211221	104.5	7	1	6269
864	20211223	104	7	1	3711
877	20211229	583	2	2	2379
879	20211229	91.8	-34	14	3003
985	20220114	55.35	13	1	00662
892	20220105	267	-6	7	5871
899	20220106	863	-8	31	6488
907	20220106	253.5	-14	16	3665
915	20220107	24.8	-60	7	3437
921	20220110	34	22	1	00830
930	20220110	102	-39	18	6269
936	20220112	870	1	1	6488
980	20220113	339	-4	6	3105
989	20220114	863	1	1	6488
999	20220117	152.15	-5	3	0050
1010	20220119	655	-10	29	2330
1014	20220119	30.1	24	1	00830
1016	20220119	149	5	1	0050
1090	20220211	122.5	25	4	3707
1033	20220118	31.3	23	1	00830
1045	20220207	1995	1	3	4966
1053	20220208	82.1	9	1	2368
1060	20220209	45.05	5	1	2313
1068	20220209	127	6	1	3044
1076	20220209	25.4	-50	6	4956
1084	20220210	139	10	2	6278
1096	20220215	44.5	16	1	2313
1104	20220216	1040	1	1	6669
1112	20220218	47.85	15	1	2313
1120	20220221	143.85	10	2	0050
1117	20220221	52.3	-146	34	2393
\.


--
-- Data for Name: stockInfoScraper_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."stockInfoScraper_user" (id, first_name, last_name, email, is_email_verified, password, login_token) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 72, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 5, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 13, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 34, true);


--
-- Name: stockInfoScraper_cash_dividend_record_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."stockInfoScraper_cash_dividend_record_id_seq"', 22, true);


--
-- Name: stockInfoScraper_stock_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."stockInfoScraper_stock_info_id_seq"', 108, true);


--
-- Name: stockInfoScraper_stock_memo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."stockInfoScraper_stock_memo_id_seq"', 113, true);


--
-- Name: stockInfoScraper_trade_plan_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."stockInfoScraper_trade_plan_id_seq"', 644, true);


--
-- Name: stockInfoScraper_trade_record_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."stockInfoScraper_trade_record_id_seq"', 1126, true);


--
-- Name: stockInfoScraper_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."stockInfoScraper_user_id_seq"', 1, false);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: stockInfoScraper_cash_dividend_record stockInfoScraper_cashdividendrecord_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."stockInfoScraper_cash_dividend_record"
    ADD CONSTRAINT "stockInfoScraper_cashdividendrecord_pkey" PRIMARY KEY (id);


--
-- Name: stockInfoScraper_company stockInfoScraper_company_stock_id_6975db23_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."stockInfoScraper_company"
    ADD CONSTRAINT "stockInfoScraper_company_stock_id_6975db23_pk" PRIMARY KEY (stock_id);


--
-- Name: stockInfoScraper_stock_info stockInfoScraper_stock_info_company_id_d49ffe09_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."stockInfoScraper_stock_info"
    ADD CONSTRAINT "stockInfoScraper_stock_info_company_id_d49ffe09_uniq" UNIQUE (company_id);


--
-- Name: stockInfoScraper_stock_memo stockInfoScraper_stock_memo_company_id_9928c5b7_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."stockInfoScraper_stock_memo"
    ADD CONSTRAINT "stockInfoScraper_stock_memo_company_id_9928c5b7_uniq" UNIQUE (company_id);


--
-- Name: stockInfoScraper_stock_info stockInfoScraper_stockinfo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."stockInfoScraper_stock_info"
    ADD CONSTRAINT "stockInfoScraper_stockinfo_pkey" PRIMARY KEY (id);


--
-- Name: stockInfoScraper_stock_memo stockInfoScraper_stockmemo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."stockInfoScraper_stock_memo"
    ADD CONSTRAINT "stockInfoScraper_stockmemo_pkey" PRIMARY KEY (id);


--
-- Name: stockInfoScraper_trade_plan stockInfoScraper_tradeplan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."stockInfoScraper_trade_plan"
    ADD CONSTRAINT "stockInfoScraper_tradeplan_pkey" PRIMARY KEY (id);


--
-- Name: stockInfoScraper_trade_record stockInfoScraper_traderecord_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."stockInfoScraper_trade_record"
    ADD CONSTRAINT "stockInfoScraper_traderecord_pkey" PRIMARY KEY (id);


--
-- Name: stockInfoScraper_user stockInfoScraper_user_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."stockInfoScraper_user"
    ADD CONSTRAINT "stockInfoScraper_user_email_key" UNIQUE (email);


--
-- Name: stockInfoScraper_user stockInfoScraper_user_login_token_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."stockInfoScraper_user"
    ADD CONSTRAINT "stockInfoScraper_user_login_token_key" UNIQUE (login_token);


--
-- Name: stockInfoScraper_user stockInfoScraper_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."stockInfoScraper_user"
    ADD CONSTRAINT "stockInfoScraper_user_pkey" PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: stockInfoScraper_cash_dividend_record_company_id_f5e8fd9e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "stockInfoScraper_cash_dividend_record_company_id_f5e8fd9e" ON public."stockInfoScraper_cash_dividend_record" USING btree (company_id);


--
-- Name: stockInfoScraper_cash_dividend_record_company_id_f5e8fd9e_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "stockInfoScraper_cash_dividend_record_company_id_f5e8fd9e_like" ON public."stockInfoScraper_cash_dividend_record" USING btree (company_id varchar_pattern_ops);


--
-- Name: stockInfoScraper_company_stock_id_6975db23_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "stockInfoScraper_company_stock_id_6975db23_like" ON public."stockInfoScraper_company" USING btree (stock_id varchar_pattern_ops);


--
-- Name: stockInfoScraper_stock_info_company_id_d49ffe09_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "stockInfoScraper_stock_info_company_id_d49ffe09_like" ON public."stockInfoScraper_stock_info" USING btree (company_id varchar_pattern_ops);


--
-- Name: stockInfoScraper_stock_memo_company_id_9928c5b7_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "stockInfoScraper_stock_memo_company_id_9928c5b7_like" ON public."stockInfoScraper_stock_memo" USING btree (company_id varchar_pattern_ops);


--
-- Name: stockInfoScraper_trade_plan_company_id_10057c68; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "stockInfoScraper_trade_plan_company_id_10057c68" ON public."stockInfoScraper_trade_plan" USING btree (company_id);


--
-- Name: stockInfoScraper_trade_plan_company_id_10057c68_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "stockInfoScraper_trade_plan_company_id_10057c68_like" ON public."stockInfoScraper_trade_plan" USING btree (company_id varchar_pattern_ops);


--
-- Name: stockInfoScraper_trade_record_company_id_34903b33; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "stockInfoScraper_trade_record_company_id_34903b33" ON public."stockInfoScraper_trade_record" USING btree (company_id);


--
-- Name: stockInfoScraper_trade_record_company_id_34903b33_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "stockInfoScraper_trade_record_company_id_34903b33_like" ON public."stockInfoScraper_trade_record" USING btree (company_id varchar_pattern_ops);


--
-- Name: stockInfoScraper_user_email_c22bf88f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "stockInfoScraper_user_email_c22bf88f_like" ON public."stockInfoScraper_user" USING btree (email varchar_pattern_ops);


--
-- Name: stockInfoScraper_user_login_token_a5b9deab_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "stockInfoScraper_user_login_token_a5b9deab_like" ON public."stockInfoScraper_user" USING btree (login_token varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: stockInfoScraper_cash_dividend_record stockInfoScraper_cas_company_id_f5e8fd9e_fk_stockInfo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."stockInfoScraper_cash_dividend_record"
    ADD CONSTRAINT "stockInfoScraper_cas_company_id_f5e8fd9e_fk_stockInfo" FOREIGN KEY (company_id) REFERENCES public."stockInfoScraper_company"(stock_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: stockInfoScraper_stock_memo stockInfoScraper_sto_company_id_9928c5b7_fk_stockInfo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."stockInfoScraper_stock_memo"
    ADD CONSTRAINT "stockInfoScraper_sto_company_id_9928c5b7_fk_stockInfo" FOREIGN KEY (company_id) REFERENCES public."stockInfoScraper_company"(stock_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: stockInfoScraper_stock_info stockInfoScraper_sto_company_id_d49ffe09_fk_stockInfo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."stockInfoScraper_stock_info"
    ADD CONSTRAINT "stockInfoScraper_sto_company_id_d49ffe09_fk_stockInfo" FOREIGN KEY (company_id) REFERENCES public."stockInfoScraper_company"(stock_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: stockInfoScraper_trade_plan stockInfoScraper_tra_company_id_10057c68_fk_stockInfo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."stockInfoScraper_trade_plan"
    ADD CONSTRAINT "stockInfoScraper_tra_company_id_10057c68_fk_stockInfo" FOREIGN KEY (company_id) REFERENCES public."stockInfoScraper_company"(stock_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: stockInfoScraper_trade_record stockInfoScraper_tra_company_id_34903b33_fk_stockInfo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."stockInfoScraper_trade_record"
    ADD CONSTRAINT "stockInfoScraper_tra_company_id_34903b33_fk_stockInfo" FOREIGN KEY (company_id) REFERENCES public."stockInfoScraper_company"(stock_id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--
