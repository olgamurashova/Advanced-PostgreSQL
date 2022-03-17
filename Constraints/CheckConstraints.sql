1. Adding third condition using CHECK statement:

ALTER TABLE talks 
ADD CHECK (estimated_length > 0);
