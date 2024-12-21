--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    game_id integer NOT NULL,
    tries integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    name character varying(22) NOT NULL
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
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (43, 997, 39);
INSERT INTO public.games VALUES (44, 451, 40);
INSERT INTO public.games VALUES (45, 178, 39);
INSERT INTO public.games VALUES (46, 829, 39);
INSERT INTO public.games VALUES (47, 192, 39);
INSERT INTO public.games VALUES (48, 10, 38);
INSERT INTO public.games VALUES (49, 471, 41);
INSERT INTO public.games VALUES (50, 448, 42);
INSERT INTO public.games VALUES (51, 617, 41);
INSERT INTO public.games VALUES (52, 843, 41);
INSERT INTO public.games VALUES (53, 181, 41);
INSERT INTO public.games VALUES (54, 10, 38);
INSERT INTO public.games VALUES (55, 792, 43);
INSERT INTO public.games VALUES (56, 842, 43);
INSERT INTO public.games VALUES (57, 192, 44);
INSERT INTO public.games VALUES (58, 823, 44);
INSERT INTO public.games VALUES (59, 44, 43);
INSERT INTO public.games VALUES (60, 711, 43);
INSERT INTO public.games VALUES (61, 368, 43);
INSERT INTO public.games VALUES (62, 504, 45);
INSERT INTO public.games VALUES (63, 506, 45);
INSERT INTO public.games VALUES (64, 549, 46);
INSERT INTO public.games VALUES (65, 852, 46);
INSERT INTO public.games VALUES (66, 796, 45);
INSERT INTO public.games VALUES (67, 40, 45);
INSERT INTO public.games VALUES (68, 662, 45);
INSERT INTO public.games VALUES (69, 322, 47);
INSERT INTO public.games VALUES (70, 51, 47);
INSERT INTO public.games VALUES (71, 661, 48);
INSERT INTO public.games VALUES (72, 899, 48);
INSERT INTO public.games VALUES (73, 429, 47);
INSERT INTO public.games VALUES (74, 262, 47);
INSERT INTO public.games VALUES (75, 624, 47);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (36, 'user_1734783978755');
INSERT INTO public.users VALUES (37, 'user_1734783978754');
INSERT INTO public.users VALUES (38, 'J');
INSERT INTO public.users VALUES (39, 'user_1734784221345');
INSERT INTO public.users VALUES (40, 'user_1734784221344');
INSERT INTO public.users VALUES (41, 'user_1734784402977');
INSERT INTO public.users VALUES (42, 'user_1734784402976');
INSERT INTO public.users VALUES (43, 'user_1734784595537');
INSERT INTO public.users VALUES (44, 'user_1734784595536');
INSERT INTO public.users VALUES (45, 'user_1734784625571');
INSERT INTO public.users VALUES (46, 'user_1734784625570');
INSERT INTO public.users VALUES (47, 'user_1734784629964');
INSERT INTO public.users VALUES (48, 'user_1734784629963');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 75, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 48, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

