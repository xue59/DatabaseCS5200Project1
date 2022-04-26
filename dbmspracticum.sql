CREATE TABLE flight_date_table(flight_date varchar(50) PRIMARY KEY,
                               flight_date_year TEXT NOT NULL,
                               flight_date_month NUMBER NOT NULL,
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
