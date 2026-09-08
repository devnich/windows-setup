-- Select subset of column values
SELECT *
FROM surveys
WHERE species_id IN ('DM', 'DO','DS')
ORDER BY plot_id  DESC, species_id ASC
LIMIT 10;

-- Create alias
SELECT species_id, round(WEIGHT/1000, 2) as weight_kg
FROM surveys
LIMIT 10;

--- build custom reports with joins
SELECT species.genus, species.species, surveys.weight
FROM surveys JOIN species
USING (species_id)
ORDER BY surveys.weight DESC
LIMIT 10;

-- Create view
CREATE VIEW summer_2000 AS 
SELECT * FROM surveys
WHERE year = 2000 AND (month > 4 AND month < 10);