-- Weather Data Table
CREATE TABLE weather_data (
    id INTEGER PRIMARY KEY AUTOINCREMENT,  -- Unique ID for each record
    city TEXT NOT NULL,                     -- Name of the city
    temperature REAL NOT NULL,              -- Temperature in Celsius
    humidity REAL NOT NULL,                 -- Humidity percentage
    condition TEXT NOT NULL,                -- Weather condition (Sunny, Rainy, Cloudy)
    date TEXT NOT NULL                      -- Date of the record (YYYY-MM-DD)
);