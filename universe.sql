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
-- Name: atmosphere; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.atmosphere (
    atmosphere_id integer NOT NULL,
    name character varying(60),
    planet_with_atmosphere integer NOT NULL,
    planet_without_atmosphere integer NOT NULL
);


ALTER TABLE public.atmosphere OWNER TO freecodecamp;

--
-- Name: atmosphere_atmosphere_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.atmosphere_atmosphere_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.atmosphere_atmosphere_id_seq OWNER TO freecodecamp;

--
-- Name: atmosphere_atmosphere_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.atmosphere_atmosphere_id_seq OWNED BY public.atmosphere.atmosphere_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60) NOT NULL,
    distance_in_million_light_years numeric(4,4) NOT NULL,
    description text,
    total_star integer,
    total_size integer
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
    planet_id integer,
    name character varying(60) NOT NULL,
    distance_in_light_years numeric(4,1) NOT NULL,
    water boolean
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
    name character varying(60) NOT NULL,
    distance_in_light_years numeric(4,1) NOT NULL,
    star_id integer,
    water boolean
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    galaxy_id integer,
    name character varying(60),
    distance_in_light_years numeric(4,1) NOT NULL,
    total_planet integer,
    total_size integer
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
-- Name: atmosphere atmosphere_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.atmosphere ALTER COLUMN atmosphere_id SET DEFAULT nextval('public.atmosphere_atmosphere_id_seq'::regclass);


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
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: atmosphere; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.atmosphere VALUES (1, 'in milky way galaxy', 5, 2);
INSERT INTO public.atmosphere VALUES (2, 'in Draco 2', 5, 4);
INSERT INTO public.atmosphere VALUES (3, 'in Tucanae', 8, 1);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 0.0265, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Canis Major Dwarf', 0.0250, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Draco 2', 0.0701, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Tucana 3', 0.0747, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Segue 1', 0.0750, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Sagittarius Dwarf Sphr', 0.0780, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1, 'anurag', 231.1, NULL);
INSERT INTO public.moon VALUES (2, 1, 'abhishek', 231.2, NULL);
INSERT INTO public.moon VALUES (3, 2, 'anmol', 99.1, NULL);
INSERT INTO public.moon VALUES (4, 2, 'rinki', 431.1, NULL);
INSERT INTO public.moon VALUES (5, 3, 'sonu', 431.2, NULL);
INSERT INTO public.moon VALUES (6, 3, 'poonam', 324.1, NULL);
INSERT INTO public.moon VALUES (7, 4, 'shalu', 432.1, NULL);
INSERT INTO public.moon VALUES (8, 4, 'prashant', 543.0, NULL);
INSERT INTO public.moon VALUES (9, 5, 'nishant', 324.0, NULL);
INSERT INTO public.moon VALUES (10, 5, 'neelu', 434.0, NULL);
INSERT INTO public.moon VALUES (11, 6, 'vijay', 432.0, NULL);
INSERT INTO public.moon VALUES (12, 6, 'vimal', 543.3, NULL);
INSERT INTO public.moon VALUES (13, 7, 'ashok', 543.1, NULL);
INSERT INTO public.moon VALUES (14, 7, 'shravan', 432.1, NULL);
INSERT INTO public.moon VALUES (15, 8, 'saili', 542.1, NULL);
INSERT INTO public.moon VALUES (16, 8, 'ranno', 654.1, NULL);
INSERT INTO public.moon VALUES (17, 9, 'sarita', 453.1, NULL);
INSERT INTO public.moon VALUES (18, 9, 'hemu', 445.1, NULL);
INSERT INTO public.moon VALUES (19, 10, 'ramu', 644.1, NULL);
INSERT INTO public.moon VALUES (20, 10, 'mami', 543.1, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'platun', 8.6, 1, NULL);
INSERT INTO public.planet VALUES (2, 'Splanet', 8.6, 1, NULL);
INSERT INTO public.planet VALUES (3, 'Epsiplanet', 431.0, 34, NULL);
INSERT INTO public.planet VALUES (4, 'Epsoplanet', 431.0, 34, NULL);
INSERT INTO public.planet VALUES (5, 'EtaPlanet', 92.0, 35, NULL);
INSERT INTO public.planet VALUES (6, 'EtatoPlanet', 92.0, 35, NULL);
INSERT INTO public.planet VALUES (7, 'Alphplatun', 199.0, 36, NULL);
INSERT INTO public.planet VALUES (8, 'AlpSplanet', 199.0, 36, NULL);
INSERT INTO public.planet VALUES (9, 'Satasiplanet', 104.0, 37, NULL);
INSERT INTO public.planet VALUES (10, 'Sataplanet', 104.0, 37, NULL);
INSERT INTO public.planet VALUES (11, 'SagiPlanet', 230.0, 38, NULL);
INSERT INTO public.planet VALUES (12, 'SagitoPlanet', 230.0, 38, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 'Sirius A', 8.6, NULL, NULL);
INSERT INTO public.star VALUES (34, 2, 'Epsilon Canis Majoris', 431.0, NULL, NULL);
INSERT INTO public.star VALUES (35, 3, 'Eta Draconis', 92.0, NULL, NULL);
INSERT INTO public.star VALUES (36, 4, 'Alpha Tucanae', 199.0, NULL, NULL);
INSERT INTO public.star VALUES (37, 5, 'Sata', 204.1, NULL, NULL);
INSERT INTO public.star VALUES (38, 6, 'Sagi', 230.5, NULL, NULL);


--
-- Name: atmosphere_atmosphere_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.atmosphere_atmosphere_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 39, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 16, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 38, true);


--
-- Name: atmosphere atmosphere_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.atmosphere
    ADD CONSTRAINT atmosphere_name_key UNIQUE (name);


--
-- Name: atmosphere atmosphere_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.atmosphere
    ADD CONSTRAINT atmosphere_pkey PRIMARY KEY (atmosphere_id);


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

