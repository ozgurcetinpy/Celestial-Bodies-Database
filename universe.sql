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
-- Name: features; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.features (
    features_id integer NOT NULL,
    name character varying(30),
    planet_id integer NOT NULL
);


ALTER TABLE public.features OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    radius integer,
    description text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    age_in_millions_of_year integer,
    radius integer,
    planet_id integer NOT NULL,
    scale numeric
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    age_in_millions_of_year integer,
    radius integer,
    has_life boolean,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    age_in_millions_of_years integer,
    radius integer,
    has_life boolean,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: features; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.features VALUES (1, 'Cold', 1);
INSERT INTO public.features VALUES (2, 'Cold', 2);
INSERT INTO public.features VALUES (3, 'Has Life', 3);
INSERT INTO public.features VALUES (4, 'No Life', 4);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Samanyolu', 3000, 10, 'Our Galaxy that we live');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 5000, 15, 'Nearest Galaxy of Samanyolu, brother galaxy');
INSERT INTO public.galaxy VALUES (3, 'Big Macellan', 4000, 25, NULL);
INSERT INTO public.galaxy VALUES (4, 'Small Macellan', 1000, 12, NULL);
INSERT INTO public.galaxy VALUES (5, 'Cüce Ejderha', 500, 5, 'Smallest Galaxy in Universe');
INSERT INTO public.galaxy VALUES (6, 'Permet Gökadası', 8000, 30, 'Biggest Galaxy in Universe');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Narvi', 1, 1, 1, 1);
INSERT INTO public.moon VALUES (2, 'Siarnaq', 1, 2, 1, 2);
INSERT INTO public.moon VALUES (3, 'Siarnaq', 2, 1, 2, 2);
INSERT INTO public.moon VALUES (4, 'Dione', 2, 1, 4, 2);
INSERT INTO public.moon VALUES (5, 'Dione', 1, 2, 5, 1);
INSERT INTO public.moon VALUES (6, 'Same Name', 1, 1, 3, 1);
INSERT INTO public.moon VALUES (7, 'Same Name', 1, 1, 3, 1);
INSERT INTO public.moon VALUES (8, 'Same Name', 1, 1, 3, 1);
INSERT INTO public.moon VALUES (9, 'Same Name', 1, 1, 3, 1);
INSERT INTO public.moon VALUES (10, 'Same Name', 1, 1, 3, 1);
INSERT INTO public.moon VALUES (11, 'Same Name', 1, 1, 3, 1);
INSERT INTO public.moon VALUES (12, 'Same Name', 1, 1, 4, 2);
INSERT INTO public.moon VALUES (13, 'Same Name', 1, 1, 4, 2);
INSERT INTO public.moon VALUES (14, 'Same Name', 1, 2, 5, 1);
INSERT INTO public.moon VALUES (15, 'Same Name', 2, 2, 5, 1);
INSERT INTO public.moon VALUES (16, 'Same Name', 2, 1, 6, 1);
INSERT INTO public.moon VALUES (17, 'Same Name', 2, 2, 6, 1);
INSERT INTO public.moon VALUES (18, 'Same Name', 1, 3, 7, 2);
INSERT INTO public.moon VALUES (19, 'Same Name', 1, 2, 7, 2);
INSERT INTO public.moon VALUES (20, 'Same Name', 2, 1, 7, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Merkur', 1, 1, true, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 2, 2, true, 2);
INSERT INTO public.planet VALUES (3, 'Mars', 3, 3, false, 3);
INSERT INTO public.planet VALUES (4, 'Dunya', 3, 3, true, 1);
INSERT INTO public.planet VALUES (5, 'Jupyter', 10, 10, true, 3);
INSERT INTO public.planet VALUES (6, 'Saturn', 6, 6, false, 4);
INSERT INTO public.planet VALUES (7, 'Uranus', 5, 5, true, 5);
INSERT INTO public.planet VALUES (8, 'Neptun', 5, 5, true, 6);
INSERT INTO public.planet VALUES (9, 'Ceres', 1, 1, true, 5);
INSERT INTO public.planet VALUES (10, 'Eris', 1, 1, true, 6);
INSERT INTO public.planet VALUES (11, 'Pluton', 1, 1, true, 2);
INSERT INTO public.planet VALUES (12, 'Makemake', 1, 1, false, 1);
INSERT INTO public.planet VALUES (13, 'Haumea', 1, 1, false, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1000, 2, true, 1);
INSERT INTO public.star VALUES (2, 'Hoxin', 1500, 3, false, 1);
INSERT INTO public.star VALUES (3, 'Decaq', 850, 1, true, 1);
INSERT INTO public.star VALUES (4, 'Kalak', 1100, 2, false, 2);
INSERT INTO public.star VALUES (5, 'Nuls', 1200, 3, true, 2);
INSERT INTO public.star VALUES (6, 'Nolakis', 1200, 4, true, 2);


--
-- Name: features features_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.features
    ADD CONSTRAINT features_pkey PRIMARY KEY (features_id);


--
-- Name: features features_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.features
    ADD CONSTRAINT features_planet_id_key UNIQUE (planet_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


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

