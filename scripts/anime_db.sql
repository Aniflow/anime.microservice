CREATE DATABASE IF NOT EXISTS anime_service_db;

USE anime_service_db;

CREATE TABLE IF NOT EXISTS anime (
    anime_id INT(11) NOT NULL PRIMARY KEY,
    name VARCHAR(255),
    episodes INT(11),
    description TEXT,
    type VARCHAR(10)
);
