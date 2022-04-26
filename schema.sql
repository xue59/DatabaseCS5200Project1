drop database if exists practicum;
create database practicum;
USE practicum;

drop table if exists airport_info;
CREATE TABLE airport_info(
  airport_info_id integer NOT NULL,
  airport_name text NOT NULL,
  origin_state text NOT NULL,
  PRIMARY KEY (airport_info_id));

CREATE TABLE aircraft_info(
  aircraft_info_id integer NOT NULL,
  aircraft_type text NOT NULL,
  is_aircraft_large tinyint(1) default -1,
  aircraft_number_of_engines integer,
  PRIMARY KEY (aircraft_info_id));

CREATE TABLE phase_situation(
  phase_id integer NOT NULL,
  when_phase_of_flight text NOT NULL,
  PRIMARY KEY (phase_id));

CREATE TABLE consequence(
  consequence_id integer NOT NULL,
  effect_impact_to_flight text NOT NULL,
  effect_indicated_damage text NOT NULL,
  PRIMARY KEY (consequence_id));

CREATE TABLE altitude_situation(
  feet_above_ground integer NOT NULL,
  altitude_bin text NOT NULL,
  PRIMARY KEY (feet_above_ground));

CREATE TABLE wild_size_record(
  wildlife_size_id integer NOT NULL,
  wildlife_size text NOT NULL,
  PRIMARY KEY (wildlife_size_id));
