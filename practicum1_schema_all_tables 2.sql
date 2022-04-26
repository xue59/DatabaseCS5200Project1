drop database if exists practicum;
create database practicum;
USE practicum;


CREATE TABLE flight_date_table(flight_date varchar(50) PRIMARY KEY,
                               flight_date_year TEXT NOT NULL,
                               flight_date_month Int NOT NULL,
                               flight_date_day Integer NOT NULL, 
                               flight_date_time Integer NOT NULL);
                               
create table airline_info(airline_id Integer PRIMARY KEY,
                         aircraft_airline_operator TEXT NOT NULL);  
                        
  create table action_done(action_id Integer PRIMARY KEY,
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
  
DROP TABLE IF EXISTS record_table;
CREATE TABLE IF NOT EXISTS record_table 
    (record_id Int,
	remarks text,
    airport_info_id Int NOT NULL,
    airline_info_id Int NOT NULL,
    aircraft_info_id Int NOT NULL,
    phase_situation_id Int NOT NULL,
    consequence_id Int NOT NULL,
    wildlife_size_id Int NOT NULL,
    conditions_precipitation_id Int NOT NULL,
    conditions_sky_id Int NOT NULL,
    action_id Int NOT NULL,
    flight_date varchar(50),
    wildlife_species_id Int NOT NULL,
    feet_above_ground Int DEFAULT -1,
    wildlife_number_struck_actual Int DEFAULT -1,
    number_of_people_inquired Int DEFAULT -1,
    aircraft_number_of_engines Int DEFAULT -1,
    cost_total text,
    pilot_warned_of_birds_or_wildlife text,
    PRIMARY KEY (record_id),
    FOREIGN KEY (airport_info_id) REFERENCES airport_info(airport_info_id),
    FOREIGN KEY (airline_info_id) REFERENCES airline_info(airline_id),
    FOREIGN KEY (aircraft_info_id) REFERENCES aircraft_info(aircraft_info_id),
    FOREIGN KEY (phase_situation_id) REFERENCES phase_situation(phase_id),    
    FOREIGN KEY (consequence_id) REFERENCES consequence(consequence_id),
    FOREIGN KEY (wildlife_size_id) REFERENCES wild_size_record(wildlife_size_id),
    FOREIGN KEY (conditions_precipitation_id) REFERENCES conditions_precipitation_type(conditions_precipitation_id),
    FOREIGN KEY (conditions_sky_id) REFERENCES conditions_of_sky(conditions_sky_id),
    FOREIGN KEY (action_id) REFERENCES action_done(action_id),
    FOREIGN KEY (flight_date) REFERENCES flight_date_table(flight_date),
    FOREIGN KEY (wildlife_species_id) REFERENCES wildlife_species(wildlife_species_id),
    FOREIGN KEY (feet_above_ground) REFERENCES altitude_situation(feet_above_ground),
    FOREIGN KEY (wildlife_number_struck_actual) REFERENCES wildlife_count(wildlife_number_struck_actual)
);
