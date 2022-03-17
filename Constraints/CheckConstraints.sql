1. Adding third condition using CHECK statement:

ALTER TABLE talks 
ADD CHECK (estimated_length > 0);

CREATE TABLE talks (
    id integer,
    title varchar NOT NULL,
    speaker_id integer NOT NULL,
    estimated_length integer NOT NULL CHECK (estimated_length > 0),
    session_timeslot timestamp NOT NULL
);

ALTER TABLE speakers
ADD CHECK (years_in_role < 100);

2. Using CHECK statement with a wide array of SQL syntax to create our conditions:

ALTER TABLE talks 
ADD CHECK (estimated_length > 0 AND estimated_length < 120);

ALTER TABLE talks
ADD CHECK (estimated_length < 120 AND date_part('year', session_timeslot) = 2020);

date_part function in PostgreSQL returns a portion of the date as an integer (e.g. date_part('year' ,'2020-08-01 00:00:00'::date) = 2020)

ALTER TABLE speakers
ADD CHECK (years_in_role > 0 AND years_in_role < 100);

ALTER TABLE attendees 
ADD CHECK (standard_tickets_reserved + vip_tickets_reserved = total_tickets_reserved);
