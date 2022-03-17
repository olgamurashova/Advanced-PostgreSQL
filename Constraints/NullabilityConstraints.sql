1. Creating the tables and adding NOT NULL constraints:

CREATE TABLE talks (
    id integer,
    title varchar NOT NULL,
    speaker_id integer NOT NULL,
    estimated_length integer,
    session_timeslot timestamp NOT NULL
);

CREATE TABLE speakers (
id integer NOT NULL,
email varchar NOT NULL,
name varchar NOT NULL,
organization varchar,
title varchar,
years_in_role integer
);

2. Altering the tables and adding constraints:

ALTER TABLE talks
ALTER COLUMN session_timeslot SET NOT NULL;

3. Removing contsraint:

ALTER TABLE talks
ALTER COLUMN session_timeslot DROP NOT NULL;
