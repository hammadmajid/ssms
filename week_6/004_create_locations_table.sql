CREATE TABLE locations (
    location_id INT IDENTITY(1,1) PRIMARY KEY,
    street_address NVARCHAR(40),
    postal_code NVARCHAR(12),
    city NVARCHAR(30) NOT NULL,
    state_province NVARCHAR(25),
    country_id CHAR(2) FOREIGN KEY REFERENCES countries(country_id)
);