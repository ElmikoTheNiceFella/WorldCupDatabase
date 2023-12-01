--
-- PostgreSQL database dump
--

-- Dumped from database version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)

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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(30) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 2018, 'Final', 340, 342, 4, 2);
INSERT INTO public.games VALUES (2, 2018, 'Third Place', 341, 344, 2, 0);
INSERT INTO public.games VALUES (3, 2018, 'Semi-Final', 342, 344, 2, 1);
INSERT INTO public.games VALUES (4, 2018, 'Semi-Final', 340, 341, 1, 0);
INSERT INTO public.games VALUES (5, 2018, 'Quarter-Final', 342, 343, 3, 2);
INSERT INTO public.games VALUES (6, 2018, 'Quarter-Final', 344, 348, 2, 0);
INSERT INTO public.games VALUES (7, 2018, 'Quarter-Final', 341, 345, 2, 1);
INSERT INTO public.games VALUES (8, 2018, 'Quarter-Final', 340, 346, 2, 0);
INSERT INTO public.games VALUES (9, 2018, 'Eighth-Final', 344, 347, 2, 1);
INSERT INTO public.games VALUES (10, 2018, 'Eighth-Final', 348, 362, 1, 0);
INSERT INTO public.games VALUES (11, 2018, 'Eighth-Final', 341, 349, 3, 2);
INSERT INTO public.games VALUES (12, 2018, 'Eighth-Final', 345, 350, 2, 0);
INSERT INTO public.games VALUES (13, 2018, 'Eighth-Final', 342, 351, 2, 1);
INSERT INTO public.games VALUES (14, 2018, 'Eighth-Final', 343, 352, 2, 1);
INSERT INTO public.games VALUES (15, 2018, 'Eighth-Final', 346, 353, 2, 1);
INSERT INTO public.games VALUES (16, 2018, 'Eighth-Final', 340, 354, 4, 3);
INSERT INTO public.games VALUES (17, 2014, 'Final', 355, 354, 1, 0);
INSERT INTO public.games VALUES (18, 2014, 'Third Place', 356, 345, 3, 0);
INSERT INTO public.games VALUES (19, 2014, 'Semi-Final', 354, 356, 1, 0);
INSERT INTO public.games VALUES (20, 2014, 'Semi-Final', 355, 345, 7, 1);
INSERT INTO public.games VALUES (21, 2014, 'Quarter-Final', 356, 357, 1, 0);
INSERT INTO public.games VALUES (22, 2014, 'Quarter-Final', 354, 341, 1, 0);
INSERT INTO public.games VALUES (23, 2014, 'Quarter-Final', 345, 347, 2, 1);
INSERT INTO public.games VALUES (24, 2014, 'Quarter-Final', 355, 340, 1, 0);
INSERT INTO public.games VALUES (25, 2014, 'Eighth-Final', 345, 358, 2, 1);
INSERT INTO public.games VALUES (26, 2014, 'Eighth-Final', 347, 346, 2, 0);
INSERT INTO public.games VALUES (27, 2014, 'Eighth-Final', 340, 359, 2, 0);
INSERT INTO public.games VALUES (28, 2014, 'Eighth-Final', 355, 360, 2, 1);
INSERT INTO public.games VALUES (29, 2014, 'Eighth-Final', 356, 350, 2, 1);
INSERT INTO public.games VALUES (30, 2014, 'Eighth-Final', 357, 361, 2, 1);
INSERT INTO public.games VALUES (31, 2014, 'Eighth-Final', 354, 362, 1, 0);
INSERT INTO public.games VALUES (32, 2014, 'Eighth-Final', 341, 363, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (340, 'France');
INSERT INTO public.teams VALUES (341, 'Belgium');
INSERT INTO public.teams VALUES (342, 'Croatia');
INSERT INTO public.teams VALUES (343, 'Russia');
INSERT INTO public.teams VALUES (344, 'England');
INSERT INTO public.teams VALUES (345, 'Brazil');
INSERT INTO public.teams VALUES (346, 'Uruguay');
INSERT INTO public.teams VALUES (347, 'Colombia');
INSERT INTO public.teams VALUES (348, 'Sweden');
INSERT INTO public.teams VALUES (349, 'Japan');
INSERT INTO public.teams VALUES (350, 'Mexico');
INSERT INTO public.teams VALUES (351, 'Denmark');
INSERT INTO public.teams VALUES (352, 'Spain');
INSERT INTO public.teams VALUES (353, 'Portugal');
INSERT INTO public.teams VALUES (354, 'Argentina');
INSERT INTO public.teams VALUES (355, 'Germany');
INSERT INTO public.teams VALUES (356, 'Netherlands');
INSERT INTO public.teams VALUES (357, 'Costa Rica');
INSERT INTO public.teams VALUES (358, 'Chile');
INSERT INTO public.teams VALUES (359, 'Nigeria');
INSERT INTO public.teams VALUES (360, 'Algeria');
INSERT INTO public.teams VALUES (361, 'Greece');
INSERT INTO public.teams VALUES (362, 'Switzerland');
INSERT INTO public.teams VALUES (363, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 32, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 363, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams name_uq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT name_uq UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games o_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT o_fk FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games w_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT w_fk FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

