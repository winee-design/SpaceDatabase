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
    num_planets integer NOT NULL,
    num_stars integer NOT NULL,
    color character varying(20)
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
    planet_id integer NOT NULL,
    has_communications_station boolean NOT NULL,
    orbital_rotation character varying(20) NOT NULL
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
    gravity numeric(4,2) NOT NULL,
    description text NOT NULL,
    has_moons boolean NOT NULL,
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
-- Name: spaceship; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.spaceship (
    spaceship_id integer NOT NULL,
    name character varying(20) NOT NULL,
    current_sector character varying(10) NOT NULL
);


ALTER TABLE public.spaceship OWNER TO freecodecamp;

--
-- Name: spaceship_spaceship_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.spaceship_spaceship_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spaceship_spaceship_id_seq OWNER TO freecodecamp;

--
-- Name: spaceship_spaceship_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.spaceship_spaceship_id_seq OWNED BY public.spaceship.spaceship_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_planets boolean NOT NULL,
    galaxy_id integer NOT NULL,
    class character varying(1)
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
-- Name: spaceship spaceship_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.spaceship ALTER COLUMN spaceship_id SET DEFAULT nextval('public.spaceship_spaceship_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Artirus', 3, 1, 'Red');
INSERT INTO public.galaxy VALUES (2, 'Vandion', 2, 2, 'Blue');
INSERT INTO public.galaxy VALUES (3, 'Pralia', 4, 3, 'Yellow');
INSERT INTO public.galaxy VALUES (4, 'Torus', 5, 1, 'Red');
INSERT INTO public.galaxy VALUES (5, 'Farei', 1, 1, 'Purple');
INSERT INTO public.galaxy VALUES (6, 'Rinah', 4, 2, 'Yellow');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Toomu', 1, true, 'Clockwise');
INSERT INTO public.moon VALUES (2, 'Talion', 2, false, 'Clockwise');
INSERT INTO public.moon VALUES (3, 'Mido', 4, true, 'Counter-Clockwise');
INSERT INTO public.moon VALUES (4, 'Halion', 4, false, 'Counter-Clockwise');
INSERT INTO public.moon VALUES (5, 'Apri I', 5, true, 'Clockwise');
INSERT INTO public.moon VALUES (6, 'Apri II', 5, true, 'Counter-Clockwise');
INSERT INTO public.moon VALUES (7, 'Apri III', 5, true, 'Clockwise');
INSERT INTO public.moon VALUES (8, 'Shawi', 6, false, 'Counter-Clockwise');
INSERT INTO public.moon VALUES (9, 'Pert IX', 9, false, 'Counter-Clockwise');
INSERT INTO public.moon VALUES (10, 'Pert X', 9, true, 'Counter-Clockwise');
INSERT INTO public.moon VALUES (11, 'Yarloo', 10, false, 'Clockwise');
INSERT INTO public.moon VALUES (12, 'XA-137', 11, true, 'Clockwise');
INSERT INTO public.moon VALUES (13, 'XA-138', 11, true, 'Counter-Clockwise');
INSERT INTO public.moon VALUES (14, 'XA-139', 11, false, 'Counter-Clockwise');
INSERT INTO public.moon VALUES (15, 'Mita II', 14, false, 'Clockwise');
INSERT INTO public.moon VALUES (16, 'Filan IV', 16, true, 'Clockwise');
INSERT INTO public.moon VALUES (17, 'C-17', 17, true, 'Counter-Clockwise');
INSERT INTO public.moon VALUES (18, 'C-18', 17, true, 'Clockwise');
INSERT INTO public.moon VALUES (19, 'Ijo I', 19, false, 'Clockwise');
INSERT INTO public.moon VALUES (20, 'Ijo II', 19, false, 'Counter-Clockwise');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (4, 'Gio', 0.57, 'Gio is famous for its rocky terrain, yet lush forests', true, 2);
INSERT INTO public.planet VALUES (1, 'Vela IV', 3.12, 'The smallest of the Vela line.', true, 1);
INSERT INTO public.planet VALUES (2, 'Vela III', 0.02, 'The surface of Vela III is almost entirely water.', true, 1);
INSERT INTO public.planet VALUES (3, 'Vela II', 4.50, 'Has usurped the status of largest planet since VELA I was destroyed.', false, 1);
INSERT INTO public.planet VALUES (5, 'Hera', 37.00, 'Do not travel, unless being crushed sounds fun', true, 2);
INSERT INTO public.planet VALUES (8, 'Ino III', 24.38, 'Due to its extreme gravity, it pulled Ino II into itself.', false, 4);
INSERT INTO public.planet VALUES (9, 'Jitona', 4.44, 'Inhabited by the Jitonans. A peacful race of 10 foot tall beings.', true, 5);
INSERT INTO public.planet VALUES (6, 'Ino I', 6.14, 'Likely contains organic life, although it has yet to be confirmed.', true, 4);
INSERT INTO public.planet VALUES (7, 'Ino II', 0.19, 'Desolate and uninhabitable. Collided with its brother Ino III.', false, 4);
INSERT INTO public.planet VALUES (11, 'Erashi II', 0.46, 'The high temps here are equally as harsh as the lows.', true, 7);
INSERT INTO public.planet VALUES (12, 'Erashi III', 14.46, 'The largest of the Erashi family of planets.', false, 7);
INSERT INTO public.planet VALUES (13, 'Ventu I', 2.11, 'Hills and Valleys as far as the eye can see.', false, 7);
INSERT INTO public.planet VALUES (14, 'Ventu II', 1.00, 'Has some fantastic golf courses.', true, 7);
INSERT INTO public.planet VALUES (15, 'Nalla', 0.10, 'Has a somewhat odd shape.', false, 8);
INSERT INTO public.planet VALUES (16, 'Kalona I', 8.90, 'Its atmosphere has a somewhat greenish hue.', true, 9);
INSERT INTO public.planet VALUES (17, 'Kalona II', 3.20, 'The home base of the Galactic Republic.', true, 9);
INSERT INTO public.planet VALUES (18, 'Hyaki', 5.11, 'The entire planet is practically an armory.', false, 10);
INSERT INTO public.planet VALUES (19, 'Ipius', 2.20, 'A fantastic place to travel for extreme river rafting.', true, 10);
INSERT INTO public.planet VALUES (10, 'Erashi I', 5.92, 'Closest to the sun.', true, 7);


