create database practicum_dbms;
use practicum_dbms;

create table airline_info(airline_id Integer PRIMARY KEY auto_increment,
                         aircraft_airline_operator varchar(50) NOT NULL);  

INSERT INTO airline_info (aircraft_airline_operator) SELECT DISTINCT aircraft_airline_operator from dump;                         
                        
  create table action_done(action_id Integer PRIMARY KEY auto_increment,
                         remains_of_wildlife_collected tinyint(1) default 0,
                         remains_of_wildlife_sent_to_smithsonian tinyint(1) default 0);  
                         
create table conditions_of_sky(conditions_sky_id Integer PRIMARY KEY,
                         condition_sky TEXT NOT NULL);
                         
create table conditions_precipitation_type(conditions_precipitation_id Integer PRIMARY KEY,
                         condition_precipitation TEXT NOT NULL);                         
                         
create table wildlife_count(wildlife_number_struck_actual Integer PRIMARY KEY,
                         wildlife_number_struck TEXT NOT NULL);  

create table wildlife_species(wildlife_species_id Integer PRIMARY KEY,
                         species TEXT NOT NULL);  





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