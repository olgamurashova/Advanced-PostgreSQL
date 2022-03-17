1. Adding UNIQUE constraint using ALTER TABLE syntax:

ALTER TABLE attendees 
ADD UNIQUE (email);

ALTER TABLE talks
ADD UNIQUE (speaker_id, session_timeslot);

ALTER TABLE speakers
ADD UNIQUE (email);

CREATE TABLE registrations (
    id integer NOT NULL,
    attendee_id integer NOT NULL,
    session_timeslot timestamp NOT NULL,
    talk_id integer NOT NULL,
    UNIQUE (attendee_id, session_timeslot)
);
