--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    number_of_stars integer,
    description text,
    aliens boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40) NOT NULL,
    distance_from_planet numeric,
    planet_id integer,
    pretty boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    has_moons boolean NOT NULL,
    size integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: random_data; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.random_data (
    random_data_id integer NOT NULL,
    name character varying(40) NOT NULL,
    useful boolean NOT NULL
);


ALTER TABLE public.random_data OWNER TO freecodecamp;

--
-- Name: random_data_random_data_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.random_data_random_data_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.random_data_random_data_id_seq OWNER TO freecodecamp;

--
-- Name: random_data_random_data_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.random_data_random_data_id_seq OWNED BY public.random_data.random_data_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40) NOT NULL,
    has_planets boolean NOT NULL,
    galaxy_id integer,
    young boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: random_data random_data_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.random_data ALTER COLUMN random_data_id SET DEFAULT nextval('public.random_data_random_data_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'The Milky Way', 100000, 'Home to humans, super big', false);
INSERT INTO public.galaxy VALUES (2, 'Andromeda Galaxy', 100000, 'Andromeda, which is shortened from "Andromeda Galaxy", gets its name from the area of the sky in which it appears, the constellation of Andromeda.', false);
INSERT INTO public.galaxy VALUES (3, 'Antennae Galaxies', 100000, 'Appearance is similar to an insect`s antennae.', false);
INSERT INTO public.galaxy VALUES (4, 'Backward Galaxy', 100000, 'It appears to rotate backwards, as the tips of the spiral arms point in the direction of rotation.', false);
INSERT INTO public.galaxy VALUES (5, 'Black Eye Galaxy', 100000, 'It has a spectacular dark band of absorbing dust in front of the galaxy`s bright nucleus, giving rise to its nicknames of the "Black Eye" or "Evil Eye" galaxy.', false);
INSERT INTO public.galaxy VALUES (6, 'Bode`s Galaxy', 100000, 'Named for Johann Elert Bode who discovered this galaxy in 1774.', false);
INSERT INTO public.galaxy VALUES (7, 'Butterfly Galaxies', 100000, 'Looks are similar to a butterfly.', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 238900, 1, true);
INSERT INTO public.moon VALUES (3, 'Titan', 1000, 5, true);
INSERT INTO public.moon VALUES (4, 'Europa', 1000, 3, true);
INSERT INTO public.moon VALUES (5, 'Ganymede', 1000, 3, true);
INSERT INTO public.moon VALUES (6, 'Mimas', 1000, 5, true);
INSERT INTO public.moon VALUES (7, 'Callisto', 1000, 3, true);
INSERT INTO public.moon VALUES (8, 'Io', 1000, 3, true);
INSERT INTO public.moon VALUES (9, 'Greip', 1000, 5, true);
INSERT INTO public.moon VALUES (10, 'Phoebe', 1000, 5, true);
INSERT INTO public.moon VALUES (11, 'Dione', 1000, 5, true);
INSERT INTO public.moon VALUES (12, 'Methone', 1000, 5, true);
INSERT INTO public.moon VALUES (13, 'Anthe', 1000, 5, true);
INSERT INTO public.moon VALUES (14, 'Aegir', 1000, 5, true);
INSERT INTO public.moon VALUES (15, 'Albiorix', 1000, 5, true);
INSERT INTO public.moon VALUES (16, 'Kiviuq', 1000, 5, true);
INSERT INTO public.moon VALUES (17, 'Iapetus', 1000, 5, true);
INSERT INTO public.moon VALUES (18, 'Daphnis', 1000, 5, true);
INSERT INTO public.moon VALUES (19, 'Hyperion', 1000, 5, true);
INSERT INTO public.moon VALUES (20, 'Enceladus', 1000, 5, true);
INSERT INTO public.moon VALUES (21, 'Epimetheus', 1000, 5, true);
INSERT INTO public.moon VALUES (22, 'Adrastea', 1000, 3, true);
INSERT INTO public.moon VALUES (23, 'Fornjot', 1000, 5, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', true, 510072000, 1);
INSERT INTO public.planet VALUES (2, 'Mars', true, 5555, 1);
INSERT INTO public.planet VALUES (3, 'Jupiter', true, 5555, 1);
INSERT INTO public.planet VALUES (4, 'Uranus', true, 5555, 1);
INSERT INTO public.planet VALUES (5, 'Saturn', true, 5555, 1);
INSERT INTO public.planet VALUES (6, 'Neptune', true, 5555, 1);
INSERT INTO public.planet VALUES (7, 'Mercury', false, 5555, 1);
INSERT INTO public.planet VALUES (8, 'Venus', false, 5555, 1);
INSERT INTO public.planet VALUES (9, 'Kepler-69c', true, 5555, 1);
INSERT INTO public.planet VALUES (10, 'Proxima Centauri b', true, 5555, 1);
INSERT INTO public.planet VALUES (11, 'Kepler-20f', true, 5555, 1);
INSERT INTO public.planet VALUES (12, 'Tau Ceti b', true, 5555, 1);
INSERT INTO public.planet VALUES (13, 'Kepler-186f', true, 5555, 1);


--
-- Data for Name: random_data; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.random_data VALUES (1, 'There might be aliens somewhere', true);
INSERT INTO public.random_data VALUES (2, 'One day Earth might be swallowed by a black hole.', true);
INSERT INTO public.random_data VALUES (3, 'Sun revolves around Earth.', false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', true, 1, NULL);
INSERT INTO public.star VALUES (2, 'Altair', true, 1, true);
INSERT INTO public.star VALUES (3, 'Capella', true, 1, true);
INSERT INTO public.star VALUES (4, 'Arcturus', true, 1, true);
INSERT INTO public.star VALUES (5, 'Cor Caroli', true, 1, true);
INSERT INTO public.star VALUES (6, 'Sirius', true, 1, true);
INSERT INTO public.star VALUES (7, 'Castor', true, 1, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: random_data_random_data_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.random_data_random_data_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: random_data random_data_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.random_data
    ADD CONSTRAINT random_data_name_key UNIQUE (name);


--
-- Name: random_data random_data_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.random_data
    ADD CONSTRAINT random_data_pkey PRIMARY KEY (random_data_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

