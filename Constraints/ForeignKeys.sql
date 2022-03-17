1. 
ALTER TABLE registrations
ADD FOREIGN KEY (talk_id)
REFERENCES talks (id);

ALTER TABLE talks
ADD FOREIGN KEY (speaker_id) 
REFERENCES speakers (id);

2. Using CASCADE clause

ALTER TABLE registrations
ADD FOREIGN KEY (talk_id)
REFERENCES talks (id) ON DELETE CASCADE;

ALTER TABLE talks
ADD FOREIGN KEY (speaker_id)
REFERENCES speakers (id) ON DELETE CASCADE;



