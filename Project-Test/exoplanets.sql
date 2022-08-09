CREATE TABLE exoplanets (
	pl_name VARCHAR(50) NOT NULL,
	hostname VARCHAR(50) NOT NULL,
	pl_letter VARCHAR(50) NOT NULL,
	sy_pnum INT NOT NULL,
	discoverymethod VARCHAR(50) NOT NULL,
	disc_instrument VARCHAR(50) NOT NULL,
	pl_orbper FLOAT(40) NOT NULL,
	pl_rade FLOAT(8) NOT NULL,
	soltype VARCHAR(40) NOT NULL,
	pl_eqt FLOAT(8) NOT NULL,
	st_teff FLOAT(8) NOT NULL,
	st_rad FLOAT(8) NOT NULL,
	st_mass FLOAT(8) NOT NULL,
	st_logg FLOAT(8) NOT NULL
);

DROP TABLE exoplanets CASCADE;


INSERT INTO exoplanets(id, speciality, taking_patients)
VALUES
(1, 'cardiology', TRUE),
(2, 'orthopedics', FALSE),
(3, 'pediatrics', TRUE);
INSERT INTO patients (id, doctor_id, health_status)
VALUES
(1, 2, 'healthy'),
(2, 3, 'sick'),
(3, 2, 'sick'),
(4, 1, 'healthy'),
(5, 1, 'sick');





-- Deliverable 1
SELECT e.emp_no,
    e.first_name,
	e.last_name,
    t.title,
    t.from_date,
    t.to_date
INTO retirement_titles
FROM employees as e
LEFT JOIN titles as t
ON (e.emp_no = t.emp_no)
INNER JOIN dept_employees as de
ON (e.emp_no = de.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')

SELECT DISTINCT ON (emp_no) emp_no,
    first_name,
	last_name,
    title
INTO unique_titles
FROM retirement_titles
WHERE to_date='9999-01-01'
ORDER BY emp_no, to_date DESC;

SELECT COUNT(emp_no),
        title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT(emp_no) DESC;

-- Deliverable 2
SELECT DISTINCT ON (emp_no) e.emp_no,
    e.first_name,
	e.last_name,
    e.birth_date,
    de.from_date,
    de.to_date,
	t.title
INTO mentorship_eligibilty
FROM employees as e
LEFT JOIN dept_employees as de
ON (e.emp_no = de.emp_no)
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE de.to_date='9999-01-01'
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;
