-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Exoplanets" (
    "pl_name" text   NOT NULL,
    "hostname" text   NOT NULL,
    "pl_letter" text   NOT NULL,
    "sy_pnum" int   NOT NULL,
    "discoverymethod" text   NOT NULL,
    "disc_instrument" text   NOT NULL,
    "pl_orbper" float(40)   NOT NULL,
    "pl_rade" float(8)   NOT NULL,
    "soltype" text   NOT NULL,
    "pl_eqt" float(8)   NOT NULL,
    "st_teff" float(8)   NOT NULL,
    "st_rad" float(8)   NOT NULL,
    "st_mass" float(8)   NOT NULL,
    "st_logg" float(8)   NOT NULL
);

