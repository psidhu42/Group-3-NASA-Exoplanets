CREATE TABLE unverified_planets (
	Kepler_OI_Name VARCHAR(50) NOT NULL,
	Number_of_Planets INT NOT NULL,
	Planet_Radius_Earth FLOAT(40) NOT NULL,
	Equalibrium_Temp_K FLOAT(40) NOT NULL,
	Orbit_Period_Days FLOAT(40) NOT NULL,
	Star_Radius_Sun FLOAT(40) NOT NULL,
	Star_Temp_K FLOAT(40) NOT NULL,
	Star_Mass_Sun FLOAT(40) NOT NULL,
	Star_Surface_Gravity FLOAT(40) NOT NULL,
	Planet_Star_Radius_Ratio FLOAT(40) NOT NULL,
	Status INT NOT NULL
);

CREATE TABLE verified_planets (
	Kepler_OI_Name VARCHAR(50) NOT NULL,
	Number_of_Planets INT NOT NULL,
	Planet_Radius_Earth FLOAT(40) NOT NULL,
	Equalibrium_Temp_K FLOAT(40) NOT NULL,
	Orbit_Period_Days FLOAT(40) NOT NULL,
	Star_Radius_Sun FLOAT(40) NOT NULL,
	Star_Temp_K FLOAT(40) NOT NULL,
	Star_Mass_Sun FLOAT(40) NOT NULL,
	Star_Surface_Gravity FLOAT(40) NOT NULL,
	Planet_Star_Radius_Ratio FLOAT(40) NOT NULL,
	Status INT NOT NULL
);


CREATE TABLE nm_value (
	Kepler_OI_Name VARCHAR(50) NOT NULL,
	Number_of_Planets INT NOT NULL,
	Planet_Radius_Earth FLOAT(40) NOT NULL,
	Equalibrium_Temp_K FLOAT(40) NOT NULL,
	Orbit_Period_Days FLOAT(40) NOT NULL,
	Star_Radius_Sun FLOAT(40) NOT NULL,
	Star_Temp_K FLOAT(40) NOT NULL,
	Star_Mass_Sun FLOAT(40) NOT NULL,
	Star_Surface_Gravity FLOAT(40) NOT NULL,
	Planet_Star_Radius_Ratio FLOAT(40) NOT NULL,
	Status INT NOT NULL
);

CREATE TABLE planet_prediction (
	Kepler_OI_Name VARCHAR(50) NOT NULL,
	Prediction INT NOT NULL,
	Number_of_Planets INT NOT NULL,
	Planet_Radius_Earth FLOAT(40) NOT NULL,
	Equalibrium_Temp_K FLOAT(40) NOT NULL,
	Orbit_Period_Days FLOAT(40) NOT NULL,
	Star_Radius_Sun FLOAT(40) NOT NULL,
	Star_Temp_K FLOAT(40) NOT NULL,
	Star_Mass_Sun FLOAT(40) NOT NULL,
	Star_Surface_Gravity FLOAT(40) NOT NULL,
	Planet_Star_Radius_Ratio FLOAT(40) NOT NULL
);

SELECT * FROM nm_value;
SELECT * FROM planet_prediction;
SELECT * FROM unverified_planets;
SELECT * FROM verified_planets;

SELECT * INTO kepler_planets
FROM unverified_planets;
INSERT INTO kepler_planets
SELECT * FROM verified_planets;

SELECT * FROM kepler_planets;

--DROP TABLE planet_predict CASCADE;