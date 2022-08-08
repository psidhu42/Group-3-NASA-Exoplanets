CREATE TABLE exoplanets (
	pl_name TEXT NOT NULL,
	hostname TEXT NOT NULL,
	pl_letter TEXT NOT NULL,
	sy_pnum INT NOT NULL,
	discoverymethod TEXT NOT NULL,
	disc_instrument TEXT NOT NULL,
	pl_orbper FLOAT(40) NOT NULL,
	pl_rade FLOAT(8) NOT NULL,
	soltype TEXT NOT NULL,
	pl_eqt FLOAT(8) NOT NULL,
	st_teff FLOAT(8) NOT NULL,
	st_rad FLOAT(8) NOT NULL,
	st_mass FLOAT(8) NOT NULL,
	st_logg FLOAT(8) NOT NULL
);

CREATE TABLE test_table (
	pl_name TEXT NOT NULL,
	hostname TEXT NOT NULL,
	pl_letter TEXT NOT NULL,
	sy_pnum INT NOT NULL,
	discoverymethod TEXT NOT NULL,
	disc_instrument TEXT NOT NULL,
	pl_orbper FLOAT(40) NOT NULL,
	pl_rade FLOAT(8) NOT NULL,
	soltype TEXT NOT NULL,
	pl_eqt FLOAT(8) NOT NULL,
	st_teff FLOAT(8) NOT NULL,
	st_rad FLOAT(8) NOT NULL,
	st_mass FLOAT(8) NOT NULL,
	st_logg FLOAT(8) NOT NULL
);

SELECT * FROM exoplanets;

SELECT * FROM test_table;

DROP TABLE exoplanets CASCADE;


INSERT INTO test_table(pl_name, hostname, pl_letter, sy_pnum, 
					   discoverymethod, disc_instrument, pl_orbper, pl_rade, 
					   soltype, pl_eqt, st_teff, st_rad, st_mass, st_logg)
VALUES
('Test', 'Test', 'b', 2, 'Test', 'Test', 0.89798, 1.454, 'Test', 45254, 54242, 0.55, 1.34, 0.45),
('Test', 'Test', 'b', 2, 'Test', 'Test', 0.89798, 1.454, 'Test', 45254, 54242, 0.55, 1.34, 4.45),
('Test', 'Test', 'b', 2, 'Test', 'Test', 0.89798, 1.454, 'Test', 45254, 54242, 0.55, 1.34, 4.45);
