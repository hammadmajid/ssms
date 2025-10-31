IF NOT EXISTS (SELECT * FROM sys.indexes WHERE name = 'IX_locations_country_id')
    CREATE INDEX IX_locations_country_id ON locations(country_id);
