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
    description text,
    age integer,
    has_life boolean,
    year_of_discovery integer
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
    name character varying(30) NOT NULL,
    description text,
    age integer,
    year_of_discovery integer,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_columnmoon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_columnmoon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_columnmoon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_columnmoon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_columnmoon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    age integer,
    has_life boolean,
    year_of_discovery integer,
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    age integer,
    year_of_discovery integer,
    distance_from_earth_in_light_years numeric(10,1),
    galaxy_id integer
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
-- Name: temp; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.temp (
    temp_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    age integer,
    year_of_discovery integer
);


ALTER TABLE public.temp OWNER TO freecodecamp;

--
-- Name: temp_temp_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.temp_temp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.temp_temp_id_seq OWNER TO freecodecamp;

--
-- Name: temp_temp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.temp_temp_id_seq OWNED BY public.temp.temp_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_columnmoon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: temp temp_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.temp ALTER COLUMN temp_id SET DEFAULT nextval('public.temp_temp_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Cartwheel Galaxy', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Cigar Galaxy', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Pinwheel Galaxy', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Black Eye Galaxy', NULL, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Titan', NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (2, 'Enceladus', NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (3, 'Mimas', NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (4, 'Dione', NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (5, 'Iapetus', NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (6, 'Tethys', NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (7, 'Hyperion', NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (8, 'Epimetheus', NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (9, 'Telesto', NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (10, 'Phoebe', NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (11, 'Daphnis', NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (12, 'Rhea', NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (13, 'Paaliaq', NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (14, 'Erriapus', NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (15, 'Narvi', NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (16, 'Skathi', NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (17, 'Tarvos', NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (18, 'Ymir', NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (19, 'Anthe', NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (20, 'Methone', NULL, NULL, NULL, 4);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'Mars', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (3, 'Jupiter', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (4, 'Saturn', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (5, 'Uranus', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (6, 'Venus', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (7, 'Neptune', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (8, 'Mercury', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (9, 'Kepler-22b', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (10, 'Kepler-186f', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (11, 'Kepler-452b', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (12, '55 Cancri b', NULL, NULL, NULL, NULL, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (2, 'Sirius A', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (3, 'Canopus', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (4, 'Arcturus', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (5, 'Vega', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (6, 'Capella A', NULL, NULL, NULL, NULL, 1);


--
-- Data for Name: temp; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.temp VALUES (1, 'Hi,', NULL, NULL, NULL);
INSERT INTO public.temp VALUES (2, 'My', NULL, NULL, NULL);
INSERT INTO public.temp VALUES (3, 'Name', NULL, NULL, NULL);
INSERT INTO public.temp VALUES (4, 'Is', NULL, NULL, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_columnmoon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_columnmoon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: temp_temp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.temp_temp_id_seq', 4, true);


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
-- Name: temp temp_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.temp
    ADD CONSTRAINT temp_name_key UNIQUE (name);


--
-- Name: temp temp_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.temp
    ADD CONSTRAINT temp_pkey PRIMARY KEY (temp_id);


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

