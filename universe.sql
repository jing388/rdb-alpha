--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: countries; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.countries (
    countries_id integer NOT NULL,
    name character varying(225) NOT NULL,
    description text,
    population_count numeric
);


ALTER TABLE public.countries OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(225) NOT NULL,
    age_in_millions_of_years integer,
    description text,
    still_exists boolean,
    galaxy_count integer,
    galaxy_distance numeric,
    larger_than_milky_way boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(225) NOT NULL,
    age_in_millions_of_years integer,
    description text,
    still_exists boolean,
    moon_distance numeric,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(225) NOT NULL,
    age_in_millions_of_years integer,
    description text,
    still_exists boolean,
    planet_distance numeric,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(225) NOT NULL,
    ange_in_miillions_of_years integer,
    description text,
    still_exists boolean,
    star_distance numeric,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: countries; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.countries VALUES (1, 'Japan', 'Island nation known for technology and rich culture.', 125000000);
INSERT INTO public.countries VALUES (2, 'Brazil', 'Largest country in South America with diverse ecosystems.', 215000000);
INSERT INTO public.countries VALUES (3, 'Norway', 'Scandinavian country famous for fjords and northern lights.', 5500000);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Gwyneth', 70, 'Super gay galaxy.', true, 1202, 1300, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 10000, 'Nearest major galaxy to the Milky Way.', true, 1500, 2537, true);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 8500, 'Third-largest member of the Local Group.', true, 890, 3000, false);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 13000, 'Beautiful spiral galaxy with bright nucleus.', true, 2000, 29350, true);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 11000, 'Classic spiral galaxy with prominent arms.', true, 1100, 23160, false);
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', 12500, 'Face-on spiral galaxy with active star formation.', true, 1750, 20870, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Bea Lugtu', 74, 'Another super gayer moon.', true, 19384, 1);
INSERT INTO public.moon VALUES (2, 'Luna Nova', 4500, 'Cratered moon with ancient impact basins.', true, 384400, 2);
INSERT INTO public.moon VALUES (3, 'Phobos Twin', 3200, 'Small irregular moon with fast orbit.', true, 9377, 3);
INSERT INTO public.moon VALUES (4, 'Europa Minor', 4000, 'Icy moon with subsurface ocean.', true, 670900, 4);
INSERT INTO public.moon VALUES (5, 'Callisto Prime', 4500, 'Heavily cratered ancient moon.', true, 1882700, 5);
INSERT INTO public.moon VALUES (6, 'Titan Echo', 3800, 'Moon with thick nitrogen atmosphere.', true, 1221870, 6);
INSERT INTO public.moon VALUES (7, 'Enceladus II', 2500, 'Geologically active moon with ice geysers.', true, 238020, 7);
INSERT INTO public.moon VALUES (8, 'Miranda', 4200, 'Moon with dramatic cliff formations.', true, 129900, 8);
INSERT INTO public.moon VALUES (9, 'Triton Beta', 4100, 'Retrograde orbiting frozen moon.', true, 354759, 9);
INSERT INTO public.moon VALUES (10, 'Charon Shadow', 4000, 'Large moon in synchronous rotation.', true, 19571, 10);
INSERT INTO public.moon VALUES (11, 'Io Replica', 4500, 'Volcanically active moon with sulfur surface.', true, 421700, 11);
INSERT INTO public.moon VALUES (12, 'Ganymede Plus', 4300, 'Largest moon with magnetic field.', true, 1070400, 12);
INSERT INTO public.moon VALUES (13, 'Oberon', 3900, 'Dark cratered moon with red spots.', true, 583520, 13);
INSERT INTO public.moon VALUES (14, 'Rhea', 4400, 'Icy moon with wispy terrain features.', true, 527108, 14);
INSERT INTO public.moon VALUES (15, 'Dione', 4000, 'Moon with bright ice cliffs.', true, 377396, 15);
INSERT INTO public.moon VALUES (16, 'Tethys', 3700, 'Moon with massive canyon system.', true, 294619, 16);
INSERT INTO public.moon VALUES (17, 'Iapetus', 4500, 'Two-toned moon with dark and bright hemispheres.', true, 3560820, 17);
INSERT INTO public.moon VALUES (21, 'Selene', 2800, 'Shimmering moon with reflective ice crystals.', true, 125000, 2);
INSERT INTO public.moon VALUES (22, 'Hyperion', 3300, 'Irregularly shaped sponge-like moon.', true, 148000, 4);
INSERT INTO public.moon VALUES (23, 'Deimos Clone', 4600, 'Tiny potato-shaped moon with rapid orbit.', true, 23460, 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Carl James', 1203, 'Another gay planet.', true, 145385, 1);
INSERT INTO public.planet VALUES (2, 'Neptune Prime', 4500, 'Ice giant with violent storms and deep blue atmosphere.', true, 4500, 2);
INSERT INTO public.planet VALUES (3, 'Kepler-442b', 2800, 'Super-Earth in the habitable zone, potential for life.', true, 1200, 3);
INSERT INTO public.planet VALUES (4, 'Proxima b', 4850, 'Rocky exoplanet orbiting Proxima Centauri.', true, 4.24, 3);
INSERT INTO public.planet VALUES (5, 'Titan Redux', 4000, 'Moon-like planet with thick atmosphere and liquid methane.', true, 8860, 4);
INSERT INTO public.planet VALUES (6, 'Vulcan', 3200, 'Hot desert planet with extreme temperatures.', true, 16, 1);
INSERT INTO public.planet VALUES (7, 'Aurora', 5500, 'Planet with spectacular auroras visible from space.', true, 95000, 5);
INSERT INTO public.planet VALUES (8, 'Pandora', 1800, 'Lush jungle planet with bioluminescent vegetation.', true, 44000, 6);
INSERT INTO public.planet VALUES (9, 'Osiris', 6200, 'Ancient planet with rings and three moons.', true, 210000, 2);
INSERT INTO public.planet VALUES (10, 'Zephyr', 900, 'Young planet with active volcanic activity.', true, 12500, 4);
INSERT INTO public.planet VALUES (11, 'Atlantis', 7800, 'Water world completely covered by ocean.', true, 78000, 1);
INSERT INTO public.planet VALUES (12, 'Crimson Edge', 3400, 'Red rocky planet with iron oxide surface.', true, 55500, 5);
INSERT INTO public.planet VALUES (13, 'Elysium', 4200, 'Paradise planet with perfect climate conditions.', true, 92000, 3);
INSERT INTO public.planet VALUES (14, 'Frostbite', 5100, 'Frozen ice planet in perpetual winter.', true, 180000, 6);
INSERT INTO public.planet VALUES (15, 'Ember', 2500, 'Tidally locked planet with one side always facing its star.', true, 8.2, 2);
INSERT INTO public.planet VALUES (16, 'Celestia', 6800, 'Gas giant with beautiful cloud patterns.', true, 425000, 4);
INSERT INTO public.planet VALUES (17, 'Nebula', 1500, 'Planet surrounded by colorful nebula clouds.', true, 310000, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirius', 242, 'Brightest star in the night sky, binary system.', true, 8.6, 1);
INSERT INTO public.star VALUES (2, 'Betelgeuse', 8500, 'Red supergiant star in Orion constellation.', true, 642.5, 1);
INSERT INTO public.star VALUES (3, 'Proxima Centauri', 4850, 'Closest star to our solar system.', true, 4.24, 1);
INSERT INTO public.star VALUES (4, 'Vega', 455, 'Fifth brightest star, part of Summer Triangle.', true, 25.04, 1);
INSERT INTO public.star VALUES (5, 'Rigel', 8000, 'Blue supergiant, seventh brightest star.', true, 863.0, 1);
INSERT INTO public.star VALUES (6, 'Polaris', 70, 'North Star, important for navigation.', true, 433.8, 1);


--
-- Name: countries countries_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_name_key UNIQUE (name);


--
-- Name: countries countries_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (countries_id);


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

