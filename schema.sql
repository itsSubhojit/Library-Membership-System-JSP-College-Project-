-- Create database if it doesn't exist
CREATE DATABASE IF NOT EXISTS members;
USE members;

-- Drop table if it exists to allow re-run of script
DROP TABLE IF EXISTS memberlist;

-- Create memberlist table
CREATE TABLE memberlist (
    id VARCHAR(10) PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    validity_upto DATE NOT NULL
);

-- Insert 4 sample records
INSERT INTO memberlist (id, name, validity_upto) VALUES
('A001', 'XYZ', '2023-12-31'),
('A005', 'ABC', '2023-11-30'),
('A010', 'DEF', '2023-12-29'),
('A012', 'GHI', '2024-01-15');