--
-- Data for Name: spaceship; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.spaceship VALUES (1, 'The Centurion', 'A-17');
INSERT INTO public.spaceship VALUES (2, 'Lightskipper', 'Z-98');
INSERT INTO public.spaceship VALUES (3, 'The Ray', 'F-53');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Midus I', true, 1, 'C');
INSERT INTO public.star VALUES (2, 'Pales', true, 2, 'A');
INSERT INTO public.star VALUES (3, 'Jorin II', false, 2, 'B');
INSERT INTO public.star VALUES (4, 'Linas Prime', true, 3, 'A');
INSERT INTO public.star VALUES (5, 'Lopas', true, 3, 'G');
INSERT INTO public.star VALUES (6, 'Litus', false, 3, 'L');
INSERT INTO public.star VALUES (7, 'Noona', true, 4, 'E');
INSERT INTO public.star VALUES (8, 'Farus I', true, 5, 'D');
INSERT INTO public.star VALUES (9, 'Rusin I', true, 6, 'H');
INSERT INTO public.star VALUES (10, 'Rusin II', true, 6, 'I');


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 19, true);


--
-- Name: spaceship_spaceship_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.spaceship_spaceship_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 10, true);


--
-- Name: galaxy galaxy_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id_unique UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id_unique UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id_unique UNIQUE (planet_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: spaceship spaceship_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.spaceship
    ADD CONSTRAINT spaceship_id_unique UNIQUE (spaceship_id);


--
-- Name: spaceship spaceship_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.spaceship
    ADD CONSTRAINT spaceship_pkey PRIMARY KEY (spaceship_id);


--
-- Name: star star_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id_unique UNIQUE (star_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star galaxy_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_id_fk FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon planet_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_id_fk FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet star_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_id_fk FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

