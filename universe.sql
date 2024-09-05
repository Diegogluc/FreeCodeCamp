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
-- Name: elements_in_star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.elements_in_star (
    name character varying(20) NOT NULL,
    elements_in_star_id integer NOT NULL,
    star_id integer
);


ALTER TABLE public.elements_in_star OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    galaxy_shape character varying(10),
    age_in_millions_of_years integer,
    distance_from_earth_in_parsec numeric,
    visible_only_by_telescope boolean,
    description text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40) NOT NULL,
    planet_id integer NOT NULL,
    earth_size numeric,
    is_unique_moon boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    star_id integer NOT NULL,
    earth_size numeric,
    has_water boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth_in_parsec numeric,
    solar_radius text,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: elements_in_star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.elements_in_star VALUES ('Hydrogen', 1, 1);
INSERT INTO public.elements_in_star VALUES ('Helium', 2, 1);
INSERT INTO public.elements_in_star VALUES ('Hydrogen', 3, 2);
INSERT INTO public.elements_in_star VALUES ('Helium', 4, 2);
INSERT INTO public.elements_in_star VALUES ('Lithium', 5, 2);
INSERT INTO public.elements_in_star VALUES ('Hydrogen', 6, 9);
INSERT INTO public.elements_in_star VALUES ('Helium', 7, 9);
INSERT INTO public.elements_in_star VALUES ('Titanium', 8, 9);
INSERT INTO public.elements_in_star VALUES ('Iron', 9, 9);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (6, 'Pinwheel Galaxy', 'spiral', 13310, 6132027.9, true, NULL);
INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'eliptical', 10010, 766503.5, false, 'Closest galaxy to Milkway');
INSERT INTO public.galaxy VALUES (4, 'Cigar Galaxy', 'elliptical', NULL, 3679216.7, false, 'Is part of the Ursa Major constellation ');
INSERT INTO public.galaxy VALUES (3, 'Whirlpool Galaxy', 'spiral', 400, 9504643.2, true, 'Has a bizarre internal motion');
INSERT INTO public.galaxy VALUES (2, 'Black Eye Galaxy', 'spiral', 13280, 5212223.7, true, 'Discovered by Charles Messier in 1773');
INSERT INTO public.galaxy VALUES (5, 'Bode Galaxy', 'spiral', 13310, 3556576.2, false, 'One of the brightest galaxies in the night sky');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Ikki', 1, 0.1, true);
INSERT INTO public.moon VALUES (2, 'Johnny', 2, 0.02, true);
INSERT INTO public.moon VALUES (3, 'Maewo', 3, 1.003, true);
INSERT INTO public.moon VALUES (4, 'Kanto', 4, 0.6356, false);
INSERT INTO public.moon VALUES (5, 'Johto', 4, 1.6794, false);
INSERT INTO public.moon VALUES (6, 'Hoenn', 4, 3.6520, false);
INSERT INTO public.moon VALUES (7, 'Malboro', 7, 10.658, true);
INSERT INTO public.moon VALUES (8, 'Chesterfield', 8, 5.49562, false);
INSERT INTO public.moon VALUES (9, 'Dunhill', 8, 3.01267, false);
INSERT INTO public.moon VALUES (10, 'Free', 8, 1.64695, false);
INSERT INTO public.moon VALUES (11, 'Vogue', 8, 0.66678, false);
INSERT INTO public.moon VALUES (12, 'Iemanjá', 10, 20.013, false);
INSERT INTO public.moon VALUES (13, 'Oxalá', 10, 17.667, false);
INSERT INTO public.moon VALUES (14, 'Xangô', 10, 6.49305, false);
INSERT INTO public.moon VALUES (15, 'Ogum', 10, 5.95602, false);
INSERT INTO public.moon VALUES (16, 'Iansã', 10, 2.871602, false);
INSERT INTO public.moon VALUES (17, 'Nanã', 10, 0.760202, false);
INSERT INTO public.moon VALUES (18, 'Alcalá', 11, 2.91547, true);
INSERT INTO public.moon VALUES (19, 'Madrid', 12, 2.21616, true);
INSERT INTO public.moon VALUES (21, 'La Mancha', 13, 5.243, false);
INSERT INTO public.moon VALUES (20, 'Toledo', 13, 5.0193, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Shun', 1, 0.7533, false);
INSERT INTO public.planet VALUES (2, 'Yemi Alade', 5, 1.387, true);
INSERT INTO public.planet VALUES (3, 'Anolyn Lulu', 6, 2.03, false);
INSERT INTO public.planet VALUES (4, 'Wartortle', 7, 1.986, true);
INSERT INTO public.planet VALUES (5, 'Blastoise', 7, 5.97, true);
INSERT INTO public.planet VALUES (7, 'Lucky', 8, 50.111, false);
INSERT INTO public.planet VALUES (8, 'Strike', 8, 25.221, false);
INSERT INTO public.planet VALUES (9, 'Protetor', 9, 777, false);
INSERT INTO public.planet VALUES (10, 'Odara', 9, 333, false);
INSERT INTO public.planet VALUES (11, 'Miguel', 10, 2.13526, false);
INSERT INTO public.planet VALUES (12, 'Cervantes', 10, 4.49625, false);
INSERT INTO public.planet VALUES (13, 'Sancho', 10, 7.469852, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'AH1DGL', 10010, 766505.1, '135', 1);
INSERT INTO public.star VALUES (2, 'AH1DGM1', 10012, 766502.1, '2056', 1);
INSERT INTO public.star VALUES (3, 'AH1DGM2', 10012, 766502.1, '26', 1);
INSERT INTO public.star VALUES (4, 'AH1NDCR1', 10250, 768502.1, '1996', 1);
INSERT INTO public.star VALUES (5, 'Nigeria', 11280, 5214223.7, '1960', 2);
INSERT INTO public.star VALUES (6, 'Vanuatu', 12666, 5212275.02, '8030', 2);
INSERT INTO public.star VALUES (7, 'Squirtle', 388, 9504533.8, '508', 3);
INSERT INTO public.star VALUES (8, 'Camel', NULL, 3678754.0, '11193', 4);
INSERT INTO public.star VALUES (9, 'Exu', 13310, 3556666.666, '777666', 5);
INSERT INTO public.star VALUES (10, 'Quixote', 13310, 6131605.0, '992', 6);


--
-- Name: elements_in_star elements_in_star_elements_in_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.elements_in_star
    ADD CONSTRAINT elements_in_star_elements_in_star_id_key UNIQUE (elements_in_star_id);


--
-- Name: elements_in_star elements_in_star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.elements_in_star
    ADD CONSTRAINT elements_in_star_pkey PRIMARY KEY (elements_in_star_id);


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
-- Name: elements_in_star elements_in_star_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.elements_in_star
    ADD CONSTRAINT elements_in_star_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


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

