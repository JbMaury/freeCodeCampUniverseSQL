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
    size numeric,
    distance_to_earth integer,
    discovery date
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
    has_atmosphere boolean,
    planet_id integer,
    age integer
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
-- Name: nhi; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.nhi (
    name character varying(30) NOT NULL,
    nhi_id integer NOT NULL,
    specie character varying(30)
);


ALTER TABLE public.nhi OWNER TO freecodecamp;

--
-- Name: nhi_nhi_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.nhi_nhi_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nhi_nhi_id_seq OWNER TO freecodecamp;

--
-- Name: nhi_nhi_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.nhi_nhi_id_seq OWNED BY public.nhi.nhi_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_to_earth integer,
    has_water boolean,
    star_id integer,
    rotation_period numeric
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
    sci_name text,
    galaxy_id integer,
    constellation character varying(30)
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
-- Name: nhi nhi_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nhi ALTER COLUMN nhi_id SET DEFAULT nextval('public.nhi_nhi_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Voie lactée', 200000, 0, '1984-01-03');
INSERT INTO public.galaxy VALUES (2, 'Andromede', 220000, 2550000, '1984-01-03');
INSERT INTO public.galaxy VALUES (3, 'Roue du chariot', 188000, 452000000, '1941-01-03');
INSERT INTO public.galaxy VALUES (4, 'Grand nuage de magellan', 14000, 163000, '1964-01-03');
INSERT INTO public.galaxy VALUES (5, 'Galaxie du grand chien', 2000, 25000, '2003-01-11');
INSERT INTO public.galaxy VALUES (6, 'Galaxie du tourbillon', 76900, 30000000, '1773-10-10');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Lune', false, 1, NULL);
INSERT INTO public.moon VALUES (2, 'Europa', false, 5, NULL);
INSERT INTO public.moon VALUES (3, 'Ganymede', false, 5, NULL);
INSERT INTO public.moon VALUES (4, 'Callisto', false, 5, NULL);
INSERT INTO public.moon VALUES (5, 'Io', false, 5, NULL);
INSERT INTO public.moon VALUES (6, 'Triton', false, 8, NULL);
INSERT INTO public.moon VALUES (7, 'Titan', false, 6, NULL);
INSERT INTO public.moon VALUES (8, 'Enceladus', false, 6, NULL);
INSERT INTO public.moon VALUES (9, 'Rhea', false, 6, NULL);
INSERT INTO public.moon VALUES (10, 'Dione', false, 6, NULL);
INSERT INTO public.moon VALUES (11, 'Thetys', false, 6, NULL);
INSERT INTO public.moon VALUES (12, 'Iapetus', false, 6, NULL);
INSERT INTO public.moon VALUES (13, 'Mimas', false, 6, NULL);
INSERT INTO public.moon VALUES (14, 'Hyperion', false, 6, NULL);
INSERT INTO public.moon VALUES (15, 'Miranda', false, 6, NULL);
INSERT INTO public.moon VALUES (16, 'Ariel', false, 6, NULL);
INSERT INTO public.moon VALUES (17, 'Umbriel', false, 6, NULL);
INSERT INTO public.moon VALUES (18, 'Titania', false, 6, NULL);
INSERT INTO public.moon VALUES (19, 'Phobos', false, 4, NULL);
INSERT INTO public.moon VALUES (20, 'Deimos', false, 4, NULL);


--
-- Data for Name: nhi; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.nhi VALUES ('zgblorg', 1, 'Zglgl');
INSERT INTO public.nhi VALUES ('GreyOnes', 2, 'Humanoid');
INSERT INTO public.nhi VALUES ('ThoseWhoDontSpeak', 3, 'BestialusIncognitus');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Terre', 0, true, 1, 1);
INSERT INTO public.planet VALUES (2, 'Mercure', 58000000, false, 1, 88);
INSERT INTO public.planet VALUES (3, 'Venus', 41, false, 1, 116);
INSERT INTO public.planet VALUES (4, 'Mars', 78, true, 1, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 629, false, 1, 1);
INSERT INTO public.planet VALUES (6, 'Saturne', 1275, false, 1, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 2721, false, 1, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 4352, false, 1, 1);
INSERT INTO public.planet VALUES (9, 'Sirius b', 8, false, 5, NULL);
INSERT INTO public.planet VALUES (10, 'Sirius c', 8, false, 5, NULL);
INSERT INTO public.planet VALUES (11, 'Sirius d', 8, false, 5, NULL);
INSERT INTO public.planet VALUES (12, 'Cor caroli b', 110, false, 6, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'soleil', 'sol', 1, NULL);
INSERT INTO public.star VALUES (2, 'Veritate', '14 And', 2, 'Andromede');
INSERT INTO public.star VALUES (3, 'Alpha sculptoris', 'a scl', 3, 'Sculpteur');
INSERT INTO public.star VALUES (4, 'S Doradus', 'S Dor', 4, 'Dorade');
INSERT INTO public.star VALUES (5, 'Sirius', 'Alpha Canis Majoris', 5, 'Grand chien');
INSERT INTO public.star VALUES (6, 'Cor Caroli', 'Alpha Canum Venaticorum', 6, 'Chien de chasse');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: nhi_nhi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.nhi_nhi_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon name_moon_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT name_moon_unq UNIQUE (name);


--
-- Name: planet name_planet_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT name_planet_unq UNIQUE (name);


--
-- Name: star name_star_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT name_star_unq UNIQUE (name);


--
-- Name: galaxy name_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT name_unq UNIQUE (name);


--
-- Name: nhi nhi_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nhi
    ADD CONSTRAINT nhi_pkey PRIMARY KEY (nhi_id);


--
-- Name: nhi nhi_specie_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nhi
    ADD CONSTRAINT nhi_specie_key UNIQUE (specie);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


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