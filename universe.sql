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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(60) NOT NULL,
    description text NOT NULL,
    mass_in_earths numeric(6,1) NOT NULL,
    mean_radius_in_earths numeric(6,1),
    is_likeable boolean
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60) NOT NULL,
    estimated_diameter_in_kpc integer NOT NULL,
    number_of_stars_billions_max_estimate integer,
    thickness_of_thin_disc numeric(5,0),
    description text,
    is_likeable boolean
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
    name character varying(60) NOT NULL,
    description text NOT NULL,
    mass_in_earths numeric(6,1) NOT NULL,
    mean_radius_in_earths numeric(6,1),
    planet_id integer NOT NULL
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
-- Name: moon_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_planet_id_seq OWNER TO freecodecamp;

--
-- Name: moon_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_planet_id_seq OWNED BY public.moon.planet_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(60) NOT NULL,
    number_of_known_satellites integer NOT NULL,
    mass_in_earths numeric(6,1) NOT NULL,
    mean_radius_in_earths numeric(6,1),
    star_id integer NOT NULL
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
-- Name: planet_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_star_id_seq OWNER TO freecodecamp;

--
-- Name: planet_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_star_id_seq OWNED BY public.planet.star_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(60) NOT NULL,
    mean_distance_from_earth_in_au numeric(6,1) NOT NULL,
    mean_distance_from_milky_way_core_in_ly integer NOT NULL,
    color_bv numeric(6,1),
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_galaxy_id_seq OWNED BY public.star.galaxy_id;


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
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN planet_id SET DEFAULT nextval('public.moon_planet_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN star_id SET DEFAULT nextval('public.planet_star_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'scooba', 'is wet', 100.0, 200.0, NULL);
INSERT INTO public.asteroid VALUES (2, 'scooba2', 'is really wet', 100.0, 400.0, NULL);
INSERT INTO public.asteroid VALUES (3, 'scooba3', 'is really wet', 100.0, 400.0, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'scoba', 1, 1, 2, 'yup', true);
INSERT INTO public.galaxy VALUES (2, 'scobaa', 1, 1, 2, 'yup', true);
INSERT INTO public.galaxy VALUES (3, 'scobaaa', 1, 1, 2, 'yup', true);
INSERT INTO public.galaxy VALUES (4, 'scobaaaa', 1, 1, 2, 'yup', true);
INSERT INTO public.galaxy VALUES (5, 'scobaaaaa', 1, 1, 2, 'yup', true);
INSERT INTO public.galaxy VALUES (6, 'scobaaaaaa', 1, 1, 2, 'yup', true);
INSERT INTO public.galaxy VALUES (7, 'scobaaaaaaa', 1, 1, 2, 'yup', true);
INSERT INTO public.galaxy VALUES (8, 'scobaaaaaaaa', 1, 1, 2, 'yup', true);
INSERT INTO public.galaxy VALUES (9, 'scobaaaaaaaaa', 1, 1, 2, 'yup', true);
INSERT INTO public.galaxy VALUES (10, 'scobaaaaaaaaaa', 1, 1, 2, 'yup', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'dfd', 'dfd', 1.0, 1.0, 1);
INSERT INTO public.moon VALUES (2, 'dddfd', 'dfd', 1.0, 1.0, 1);
INSERT INTO public.moon VALUES (3, 'ddddfd', 'dfd', 1.0, 1.0, 1);
INSERT INTO public.moon VALUES (4, 'ddddfdfad', 'dfd', 1.0, 1.0, 1);
INSERT INTO public.moon VALUES (5, 'ddddfdafdsfad', 'dfd', 1.0, 1.0, 1);
INSERT INTO public.moon VALUES (6, 'ddddfdadafdfdsfad', 'dfd', 1.0, 1.0, 1);
INSERT INTO public.moon VALUES (8, 'ddddffdfdsfad', 'dfd', 1.0, 1.0, 1);
INSERT INTO public.moon VALUES (9, 'ddddffdfdsfddad', 'dfd', 1.0, 1.0, 1);
INSERT INTO public.moon VALUES (10, 'ddddddffdfdsfddad', 'dfd', 1.0, 1.0, 1);
INSERT INTO public.moon VALUES (11, 'ddddddddffdfdsfddad', 'dfd', 1.0, 1.0, 1);
INSERT INTO public.moon VALUES (12, 'dddddddddfdsfddad', 'dfd', 1.0, 1.0, 1);
INSERT INTO public.moon VALUES (13, 'dddddddddfdsfdda', 'dfd', 1.0, 1.0, 1);
INSERT INTO public.moon VALUES (14, 'dddddddddfdsfdd', 'dfd', 1.0, 1.0, 1);
INSERT INTO public.moon VALUES (15, 'dddddddddfsfdd', 'dfd', 1.0, 1.0, 1);
INSERT INTO public.moon VALUES (16, 'dddddddddfsfd', 'dfd', 1.0, 1.0, 1);
INSERT INTO public.moon VALUES (17, 'ddddddddfsfd', 'dfd', 1.0, 1.0, 1);
INSERT INTO public.moon VALUES (18, 'dddddddfsfd', 'dfd', 1.0, 1.0, 1);
INSERT INTO public.moon VALUES (19, 'ddddddfsfd', 'dfd', 1.0, 1.0, 1);
INSERT INTO public.moon VALUES (20, 'dddddfsfd', 'dfd', 1.0, 1.0, 1);
INSERT INTO public.moon VALUES (21, 'dddddffd', 'dfd', 1.0, 1.0, 1);
INSERT INTO public.moon VALUES (22, 'ddddffd', 'dfd', 1.0, 1.0, 1);
INSERT INTO public.moon VALUES (24, 'ddffd', 'dfd', 1.0, 1.0, 1);
INSERT INTO public.moon VALUES (25, 'dddsafdsffd', 'dfd', 1.0, 1.0, 1);
INSERT INTO public.moon VALUES (26, 'dddsadsffd', 'dfd', 1.0, 1.0, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'dsafd', 1, 1.0, 1.0, 1);
INSERT INTO public.planet VALUES (2, 'dfdsafd', 1, 1.0, 1.0, 1);
INSERT INTO public.planet VALUES (3, 'ddffdsafd', 1, 1.0, 1.0, 1);
INSERT INTO public.planet VALUES (4, 'ddfdfsadfdsafd', 1, 1.0, 1.0, 1);
INSERT INTO public.planet VALUES (5, 'ddfddasffsadfdsafd', 1, 1.0, 1.0, 1);
INSERT INTO public.planet VALUES (6, 'ddfddasffsadfdsafddd', 1, 1.0, 1.0, 1);
INSERT INTO public.planet VALUES (7, 'ddfddasffsadfdsadafdfddd', 1, 1.0, 1.0, 1);
INSERT INTO public.planet VALUES (8, 'ddfddasffsadfdsadafadsfdfddd', 1, 1.0, 1.0, 1);
INSERT INTO public.planet VALUES (9, 'ddfddasfsdfsdfafsadfdsadafadsfdfddd', 1, 1.0, 1.0, 1);
INSERT INTO public.planet VALUES (10, 'ddfddasfsdfsdfafsadfdsadaffdsafdadsfdfddd', 1, 1.0, 1.0, 1);
INSERT INTO public.planet VALUES (11, 'ddfddasfsdfsdfafsadfdsadaffdsafdadsafdsdsfdfddd', 1, 1.0, 1.0, 1);
INSERT INTO public.planet VALUES (12, 'ddfddasfsdfsdfafsadfdsadaffdsafdaaddd', 1, 1.0, 1.0, 1);
INSERT INTO public.planet VALUES (13, 'ddfddasfsdfsdfafsadfdsadaffdsafdaadddd', 1, 1.0, 1.0, 1);
INSERT INTO public.planet VALUES (14, 'ddfddasfsdfsdfafsadfdsadaffdsafdddd', 1, 1.0, 1.0, 1);
INSERT INTO public.planet VALUES (15, 'ddfddasfsdfsdfafsadfdsadaffdsddd', 1, 1.0, 1.0, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'ssafds', 1.0, 1, 1.0, 1);
INSERT INTO public.star VALUES (2, 'ssadfds', 1.0, 1, 1.0, 1);
INSERT INTO public.star VALUES (3, 'ssadfafdsds', 1.0, 1, 1.0, 1);
INSERT INTO public.star VALUES (4, 'ssadfafdsdds', 1.0, 1, 1.0, 1);
INSERT INTO public.star VALUES (5, 'ssadfafdsddds', 1.0, 1, 1.0, 1);
INSERT INTO public.star VALUES (6, 'ssadfafdfsasddds', 1.0, 1, 1.0, 1);
INSERT INTO public.star VALUES (7, 'ssadfafdfsdadfasddds', 1.0, 1, 1.0, 1);
INSERT INTO public.star VALUES (8, 'ssadfafdfsdadasfdfasddds', 1.0, 1, 1.0, 1);
INSERT INTO public.star VALUES (9, 'ssadfafdfsdadasfdffdafdsasddds', 1.0, 1, 1.0, 1);
INSERT INTO public.star VALUES (10, 'ssadfafdfsdadasfdffdafdsdfsasddds', 1.0, 1, 1.0, 1);


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 10, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 26, true);


--
-- Name: moon_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_planet_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: planet_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_star_id_seq', 1, false);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 10, true);


--
-- Name: asteroid asteroid_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_name_key UNIQUE (name);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


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

