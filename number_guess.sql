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
    user_id integer NOT NULL,
    guesses integer DEFAULT 0 NOT NULL
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

INSERT INTO public.games VALUES (1, 74, 114);
INSERT INTO public.games VALUES (2, 74, 518);
INSERT INTO public.games VALUES (3, 75, 385);
INSERT INTO public.games VALUES (4, 75, 698);
INSERT INTO public.games VALUES (5, 74, 937);
INSERT INTO public.games VALUES (6, 74, 829);
INSERT INTO public.games VALUES (7, 74, 876);
INSERT INTO public.games VALUES (8, 76, 670);
INSERT INTO public.games VALUES (9, 76, 536);
INSERT INTO public.games VALUES (10, 77, 983);
INSERT INTO public.games VALUES (11, 77, 788);
INSERT INTO public.games VALUES (12, 76, 60);
INSERT INTO public.games VALUES (13, 76, 283);
INSERT INTO public.games VALUES (14, 76, 780);
INSERT INTO public.games VALUES (15, 78, 389);
INSERT INTO public.games VALUES (16, 78, 216);
INSERT INTO public.games VALUES (17, 79, 94);
INSERT INTO public.games VALUES (18, 79, 916);
INSERT INTO public.games VALUES (19, 78, 452);
INSERT INTO public.games VALUES (20, 78, 520);
INSERT INTO public.games VALUES (21, 78, 34);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Hellan');
INSERT INTO public.users VALUES (74, 'user_1752072240243');
INSERT INTO public.users VALUES (75, 'user_1752072240242');
INSERT INTO public.users VALUES (76, 'user_1752072342230');
INSERT INTO public.users VALUES (5, 'Helln');
INSERT INTO public.users VALUES (77, 'user_1752072342229');
INSERT INTO public.users VALUES (78, 'user_1752072438396');
INSERT INTO public.users VALUES (8, 'user_1752069860571');
INSERT INTO public.users VALUES (79, 'user_1752072438395');
INSERT INTO public.users VALUES (10, 'user_1752069860570');
INSERT INTO public.users VALUES (15, 'user_1752069950921');
INSERT INTO public.users VALUES (17, 'user_1752069950920');
INSERT INTO public.users VALUES (22, 'user_1752069976554');
INSERT INTO public.users VALUES (24, 'user_1752069976553');
INSERT INTO public.users VALUES (29, 'user_1752070077057');
INSERT INTO public.users VALUES (31, 'user_1752070077056');
INSERT INTO public.users VALUES (36, 'user_1752070144331');
INSERT INTO public.users VALUES (38, 'user_1752070144330');
INSERT INTO public.users VALUES (44, 'Jill');
INSERT INTO public.users VALUES (46, 'user_1752071549693');
INSERT INTO public.users VALUES (48, 'user_1752071549692');
INSERT INTO public.users VALUES (53, 'user_1752071610892');
INSERT INTO public.users VALUES (55, 'user_1752071610891');
INSERT INTO public.users VALUES (60, 'user_1752071748214');
INSERT INTO public.users VALUES (62, 'user_1752071748213');
INSERT INTO public.users VALUES (67, 'user_1752071763330');
INSERT INTO public.users VALUES (69, 'user_1752071763329');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 21, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 79, true);


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
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games fk_users_games; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_users_games FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

