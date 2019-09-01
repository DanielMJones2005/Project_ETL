DROP TABLE IF EXISTS neuroscience;
DROP TABLE IF EXISTS dept_emp;


CREATE TABLE neuroscience (
  title character varying(100) NOT NUll,
  citation_author character varying(100) NOT NUll,
  citation_date integer NOT NULL,
  cit_jrnl_title character varying(100) NOT NULL,
  description character varying(100) NOT NULL,
  keywords character varying(100) NOT NULL
);


CREATE TABLE mental_health_pol (
  country character varying(100) NOT NUll,
  year integer NOT NULL,
  govt_exp_mntlhos_per_totgovtexp_mntl_hlth integer NOT NUll,
  std_alone_law_mntl_hlth character varying(3) NOT NULL,
  yr_law_enacted_latver integer NOT NULL,
  std_alone_polplan_mnth_hlth character varying(3) NOT NULL,
  pub_yr_polplan_latver integer NOT NULL
);


SELECT * FROM neuroscience
SELECT * FROM mental_health_pol;

