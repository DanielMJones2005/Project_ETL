DROP TABLE IF EXISTS neuroscience;
DROP TABLE IF EXISTS mental_health_pol;


CREATE TABLE neuroscience (
  title character varying(250),
  citation_author character varying(350),
  citation_date integer,
  citation_journal_title character varying(100),
  description character varying(3000),
  keywords character varying(1000)
);


CREATE TABLE mental_health_pol (
  country character varying(100),
  year integer,
  govt_exp_mntlhos_per_totgovtexp_mntl_hlth float,
  std_alone_law_mntl_hlth character varying(3),
  yr_law_enacted_latver float,
  std_alone_polplan_mnth_hlth character varying(3),
  pub_yr_polplan_latver float
);


SELECT * FROM neuroscience
SELECT * FROM mental_health_pol;

