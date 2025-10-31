ALTER TABLE locations
DROP CONSTRAINT FK__locations__country_id__;  -- Adjust name if needed

ALTER TABLE locations
ALTER COLUMN country_id INT;

ALTER TABLE locations
ADD CONSTRAINT FK_locations_country_new FOREIGN KEY (country_id)
REFERENCES country_new(country_id);
