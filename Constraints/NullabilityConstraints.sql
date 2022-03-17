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
