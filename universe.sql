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
    age numeric,
    is_spherial boolean
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
    age numeric,
    planet_id integer
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
    name character varying(30) NOT NULL,
    description text,
    age numeric,
    star_id integer,
    distance_from_earth integer
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
-- Name: planetarysystem; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planetarysystem (
    planetarysystem_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    age numeric
);


ALTER TABLE public.planetarysystem OWNER TO freecodecamp;

--
-- Name: planetarysystem_planetarysystem_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planetarysystem_planetarysystem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planetarysystem_planetarysystem_id_seq OWNER TO freecodecamp;

--
-- Name: planetarysystem_planetarysystem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planetarysystem_planetarysystem_id_seq OWNED BY public.planetarysystem.planetarysystem_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    age numeric,
    is_spherial boolean,
    galaxy_id integer,
    distance_from_earth integer
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
-- Name: planetarysystem planetarysystem_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planetarysystem ALTER COLUMN planetarysystem_id SET DEFAULT nextval('public.planetarysystem_planetarysystem_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Our home galaxy', 13.6, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Nearest spiral galaxy to Milky Way', 13.5, true);
INSERT INTO public.galaxy VALUES (3, 'Messier 87', 'Located in the Virgo Cluster', 13.2, true);
INSERT INTO public.galaxy VALUES (4, 'Triangulum', 'Third-largest galaxy in the Local Group', 13.0, true);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 'Interacting grand-design spiral galaxy', 13.2, true);
INSERT INTO public.galaxy VALUES (6, 'Sombrero', 'Unusual looking spiral galaxy', 12.7, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 'The Earth''s only natural satellite', 4.5, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Largest moon of Mars', 4.5, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Second moon of Mars', 4.5, 4);
INSERT INTO public.moon VALUES (4, 'Europa', 'One of Jupiter''s Galilean moons', 4.5, 5);
INSERT INTO public.moon VALUES (5, 'Ganymede', 'Largest moon in the Solar System', 4.5, 5);
INSERT INTO public.moon VALUES (6, 'Titan', 'Largest moon of Saturn', 4.5, 6);
INSERT INTO public.moon VALUES (7, 'Enceladus', 'Moon of Saturn known for its geysers', 4.5, 6);
INSERT INTO public.moon VALUES (8, 'Miranda', 'Uranus''s smallest spherical moon', 4.5, 7);
INSERT INTO public.moon VALUES (9, 'Triton', 'Largest moon of Neptune', 4.5, 8);
INSERT INTO public.moon VALUES (10, 'Charon', 'Largest moon of Pluto', 4.5, 9);
INSERT INTO public.moon VALUES (11, 'PSR B1620-26 b', 'Exomoon orbiting PSR B1620-26', 12.7, 10);
INSERT INTO public.moon VALUES (12, 'Tatooine', 'Fictional moon from Star Wars', 12.7, 10);
INSERT INTO public.moon VALUES (13, 'Endor', 'Fictional moon from Star Wars', 12.7, 10);
INSERT INTO public.moon VALUES (14, 'Yavin 4', 'Fictional moon from Star Wars', 12.7, 10);
INSERT INTO public.moon VALUES (15, 'Naboo', 'Fictional moon from Star Wars', 12.7, 10);
INSERT INTO public.moon VALUES (16, 'Hoth', 'Fictional moon from Star Wars', 12.7, 10);
INSERT INTO public.moon VALUES (17, 'Mustafar', 'Fictional moon from Star Wars', 12.7, 10);
INSERT INTO public.moon VALUES (18, 'Jedha', 'Fictional moon from Star Wars', 12.7, 10);
INSERT INTO public.moon VALUES (19, 'Scarif', 'Fictional moon from Star Wars', 12.7, 10);
INSERT INTO public.moon VALUES (20, 'Kashyyyk', 'Fictional moon from Star Wars', 12.7, 10);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Closest planet to the Sun', 4.6, 1, NULL);
INSERT INTO public.planet VALUES (2, 'Venus', 'Second planet from the Sun', 4.6, 1, NULL);
INSERT INTO public.planet VALUES (3, 'Earth', 'Third planet from the Sun and the only astronomical object known to harbor life', 4.6, 1, NULL);
INSERT INTO public.planet VALUES (4, 'Mars', 'Fourth planet from the Sun', 4.6, 1, NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Fifth planet from the Sun and the largest in the Solar System', 4.6, 1, NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Sixth planet from the Sun and the second-largest in the Solar System', 4.6, 1, NULL);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Seventh planet from the Sun', 4.6, 1, NULL);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Eighth and farthest planet from the Sun in the Solar System', 4.6, 1, NULL);
INSERT INTO public.planet VALUES (9, 'Proxima Centauri b', 'Exoplanet orbiting Proxima Centauri', 0.02, 2, NULL);
INSERT INTO public.planet VALUES (10, 'Kepler-442b', 'Exoplanet orbiting Kepler-442', 1.2, 2, NULL);
INSERT INTO public.planet VALUES (11, 'Gliese 667 Cc', 'Exoplanet orbiting Gliese 667 C', 0.4, 2, NULL);
INSERT INTO public.planet VALUES (12, 'HD 40307 g', 'Exoplanet orbiting HD 40307', 2.0, 2, NULL);


--
-- Data for Name: planetarysystem; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planetarysystem VALUES (1, 'Solar System', 'Our home planetary system', 4.6);
INSERT INTO public.planetarysystem VALUES (2, 'Alpha Centauri System', 'Closest star system to the Solar System', 6.0);
INSERT INTO public.planetarysystem VALUES (3, 'Kepler-442 System', 'Planetary system hosting exoplanet Kepler-442b', 1.2);
INSERT INTO public.planetarysystem VALUES (4, 'Trappist-1 System', 'Planetary system with seven Earth-sized exoplanets', 0.5);
INSERT INTO public.planetarysystem VALUES (5, 'Gliese 667 System', 'Planetary system hosting multiple exoplanets', 0.4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'The star at the center of the Solar System', 4.6, true, 1, NULL);
INSERT INTO public.star VALUES (2, 'Alpha Centauri', 'Closest star system to the Solar System', 6.0, true, 1, NULL);
INSERT INTO public.star VALUES (3, 'Sirius', 'Brightest star in the night sky', 0.3, true, 1, NULL);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 'Red supergiant in the constellation Orion', 8.2, true, 1, NULL);
INSERT INTO public.star VALUES (5, 'Vega', 'Brightest star in the constellation Lyra', 0.45, true, 1, NULL);
INSERT INTO public.star VALUES (6, 'Polaris', 'The North Star', 0.06, true, 1, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: planetarysystem_planetarysystem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planetarysystem_planetarysystem_id_seq', 5, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: planetarysystem planetarysystem_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planetarysystem
    ADD CONSTRAINT planetarysystem_name_key UNIQUE (name);


--
-- Name: planetarysystem planetarysystem_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planetarysystem
    ADD CONSTRAINT planetarysystem_pkey PRIMARY KEY (planetarysystem_id);


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
-- Name: moon fk_moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

