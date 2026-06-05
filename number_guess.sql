--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    user_id integer NOT NULL,
    guess integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (9, 892);
INSERT INTO public.games VALUES (9, 582);
INSERT INTO public.games VALUES (10, 88);
INSERT INTO public.games VALUES (10, 518);
INSERT INTO public.games VALUES (9, 576);
INSERT INTO public.games VALUES (9, 495);
INSERT INTO public.games VALUES (9, 701);
INSERT INTO public.games VALUES (11, 311);
INSERT INTO public.games VALUES (11, 869);
INSERT INTO public.games VALUES (12, 922);
INSERT INTO public.games VALUES (12, 381);
INSERT INTO public.games VALUES (11, 408);
INSERT INTO public.games VALUES (11, 378);
INSERT INTO public.games VALUES (11, 29);
INSERT INTO public.games VALUES (13, 260);
INSERT INTO public.games VALUES (13, 752);
INSERT INTO public.games VALUES (14, 296);
INSERT INTO public.games VALUES (14, 970);
INSERT INTO public.games VALUES (13, 767);
INSERT INTO public.games VALUES (13, 817);
INSERT INTO public.games VALUES (13, 699);
INSERT INTO public.games VALUES (15, 883);
INSERT INTO public.games VALUES (15, 467);
INSERT INTO public.games VALUES (16, 817);
INSERT INTO public.games VALUES (16, 225);
INSERT INTO public.games VALUES (15, 627);
INSERT INTO public.games VALUES (15, 61);
INSERT INTO public.games VALUES (15, 450);
INSERT INTO public.games VALUES (17, 330);
INSERT INTO public.games VALUES (17, 972);
INSERT INTO public.games VALUES (18, 22);
INSERT INTO public.games VALUES (18, 423);
INSERT INTO public.games VALUES (17, 598);
INSERT INTO public.games VALUES (17, 843);
INSERT INTO public.games VALUES (17, 882);
INSERT INTO public.games VALUES (19, 15);
INSERT INTO public.games VALUES (19, 10);
INSERT INTO public.games VALUES (42, 133);
INSERT INTO public.games VALUES (42, 15);
INSERT INTO public.games VALUES (43, 634);
INSERT INTO public.games VALUES (43, 438);
INSERT INTO public.games VALUES (42, 507);
INSERT INTO public.games VALUES (42, 989);
INSERT INTO public.games VALUES (42, 592);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1780671840897');
INSERT INTO public.users VALUES (2, 'user_1780671840896');
INSERT INTO public.users VALUES (3, 'user_1780672007736');
INSERT INTO public.users VALUES (4, 'user_1780672007735');
INSERT INTO public.users VALUES (5, 'user_1780672031849');
INSERT INTO public.users VALUES (6, 'user_1780672031848');
INSERT INTO public.users VALUES (7, 'user_1780672087512');
INSERT INTO public.users VALUES (8, 'user_1780672087511');
INSERT INTO public.users VALUES (9, 'user_1780673443638');
INSERT INTO public.users VALUES (10, 'user_1780673443637');
INSERT INTO public.users VALUES (11, 'user_1780673512055');
INSERT INTO public.users VALUES (12, 'user_1780673512053');
INSERT INTO public.users VALUES (13, 'user_1780673610040');
INSERT INTO public.users VALUES (14, 'user_1780673610039');
INSERT INTO public.users VALUES (15, 'user_1780673741658');
INSERT INTO public.users VALUES (16, 'user_1780673741657');
INSERT INTO public.users VALUES (17, 'user_1780673991111');
INSERT INTO public.users VALUES (18, 'user_1780673991110');
INSERT INTO public.users VALUES (19, 'bboy');
INSERT INTO public.users VALUES (20, 'user_1780675148368');
INSERT INTO public.users VALUES (21, 'user_1780675148367');
INSERT INTO public.users VALUES (22, 'user_1780675687160');
INSERT INTO public.users VALUES (23, 'user_1780675687159');
INSERT INTO public.users VALUES (24, 'user_1780675783325');
INSERT INTO public.users VALUES (25, 'user_1780675783324');
INSERT INTO public.users VALUES (26, 'user_1780675930313');
INSERT INTO public.users VALUES (27, 'user_1780675930312');
INSERT INTO public.users VALUES (28, 'user_1780677935525');
INSERT INTO public.users VALUES (29, 'user_1780677935524');
INSERT INTO public.users VALUES (30, 'user_1780678183681');
INSERT INTO public.users VALUES (31, 'user_1780678183680');
INSERT INTO public.users VALUES (32, 'user_1780678248238');
INSERT INTO public.users VALUES (33, 'user_1780678248237');
INSERT INTO public.users VALUES (34, 'user_1780678283914');
INSERT INTO public.users VALUES (35, 'user_1780678283913');
INSERT INTO public.users VALUES (36, 'user_1780678353679');
INSERT INTO public.users VALUES (37, 'user_1780678353678');
INSERT INTO public.users VALUES (38, 'user_1780678369082');
INSERT INTO public.users VALUES (39, 'user_1780678369081');
INSERT INTO public.users VALUES (40, 'user_1780679218761');
INSERT INTO public.users VALUES (41, 'user_1780679218760');
INSERT INTO public.users VALUES (42, 'user_1780679353679');
INSERT INTO public.users VALUES (43, 'user_1780679353678');


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 43, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games score_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT score_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

