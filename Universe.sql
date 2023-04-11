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
    name character varying(30) NOT NULL,
    type character varying(50),
    shape character varying(50),
    age_in_billion numeric(10,2)
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
-- Name: infor_control; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.infor_control (
    infor_control_id integer NOT NULL,
    name character varying(30) NOT NULL,
    number_of_rows integer NOT NULL
);


ALTER TABLE public.infor_control OWNER TO freecodecamp;

--
-- Name: infor_control_infor_control_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.infor_control_infor_control_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.infor_control_infor_control_id_seq OWNER TO freecodecamp;

--
-- Name: infor_control_infor_control_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.infor_control_infor_control_id_seq OWNED BY public.infor_control.infor_control_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(10) NOT NULL,
    size numeric(10,2),
    age numeric(10,2),
    planet_id integer,
    has_water boolean
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
    name character varying(20) NOT NULL,
    size numeric(10,2),
    age numeric(10,2),
    number_of_moons integer,
    star_id integer,
    name_meaning text,
    is_gas_giant boolean
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
    name character varying(20) NOT NULL,
    galaxy_id integer,
    size numeric(10,2),
    age numeric(10,2),
    spectral_class character varying(20)
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
-- Name: infor_control infor_control_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.infor_control ALTER COLUMN infor_control_id SET DEFAULT nextval('public.infor_control_infor_control_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'The Milky Way', 'Spiral', 'Spiral', 13.61);
INSERT INTO public.galaxy VALUES (2, 'The Whirlpool', 'Spiral', 'Spiral', 0.40);
INSERT INTO public.galaxy VALUES (3, 'The Andromeda', 'Spiral', 'Spiral', 10.01);
INSERT INTO public.galaxy VALUES (4, 'The Sombrero', 'Spiral', 'Sombrero hat', 13.25);
INSERT INTO public.galaxy VALUES (5, 'The Baby Boom', 'Starburst', 'Elliptical', 1.40);
INSERT INTO public.galaxy VALUES (6, 'Phoenix Dwarf', 'Irregular', 'Elliptical', 12.00);


--
-- Data for Name: infor_control; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.infor_control VALUES (1, 'star', 11);
INSERT INTO public.infor_control VALUES (2, 'planet', 12);
INSERT INTO public.infor_control VALUES (3, 'galaxy', 6);
INSERT INTO public.infor_control VALUES (5, 'moon', 20);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'the Moon', 1080.00, 4.50, 3, true);
INSERT INTO public.moon VALUES (2, 'Phobos', 6.90, NULL, 4, false);
INSERT INTO public.moon VALUES (5, 'Europa', 970.00, 4.60, 5, true);
INSERT INTO public.moon VALUES (6, 'Ganymede', 1638.00, 4.60, 5, true);
INSERT INTO public.moon VALUES (7, 'Callisto', 1498.00, 4.60, 5, true);
INSERT INTO public.moon VALUES (4, 'Io', 1131.00, 4.60, 5, true);
INSERT INTO public.moon VALUES (3, 'Deimos', 3.90, NULL, 4, true);
INSERT INTO public.moon VALUES (10, 'Galileo', NULL, 34.00, 5, true);
INSERT INTO public.moon VALUES (9, 'Voyager2', NULL, 45.00, 5, true);
INSERT INTO public.moon VALUES (8, 'Voyager1', NULL, 45.00, 5, true);
INSERT INTO public.moon VALUES (11, 'Juno', NULL, 12.00, 5, true);
INSERT INTO public.moon VALUES (12, 'Titania', 489.80, 4.60, 7, true);
INSERT INTO public.moon VALUES (13, 'Oberon', 473.10, 4.60, 7, true);
INSERT INTO public.moon VALUES (14, 'Titan', 1600.00, 4.60, 6, true);
INSERT INTO public.moon VALUES (15, 'Enceladus', 157.00, 4.50, 6, true);
INSERT INTO public.moon VALUES (16, 'Rhea', 474.80, 4.50, 6, true);
INSERT INTO public.moon VALUES (17, 'Proteus', 130.00, 4.50, 8, true);
INSERT INTO public.moon VALUES (18, 'Nereid', 106.00, 4.50, 8, true);
INSERT INTO public.moon VALUES (19, 'Larissa', 60.00, 4.50, 8, true);
INSERT INTO public.moon VALUES (20, 'Galatea', 55.00, 4.50, 8, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'Venus', 3760.40, 4.50, 0, 8, 'after the Roman goddess of love and beauty', false);
INSERT INTO public.planet VALUES (3, 'Earth', 3958.80, 4.54, 1, 8, 'the ground', false);
INSERT INTO public.planet VALUES (4, 'Mars', 2106.10, 4.60, 2, 8, 'after the Roman god of war', false);
INSERT INTO public.planet VALUES (6, 'Saturn', 36184.00, 4.50, 82, 8, 'after the Roman god of agriculture and wealth', true);
INSERT INTO public.planet VALUES (5, 'Jupiter', 43441.00, 4.50, 79, 8, 'after the Roman king of the gods and the god of sky and thunder', true);
INSERT INTO public.planet VALUES (7, 'Uranus', 15759.00, 4.50, 27, 8, 'after the ancient Greek god of the sky', true);
INSERT INTO public.planet VALUES (8, 'Neptune', 15299.00, 4.50, 14, 8, 'after the Roman god of the sea', true);
INSERT INTO public.planet VALUES (1, 'Mercury', 1516.00, 4.50, 0, 8, 'after the Roman god of commerce and travel and communication', false);
INSERT INTO public.planet VALUES (11, 'Proxima Centauri b', 3959.00, 4.85, 0, 9, 'orbits the star Prixima Centauri', true);
INSERT INTO public.planet VALUES (12, 'Kepler-186f', 3850.00, 4.00, 0, 11, 'after spacecraft name which discovered it', false);
INSERT INTO public.planet VALUES (10, 'Alpha Centauri Bb', 0.77, 6.00, 0, 10, 'refer to one of the stars in the Alpha Centauri star system ', false);
INSERT INTO public.planet VALUES (14, 'Sirius A', 739640.00, 0.28, 24, 1, 'derived from the Geek word, meaning lit', false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (3, 'M31 V1', 3, NULL, 400.00, 'F6-G0');
INSERT INTO public.star VALUES (6, 'Rigil Kentaurus', 1, 1.06, 9.20, 'G2V');
INSERT INTO public.star VALUES (7, 'Altair', 1, 1.57, 1.20, 'A7V');
INSERT INTO public.star VALUES (9, 'Alpha Centauri A', 1, 1090000.00, 6.40, 'G2V');
INSERT INTO public.star VALUES (10, 'Alpha Centauri B', 1, 770000.00, 6.00, 'K1V');
INSERT INTO public.star VALUES (11, 'Kepler-186', 1, 378000.00, 4.00, 'M-dwarf');
INSERT INTO public.star VALUES (8, 'Sun', 1, 432690.00, 4.60, 'yellow dwarf');
INSERT INTO public.star VALUES (1, 'Sirius', 1, 739640.00, 230.00, 'A0 or A1');
INSERT INTO public.star VALUES (4, 'Canopus', 1, 30692000.00, 61.39, 'A9 II');
INSERT INTO public.star VALUES (5, 'Arcturus', 1, 10980000.00, 7.11, 'K1.5IIIFe-.5');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: infor_control_infor_control_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.infor_control_infor_control_id_seq', 5, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 11, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key1 UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: infor_control infor_control_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.infor_control
    ADD CONSTRAINT infor_control_name_key UNIQUE (name);


--
-- Name: infor_control infor_control_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.infor_control
    ADD CONSTRAINT infor_control_name_key1 UNIQUE (name);


--
-- Name: infor_control infor_control_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.infor_control
    ADD CONSTRAINT infor_control_pkey PRIMARY KEY (infor_control_id);


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
-- Name: star star_size_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_size_key UNIQUE (size);


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

